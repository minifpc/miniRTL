// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------

{$mode delphi}
{$define DLLIMPORT}
program test;

uses SysUtils, StrUtils, Exceptions, Dialogs, RtlLibImport, QApplicationPascal;

{$ifdef DLLIMPORT}
procedure ShowMessage(msg: PChar); stdcall; external 'rtllib.dll';
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
    ShowMessage(LPCSTR(s2));
    raise Exception.Create('teker', 123);
  except
    MessageBoxA(0, 'Error', 'Errr', 0);
  end;
  rtl := TRTL.Create;
  rtl.Free;
  app.Free;
end.
