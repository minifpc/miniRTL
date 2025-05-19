// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
unit Locales;

interface
uses global;

{$ifdef DLLEXPORT}
  // english
  {$ifdef LANGENU}
  var
    sInformation: AnsiString = 'Informations'; export;
    sWarning    : AnsiString = 'Warning'; export;
    sCritical   : AnsiString = 'Critical'; export;
    sError      : AnsiString = 'Error'; export;
    
    sError_QApplication_nil      : AnsiString = 'QApplication is not allocated.';
    sError_QApplication_ref      : AnsiString = 'internal Error: QApplication is not referenced.';
    sError_QApplication_parseArgs: AnsiString = 'can not parse command line.';
    
    sError_QApplication_TForm_nil: AnsiString = 'TForm is not allocated.';
    sError_QApplication_TForm_ref: AnsiString = 'internal Error: TForm not referenced.';
    
    sHello      : AnsiString = 'Hello World'; export;
  {$endif LANGENU}

  // german
  {$ifdef LANGDEU}
  var
    sInformation: AnsiString = 'Information'; export;
    sWarning    : AnsiString = 'Warnung'; export;
    sCritical   : AnsiString = 'Kritisch'; export;
    sError      : AnsiString = 'Fehler'; export;
    
    sError_QApplication_nil      : AnsiString = 'QApplication ist nicht zugewiesen.';
    sError_QApplication_ref      : AnsiString = 'internal Error: QApplication ist nichtt referenziert.';
    sError_QApplication_parseArgs: AnsiString = 'kann Kommandozeile nicht ermitteln.';
    
    sError_QApplication_TForm_nil: AnsiString = 'TForm ist nicht zugewiesen.';
    sError_QApplication_TForm_ref: AnsiString = 'interner Fehler: TForm nicht referenziert.';
    
    sHello      : AnsiString = 'Hallo Welt'; export;
  {$endif LANGDEU}
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
var
  sInformation  : AnsiString; external RTLDLL;
  sWarning      : AnsiString; external RTLDLL;
  sCritical     : AnsiString; external RTLDLL;
  sError        : AnsiString; external RTLDLL;
  sHello        : AnsiString; external RTLDLL;

  sError_QApplication_nil      : AnsiString; external RTLDLL;
  sError_QApplication_ref      : AnsiString; external RTLDLL;
  sError_QApplication_parseArgs: AnsiString; external RTLDLL;

  sError_QApplication_TForm_nil: AnsiString; external RTLDLL;
  sError_QApplication_TForm_ref: AnsiString; external RTLDLL;
  
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
