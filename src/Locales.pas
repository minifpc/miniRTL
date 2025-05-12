// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
unit Locales;

interface
uses global;

// english
{$ifdef DLLEXPORT}
  {$ifdef LANGENU}
  var
    sInformation: PChar = 'Informations'; export;
    sWarning: PChar = 'Warning'; export;
    sError: PChar = 'Error'; export;
    sHello: PChar = 'Hello World'; export;
  {$endif LANGENU}

  // german
  {$ifdef LANGDEU}
  var
    sInformation: PChar = 'Information'; export;
    sError: PChar = 'Fehler'; export;
    sHello: PChar = 'Hallo Welt'; export;
  {$endif LANGDEU}
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
var
  sInformation: PChar; external RTLDLL;
  sWarning: PChar; external RTLDLL;
  sError: PChar; external RTLDLL;
  sHello: PChar; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORTss}
exports
  sInformation name 'sInformation',
  sWarning     name 'sWarning',
  sError       name 'sError',
  sHello       name 'sHello'
  ;
{$endif DLLEXPORT}

end.
