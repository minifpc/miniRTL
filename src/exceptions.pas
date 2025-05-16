// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------

unit Exceptions;

{$mode ObjFPC}{$H+}

interface
uses
  Windows;
  
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

procedure initExceptions;
var
  i : Integer;
begin
  exception_classes[200] := EDivByZero;
  exception_classes[201] := nil;
  exception_classes[202] := nil;
  exception_classes[203] := EOutOfMemory;
  
  for i := 204 to 215 do
  exception_classes[i] := nil;

  exception_classes[216] := EAccessViolation;
  
  for i := 217 to 236 do
  exception_classes[i] := nil;
end;

initialization
  initExceptions;
  
  ExceptObjProc := @default_ExceptObjProc;
  ExceptClsProc := @default_ExceptClsProc;
  ErrorProc := @default_ErrorProc;

end.
