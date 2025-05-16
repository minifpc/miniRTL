// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
//{ $ mode delphi}
//unit Dialogs;

//interface

//uses global, Windows;
{$if defined(codeh) and defined(codei)}
{$FATAL interface and implementation at the same time not possible}
{$endif}

{$ifdef codeh}
function MessageBoxA(hWnd: HWND; lpText, lpCaption: LPCSTR; uType: UINT): Integer; stdcall; external 'user32.dll' name 'MessageBoxA';
{$ifdef DLLEXPORT}
procedure ShowMessage(msg: PChar); stdcall; export;
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
procedure ShowMessage(msg: PChar); stdcall; external RTLDLL;
{$endif DLLIMPORT}

{$endif}
{$ifdef codei}
//implementation

{$ifdef DLLEXPORT}
procedure ShowMessage(msg: PChar); stdcall; export;
begin
  MessageBoxA(0, msg, PChar(' '), 0);
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
//exports
//  ShowMessage name 'ShowMessage'
//  ;
{$endif DLLEXPORT}

//end.

{$endif}
