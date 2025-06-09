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
    
    sError_TApplication_nil      : AnsiString = 'TApplication is not allocated.'; export;
    sError_TApplication_ref      : AnsiString = 'internal Error: TApplication is not referenced.'; export;
    sError_TApplication_parseArgs: AnsiString = 'can not parse command line.'; export;
    
    sError_Internal                 : AnsiString = 'internel error: '; export;
    sError_ref                      : AnsiString = 'is not referenced.'; export;
    
    sError_TPersistent_ref          : AnsiString = 'internal Error: TPersistent is not referenced.'; export;
    
    sError_TComponent_ref           : AnsiString = 'internal Error: TComponent is not referenced.'; exporit;
    sError_TComponent_noOwner       : AnsiString = 'TComponent missing AOwner.'; export;
    
    sError_TControl_ref             : AnsiString = 'internal Error: TControl is not referenced.'; export;
    sError_TControl_noHandle        : AnsiString = 'TControl missing handle.'; export;
    
    sError_TWinControl_ref          : AnsiString = 'internal Error: TWinControl is not referenced.'; export;
    sError_TScrollingWinControl_ref : AnsiString = 'internal Error: TScrollingWinControl is not referenced.'; export;
    sError_TCustomForm_ref          : AnsiString = 'internal Error: TCustomForm is not referenced.'; export;
    
    sError_TButtonControl_ref       : AnsiString = 'internal Error: TButtonControl is not referenced.'; export;
    sError_TButton_ref              : AnsiString = 'internal Error: TButton is not referenced.'; export;
    
    sError_TCheckBox_ref            : AnsiString = 'internal Error: TCheckBox is not referenced.'; export;
    sError_TRadioBox_ref            : AnsiString = 'internal Error: TRadioBox is not referenced.'; export;
    sError_TProgressBar_ref         : AnsiString = 'internal Error: TProgressBar is not referenced.'; export;
    sError_TComboBox_ref            : AnsiString = 'internal Error: TComboBox is not referenced.'; export;
    
    sError_TSpinCalendar_ref        : AnsiString = 'internal Error: TSpinCalendar is not referenced.'; export;
    sError_TSpinTime_ref            : AnsiString = 'internal Error: TSpinTime is not referenced.'; export;
    
    sError_TMemo_ref                : AnsiString = 'internal Error: TMemo is not referenced.'; export;
    sError_TMemo_noOwner            : AnsiString = 'TMemo missing handle.'; export;
    
    sError_TComboBox_noOwner        : AnsiString = 'TComboBox missing handle.'; export;
    sError_TSpinDate_noOwner        : AnsiString = 'TSpinDate missing handle.'; export;
    sError_TSpinTime_noOwner        : AnsiString = 'TSpinTime missing handle.'; export;

    sError_TWinControl_noWindoeHandle : AnsiString = 'internal Error: No Window-Handle available.'; export;
    
    sError_TForm_nil: AnsiString = 'TForm is not allocated.'; export;
    sError_TForm_ref: AnsiString = 'internal Error: TForm not referenced.'; export;
    
    sError_AddExitProc: AnsiString = 'Too many ExitProcs registered.'; export;
    
    sHello      : AnsiString = 'Hello World'; export;
  {$endif LANGENU}

  // german
  {$ifdef LANGDEU}
  var
    sInformation: AnsiString = 'Information'; export;
    sWarning    : AnsiString = 'Warnung'; export;
    sCritical   : AnsiString = 'Kritisch'; export;
    sError      : AnsiString = 'Fehler'; export;
    
    sError_TApplication_nil      : AnsiString = 'TApplication ist nicht zugewiesen.'; export;
    sError_TApplication_ref      : AnsiString = 'internal Error: TApplication ist nichtt referenziert.'; export;
    sError_TApplication_parseArgs: AnsiString = 'kann Kommandozeile nicht ermitteln.'; export;
    
    sError_Internal                 : AnsiString = 'interner Fehler: '; export;
    sError_ref                      : AnsiString = 'ist nicht zugewiesen.'; export;
    
    sError_TPersistent_ref          : AnsiString = 'interner Fehler: TPersistent ist nicht zugewiesen.'; export;
    
    sError_TComponent_ref           : AnsiString = 'interner Fehler: TComponent ist nicht zugewiesen.'; export;
    sError_TComponent_noOwner       : AnsiString = 'TComponent besitzt keinen AOwner.'; export;
    
    sError_TControl_ref             : AnsiString = 'interner Fehler: TControl ist nicht zugewiesen.'; export;
    sError_TControl_noHandle        : AnsiString = 'interner Fehler: TControl kein Handle'; export;
    
    sError_TWinControl_ref          : AnsiString = 'interner Fehler: TWinControl ist nicht zugewiesen.'; export;
    sError_TScrollingWinControl_ref : AnsiString = 'interner Fehler: TScrollingWinControl ist nicht zugewiesen.'; export;
    sError_TCustomForm_ref          : AnsiString = 'interner Fehler: TCustomForm ist nicht zugewiesen.'; export;
    
    sError_TButtonControl_ref       : AnsiString = 'interner Fehler: TButtonControl ist nicht zugewiesen.'; export;
    sError_TButton_ref              : AnsiString = 'interner Fehler: TButton ist nicht zugewiesen.'; export;
    
    sError_TCheckBox_ref            : AnsiString = 'interner Fehler: TCheckBox ist nicht zugewiesen.'; export;
    sError_TRadioBox_ref            : AnsiString = 'interner Fehler: TRadioBox ist nicht zugewiesen.'; export;
    sError_TProgressBar_ref         : AnsiString = 'interner Fehler: TProgressBar ist nicht zugewiesen.'; export;
    
    sError_TComboBox_ref            : AnsiString = 'interner Fehler: TComboBox ist nicht zugewiesen.'; export;
    sError_TSpinDate_ref            : AnsiString = 'interner Fehler: TSpinDate ist nicht zugewiesen.'; export;
    sError_TSpinTime_ref            : AnsiString = 'interner Fehler: TSpinTime ist nicht zugewiesen.'; export;
    
    sError_TMemo_ref                : AnsiString = 'interner Fehler: TMemo ist nicht zugewiesen.'; export;
    sError_TMemo_noOwner            : AnsiString = 'TMemo besitzt keinen AOwner.'; export;
    
    sError_TComboBox_noOwner        : AnsiString = 'TComboBox besitzt keinen AOwner.'; export;
    sError_TSpinDate_noOwner        : AnsiString = 'TSpinDate besitzt keinen AOwner.'; export;
    sError_TSpinTime_noOwner        : AnsiString = 'TSpinTime besitzt keinen AOwner.'; export;
    
    sError_TWinControl_noWindoeHandle : AnsiString = 'interner Fehler: kein Fenster-Handle verfügbar.'; export;
    
    sError_TForm_nil: AnsiString = 'TForm ist nicht zugewiesen.'; export;
    sError_TForm_ref: AnsiString = 'interner Fehler: TForm nicht referenziert.'; export;
    
    sError_AddExitProc: AnsiString = 'zu viele ExitProcs registriert.'; export;
    
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
  sError_TControl_noHandle          : AnsiString; external RTLDLL;
  
  sError_TWinControl_ref            : AnsiString; external RTLDLL;
  sError_TScrollingWinControl_ref   : AnsiString; external RTLDLL;
  sError_TCustomForm_ref            : AnsiString; external RTLDLL;
  
  sError_TButtonControl_ref         : AnsiString; external RTLDLL;
  
  sError_TButton_ref                : AnsiString; external RTLDLL;
  sError_TCheckBox_ref              : AnsiString; external RTLDLL;
  sError_TRadioBox_ref              : AnsiString; external RTLDLL;
  sError_TProgressBar_ref           : AnsiString; external RTLDLL;
  
  sError_TComboBox_ref              : AnsiString; external RTLDLL;
  sError_TSpinDate_ref              : AnsiString; external RTLDLL;
  sError_TSpinTime_ref              : AnsiString; external RTLDLL;
  
  sError_TComboBox_noOwner          : AnsiString; external RTLDLL;
  sError_TSpinDate_noOwner          : AnsiString; external RTLDLL;
  sError_TSpinTime_noOwner          : AnsiString; external RTLDLL;
  
  sError_TMemo_ref                  : AnsiString; external RTLDLL;
  sError_TMemo_noOwner              : AnsiString; external RTLDLL;
  
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
  sError_TControl_noHandle          name 'sError_TControl_noHandle',
  
  sError_TWinControl_ref            name 'sError_TWinControl_ref',
  sError_TScrollingWinControl_ref   name 'sError_TScrollingWinControl_ref',
  sError_TCustomForm_ref            name 'sError_TCustomForm_ref',
  
  sError_TButtonControl_ref         name 'sError_TButtonControl_ref',
  sError_TButton_ref                name 'sError_TButton_ref',
  sError_TCheckBox_ref              name 'sError_TCheckBox_ref',
  sError_TRadioBox_ref              name 'sError_TRadioBox_ref',
  sError_TProgressBar_ref           name 'sError_TProgressBar_ref',
  
  sError_TComboBox_ref              name 'sError_TComboBox_ref',
  sError_TSpinDate_ref              name 'sError_TSpinDate_ref',
  sError_TSpinTime_ref              name 'sError_TSpinTime_ref',
  
  sError_TComboBox_noOwner          name 'sError_TComboBox_noOwner',
  sError_TSpinDate_noOwner          name 'sError_TSpinDate_noOwner',
  sError_TSpinTime_noOwner          name 'sError_TSpinTime_noOwner',
  
  sError_TMemo_noOwner              name 'sError_TMemo_noOwner',
  sError_TMemo_ref                  name 'sError_TMemo_ref',
  
  sError_TWinControl_noWindoeHandle name 'sError_TWinControl_noWindoeHandle',
  
  sError_TForm_nil name 'sError_TForm_nil',
  sError_TForm_ref name 'sError_TForm_ref'

  ;
{$endif DLLEXPORT}

end.
