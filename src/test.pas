// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$M-}
{$define DLLIMPORT}
program test;

uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions, Forms,
  Locales, global, ErrorData;

type
  TForm1 = class(TForm)
  private
    FButton1: TButton;
    FButton2: TButton;
    FCheckBox: TCheckBox;
    FRadioBox: TRadioBox;
    FProgressBar: TProgressBar;
    FComboBox: TComboBox;
    FSpinDate: TSpinDate;
    FSpinTime: TSpinTime;
    FMemo: TMemo;
  public
    constructor Create(x,y,w,h: Integer);
    procedure PushButton1_OnClick(Sender: TObject);
  end;

var
  Form1: TForm1;

constructor TForm1.Create(x, y, w, h: Integer);
begin
  inherited Create(x, y, w, h);
  
  FButton1     := TButton      . Create(self,  20,  20, 256,  42);
  FButton2     := TButton      . Create(self,  20,  80, 250,  42);
  
  FCheckBox    := TCheckBox    . Create(self,  20, 140, 100,  42);
  FRadioBox    := TRadioBox    . Create(self, 180, 140, 100,  42);
  FProgressBar := TProgressBar . Create(self,  20, 200, 240,  24);
  FComboBox    := TComboBox    . Create(self,  20, 232, 140, 104);

  FSpinDate    := TSpinDate    . Create(self, 310,  20, 100,  26);
  FSpinTime    := TSpinTime    . Create(self, 310,  85, 100,  26);
  
  FMemo        := TMemo        . Create(self, 200, 230, 200,  84);
  
  with FButton1 do
  begin
    OnClick := @PushButton1_onClick;
    Caption := 'Butt A';
  end;
end;
procedure TForm1.PushButton1_OnClick(Sender: TObject);
begin
  ShowInfo('Button 1 pressed.');
end;

procedure CleanUp_1; begin WriteLn('cleanup1 called.'); end;
procedure CleanUp_2; begin WriteLn('cleanup2 called.'); end;

begin
  writeln('start');
  
  AddExitProc(@CleanUp_1);
  AddExitProc(@CleanUp_2);
  
  //Application.Initialize;
  //Application.CreateForm(TForm1, Form1);
  
  Form1 := TForm1.Create(100, 100, 500, 400);
  Form1.ShowModal;
  
  //Application.Run;
  
  writeln('end.');
end.
