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
    sInformation: PChar = 'Informations'; export;
    sWarning    : PChar = 'Warning'; export;
    sCritical   : PChar = 'Critical'; export;
    sError      : PChar = 'Error'; export;
    
    sError_TApplication_nil         : PChar = 'TApplication is not allocated.';                   export name 'mErr0001';
    sError_TApplication_ref         : PChar = 'internal Error: TApplication is not referenced.';  export name 'mErr0002';
    sError_TApplication_parseArgs   : PChar = 'can not parse command line.';                      export name 'mErr0003';
    
    sError_Internal                 : PChar = 'internel error: '; export;
    sError_ref                      : PChar = 'is not referenced.'; export;
    
    sError_TDFMParser_isDir         : PChar = 'parse file is not valid because it is a directory.'; export name 'mErr0010';
    sError_File_StringIsEmpty       : PChar = 'file name is empty.';                                export name 'mErr0011';
    sError_NoFile_Or_Missing        : PChar = 'not a valid file or it is missing.';                 export name 'mErr0012';
    
    sError_TPersistent_ref          : PChar = 'internal Error: TPersistent is not referenced.'; export;
    
    sError_TComponent_ref           : PChar = 'internal Error: TComponent is not referenced.'; exporit;
    sError_TComponent_noOwner       : PChar = 'TComponent missing AOwner.'; export;
    
    sError_TControl_ref             : PChar = 'internal Error: TControl is not referenced.'; export;
    sError_TControl_noHandle        : PChar = 'TControl missing handle.'; export;
    
    sError_TWinControl_ref          : PChar = 'internal Error: TWinControl is not referenced.'; export;
    sError_TScrollingWinControl_ref : PChar = 'internal Error: TScrollingWinControl is not referenced.'; export;
    sError_TCustomForm_ref          : PChar = 'internal Error: TCustomForm is not referenced.'; export;
    
    sError_TButtonControl_ref       : PChar = 'internal Error: TButtonControl is not referenced.'; export;
    sError_TButton_ref              : PChar = 'internal Error: TButton is not referenced.'; export;
    
    sError_TCheckBox_ref            : PChar = 'internal Error: TCheckBox is not referenced.'; export;
    sError_TRadioBox_ref            : PChar = 'internal Error: TRadioBox is not referenced.'; export;
    sError_TProgressBar_ref         : PChar = 'internal Error: TProgressBar is not referenced.'; export;
    sError_TComboBox_ref            : PChar = 'internal Error: TComboBox is not referenced.'; export;
    
    sError_TSpinCalendar_ref        : PChar = 'internal Error: TSpinCalendar is not referenced.'; export;
    sError_TSpinTime_ref            : PChar = 'internal Error: TSpinTime is not referenced.'; export;
    
    sError_TMemo_ref                : PChar = 'internal Error: TMemo is not referenced.'; export name 'mErr9001';
    sError_TMemo_noOwner            : PChar = 'TMemo missing handle.';                    export name 'mErr9002';
    
    sError_TComboBox_noOwner        : PChar = 'TComboBox missing handle.'; export;
    sError_TSpinDate_noOwner        : PChar = 'TSpinDate missing handle.'; export;
    sError_TSpinTime_noOwner        : PChar = 'TSpinTime missing handle.'; export;
    
    sError_TButton_isinit           : PChar = 'TButton: already init.'; export name 'mErr8001';
    sError_TComponent_notinit       : PChar = 'TComponent: not init.';  export name 'mErr8002';
    sError_TControl_notinit         : PChar = 'TControl: not init.';    export name 'mErr8003';

    sError_TWinControl_noWindoeHandle : PChar = 'internal Error: No Window-Handle available.'; export;
    
    sError_TForm_nil: PChar = 'TForm is not allocated.'; export;
    sError_TForm_ref: PChar = 'internal Error: TForm not referenced.'; export;
    
    sError_AddExitProc: PChar = 'Too many ExitProcs registered.'; export;
    
    sHello      : PChar = 'Hello World'; export;
  {$endif LANGENU}

  // german
  {$ifdef LANGDEU}
  var
    sInformation: PChar = 'Information'; export;
    sWarning    : PChar = 'Warnung'; export;
    sCritical   : PChar = 'Kritisch'; export;
    sError      : PChar = 'Fehler'; export;
    
    sError_TApplication_nil      : PChar = 'TApplication ist nicht zugewiesen.';                    export name 'mErr0001';
    sError_TApplication_ref      : PChar = 'internal Error: TApplication ist nichtt referenziert.'; export name 'mErr0002';
    sError_TApplication_parseArgs: PChar = 'kann Kommandozeile nicht ermitteln.';                   export name 'mErr0003';
    
    sError_Internal                 : PChar = 'interner Fehler: '; export;
    sError_ref                      : PChar = 'ist nicht zugewiesen.'; export;
    
    sError_TDFMParser_isDir         : PChar = 'Parser-Datei ist keine gÃ¼ltige Datei. Es handelt sich hier um ein Verzeichnis'; export name 'mErr0010';
    sError_File_StringIsEmpty       : PChar = 'String für Dateiname ist leer.';                     export name 'mErr0011';
    sError_NoFile_Or_Missing        : PChar = 'keine gültige Datei, oder nicht vorhanden.';         export name 'mErr0012';
    
    sError_TPersistent_ref          : PChar = 'interner Fehler: TPersistent ist nicht zugewiesen.'; export;
    
    sError_TComponent_ref           : PChar = 'interner Fehler: TComponent ist nicht zugewiesen.'; export;
    sError_TComponent_noOwner       : PChar = 'TComponent besitzt keinen AOwner.'; export;
    
    sError_TControl_ref             : PChar = 'interner Fehler: TControl ist nicht zugewiesen.'; export;
    sError_TControl_noHandle        : PChar = 'interner Fehler: TControl kein Handle'; export;
    
    sError_TWinControl_ref          : PChar = 'interner Fehler: TWinControl ist nicht zugewiesen.'; export;
    sError_TScrollingWinControl_ref : PChar = 'interner Fehler: TScrollingWinControl ist nicht zugewiesen.'; export;
    sError_TCustomForm_ref          : PChar = 'interner Fehler: TCustomForm ist nicht zugewiesen.'; export;
    
    sError_TButtonControl_ref       : PChar = 'interner Fehler: TButtonControl ist nicht zugewiesen.'; export;
    sError_TButton_ref              : PChar = 'interner Fehler: TButton ist nicht zugewiesen.'; export;
    
    sError_TCheckBox_ref            : PChar = 'interner Fehler: TCheckBox ist nicht zugewiesen.'; export;
    sError_TRadioBox_ref            : PChar = 'interner Fehler: TRadioBox ist nicht zugewiesen.'; export;
    sError_TProgressBar_ref         : PChar = 'interner Fehler: TProgressBar ist nicht zugewiesen.'; export;
    
    sError_TComboBox_ref            : PChar = 'interner Fehler: TComboBox ist nicht zugewiesen.'; export;
    sError_TSpinDate_ref            : PChar = 'interner Fehler: TSpinDate ist nicht zugewiesen.'; export;
    sError_TSpinTime_ref            : PChar = 'interner Fehler: TSpinTime ist nicht zugewiesen.'; export;
    
    sError_TButton_isinit           : PChar = 'TButton: bereits init.';  export name 'mErr8001';
    sError_TComponent_notinit       : PChar = 'TComponent: nicht init.'; export name 'mErr8002';
    sError_TControl_notinit         : PChar = 'TControl: nicht init.';   export name 'mErr8003';
    
    sError_TMemo_ref                : PChar = 'interner Fehler: TMemo ist nicht zugewiesen.'; export name 'mErr9001';
    sError_TMemo_noOwner            : PChar = 'TMemo besitzt keinen AOwner.';                 export name 'mErr9002';
    
    sError_TComboBox_noOwner        : PChar = 'TComboBox besitzt keinen AOwner.'; export;
    sError_TSpinDate_noOwner        : PChar = 'TSpinDate besitzt keinen AOwner.'; export;
    sError_TSpinTime_noOwner        : PChar = 'TSpinTime besitzt keinen AOwner.'; export;
    
    sError_TWinControl_noWindoeHandle : PChar = 'interner Fehler: kein Fenster-Handle verfügbar.'; export;
    
    sError_TForm_nil: PChar = 'TForm ist nicht zugewiesen.'; export;
    sError_TForm_ref: PChar = 'interner Fehler: TForm nicht referenziert.'; export;
    
    sError_AddExitProc: PChar = 'zu viele ExitProcs registriert.'; export;
    
    sHello      : PChar = 'Hallo Welt'; export;
  {$endif LANGDEU}
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
var
  sInformation  : PChar; external RTLDLL;
  sWarning      : PChar; external RTLDLL;
  sCritical     : PChar; external RTLDLL;
  sError        : PChar; external RTLDLL;
  sHello        : PChar; external RTLDLL;

  sError_Internal : PChar      ; external RTLDLL;
  sError_ref      : PChar      ; external RTLDLL;
  
  sError_TApplication_nil           : PChar; external RTLDLL name 'mErr0001';
  sError_TApplication_ref           : PChar; external RTLDLL name 'mErr0002';
  sError_TApplication_parseArgs     : PChar; external RTLDLL name 'mErr0003';

  sError_TDFMParser_isDir           : PChar; external RTLDLL name 'mErr0010';
  sError_File_StringIsEmpty         : PChar; external RTLDLL name 'mErr0011';
  sError_NoFile_Or_Missing          : PChar; external RTLDLL name 'mErr0012';
  
  sError_TPersistent_ref            : PChar; external RTLDLL;
  
  sError_TComponent_ref             : PChar; external RTLDLL;
  sError_TComponent_noOwner         : PChar; external RTLDLL;
  
  sError_TControl_ref               : PChar; external RTLDLL;
  sError_TControl_noHandle          : PChar; external RTLDLL;
  
  sError_TWinControl_ref            : PChar; external RTLDLL;
  sError_TScrollingWinControl_ref   : PChar; external RTLDLL;
  sError_TCustomForm_ref            : PChar; external RTLDLL;
  
  sError_TButtonControl_ref         : PChar; external RTLDLL;
  
  sError_TButton_ref                : PChar; external RTLDLL;
  sError_TCheckBox_ref              : PChar; external RTLDLL;
  sError_TRadioBox_ref              : PChar; external RTLDLL;
  sError_TProgressBar_ref           : PChar; external RTLDLL;
  
  sError_TComboBox_ref              : PChar; external RTLDLL;
  sError_TSpinDate_ref              : PChar; external RTLDLL;
  sError_TSpinTime_ref              : PChar; external RTLDLL;
  
  sError_TComboBox_noOwner          : PChar; external RTLDLL;
  sError_TSpinDate_noOwner          : PChar; external RTLDLL;
  sError_TSpinTime_noOwner          : PChar; external RTLDLL;
  
  sError_TMemo_ref                  : PChar; external RTLDLL name 'mErr9001';
  sError_TMemo_noOwner              : PChar; external RTLDLL name 'mErr9002';
  
  sError_TButton_isinit             : PChar; external RTLDLL name 'mErr8001';
  sError_TComponent_notinit         : PChar; external RTLDLL name 'mErr8002';
  sError_TControl_notinit           : PChar; external RTLDLL name 'mErr8003';
  
  sError_TWinControl_noWindoeHandle : PChar; external RTLDLL;
  
  sError_TForm_nil: PChar      ; external RTLDLL;
  sError_TForm_ref: PChar      ; external RTLDLL;
  
  sError_AddExitProc: PChar    ; external RTLDLL;
  
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
  
  sError_TApplication_nil           name 'mErr0001', //'sError_TApplication_nil',
  sError_TApplication_ref           name 'mErr0002', //'sError_TApplication_ref',
  sError_TApplication_parseArgs     name 'mErr0003', //'sError_TApplication_parseArgs',

  sError_TDFMParser_isDir           name 'mErr0010', //'sError_TDFMParser_isDir,
  sError_File_StringIsEmpty         name 'mErr0011', //'sError_File_StringIsEmpty',
  sError_NoFile_Or_Missing          name 'mErr0012', //'sError_NoFile_Or_Missing',
  
  sError_TPersistent_ref            name 'mErr1001', //'sError_TPersistent_ref',
  
  sError_TComponent_ref             name 'mErr2001', //'sError_TComponent_ref',
  sError_TComponent_noOwner         name 'mErr2002', //'sError_TComponent_noOwner',
  
  sError_TControl_ref               name 'mErr3001', //'sError_TControl_ref',
  sError_TControl_noHandle          name 'mErr3002', //'sError_TControl_noHandle',
  
  sError_TWinControl_ref            name 'mErr4001', //'sError_TWinControl_ref',
  sError_TScrollingWinControl_ref   name 'mErr4002', //'sError_TScrollingWinControl_ref',
  sError_TCustomForm_ref            name 'mErr4003', //'sError_TCustomForm_ref',
  
  sError_TButtonControl_ref         name 'mErr5001', //'sError_TButtonControl_ref',
  sError_TButton_ref                name 'mErr5002', //'sError_TButton_ref',
  sError_TCheckBox_ref              name 'mErr5003', //'sError_TCheckBox_ref',
  sError_TRadioBox_ref              name 'mErr5004', //'sError_TRadioBox_ref',
  sError_TProgressBar_ref           name 'mErr5005', //'sError_TProgressBar_ref',
  
  sError_TComboBox_ref              name 'mErr6001', //'sError_TComboBox_ref',
  sError_TSpinDate_ref              name 'mErr6002', //'sError_TSpinDate_ref',
  sError_TSpinTime_ref              name 'mErr6003', //'sError_TSpinTime_ref',
  
  sError_TComboBox_noOwner          name 'mErr7001', //'sError_TComboBox_noOwner',
  sError_TSpinDate_noOwner          name 'mErr7002', //'sError_TSpinDate_noOwner',
  sError_TSpinTime_noOwner          name 'mErr7003', //'sError_TSpinTime_noOwner',
  
  sError_TButton_isinit             name 'mErr8001', //'sError_TButton_isinit',
  sError_TComponent_notinit         name 'mErr8002', //'sError_TComponent_notinit',
  sError_TControl_notinit           name 'mErr8003', //'sError_TComponent_notinit',
  
  sError_TMemo_noOwner              name 'mErr9001', //'sError_TMemo_noOwner',
  sError_TMemo_ref                  name 'mErr9002', //'sError_TMemo_ref',
  
  sError_TWinControl_noWindoeHandle name 'mErra001', //'sError_TWinControl_noWindoeHandle',
  
  sError_TForm_nil                  name 'mErrb001', //'sError_TForm_nil',
  sError_TForm_ref                  name 'mErrb002'  //'sError_TForm_ref'

  ;
{$endif DLLEXPORT}

end.
