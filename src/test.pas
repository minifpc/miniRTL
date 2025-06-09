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
  FCheckBox: TCheckBox;
  FRadioBox: TRadioBox;
  FProgressBar: TProgressBar;

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
  Form1.Width  := 500;
  Form1.Height := 400;
  Form1.Top    := 100;
  Form1.Left   := 100;
  
  FButton1 := TButton.Create(Form1);
  FButton1.Top    :=  20;
  FButton1.Left   :=  20;
  FButton1.Width  := 250;
  FButton1.Height :=  42;

  FButton2 := TButton.Create(Form1);
  FButton2.Top    :=  80;
  FButton2.Left   :=  20;
  FButton2.Width  := 250;
  FButton2.Height :=  42;
  
  FCheckBox := TCheckBox.Create(Form1);
  FCheckBox.Top    := 140;
  FCheckBox.Left   :=  20;
  FCheckBox.Width  := 170;
  FCheckBox.Height :=  42;
  
  FRadioBox := TRadioBox.Create(Form1);
  FRadioBox.Top    := 140;
  FRadioBox.Left   := 210;
  FRadioBox.Width  := 120;
  FRadioBox.Height :=  42;
  
  FProgressBar := TProgressBar.Create(Form1);
  FProgressBar.Top    := 200;
  FProgressBar.Left   :=  20;
  FProgressBar.Width  := 180;
  FProgressBar.Height :=  24;
  
  Form1.ShowModal;
  
  //Application.Run;
  
  writeln('end.');
end.
