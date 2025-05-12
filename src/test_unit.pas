// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
unit test_unit;

interface
uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions,
  Locales, global,
  RtlLibImport, QApplicationPascal;

procedure ExeStart;

implementation

function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;
procedure ShowMessage(msg: PChar); stdcall; external RTLDLL;

var
  sError: PChar; external RTLDLL;
  
procedure ExeStart; [public, alias: 'EXESTART'];
var
  s1, s2 : PChar;
  app    : QApplication;
begin
  //app := QApplication.Create;
  try
    s1 := PChar('hallo welt');
    s2 := PChar(StringReplace(s1, 'hallo', 'dudu', TReplaceFlags([rfReplaceAll])));
    ShowMessage(PChar('mutti'));
    ShowMessage(s2);
    ShowMessage(PChar(sError));
  finally
    //app.Free;
  end;
end;

end.
