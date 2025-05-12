// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$define DLLIMPORT}
program test;
{$L test_unit.o}

uses
  Windows, Dialogs, SysUtils, StrUtils, Exceptions,
  Locales, global,
  RtlLibImport, QApplicationPascal;

procedure ExeStart; external name 'EXESTART';

begin
  ShowMessage('sError');
  ExeStart;
end.
