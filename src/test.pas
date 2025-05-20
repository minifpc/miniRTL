// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
program test;

uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions, Forms,
  Application, Locales, global;

var
  app    : TApplication;
  form   : TForm;
begin
  app  := TApplication.Create;
  form := TForm.Create;
  try
    app.exec(form);
  finally
    form.Free;
    app.Free;
  end;
end.
