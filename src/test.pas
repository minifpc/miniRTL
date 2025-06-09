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
  Form1: TForm;
  FButton1: TButton;
  FButton2: TButton;

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
  
  //Application.Initialize;
  //Application.CreateForm(TForm1, Form1);
  
  Form1 := TForm.Create;
  
  FButton1 := TButton.Create(Form1);
  FButton1.Top    :=  20;
  FButton1.Left   :=  20;
  FButton1.Width  := 320;
  FButton1.Height :=  64;

  FButton2 := TButton.Create(Form1);
  FButton2.Top    := 120;
  FButton2.Left   :=  20;
  FButton2.Width  := 320;
  FButton2.Height :=  64;
  
  Form1.ShowModal;
  
  //Application.Run;
  
  writeln('end.');
end.
