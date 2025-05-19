// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit SysUtils;

interface
uses Windows, global;

{$ifdef DLLEXPORT}
function CommandLineToArgvA(CmdLine: PAnsiChar; var argc: Integer): PPAnsiChar; stdcall; export;

function  IntToStr(Value: Integer): PChar; stdcall; export; overload;
function  IntToStr(Value:  Int64): PChar; stdcall; export; overload;

function  UIntToStr(Value: UInt64): AnsiString; stdcall; export;
//function  StrAlloc(Size: Cardinal): PChar; stdcall; export;
procedure StrDispose(P: PChar); stdcall; export;

function  StrCopy(var Dest: PChar; Source: PChar): PChar; stdcall; export;
function  StrCat (var Dest: PChar; Source: PChar): PChar; stdcall; export;

function UIntToStrA(Value: UInt64): AnsiString; stdcall; export;

function StrCopy_(var Dest: PChar; Source: PChar): PChar; stdcall; export;

{ Ansi-Version }
function StrPas(P: PAnsiChar): AnsiString; overload;

function ChATAStr1(const A: array of AnsiChar): AnsiString;                  overload; stdcall; export;
function ChATAStr2(const A: array of AnsiChar; BufLen: Integer): AnsiString; overload; stdcall; export;
function ChATAStr3(P: PAnsiChar; BufLen: Integer): AnsiString;               overload; stdcall; export;

{ Unicode-Version }
//function StrPas(P: PChar): UnicodeString; overload;

function _itoa  (Value: Integer; Buffer: PAnsiChar; Radix: Integer): PAnsiChar; cdecl; external 'msvcrt.dll' name '_itoa';
function _i64toa(Value:   Int64; Buffer: PAnsiChar; Radix: Integer): PAnsiChar; cdecl; external 'msvcrt.dll' name '_i64toa';
function _i64tow(Value:   Int64; Buffer: PWideChar; Radix: Integer): PWideChar; cdecl; external 'msvcrt.dll' name '_i64tow';

//Function fpc_chararray_to_ansistr(const arr: array of char; zerobased: boolean = true): ansistring; compilerproc;

{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
function CommandLineToArgvA(CmdLine: PAnsiChar; var argc: Integer): PPAnsiChar; stdcall; external RTLDLL;

function _itoa  (Value: Integer; Buffer: PAnsiChar; Radix: Integer): PAnsiChar; cdecl; external 'msvcrt.dll' name '_itoa';
function _i64toa(Value:   Int64; Buffer: PAnsiChar; Radix: Integer): PAnsiChar; cdecl; external 'msvcrt.dll' name '_i64toa';
function _i64tow(Value:   Int64; Buffer: PWideChar; Radix: Integer): PWideChar; cdecl; external 'msvcrt.dll' name '_i64tow';

Procedure SetString(out S : AnsiString; Buf : PAnsiChar; Len : SizeInt); stdcall; external RTLDLL;
function  StrPas(P: PAnsiChar): AnsiString; stdcall; external RTLDLL;

function  CharArrToAnsiStr(const A: array of AnsiChar): AnsiString;                  overload; stdcall; external RTLDLL name 'ChATAStr1';
function  CharArrToAnsiStr(const A: array of AnsiChar; BufLen: Integer): AnsiString; overload; stdcall; external RTLDLL name 'ChATAStr2';
function  CharArrToAnsiStr(P: PAnsiChar; BufLen: Integer): AnsiString;               overload; stdcall; external RTLDLL name 'ChATAStr3';

//function  IntToStr(Value: Integer): PChar; stdcall; overload; external RTLDLL;
//function  IntToStr(Value:  Int64): PChar; stdcall; overload; external RTLDLL;

//function  UIntToStr(Value: UInt64): AnsiString; stdcall; external RTLDLL;
//function  StrAlloc(Size: Cardinal): PChar; stdcall; external RTLDLL;
//procedure StrDispose(P: PChar); stdcall; external RTLDLL;
//function  StrCopy(var Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;
//function  StrCat (var Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;

//function UIntToStrA(Value: UInt64): AnsiString; stdcall; external RTLDLL;
//function StrCopy_(var Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;
function StrCat(var Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;

//Function fpc_chararray_to_ansistr(const arr: array of char; zerobased: boolean = true): ansistring; compilerproc;
{$endif DLLIMPORT}
implementation

procedure fpc_pchar_ansistr_intern_charmove(const src: pchar; const srcindex: sizeint; var dst: rawbytestring; const dstindex, len: sizeint); {$ifdef FPC_HAS_CPSTRING}rtlproc;{$endif} {$ifdef SYSTEMINLINE}inline;{$endif}
begin
  move(src[srcindex],pbyte(pointer(dst))[dstindex],len);
end;

procedure fpc_pchar_pchar_intern_charmove(const src: pchar; const srcindex: sizeint; const dst: pchar; const dstindex, len: sizeint); {$ifdef FPC_HAS_CPSTRING}rtlproc;{$endif} {$ifdef SYSTEMINLINE}inline;{$endif}
begin
  move(src[srcindex],dst[dstindex],len);
end;

{$ifdef DLLEXPORT}
Procedure SetString(out S : AnsiString; Buf : PAnsiChar; Len : SizeInt); stdcall; export;
begin
  SetLength(S,Len);
  If (Buf<>Nil) then
    fpc_pchar_ansistr_intern_charmove(Buf,0,S,0,Len);
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
function StrPas(P: PAnsiChar): AnsiString; stdcall; export;
var
  Start: PAnsiChar;
  Len: Integer;
begin
  if P = nil then
    Exit('');
  Start := P;
  { Länge bis zum terminierenden #0 ermitteln }
  while P^ <> #0 do
    Inc(P);
  Len := P - Start;
  { AnsiString mit genau Len Zeichen anlegen }
  SetString(Result, Start, Len);
end;
{$endif DLLEXPORT}

{ 1) Null‑terminiertes statisches oder dynamisches Array }
{$ifdef DLLEXPORT}
function ChATAStr1(const A: array of AnsiChar): AnsiString; overload; stdcall; export;
var
  len: Integer;
  p: PAnsiChar;
begin
  len := Length(A);
  if len = 0 then
  begin
    Pointer(Result) := nil;
    Exit;
  end;

  // Speicher manuell allokieren (+1 für Nullterminator)
  GetMem(p, len + 1);
  Move(A[0], p^, len);
  p[len] := #0;  // Null-Terminierung setzen

  Pointer(Result) := p;
  // Hinweis: Result ist jetzt ein unsicherer String, ohne RefCount-Header!
end;
{$endif DLLEXPORT}

{ 2) Statisches oder dynamisches Array mit bekannter Länge }
{$ifdef DLLEXPORT}
function ChATAStr2(const A: array of AnsiChar; BufLen: Integer): AnsiString; overload; stdcall; export;
begin
  if (BufLen <= 0) or (Length(A) = 0) then
    Exit('');
  if BufLen > Length(A) then
    BufLen := Length(A);
  SetString(Result, PAnsiChar(@A[0]), BufLen);
end;
{$endif DLLEXPORT}

{ 3) PAnsiChar + Länge }
{$ifdef DLLEXPORT}
function ChATAStr3(P: PAnsiChar; BufLen: Integer): AnsiString; overload; stdcall; export;
begin
  if (P = nil) or (BufLen <= 0) then
    Exit('');
  SetString(Result, P, BufLen);
