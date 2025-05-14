// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
unit test_unit;

interface
uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions,
  Locales, global, xmm,
  RtlLibImport, QApplicationPascal;

procedure ExeStart;

implementation

function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;
procedure ShowMessage(msg: AnsiString); stdcall; external RTLDLL;
function sError: AnsiString; external RTLDLL name 'sError';

procedure ExeStart; [public, alias: 'EXESTART'];
var
  s1, s2 : AnsiString;
  app    : QApplication;
begin
  app := QApplication.Create;
  try
    s1 := 'hallo welt';
    s2 := StringReplace(s1, 'hallo', 'dudu', TReplaceFlags([rfReplaceAll]));
    ShowMessage('mutti');
    ShowMessage(s2);
    ShowMessage(sError);
  finally
    //app.Free;
  end;
end;

end.
