// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// all rigths reserved.
//
// This file is part of Windows Error Codes
// ---------------------------------------------------------------------------------------
{$mode delphi}

unit ErrorData;

interface
uses
{$ifdef LANGENU}
ErrorDataENU,     // english
{$endif LANGENU}
{$ifdef LANGDEU}
ErrorDataDEU,     // german
{$endif LANGDEU}
Windows, Exceptions;

type
  EWindowsError = class(Exception)
  public
    constructor CreateError(ErrCode: DWORD; const msg: String);
  end;

procedure RaiseLastOSError;
implementation

uses
  StrUtils;

constructor EWindowsError.CreateError(ErrCode: DWORD; const msg: String);
begin
  inherited CreateFmt('Windows-Error %d: %s', [ErrCode, msg]);
end;

procedure RaiseLastOSError;
var
  ErrCode: DWORD;
  MsgBuf: array[0..255] of Char;
  MsgLen: DWORD;
  MsgStr: string;
begin
  ErrCode := GetLastError;
  if ErrCode = 0 then Exit;

  MsgLen := FormatMessageA(
  FORMAT_MESSAGE_FROM_SYSTEM or FORMAT_MESSAGE_IGNORE_INSERTS,
  nil,
  ErrCode,
  0,
  MsgBuf,
  Length(MsgBuf),
  nil);

  if MsgLen = 0 then
  MsgStr := Format('Unbekannter Fehler: %d', [ErrCode]) else
  SetString(MsgStr, MsgBuf, MsgLen);

  raise EWindowsError.CreateError(ErrCode, MsgStr);
end;

end.
