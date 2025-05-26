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

var
  app    : TApplication;
  form   : TForm;

procedure CleanUp1;
begin
  WriteLn('cleanup1 called.');
end;

procedure CleanUp2;
begin
  WriteLn('cleanup2 called.');
end;

begin
  writeln('start');
  
  AddExitProc(@CleanUp1);
  AddExitProc(@CleanUp2);
  
  app  := TApplication.Create;
  form := TForm.Create;
  try
    app.exec(form);
    writeln('after exec');
  finally
    form.Free;
    app.Free;
    writeln('after finally)');
  end;
  writeln('at end');
end.
