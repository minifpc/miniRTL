// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$M-}
{$define DLLIMPORT}
{$R test.res}
program test;

uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions, Forms, Stream,
  Locales, global, ErrorData, Container, Graphics, ApplicationUnit;

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
    
    class function ClassName: String; stdcall; virtual;
    
    procedure PushButton1_OnClick(Sender: TObject);
    procedure PushButton2_OnClick(Sender: TObject);
  end;

type
  TVector        = specialize TListVector< Integer >;
  TVectorReverse = TVector.ReverseEnumerator;
  
  TIntegerFileStream = specialize TFileStream<Integer>;
var
  Form1 : TForm1;

var
  FS    : TIntegerFileStream;
  
  V     : TVector;
  REnum : TVectorReverse;
  
constructor TForm1.Create(x, y, w, h: Integer);
begin
  inherited Create(ClassName, x, y, w, h);
  
  FButton1     := TButton      . Create(self,  20,  20, 256,  42);
  FButton2     := TButton      . Create(self,  20,  80, 250,  42);
  
  FCheckBox    := TCheckBox    . Create(self,  20, 140, 100,  42);
  FRadioBox    := TRadioBox    . Create(self, 180, 140, 100,  42);
  FProgressBar := TProgressBar . Create(self,  20, 200, 240,  24);
  FComboBox    := TComboBox    . Create(self,  20, 232, 140, 104);

  FSpinDate    := TSpinDate    . Create(self, 310,  20, 100,  26);
  FSpinTime    := TSpinTime    . Create(self, 310,  85, 100,  26);
  
  FMemo        := TMemo        . Create(self, 200, 230, 200,  84);
  
  FButton2.Caption := 'Butt B';
  FButton2.OnClick := @PushButton2_onClick;
  
  with FButton1 do
  begin
    OnClick := @PushButton1_onClick;
    Caption := 'Butt A';
  end;
end;
class function TForm1.ClassName: String; stdcall;
begin
  result := 'TForm1';
end;
procedure TForm1.PushButton1_OnClick(Sender: TObject);
begin
  ShowInfo('Button 1 pressed.');
end;
procedure TForm1.PushButton2_onClick(Sender: TObject);
begin
  writeln(FButton2.Caption);
  if FButton2.Caption  = 'Butt B' then
     FButton2.Caption := 'Butt C' else
     FButton2.Caption := 'Butt B' ;
end;

procedure CleanUp_1; begin WriteLn('cleanup1 called.'); end;
procedure CleanUp_2; begin WriteLn('cleanup2 called.'); end;

var
  item: Integer;
  tc: TComponent;
begin
  writeln('start');
  
  AddExitProc(@CleanUp_1);
  AddExitProc(@CleanUp_2);
  
  Application := TApplication.Create;
  Application.Initialize;
  //Application.CreateForm(TForm1, Form1);
  
  V := TVector.Create(12);
  V.Add(2);
  V.Add(3);
  V.Add(4);
  
  for item in V do
  writeln('Value: ', IntToStr(item));
  
  REnum := V.GetReverseEnumerator;
  writeln('reeee');
  while REnum.MoveNext do
  writeln('Value: ', intToStr(REnum.Current));
  
  writeln('fooo');
  
  FS := TIntegerFileStream.Create;
  FS.LoadFromFile('test.$$$');
  FS.Free;
  
  (*
  Form1 := TForm1.Create(100, 100, 500, 400);
  if Assigned(Components) then
  begin
    for tc in Components do
    writeln('cn: ' + tc.ClassName);
  end else
  begin
    writeln('no components.');
  end;
  
  Form1.ShowModal;*)
    
  REnum.Free;
  V.Free;
  
  Application.Free;
  
  writeln('end.');
end.