end;
{$endif DLLEXPORT}

function StrAlloc(Size: Cardinal): PChar; stdcall; export;
begin
  GetMem(result, Size + 1); // +1 für Nullterminator
  result[0] := #0;          // sicherstellen, dass String leer initialisiert ist
end;

procedure StrDispose(P: PChar); stdcall; export;
begin
  if P <> nil then
    FreeMem(P);
end;

{$ifdef DLLEXPORT}
function StrCopy_(var Dest: PChar; Source: PChar): PChar; stdcall; export;
var
  I : Integer;
  L : Integer;
begin
  L      := StrLen(Source);
  Dest   := StrAlloc(L + 1);
  
  for I := 0 to L - 1 do
  Dest  [i] := Source[i];
  Dest  [L] := #0;
  
  Exit(Dest);
end;
function StrCopy(var Dest: PChar; Source: PChar): PChar; stdcall;
begin
  if Dest = nil then
  Dest := StrAlloc(StrLen(Source) + 1);
  StrCopy_(Dest, Source);
  Exit(Dest);
end;
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
function StrCopy_(Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;
function StrCopy(Dest: PChar; Source: PChar): PChar; stdcall;
begin
  Exit(StrCopy_(Dest, Source));
end;
{$endif DLLIMPORT}

{$ifdef DLLEXPORT}
function StrCat(var Dest: PChar; Source: PChar): PChar; stdcall; export;
var
  D       : PChar;
  L, I, J : Integer;
begin
  if Dest = nil then
  begin
    MessageBoxA(0,'Error: StrCat Dest not initialized.','Error',0);
    Exit;
  end;

  if Strlen(Source) < 1 then
  begin
    Dest := '';
    Exit(Dest);
  end;
  
  L := StrLen(Dest) + StrLen(Source) + 1;
  D := StrAlloc(L);
  
  L := StrLen(Dest);
  i := 0;
  repeat
    D[i] := Dest[i];
    inc(i);
  until i = L;
  
  L := StrLen(Source);
  j := 0;
  repeat
    D[i + j] := Source[j];
    inc(j);
  until j = L;

  D[i + j] := #0;
  Dest := D;
  
  Exit(D);
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
function IntToStrCRT32(Value: Integer): PChar; stdcall; export;
var
  Buffer : array[0..16] of Char;
  I      : Integer;
begin
  result := StrAlloc(16);
  _itoa(Value, Buffer, 10);
  i := 0;
  repeat
    result[i] := Buffer[i];
    inc(i);
  until i = Length(Buffer);
  result[16] := #0;
end;
function IntToStrCRT64(Value: Int64): PChar; stdcall; export;
var
  Buffer : array[0..32] of AnsiChar;
  I      : Integer;
begin
  result := StrAlloc(32);
  _i64toa(Value, Buffer, 10);
  i := 0;
  repeat
    result[i] := Buffer[i];
    inc(i);
  until i = Length(Buffer);
  result[32] := #0;
end;

function IntToStr(Value: Integer): PChar; stdcall; overload; begin result := IntToStrCRT32(Value); end;
function IntToStr(Value:   Int64): PChar; stdcall; overload; begin result := IntToStrCRT64(Value); end;
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
function IntToStrCRT32(Value: Integer): PChar; stdcall; external RTLDLL;
function IntToStrCRT64(Value:   Int64): PChar; stdcall; external RTLDLL;

function IntToStr(Value: Integer): PChar; overload; stdcall; begin result := IntToStrCRT32(Value); end;
function IntToStr(Value:   Int64): PChar; overload; stdcall; begin result := IntToStrCRT64(Value); end;
{$endif DLLIMPORT}


{$ifdef DLLEXPORT}
function UIntToStrA(Value: UInt64): AnsiString; stdcall; export;
var
  temp: array[0..31] of Char;
  i: Integer;
begin
  i := High(temp);
  temp[i] := #0;
  Dec(i);

  repeat
    temp[i] := Char(Ord('0') + (Value mod 10));
    Value := Value div 10;
    Dec(i);
  until Value = 0;

  Result := AnsiString(@temp[i + 1]);
end;
function UIntToStr(Value: UInt64): AnsiString; stdcall;
begin
  result := UIntToStrA(Value);
end;
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
function UIntToStrA(Value: UInt64): AnsiString; stdcall; external RTLDLL;
function UIntToStr(Value: UInt64): AnsiString; stdcall;
begin
  result := UIntToStrA(Value);
end;
{$endif DLLIMPORT}

{$ifdef DLLEXPORT}
function CommandLineToArgvA(CmdLine: PAnsiChar; var argc: Integer): PPAnsiChar; stdcall; export;
const
  GMEM_FIXED = $0000;
var
  argv: PPAnsiChar;
  _argv: PAnsiChar;
  len: Cardinal;
  i, j: Cardinal;
  a: AnsiChar;
  in_QM, in_TEXT, in_SPACE: Boolean;
  allocSize: Cardinal;
begin
  len := StrLen(CmdLine);
  // Speichergröße berechnen (Pointer-Array + Stringblock)
  allocSize := ((len + 2) div 2) * SizeOf(Pointer) + SizeOf(Pointer);

  argv := PPAnsiChar(GlobalAlloc(GMEM_FIXED, allocSize + (len + 2) * SizeOf(AnsiChar)));
  if argv = nil then
  begin
    argc := 0;
    Result := nil;
    Exit;
  end;

  _argv := PAnsiChar(PByte(argv) + allocSize);

  argc := 0;
  argv[argc] := _argv;

  in_QM := False;
  in_TEXT := False;
  in_SPACE := True;
  i := 0;
  j := 0;

  while CmdLine[i] <> #0 do
  begin
    a := CmdLine[i];
    if in_QM then
    begin
      if a = '"' then
        in_QM := False
      else
      begin
        _argv[j] := a;
        Inc(j);
      end;
    end
    else
    begin
      case a of
        '"':
        begin
          in_QM := True;
          in_TEXT := True;
          if in_SPACE then
          begin
            argv[argc] := @_argv[j];
            Inc(argc);
          end;
          in_SPACE := False;
        end;
        ' ', #9, #10, #13:
        begin
          if in_TEXT then
          begin
            _argv[j] := #0;
            Inc(j);
          end;
          in_TEXT := False;
          in_SPACE := True;
        end;
      else
        in_TEXT := True;
        if in_SPACE then
        begin
          argv[argc] := @_argv[j];
          Inc(argc);
        end;
        _argv[j] := a;
        Inc(j);
        in_SPACE := False;
      end;
    end;
    Inc(i);
  end;

  _argv[j] := #0;
  argv[argc] := nil;

  Result := argv;
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
exports
  CommandLineToArgvA name 'CommandLineToArgvA',
  
  ChATAStr1 name 'ChATAStr1',
  ChATAStr2 name 'ChATAStr2',
  ChATAStr3 name 'ChATAStr3',
  
  UIntToStr  name 'UIntToStr',
  StrAlloc   name 'StrAlloc',
  StrCopy    name 'StrCopy',
  StrCat     name 'StrCat',
  StrDispose name 'StrDispose'
  ;
{$endif DLLEXPORT}

end.
