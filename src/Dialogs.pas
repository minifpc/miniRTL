// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit Dialogs;

interface

uses global, Windows;

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLEXPORT}
procedure ShowMessageS  (msg: PChar); stdcall; export;
procedure ShowInfoS     (msg: PChar); stdcall; export;
procedure ShowWarningS  (msg: PChar); stdcall; export;
procedure ShowCriticalS (msg: PChar); stdcall; export;
procedure ShowError     (msg: PChar); stdcall; export;

procedure ShowMessageA  (msg: AnsiString); stdcall; export;
procedure ShowInfoA     (msg: AnsiString); stdcall; export;
procedure ShowWarningA  (msg: AnsiString); stdcall; export;
procedure ShowCriticalA (msg: AnsiString); stdcall; export;
procedure ShowErrorA    (msg: AnsiString); stdcall; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
procedure ShowMessageS  (msg: PChar); stdcall; external RTLDLL name 'ShowMessageS';
procedure ShowInfoS     (msg: PChar); stdcall; external RTLDLL name 'ShowInfoS';
procedure ShowInfo      (msg: PChar); stdcall; external RTLDLL name 'ShowInfoS';
procedure ShowWarningS  (msg: PChar); stdcall; external RTLDLL name 'ShowWarningS';
procedure ShowCriticalS (msg: PChar); stdcall; external RTLDLL name 'ShowCriticalS';
procedure ShowErrorS    (msg: PChar); stdcall; external RTLDLL name 'ShowErrorS';
procedure ShowError     (msg: PChar); stdcall; external RTLDLL name 'ShowErrorS';

procedure ShowMessageA  (msg: AnsiString); stdcall; external RTLDLL name 'ShowMessageA';
procedure ShowInfoA     (msg: AnsiString); stdcall; external RTLDLL name 'ShowInfoA';
procedure ShowWarningA  (msg: AnsiString); stdcall; external RTLDLL name 'ShowWarningA';
procedure ShowCriticalA (msg: AnsiString); stdcall; external RTLDLL name 'ShowCriticalA';
procedure ShowErrorA    (msg: AnsiString); stdcall; external RTLDLL name 'ShowErrorA';
{$endif DLLIMPORT}

implementation

uses Locales;

{$ifdef DLLEXPORT}
procedure ShowMessageS  (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar(' '),           MB_OK); end;
procedure ShowMessage   (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar(' '),           MB_OK); end;
procedure ShowInfoS     (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar('Information'), MB_OK); end;
procedure ShowInfo      (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar('Information'), MB_OK); end;
procedure ShowWarningS  (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar('Warning'),     MB_OK); end;
procedure ShowCriticalS (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar('Critical'),    MB_OK); end;
procedure ShowErrorS    (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar('Error'),       MB_OK); end;
procedure ShowError     (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar('Error'),       MB_OK); end;

procedure ShowMessageA   (msg: AnsiString); stdcall; export; begin ShowMessageS  (PChar(msg)); end;
procedure ShowInfoA      (msg: AnsiString); stdcall; export; begin ShowInfoS     (PChar(msg)); end;
procedure ShowWarningA   (msg: AnsiString); stdcall; export; begin ShowWarningS  (PChar(msg)); end;
procedure ShowCriticalA  (msg: AnsiString); stdcall; export; begin ShowCriticalS (PChar(msg)); end;
procedure ShowErrorA     (msg: AnsiString); stdcall; export; begin ShowError     (PChar(msg)); end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
exports
  ShowMessageS  name 'ShowMessageS',
  ShowInfoS     name 'ShowInfoS',
  ShowWarningS  name 'ShowWarningS',
  ShowCriticalS name 'ShowCriticalS',
  ShowError     name 'ShowErrorS',
  
  ShowMessageA  name 'ShowMessageA',
  ShowInfoA     name 'ShowInfoA',
  ShowWarningA  name 'ShowWarningA',
  ShowCriticalA name 'ShowCriticalA',
  ShowErrorA    name 'ShowErrorA'
  ;
{$endif DLLEXPORT}

end.
