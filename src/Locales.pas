// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
unit Locales;
{$mode delphi}

interface
uses global;

{$ifdef DLLEXPORT}

  function sInformation: AnsiString;
  function sWarning: AnsiString; export;
  function sError: AnsiString; export;
  function sHello: AnsiString; export;
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
  function sInformation: AnsiString; external RTLDLL;
  function sWarning: AnsiString; external RTLDLL;
  function sError: AnsiString; external RTLDLL;
  function sHello: AnsiString; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
  // english
  {$ifdef LANGENU}
  function sInformation: AnsiString; export; begin Exit('Information'); end;
  function sWarning    : AnsiString; export; begin Exit('Warning'    ); end;
  function sError      : AnsiString; export; begin Exit('Error'      ); end;
  function sHello      : AnsiString; export; begin Exit('Hello'      ); end;
  {$endif LANGENU}
  
  // german
  {$ifdef LANGDEU}
  function sInformation: AnsiString; export; begin Exit('Information'); end;
  function sWarning    : AnsiString; export; begin Exit('Warnung'    ); end;
  function sError      : AnsiString; export; begin Exit('Fehler'     ); end;
  function sHello      : AnsiString; export; begin Exit('Hallo'      ); end;
  {$endif LANGDEU}
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
exports
  sInformation name 'sInformation',
  sWarning     name 'sWarning',
  sError       name 'sError',
  sHello       name 'sHello'
  ;
{$endif DLLEXPORT}

end.
