unit xmm;  

{$WARN 5026 off : Value parameter "$1" is assigned but never used}
{$WARN 3123 off : "$1" not yet supported inside inline procedure/function}    
{$WARN 6058 off : Call to subroutine "$1" marked as inline is not inlined}

{$mode ObjFPC}{$H+}
{$asmmode intel}

//{$define XMMDEBUG}

interface

// XMM Memory Manager; Windows only; uses Windows API to manage the actual memory    
// this is modified version of XMM for use in RTL as default memory manager
// author: fibodevy, 2024
// license: You are free to modify and redistribute the code with attribution to the original author (fibodevy) and a link to the source.

// all functions are self-contained since no external units are used
// this unit may be adapted to environments without Windows or other standard units

const
  // config
  XMMCHUNKSIZE     = 512; // size of each memory chunk in bytes
  XMMCHUNKFIXEDMEM = 4;   // fixed memory limit in MB
  XMMCHUNKCOUNT    = (1024*1024)*XMMCHUNKFIXEDMEM div XMMCHUNKSIZE; // total number of chunks based on fixed memory

const
  // winapi constants (as mentioned above, no Windows unit is used)
  MEM_COMMIT     = $00001000;
  PAGE_READWRITE = $04;
  MEM_RELEASE    = $00008000;

  // import from these
  KERNEL32 = 'kernel32.dll';
  NTDLL    = 'ntdll.dll';

function VirtualAlloc(lpAddress: Pointer; dwSize: SizeUInt; flAllocationType, flProtect: DWORD): Pointer; stdcall; external KERNEL32;
function VirtualFree(lpAddress: Pointer; dwSize: size_t; dwFreeType: DWORD): Boolean; stdcall; external KERNEL32;
procedure RtlFillMemory(dst: pointer; len: sizeuint; fill: integer); stdcall; external KERNEL32;
procedure RtlMoveMemory(dst, src: pointer; len: sizeuint); stdcall; external KERNEL32;
procedure RtlZeroMemory(dst: pointer; len: sizeuint); stdcall; external KERNEL32;
function RtlCompareMemory(src1, src2: pointer; len: sizeuint): sizeuint; stdcall; external NTDLL;

// allocates memory of given size
function xgetmem(size: ptruint): pointer;
// allocates and zeroes memory of given size
function xallocmem(size: ptruint): pointer;
// resizes the memory block at p
function xreallocmem(var p: pointer; size: ptruint): pointer;
// clones the memory block at p
function xclone(const p: pointer): pointer;
// returns size of memory block at p
{$ifdef DLLEXPORT}
function xmemsize(const p: pointer): ptruint; export;
{$endif}
{$ifdef DLLIMPORT}
function xmemsize(const p: pointer): ptruint; external RTLDLL;
{$endif}
// returns the actual allocated size of the memory block, including header and OS alignment
function xmemrealsize(const p: pointer): ptruint;
// returns the actual usable memory size, excluding metadata; the raw allocation size, not guaranteed for safe use by this pointer (but possible)
function xmemavailsize(const p: pointer): ptruint;
// frees the memory block at p and returns the actual amount of memory released for reuse
{$ifdef DLLEXPORT}
function xfreemem(p: pointer): ptruint; export;
{$endif}
{$ifdef DLLIMPORT}
function xfreemem(p: pointer): ptruint; external RTLDLL;
{$endif}
// zeroes len bytes at p
function xzeromem(p: pointer; len: ptruint): ptruint; inline;
// moves len bytes from src to dst
function xmovemem(const src: pointer; dst: pointer; len: ptruint): ptruint; inline;
// fills len bytes at p with value v
function xfillmem(p: pointer; len: ptruint; v: byte): ptruint;
// finds offset of first difference
function xmemdiffat(const p1, p2: pointer; len: ptruint): ptruint;
// compares memory at p1 and p2; returns true if equal
function xmemcompare(const p1, p2: pointer; len: ptruint): boolean;
// returns the number of free memory chunks
function xgetfreechunks: integer;
// initializes the memory chunks pool (zeros all)
procedure xmminit;

implementation

type
  pxmemheader = ^txmemheader;
  pxmemchunk = ^txmemchunk;

  txmemheader = record
    wasallocated: boolean; // indicates if memory was allocated by the OS
    size: ptruint;         // size used by this block, not necessarily the full block size
    realsize: ptruint;     // actual block size from VirtualAlloc or small chunk (consider renaming to "availsize" for clarity)
    prev: pxmemchunk;      // pointer to previous chunk (likely to be removed due to no longer being used)
    next: pxmemchunk;      // pointer to next chunk (likely to be removed due to no longer being used)
  end;

  txmemchunk = record
    h: txmemheader;                        // header for MM metadata
    data: array[0..XMMCHUNKSIZE-1] of byte; // memory chunk of size XMMCHUNKSIZE
  end;

var
  xmemchunks: array[0..XMMCHUNKCOUNT-1] of txmemchunk;
  xmemchunks_critical_section: integer = 0;
  xmemchunks_init_done: boolean = false;

