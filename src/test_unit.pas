// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
unit test_unit;

interface

//uses
//  Windows, Dialogs, SysUtils, StrUtils, Exceptions,
//  Locales, global,
//  RtlLibImport, QApplicationPascal;

procedure ExeStart;

implementation

////function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;
//procedure ShowMessage(msg: AnsiString); stdcall; external RTLDLL;
//function sError: AnsiString; external RTLDLL name 'sError';

procedure ExeStart;
var
  s1, s2 : PChar;
  //app    : QApplication;
begin
  //app := QApplication.Create;
  (*
  try
    try
      s1 := 'hallo welt';
      s2 := PChar(StringReplace(s1, 'hallo', 'dudu', TReplaceFlags([rfReplaceAll])));
      ShowMessage('mutti');
      ShowMessage(PChar(s2));
      //ShowMessage(sError);
      raise Exception.Create('tekker', 1234);
    except
      on E: Exception do
      begin
        ShowMessage('exxxxx');
      end;
    end;
  finally
    app.Free;
  end;*)
end;

end.
