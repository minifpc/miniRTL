// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------

{$if defined(codeh) and defined(codei)}
{$FATAL interface and implementation at the same time not possible}
{$endif}

{$ifdef codeh}

// allocates a memory block of the specified size; returns a pointer to the block
function GetMem(size: ptruint): pointer;
// allocates memory and returns a pointer to the block; stores the pointer in p as an out parameter
function GetMem(out p: pointer; size: ptruint): pointer;
// frees the memory and returns the actual amount of memory released for reuse
function FreeMem(p: pointer): ptruint;
// frees the memory and returns the actual amount of memory released for reuse; size parameter is ignored
function FreeMemSize(p: pointer; {%H-}size: ptruint): ptruint;
// allocates a memory block of the specified size and zeroes it; returns a pointer to the block
function AllocMem(size: ptruint): pointer;
// resizes the memory block pointed to by p; returns a pointer to the new block
function ReAllocMem(var p: pointer; size: ptruint): pointer;
// returns the size of the allocated memory block pointed to by p (excluding the header size - should it?)
function MemSize(p: pointer): ptruint;

// --------------------------------------------------

// moves count bytes from src to dst
{$ifdef DLLEXPORT}
procedure Move(const src; var dst; count: ptruint); stdcall; export;
{$endif DLLEXPORT}

// fills count bytes of memory starting at x with the specified value
procedure FillChar(var x; count: ptruint; value: ansichar);
// fills count bytes of memory starting at x with the specified value
procedure FillChar(var x; count: ptruint; value: byte);
// fills count bytes of memory starting at x with the specified value
procedure FillByte(var x; count: ptruint; value: byte);
// returns the index of the first occurrence of b in buf of length len; returns -1 if not found
//function IndexByte(const buf; len: ptrint; b: byte): ptrint;
// returns the index of the first occurrence of b in buf of length len; returns -1 if not found
//function IndexChar(const buf; len: ptrint; b: char): ptrint;
// returns the index of the first occurrence of b in buf of length len; returns -1 if not found
//function IndexWord(const buf; len: ptrint; w: word): ptrint;
// compares len bytes between buf1 and buf2; returns the difference between the first differing bytes
//function CompareByte(const buf1; const buf2; len: ptruint): ptrint;
// compares len characters between buf1 and buf2; returns the difference between the first differing characters
//function CompareChar(const buf1; const buf2; len: ptruint): ptrint;

// --------------------------------------------------

function fpc_getmem(size: ptruint): pointer; compilerproc;
procedure fpc_freemem(p: pointer); compilerproc;

{$ifdef DLLIMPORT}
procedure Move(const src; var dst; count: ptruint); stdcall; external RTLDLL;

function xgetmem(size: ptruint): pointer; stdcall; external RTLDLL;
function xallocmem(size: ptruint): pointer; stdcall; external RTLDLL;
function xreallocmem(var p: pointer; size: QWord): pointer; external RTLDLL;
function xmemdiffat(const p1, p2: pointer; len: ptruint): ptruint; stdcall; external RTLDLL;

function IndexByte(const buf; len: ptrint; b: byte): ptrint; stdcall; external RTLDLL;
function IndexChar(const buf; len: ptrint; b: char): ptrint; stdcall; external RTLDLL;
function IndexWord(const buf; len: ptrint; w: word): ptrint; stdcall; external RTLDLL;

function CompareChar(const buf1; const buf2; len: ptruint): ptrint; stdcall; external RTLDLL;
function CompareByte(const buf1; const buf2; len: ptruint): ptrint; stdcall; external RTLDLL;
{$endif DLLIMPORT}

{$ifdef DLLEXPORT}
function IndexByte(const buf; len: ptrint; b: byte): ptrint; stdcall; export;
function IndexChar(const buf; len: ptrint; b: char): ptrint; stdcall; export;
function IndexWord(const buf; len: ptrint; w: word): ptrint; stdcall; export;

function CompareChar(const buf1; const buf2; len: ptruint): ptrint; stdcall; export;
function CompareByte(const buf1; const buf2; len: ptruint): ptrint; stdcall; export;
{$endif DLLEXPORT}

{$endif}

{$ifdef codei}

function GetMem(size: ptruint): pointer;
begin
  result := xgetmem(size);
end;

function GetMem(out p: pointer; size: ptruint): pointer;
begin
  result := xgetmem(size);
  p := result;
end;

function FreeMem(p: pointer): ptruint;
begin
  Exit(xfreemem(p));
end;

function FreeMemSize(p: pointer; size: ptruint): ptruint;
begin
  Exit(xfreemem(p));
end;

function AllocMem(size: ptruint): pointer;
begin
  Exit(xallocmem(size));
end;

function ReAllocMem(var p: pointer; size: ptruint): pointer;
begin
  Exit(xreallocmem(p, size));
end;

function MemSize(p: pointer): ptruint;
begin
  Exit(xmemsize(p));
end;

// --------------------------------------------------

{$ifdef DLLEXPORT}
procedure Move(const src; var dst; count: ptruint); stdcall; export;
begin
  xmovemem(@src, @dst, count);
end;
{$endif DLLEXPORT}

procedure FillChar(var x; count: ptruint; value: ansichar);
begin
  xfillmem(@x, count, ord(value));
end;

procedure FillChar(var x; count: ptruint; value: byte);
begin
  xfillmem(@x, count, value);
end;

procedure FillByte(var x; count: ptruint; value: byte);
begin
  xfillmem(@x, count, value);
end;

{$ifdef DLLEXPORT}
function IndexByte(const buf; len: ptrint; b: byte): ptrint; stdcall; export;
var
  i: ptrint;
begin
  result := -1;    
  i := 0;
  while (i < len) or (len = -1){len may not be given} do begin
    if pbyte(pointer(buf)+i)^ = b then exit(i);
    inc(i);
  end;
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
function IndexChar(const buf; len: ptrint; b: char): ptrint; stdcall; export;
var
  i: ptrint;
begin
  result := -1;
  i := 0;
  while (i < len) or (len = -1){len may not be given} do begin
    if pchar(pointer(buf)+i)^ = b then exit(i);
    inc(i);
  end;
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
function IndexWord(const buf; len: ptrint; w: word): ptrint; stdcall; export;
var
  i: ptrint;
begin
  result := -1;   
  i := 0;
  while (i < len) or (len = -1){len may not be given} do begin
    if pword(pointer(buf)+i)^ = w then exit(i div 2);
    inc(i, 2);
  end;
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
function CompareByte(const buf1; const buf2; len: ptruint): ptrint; stdcall; export;
var
  u: ptruint;
begin
  u := xmemdiffat(@buf1, @buf2, len);
  if u = len then result := 0 else result := pbyte(@buf1+u)^-pbyte(@buf2+u)^;
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
function CompareChar(const buf1; const buf2; len: ptruint): ptrint; stdcall; export;
begin
  result := CompareByte(buf1, buf2, len);
end;
{$endif DLLEXPORT}
                   
// --------------------------------------------------

function fpc_getmem(size: ptruint): pointer; compilerproc; [public, alias: 'FPC_GETMEM'];
begin
  result := GetMem(size);
end;

procedure fpc_freemem(p: pointer); compilerproc; [public, alias: 'FPC_FREEMEM'];
begin
  FreeMem(p);
end;

{$ifdef DLLEXPORT}
exports
  Move name 'Move',
  IndexChar name 'IndexChar',
  IndexByte name 'IndexByte',
  IndexWord name 'IndexWord',
  
  CompareChar name 'CompareChar',
  CompareByte name 'CompareByte'
  ;
{$endif DLLEXPORT}

{$endif}