// swaps target with val; returns the old value of target
function _atomic32(var target: integer; val: integer): integer; assembler;
asm
  {$ifdef CPU64}
  mov    eax, val
  //lock
  xchg dword ptr [target], eax
  {$else}
  mov    eax, target
  xchg   [target], val
  mov    eax, val
  {$endif}
end;

// enters a critical section; blocks other threads from accessing shared memory
procedure _xmemchunksbegin; inline;
begin
  while _atomic32(xmemchunks_critical_section, 1) <> 0 do; // consider adding a sleep to reduce CPU usage
end;

// exits critical section; releases lock for other threads to access shared memory
procedure _xmemchunksend; inline;
begin
  _atomic32(xmemchunks_critical_section, 0);
end;

// attempts to allocate a memory chunk of the specified size from the chunk pool; returns a pointer to the chunk or nil if no chunk is available
function _xgetmemchunk(size: dword): pointer; inline;
var
  i: integer;
begin
  // critical section without try..finally for performance; cuts time in half
  result := nil;
  _xmemchunksbegin;

  // iterate through chunks; reliable and fast method
  if result = nil then begin
    for i := 0 to high(xmemchunks) do begin
      if xmemchunks[i].h.size = 0 then begin
        // free chunk found
        result := @xmemchunks[i].data[0];
        break;
      end;
    end;
  end;

  if result <> nil then begin
    // update chunk header with new size
    pxmemchunk(result-sizeof(txmemheader))^.h.size := size;
  end;

  // if no more chunks, return nil for fallback to standard GetMem
  _xmemchunksend;
end;

function xgetmem(size: ptruint): pointer; inline;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xgetmem(', size, ')');
  {$endif}

  result := nil;

  // try to get a small chunk from the memory pool
  if (size > 0) and (size <= XMMCHUNKSIZE) then begin
    result := _xgetmemchunk(size);
    if result <> nil then exit; // succeeded
  end;

  // if size is 0, no need to adjust it; header will handle allocation
  result := VirtualAlloc(nil, size+sizeof(txmemheader), MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE);
  if result = nil then exit;

  // store allocation metadata in the header
  pxmemheader(result)^.size := size;
  {$ifdef CPU64}         
  pxmemheader(result)^.realsize := ((int64(size) div 4096)+1)*4096-sizeof(txmemheader); // align to 4096 bytes (OS alignment), subtract the header size
  {$else}
  // xmm.pas(174,37) Error: Unknown compilerproc "fpc_div_int64". Check if you use the correct run time library.
  pxmemheader(result)^.realsize := (((size) div 4096)+1)*4096-sizeof(txmemheader); // align to 4096 bytes (OS alignment), subtract the header size
  {$endif}
  pxmemheader(result)^.wasallocated := true; // memory allocated by OS; must be freed using VirtualFree
  pxmemheader(result)^.prev := nil; // not used currently; may be removed if it offers no performance gain
  pxmemheader(result)^.next := nil; // not used currently; may be removed if it offers no performance gain

  // move result pointer past the header
  result := result + sizeof(txmemheader);
end;

function xallocmem(size: ptruint): pointer; inline;
begin   
  {$ifdef XMMDEBUG}
  writeln('call to xallocmem(', size, ')');
  {$endif}
  result := xgetmem(size);
  if result = nil then exit;
  // zero out the allocated memory
  xfillmem(result, size, 0);
end;

function xreallocmem(var p: pointer; size: ptruint): pointer; inline;
var
  h: pxmemheader;
  n: ptruint;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xreallocmem(', ptruint(p), ', ', size, ')');
  {$endif}

  result := nil;

  // free memory if size is 0
  if size = 0 then begin
    if p <> nil then xfreemem(p);
    p := nil;
    exit(nil);
  end;

  // allocate new memory if pointer is nil
  if p = nil then begin
    p := xgetmem(size);
    exit(p);
  end;

  // get the header (and the actual pointer, the one allocated by the OS)
  h := p-sizeof(txmemheader);

  // check if resizing is needed based on current size
  _xmemchunksbegin;
  if not h^.wasallocated then begin
    if size < XMMCHUNKSIZE then begin
      h^.size := size;
      result := p;
    end;
  end;
  _xmemchunksend;

  // will allocate new memory, but perhaps no need
  // use the actual memory size from the OS or the fixed chunk size
  if (result = nil) and (size < h^.realsize) then begin
    // only update the header with the new size
    h^.size := size;
    result := p;
  end;

  if result = nil then begin
    // allocate new memory and move old data
    result := xgetmem(size);
    if result <> nil then begin
      // find smaller of old and new size
      n := size;
      if pxmemheader(p)^.size < n then n := pxmemheader(p)^.size;
      // move memory to new location
      xmovemem(p, result, n);
    end;

    // free old memory and update pointer
    xfreemem(p);
    p := result;
  end;
end;

function xclone(const p: pointer): pointer; inline;
var
  u: ptruint;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xclone(', ptruint(p), ')');
  {$endif}
  u := xmemsize(p);
  result := xgetmem(u);
  xmovemem(p, result, u);
