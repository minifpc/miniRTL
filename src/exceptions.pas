// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------

unit Exceptions;

{$mode ObjFPC}{$H+}

interface  

uses Windows;

function translate_windows_error(code: integer): string;

type
  Exception = class(TObject)
    Message: string;
    Code: integer;
    constructor Create(const msg: string; const errcode: integer);
  end;

  EDivByZero       = class(Exception) end;  
  EOutOfMemory     = class(Exception) end;
  EAccessViolation = class(Exception) end;
  // @@todo: add more

var
  exception_classes: array[200..236] of TClass;

function FormatMessageA(dwFlags: DWORD; lpSource: LPCVOID; dwMessageId: DWORD; dwLanguageId: DWORD;
  lpBuffer: LPSTR; nSize: DWORD; Arguments: Pointer): DWORD; stdcall; external 'kernel32.dll';
function FormatMessageW(dwFlags: DWORD; lpSource: LPCVOID; dwMessageId: DWORD; dwLanguageId: DWORD;
  lpBuffer: LPWSTR; nSize: DWORD; Arguments: Pointer): DWORD; stdcall; external 'kernel32.dll';

const
  FORMAT_MESSAGE_ALLOCATE_BUFFER = $00000100;
  FORMAT_MESSAGE_IGNORE_INSERTS  = $00000200;
  FORMAT_MESSAGE_FROM_STRING     = $00000400;
  FORMAT_MESSAGE_FROM_HMODULE    = $00000800;
  FORMAT_MESSAGE_FROM_SYSTEM     = $00001000;
  FORMAT_MESSAGE_ARGUMENT_ARRAY  = $00002000;

implementation

function translate_windows_error(code: integer): string;
var
  len: DWord;
  buf: PAnsiChar;
begin
  len := FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM or FORMAT_MESSAGE_IGNORE_INSERTS or FORMAT_MESSAGE_ALLOCATE_BUFFER,
    nil,
    code,
    MAKELANGID(0{LANG_NEUTRAL}, 1{SUBLANG_DEFAULT}),
    @buf,
    0,
    nil);
  writeln('len = ', len);
  //exceptions.pas(78,3) Error: Unknown compilerproc "fpc_write_text_pchar_as_pointer". Check if you use the correct run time library.
  //writeln('msg = ', buf);
  writeln('msg = ', string(buf));
  //MessageBoxA(0, buf, buf, 0);
  //ExitProcess(0);
  result := buf;
  //FillChar(buf^, len, 0);
  //exceptions.pas(79,21) Error: Unknown compilerproc "fpc_pchar_length". Check if you use the correct run time library.
  //setlength(result, length(buf));
  //setlength(result, len);
  //move(buf^, result[1], length(result));
  writeln('result = ', result);
  LocalFree(HLOCAL(buf));
end;

constructor Exception.Create(const msg: string; const errcode: integer);
begin
  Message := msg;
  Code := errcode;
end;

function default_ExceptObjProc(code: LongInt; const rec: EXCEPTION_RECORD): Pointer;
begin
  result := TTestException.Create('@@todo');
end;

function default_ExceptClsProc(code: LongInt): Pointer;
begin
  if (code >= low(exception_classes)) and (code <= high(exception_classes)) then result := exception_classes[code] else result := nil;
end;

procedure default_ErrorProc(code: Longint; addr: Pointer; frame: Pointer);
begin
  raise TTestException.Create('@@todo');
end;

{$ifdef DLLEXPORT}
procedure initExceptions_; stdcall; export;
begin
  exception_classes[200] := EDivByZero;
  exception_classes[201] := nil;
  exception_classes[202] := nil;
  exception_classes[203] := EOutOfMemory;
  exception_classes[204] := nil;
  exception_classes[205] := nil;
  exception_classes[206] := nil;
  exception_classes[207] := nil;
  exception_classes[208] := nil;
  exception_classes[209] := nil;
  exception_classes[210] := nil;
  exception_classes[211] := nil;
  exception_classes[212] := nil;
  exception_classes[213] := nil;
  exception_classes[214] := nil;
  exception_classes[215] := nil;
  exception_classes[216] := EAccessViolation;
  exception_classes[217] := nil;
  exception_classes[218] := nil;
  exception_classes[219] := nil;
  exception_classes[220] := nil;
  exception_classes[221] := nil;
  exception_classes[222] := nil;
  exception_classes[223] := nil;
  exception_classes[224] := nil; 
  exception_classes[225] := nil;
  exception_classes[226] := nil;
  exception_classes[227] := nil;
  exception_classes[228] := nil;
  exception_classes[229] := nil;    
  exception_classes[230] := nil;
  exception_classes[231] := nil;
  exception_classes[232] := nil;
  exception_classes[233] := nil;
  exception_classes[234] := nil;
  exception_classes[235] := nil;
  exception_classes[236] := nil;
end;
procedure initExceptions;
begin
  initExceptions_;
end;
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
procedure initExceptions_; stdcall; external RTLDLL;
procedure initExceptions;
begin
  initExceptions_;
end;
{$endif DLLIMPORT}

{$ifdef DLLEXPORT}
exports
  initExceptions_ name 'initExceptions_';
{$endif DLLEXPORT}

initialization
  initExceptions;
  
  ExceptObjProc := @default_ExceptObjProc;
  ExceptClsProc := @default_ExceptClsProc;
  ErrorProc := @default_ErrorProc;

end.
