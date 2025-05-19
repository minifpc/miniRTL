// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
program test;

uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions, Forms,
  QApp, Locales, global;

var
  app    : QApplication;
  form   : TForm;
begin
  app  := QApplication.Create;
  form := TForm.Create;
  try
    app.exec(form);
  finally
    form.Free;
    app.Free;
  end;
end.