end;

{$ifdef DLLEXPORT}
function xmemsize(const p: pointer): ptruint; export;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xmemsize(', ptruint(p), ')');
  {$endif}
  result := pxmemheader(p-sizeof(txmemheader))^.size;
end;
{$endif DLLEXPORT}

function xmemrealsize(const p: pointer): ptruint;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xmemrealsize(', ptruint(p), ')');
  {$endif}
  result := pxmemheader(p-sizeof(txmemheader))^.realsize+sizeof(txmemheader);
end;

function xmemavailsize(const p: pointer): ptruint;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xmemavailsize(', ptruint(p), ')');
  {$endif}
  result := pxmemheader(p-sizeof(txmemheader))^.realsize;
end;

{$ifdef DLLEXPORT}
function xfreemem(p: pointer): ptruint; export;
var
  h: pxmemheader;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xfreemem(', ptruint(p), ')');
  {$endif}

  _xmemchunksbegin;

  // get the header; if wasallocated, it's the actual OS-allocated memory pointer
  h := p-sizeof(txmemheader);

  // return the realsize, which is the amount of memory available for reuse
  result := h^.realsize;
  // if allocated by the OS, add the header size as it's part of the total memory block
  if h^.wasallocated then result := result + sizeof(txmemheader);

  if h^.wasallocated then begin
    // release memory back to the OS; size doesn't matter with MEM_RELEASE
    VirtualFree(h, 0, MEM_RELEASE);
  end else begin
    // mark chunk as free for reuse
    h^.size := 0;
  end;

  _xmemchunksend;
end;
{$endif DLLEXPORT}

function xzeromem(p: pointer; len: ptruint): ptruint; inline;
begin       
  {$ifdef XMMDEBUG}
  writeln('call to xzeromem(', ptruint(p), ', ', len, ')');
  {$endif}
  result := xfillmem(p, len, 0);
end;

function xmovemem(const src: pointer; dst: pointer; len: ptruint): ptruint; inline;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xmovemem(', ptruint(src), ', ', ptruint(dst), ', ', len, ')');
  {$endif}
  RtlMoveMemory(dst, src, len);
  result := len;
end;

function xfillmem(p: pointer; len: ptruint; v: byte): ptruint; inline;
begin   
  {$ifdef XMMDEBUG}
  writeln('call to xfillmem:1(', ptruint(p), ', ', len, ', ', v, ')');
  {$endif}
  RtlFillMemory(p, len, v);
  result := len;
end;

function xfillmem(p: pointer; len: ptruint; v: char): ptruint; inline;
begin    
  {$ifdef XMMDEBUG}
  writeln('call to xfillmem:2(', ptruint(p), ', ', len, ', ', v, ')');
  {$endif}
  RtlFillMemory(p, len, ord(v));
  result := len;
end;

function xmemdiffat(const p1, p2: pointer; len: ptruint): ptruint; inline;
begin       
  {$ifdef XMMDEBUG}
  writeln('call to xmemdiffat(', ptruint(p1), ', ', ptruint(p2), ', ', len, ')');
  {$endif}
  result := RtlCompareMemory(p1, p2, len);
end;

function xmemcompare(const p1, p2: pointer; len: ptruint): boolean; inline;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xmemcompare(', ptruint(p1), ', ', ptruint(p2), ', ', len, ')');
  {$endif}
  result := RtlCompareMemory(p1, p2, len) = len;
end;

function xgetfreechunks: integer;
var
  i: integer;
begin 
  {$ifdef XMMDEBUG}
  writeln('call to xgetfreechunks()');
  {$endif}     
  result := 0;
  _xmemchunksbegin;
  for i := 0 to high(xmemchunks) do if xmemchunks[i].h.size = 0 then result := result + 1;
  _xmemchunksend;
end;

procedure xmminit;
var
  i: integer;
begin
  {$ifdef XMMDEBUG}
  writeln('call to xchunksinit()');
  {$endif}

  // exit if initialization has already been done
  if xmemchunks_init_done then exit;

  // enter critical section to prevent concurrent access
  _xmemchunksbegin;

  // zero out the memory chunk array
  RtlFillMemory(@xmemchunks[0], sizeof(xmemchunks), 0);

  for i := low(xmemchunks) to high(xmemchunks) do begin
    // link the chunks and set their real sizes
    if i <> low(xmemchunks)  then xmemchunks[i].h.prev := @xmemchunks[i-1]; // set previous chunk pointer
    if i <> high(xmemchunks) then xmemchunks[i].h.next := @xmemchunks[i+1]; // set next chunk pointer

    // set realsize
    xmemchunks[i].h.realsize := sizeof(xmemchunks[i].data);
  end;

  // mark initialization as complete
  xmemchunks_init_done := true;

  // exit critical section
  _xmemchunksend;
end;

{$ifdef DLLEXPORT}
exports
  xmemsize,
  xfreemem
  ;
{$endif DLLEXPORT}

initialization
  // initialization: prepares memory chunk pool for allocations (zeros all)
  xmminit;

end.
