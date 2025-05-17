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
    sInformation: AnsiString = 'Informations'; export;
    sWarning: AnsiString = 'Warning'; export;
    sError: AnsiString = 'Error'; export;
    sHello: AnsiString = 'Hello World'; export;
  {$endif LANGENU}

  // german
  {$ifdef LANGDEU}
  var
    sInformation: AnsiString = 'Information'; export;
    sError: AnsiString = 'Fehler'; export;
    sHello: AnsiString = 'Hallo Welt'; export;
  {$endif LANGDEU}
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
var
  sInformation: AnsiString; external RTLDLL;
  sWarning: AnsiString; external RTLDLL;
  sError: AnsiString; external RTLDLL;
  sHello: AnsiString; external RTLDLL;
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
