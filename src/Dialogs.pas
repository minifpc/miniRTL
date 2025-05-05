// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit Dialogs;

interface

uses global, Windows;

{$ifdef DLLEXPORT}
procedure ShowMessage(msg: PChar); stdcall; export;
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
procedure ShowMessage(msg: PChar); stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
procedure ShowMessage(msg: PChar); stdcall; export;
begin
  MessageBoxA(0, msg, PChar(' '), 0);
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
exports
  ShowMessage name 'ShowMessage'
  ;
{$endif DLLEXPORT}

end.
