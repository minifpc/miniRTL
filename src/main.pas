unit main;
{$mode objfpc}{$H+}

interface

procedure _start; stdcall;

implementation
uses
  Dialogs, App

procedure _start; [public, alias: '_START']; stdcall;
var
  app: TApplication;
begin
  app := TApplication.Create;
  try
    ShowMessage('sError');
  finally
    app.Free;
  end;
end;

end.
