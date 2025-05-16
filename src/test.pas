// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
{$LinkPath '.'}
program test;
uses
  Windows, QApplicationPascal;

var
  app: TApplication;
begin
  app := TApplication.Create;
  try
  ShowMessage('sError');
  finally
    app.Free;
  end;
end.
