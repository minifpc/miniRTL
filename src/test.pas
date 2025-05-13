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

function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;
procedure ShowMessage(msg: PChar); stdcall; external RTLDLL;

procedure ExeStart; external name 'EXESTART';
function sError: AnsiString; external RTLDLL;

begin
  ShowMessage('sError');
  ExeStart;
end.
