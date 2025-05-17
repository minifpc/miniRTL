// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
program test;

uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions,
  Locales, global,
  RtlLibImport, QApplicationPascal;

{$ifdef DLLIMPORT}
var
  sInformation: AnsiString; external RTLDLL;
  sError: AnsiString; external RTLDLL;
  sHello: AnsiString; external RTLDLL;
{$endif DLLIMPORT}

var
  rtl    : TRtl;
  s1, s2 : String;
  app    : QApplication;
begin
  app := QApplication.Create;
  try
    s1 := 'hallo welt';
    s2 := StringReplace(s1, 'hallo', 'dudu', TReplaceFlags([rfReplaceAll]));
    ShowMessage(PChar(sError));
    ShowMessage(LPCSTR(s2));
    raise Exception.Create('teker', 123);
  except
    MessageBoxA(0, PChar(sError), PChar(sError), 0);
  end;
  rtl := TRTL.Create;
  rtl.Free;
  app.Free;
end.
