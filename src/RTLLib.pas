// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$WARN IMPLICIT_STRING_CAST_LOSS OFF}
{$mode delphi}
{$H+}
library RTLLib;

{$L xmm.o}
{$L system.o}
{$L global.o}
{$L RTLUnit.o}
{$L exceptions.o}
{$L Locales.o}
{$L Dialogs.o}
{$L windows.o}
{$L SysUtils.o}
{$L sysinitpas.o}

{$LinkLib kernel32}
{$LinkLib msvcrt}

uses
  Windows, Exceptions, SysUtils, QApplicationPascal;
  
function  StrAlloc(Size: Cardinal): PChar; stdcall; external 'rtllib.dll';
function GetCommandLineA: LPSTR; stdcall; external kernel32;
function xmemsize(const p: pointer): ptruint; external;

function DllEntryPoint(dwReason: DWord): Bool;
begin
  writeln('zuzu');
  Exit(True);
end;

exports
  DllEntryPoint name 'DllEntryPoint';
  
begin
end.
