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
procedure ShowMessage_PChar  (msg: PChar); overload; stdcall; export;
procedure ShowInfo_PChar     (msg: PChar); overload; stdcall; export;
procedure ShowWarning_PChar  (msg: PChar); overload; stdcall; export;
procedure ShowCritical_PChar (msg: PChar); overload; stdcall; export;
procedure ShowError_PChar    (msg: PChar); overload; stdcall; export;

procedure ShowMessage_AnsiString  (msg: AnsiString); overload; stdcall; export;
procedure ShowInfo_AnsiString     (msg: AnsiString); overload; stdcall; export;
procedure ShowWarning_AnsiString  (msg: AnsiString); overload; stdcall; export;
procedure ShowCritical_AnsiString (msg: AnsiString); overload; stdcall; export;
procedure ShowError_AnsiString    (msg: AnsiString); overload; stdcall; export;

// ---------------------------------------------------------------------------------------
// internal wrapper for "not exprted" function's and procedure's ...
// ---------------------------------------------------------------------------------------
procedure ShowMessage  (msg: PChar); overload; stdcall;
procedure ShowInfo     (msg: PChar); overload; stdcall;
procedure ShowWarning  (msg: PChar); overload; stdcall;
procedure ShowCritical (msg: PChar); overload; stdcall;
procedure ShowError    (msg: PChar); overload; stdcall;

procedure ShowMessage  (msg: AnsiString); overload; stdcall;
procedure ShowInfo     (msg: AnsiString); overload; stdcall;
procedure ShowWarning  (msg: AnsiString); overload; stdcall;
procedure ShowCritical (msg: AnsiString); overload; stdcall;
procedure ShowError    (msg: AnsiString); overload; stdcall;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
procedure ShowMessage  (msg: PChar); overload; stdcall; external RTLDLL name 'ShowMessage_PChar';
procedure ShowInfo     (msg: PChar); overload; stdcall; external RTLDLL name 'ShowInfo_PChar';
procedure ShowWarning  (msg: PChar); overload; stdcall; external RTLDLL name 'ShowWarning_PChar';
procedure ShowCritical (msg: PChar); overload; stdcall; external RTLDLL name 'ShowCritical_PChar';
procedure ShowError    (msg: PChar); overload; stdcall; external RTLDLL name 'ShowError_PChar';

procedure ShowMessage  (msg: AnsiString); overload; stdcall; external RTLDLL name 'ShowMessage_AnsoString';
procedure ShowInfo     (msg: AnsiString); overload; stdcall; external RTLDLL name 'ShowInfo_AnsoString';
procedure ShowWarning  (msg: AnsiString); overload; stdcall; external RTLDLL name 'ShowWarning_AnsoString';
procedure ShowCritical (msg: AnsiString); overload; stdcall; external RTLDLL name 'ShowCritical_AnsoString';
procedure ShowError    (msg: AnsiString); overload; stdcall; external RTLDLL name 'ShowError_AnsoString';
{$endif DLLIMPORT}

implementation

uses Locales;

{$ifdef DLLEXPORT}
procedure ShowMessage_PChar  (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar(' '),          MB_OK); end;
procedure ShowInfo_PChar     (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar(sInformation), MB_OK); end;
procedure ShowError_PChar    (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar(sError),       MB_OK); end;
procedure ShowWarning_PChar  (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar(sWarning),     MB_OK); end;
procedure ShowCritical_PChar (msg: PChar); stdcall; export; begin MessageBoxA(0, msg, PChar(sCritical),    MB_OK); end;

procedure ShowMessage_AnsiString  (msg: AnsiString); stdcall; export; begin ShowMessage_PChar  (PChar(msg)); end;
procedure ShowInfo_AnsiString     (msg: AnsiString); stdcall; export; begin ShowInfo_PChar     (PChar(msg)); end;
procedure ShowError_AnsiString    (msg: AnsiString); stdcall; export; begin ShowError_PChar    (PChar(msg)); end;
procedure ShowWarning_AnsiString  (msg: AnsiString); stdcall; export; begin ShowWarning_PChar  (PChar(msg)); end;
procedure ShowCritical_AnsiString (msg: AnsiString); stdcall; export; begin ShowCritical_PChar (PChar(msg)); end;

procedure ShowMessage  (msg: PChar); stdcall; begin ShowMessage_PChar  (msg); end;
procedure ShowInfo     (msg: PChar); stdcall; begin ShowInfo_PChar     (msg); end;
procedure ShowWarning  (msg: PChar); stdcall; begin ShowWarning_PChar  (msg); end;
procedure ShowCritical (msg: PChar); stdcall; begin ShowCritical_PChar (msg); end;
procedure ShowError    (msg: PChar); stdcall; begin ShowError_PChar    (msg); end;

procedure ShowMessage  (msg: AnsiString); stdcall; begin ShowMessage_AnsiString  (msg); end;
procedure ShowInfo     (msg: AnsiString); stdcall; begin ShowInfo_AnsiString     (msg); end;
procedure ShowWarning  (msg: AnsiString); stdcall; begin ShowWarning_AnsiString  (msg); end;
procedure ShowCritical (msg: AnsiString); stdcall; begin ShowCritical_AnsiString (msg); end;
procedure ShowError    (msg: AnsiString); stdcall; begin ShowError_AnsiString    (msg); end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
exports
  ShowMessage_PChar  name 'ShowMessage_PChar',
  ShowInfo_PChar     name 'ShowInfo_PChar',
  ShowWarning_PChar  name 'ShowWarning_PChar',
  ShowCritical_PChar name 'ShowCritical_PChar',
  ShowError_PChar    name 'ShowError_PChar',
  
  ShowMessage_AnsiString  name 'ShowMessage_AnsiString',
  ShowInfo_AnsiString     name 'ShowInfo_AnsiString',
  ShowWarning_AnsiString  name 'ShowWarning_AnsiString',
  ShowCritical_AnsiString name 'ShowCritical_AnsiString',
  ShowError_AnsiString    name 'ShowError_AnsiString'

  ;
{$endif DLLEXPORT}

end.
