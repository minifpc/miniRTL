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
    
    sError_TApplication_nil      : AnsiString = 'TApplication is not allocated.';
    sError_TApplication_ref      : AnsiString = 'internal Error: TApplication is not referenced.';
    sError_TApplication_parseArgs: AnsiString = 'can not parse command line.';
    
    sError_Internal                 : AnsiString = 'internel error: ';
    sError_ref                      : AnsiString = 'is not referenced.';
    
    sError_TPersistent_ref          : AnsiString = 'internal Error: TPersistent is not referenced.';
    
    sError_TComponent_ref           : AnsiString = 'internal Error: TComponent is not referenced.';
    sError_TComponent_noOwner       : AnsiString = 'TComponent missing AOwner.';
    
    sError_TControl_ref             : AnsiString = 'internal Error: TControl is not referenced.';
    sError_TWinControl_ref          : AnsiString = 'internal Error: TWinControl is not referenced.';
    sError_TScrollingWinControl_ref : AnsiString = 'internal Error: TScrollingWinControl is not referenced.';
    sError_TCustomForm_ref          : AnsiString = 'internal Error: TCustomForm is not referenced.';
    
    sError_TButtonControl_ref       : AnsiString = 'internal Error: TButtonControl is not referenced.';
    sError_TButton_ref              : AnsiString = 'internal Error: TButton is not referenced.';

    sError_TWinControl_noWindoeHandle : AnsiString = 'internal Error: No Window-Handle available.';
    
    sError_TForm_nil: AnsiString = 'TForm is not allocated.';
    sError_TForm_ref: AnsiString = 'internal Error: TForm not referenced.';
    
    sError_AddExitProc: AnsiString = 'Too many ExitProcs registered.';
    
    sHello      : AnsiString = 'Hello World'; export;
  {$endif LANGENU}

  // german
  {$ifdef LANGDEU}
  var
    sInformation: AnsiString = 'Information'; export;
    sWarning    : AnsiString = 'Warnung'; export;
    sCritical   : AnsiString = 'Kritisch'; export;
    sError      : AnsiString = 'Fehler'; export;
    
    sError_TApplication_nil      : AnsiString = 'TApplication ist nicht zugewiesen.';
    sError_TApplication_ref      : AnsiString = 'internal Error: TApplication ist nichtt referenziert.';
    sError_TApplication_parseArgs: AnsiString = 'kann Kommandozeile nicht ermitteln.';
    
    sError_Internal                 : AnsiString = 'interner Fehler: ';
    sError_ref                      : AnsiString = 'ist nicht zugewiesen.';
    
    sError_TPersistent_ref          : AnsiString = 'interner Fehler: TPersistent ist nicht zugewiesen.';
    
    sError_TComponent_ref           : AnsiString = 'interner Fehler: TComponent ist nicht zugewiesen.';
    sError_TComponent_noOwner       : AnsiString = 'TComponent besitzt keinen AOwner.';
    
    sError_TControl_ref             : AnsiString = 'interner Fehler: TControl ist nicht zugewiesen.';
    sError_TWinControl_ref          : AnsiString = 'interner Fehler: TWinControl ist nicht zugewiesen.';
    sError_TScrollingWinControl_ref : AnsiString = 'interner Fehler: TScrollingWinControl ist nicht zugewiesen.';
    sError_TCustomForm_ref          : AnsiString = 'interner Fehler: TCustomForm ist nicht zugewiesen.';
    
    sError_TButtonControl_ref       : AnsiString = 'interner Fehler: TButtonControl ist nicht zugewiesen.';
    sError_TButton_ref              : AnsiString = 'interner Fehler: TButton ist nicht zugewiesen.';
    
    sError_TWinControl_noWindoeHandle : AnsiString = 'interner Fehler: kein Fenster-Handle verfügbar.';
    
    sError_TForm_nil: AnsiString = 'TForm ist nicht zugewiesen.';
    sError_TForm_ref: AnsiString = 'interner Fehler: TForm nicht referenziert.';
    
    sError_AddExitProc: AnsiString = 'zu viele ExitProcs registriert.';
    
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

  sError_Internal : AnsiString      ; external RTLDLL;
  sError_ref      : AnsiString      ; external RTLDLL;
  
  sError_TApplication_nil           : AnsiString; external RTLDLL;
  sError_TApplication_ref           : AnsiString; external RTLDLL;
  sError_TApplication_parseArgs     : AnsiString; external RTLDLL;

  sError_TPersistent_ref            : AnsiString; external RTLDLL;
  
  sError_TComponent_ref             : AnsiString; external RTLDLL;
  sError_TComponent_noOwner         : AnsiString; external RTLDLL;
  
  sError_TControl_ref               : AnsiString; external RTLDLL;
  sError_TWinControl_ref            : AnsiString; external RTLDLL;
  sError_TScrollingWinControl_ref   : AnsiString; external RTLDLL;
  sError_TCustomForm_ref            : AnsiString; external RTLDLL;
  
  sError_TButtonControl_ref         : AnsiString; external RTLDLL;
  sError_TButton_ref                : AnsiString; external RTLDLL;
  
  sError_TWinControl_noWindoeHandle : AnsiString; external RTLDLL;
  
  sError_TForm_nil: AnsiString      ; external RTLDLL;
  sError_TForm_ref: AnsiString      ; external RTLDLL;
  
  sError_AddExitProc: AnsiString    ; external RTLDLL;
  
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
exports
  sInformation name 'sInformation',
  sWarning     name 'sWarning',
  sError       name 'sError',
  sHello       name 'sHello',
  
  sError_Internal,
  sError_ref,
  
  sError_TApplication_nil           name 'sError_TApplication_nil',
  sError_TApplication_ref           name 'sError_TApplication_ref',
  sError_TApplication_parseArgs     name 'sError_TApplication_parseArgs',

  sError_TPersistent_ref            name 'sError_TPersistent_ref',
  
  sError_TComponent_ref             name 'sError_TComponent_ref',
  sError_TComponent_noOwner         name 'sError_TComponent_noOwner',
  
  sError_TControl_ref               name 'sError_TControl_ref',
  sError_TWinControl_ref            name 'sError_TWinControl_ref',
  sError_TScrollingWinControl_ref   name 'sError_TScrollingWinControl_ref',
  sError_TCustomForm_ref            name 'sError_TCustomForm_ref',
  
  sError_TButtonControl_ref         name 'sError_TButtonControl_ref',
  sError_TButton_ref                name 'sError_TButton_ref',
  
  sError_TWinControl_noWindoeHandle name 'sError_TWinControl_noWindoeHandle',
  
  sError_TForm_nil name 'sError_TForm_nil',
  sError_TForm_ref name 'sError_TForm_ref'

  ;
{$endif DLLEXPORT}

end.
