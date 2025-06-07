// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$M-}
{$define DLLIMPORT}
program test;

uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions, Forms,
  Locales, global;

type
  TForm1 = class(TForm)
  private
    FButton: TButton;
  public
    constructor Create;
  end;

var
  Form1: TForm1;

procedure CleanUp_1; begin WriteLn('cleanup1 called.'); end;
procedure CleanUp_2; begin WriteLn('cleanup2 called.'); end;

constructor TForm1.Create;
begin
  FButton := TButton.Create(Form1);
end;

begin
  writeln('start');
  
  AddExitProc(@CleanUp_1);
  AddExitProc(@CleanUp_2);
  
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
  
  writeln('end.');
end.
