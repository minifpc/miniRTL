// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
program test;
{$mode objfpc}{$H+}

{$L main.o}
{$L xmm.o}
{$L system.o}
{$L global.o}
{$L exceptions.o}
{$L Locales.o}
{$L Dialogs.o}
{$L windows.o}
{$L SysUtils.o}
{$L sysinitpas.o}
{$L QApplicationPascal.o}

{$LinkLib kernel32}
{$LinkLib msvcrt}

uses Windows, Exceptions, SysUtils, QApplicationPascal, main;

function  StrAlloc(Size: Cardinal): PChar; stdcall; external 'rtllib.dll';
function GetCommandLineA: LPSTR; stdcall; external kernel32;
function xmemsize(const p: pointer): ptruint; external;

procedure _start; stdcall; external name '_START';

function TApplication_Create(p: TApplication): TApplication; stdcall; external;
function TApplication_Create2(p: TApplication; var ArgCount: Integer; var Args: PPChar): TApplication; stdcall; external 'rtllib.dll';
procedure TApplication_Destroy(P: TApplication); stdcall; external 'rtllib.dll';

begin
writeln('start');
_start;
end.
