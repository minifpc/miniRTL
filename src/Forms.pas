// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
{$M-}
unit Forms;

interface
uses
  Windows, Dialogs, SysUtils, StrUtils, Locales, Classes, ErrorData;

type
  TNotifyEvent = procedure(Sender: TObject) of object;

type
  // ---------------------------------------------------------------------------------------
  /// <enum>
  ///   <name> TAlign </name>
  ///   <key name"alNone">
  ///     <details>
  ///       <lang name="enu">
  ///       </lang>
  ///       <lang name="deu">
  ///         Das Steuerelement bleibt an der Stelle, an der es platziert wurde.
  ///         Das ist der Vorgabewert.
  ///       </lang>
  ///     <details>
  ///   </key>
  ///   <key name"alTop">
  ///     <details>
  ///       <lang name="enu">
  ///       </lang>
  ///       <lang name="deu">
  ///         Das Steuerelement bleibt an der Stelle, an der es platziert wurde.
  ///         Das ist der Vorgabewert.
  ///       </lang>
  ///     <details>
  ///   </key>
  ///   <key name"alBottom">
  ///     <details>
  ///       <lang name="enu">
  ///       </lang>
  ///       <lang name="deu">
  ///         Das Steuerelement bleibt an der Stelle, an der es platziert wurde.
  ///         Das ist der Vorgabewert.
  ///       </lang>
  ///     <details>
  ///   </key>
  ///   <key name"alLeft">
  ///     <details>
  ///       <lang name="enu">
  ///       </lang>
  ///       <lang name="deu">
  ///         Das Steuerelement bleibt an der Stelle, an der es platziert wurde.
  ///         Das ist der Vorgabewert.
  ///       </lang>
  ///     <details>
  ///   </key>
  ///   <key name"alRight">
  ///     <details>
  ///       <lang name="enu">
  ///       </lang>
  ///       <lang name="deu">
  ///         Das Steuerelement bleibt an der Stelle, an der es platziert wurde.
  ///         Das ist der Vorgabewert.
  ///       </lang>
  ///     <details>
  ///   </key>
  ///   <key name"alClient">
  ///     <details>
  ///       <lang name="enu">
  ///       </lang>
  ///       <lang name="deu">
  ///         Das Steuerelement bleibt an der Stelle, an der es platziert wurde.
  ///         Das ist der Vorgabewert.
  ///       </lang>
  ///     <details>
  ///   </key>
  ///   <key name"alCustom">
  ///     <details>
  ///       <lang name="enu">
  ///       </lang>
  ///       <lang name="deu">
  ///         Das Steuerelement bleibt an der Stelle, an der es platziert wurde.
  ///         Das ist der Vorgabewert.
  ///       </lang>
  ///     <details>
  ///   </key>
  TAlign = (alNone, alTop, alBottom, alLeft, alRight, alClient, alCustom);
  /// </enum>
  // ---------------------------------------------------------------------------------------

  // ---------------------------------------------------------------------------------------
  /// <type>
  /// <name>TComponentClass</name>
  /// <brief>
  ///   TComponent is the base class of all component based classes (TForm, TButton, ...)
  /// </brief>
  /// <details>
  ///   TComponent is the base class of all component based classes (TForm, TButton, ...)
  ///   TComponentClass is a class type which can used to save a variable of the type.
  ///   not valid for instances.
  /// </details>
  /// </type>
  // ---------------------------------------------------------------------------------------
  TComponentClass = class of TComponent;
  TWinControl     = class;
  TControl        = class;
  TForm           = class;
  
  // -----------------------------------------------------------------------------------------------
  /// <class>
  /// <name>TApplication</name>
  /// <parent>
  ///   QObject
  /// </parent>
  /// <brief>
  ///   The TApplication class manages the GUI application's control flow and main settings.
  /// </brief>
  /// <details>
  ///   TApplication specializes QGuiApplication with some functionality needed for
  ///   QWidget-based applications. It handles widget specific initialization, and
  ///   finalization.
  ///
  ///   For any GUI application using Qt, there is precisely one TApplication object,
  ///   no matter whether the application has 0, 1, 2 or more windows at any given
  ///   time.
  ///   For non-QWidget based Qt applications, use QGuiApplication instead, as it does
  ///   not depend on the QtWidgets library.
  ///
  ///   Some GUI applications provide a special batch mode ie. provide command line
  ///   arguments for executing tasks without manual intervention. In such non-GUI mode,
  ///   it is often sufficient to instantiate a plain QCoreApplication to avoid unnecessarily
  ///   initializing resources needed for a graphical user interface.
  ///
  ///   The following example shows how to dynamically create an appropriate type of
  ///   application instance:
  /// </details>
  // -----------------------------------------------------------------------------------------------
  TApplication = class(TObject)
  private
    FAppForm : TForm;
  protected
    procedure SetAppForm(form: TForm);
  public
    /// <constructor>
    /// <brief>
    ///   This is the Pascal constructor for class TApplication.
    /// </brief>
    /// </constructor>
    constructor Create(ArgCount: Integer; Args: PPChar); overload;
    constructor Create; overload;
        
    class function ClassName: String; stdcall; virtual;
    
    /// <destructor>
    /// <brief>
    ///   This ist the Pascal destructor for class TApplication.
    /// </brief>
    /// </destructor>
    destructor Destroy; override;
    
    procedure Initialize; stdcall;
    procedure CreateForm(InstanceClass: TComponentClass; out Referenz); stdcall;
    
    function Run(form: TForm): Integer; stdcall; overload;
    function Run: Integer; stdcall; overload;
  end;
  /// </class>

  TPersistent = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;
  
  TComponent = class(TPersistent)
  private
    FInitialized : Boolean;
    FHandle: HWND;
    FCaption: String;
    FWinControl: TWinControl;
    FOwner: TComponent;
    FIndex: Integer;
    FTag: NativeInt;
    FCounter: Integer;
  protected
    procedure setInitialized(AValue: BOOL);
    function  isInitialized: BOOL;
    
    function  GetComponent(I: Integer): TComponent;
    function  GetComponentCount: Integer;
    function  GetComponentIndex: Integer;
    function  GetComponentOwner: TComponent;
    
    procedure SetComponentIndex(AValue: Integer);
    procedure SetComponentCount(AValue: Integer);
    procedure SetComponentOwner(AOwner: TComponent);
    procedure SetComponentHandle(AHandle: HWND);
  public
    constructor Create(AOwner: TComponent; wc: TWinControl); virtual;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property ComponentCount: Integer read GetComponentCount;
    property ComponentIndex: Integer read GetComponentIndex write SetComponentIndex;
    //property Components[I: Integer]: TComponent read GetComponent;
    property Owner: TComponent read FOwner;
    property Handle: HWND read FHandle;
    property Caption: String read FCaption write FCaption;
    property Tag: NativeInt read FTag write FTag default 0;
  end;

  TControl = class(TComponent)
  private
    FAlign: TAlign;
    FClientHeight: Integer;
    FClientWidth: Integer;
    FHeight: Integer;
    FLeft: Integer;
    FTop: Integer;
    FWidth: Integer;
  protected
    function GetClientHeight: Integer;
    function GetClientWidth: Integer;
    
    procedure SetClientHeight(AValue: Integer);
    procedure SetClientWidth (AValue: Integer);
    
    procedure SetControlHeight(AValue: Integer);
    procedure SetControlLeft  (AValue: Integer);
    procedure SetControlTop   (AValue: Integer);
    procedure SetControlWidth (AValue: Integer);
    
    procedure SetAlign(AValue: TAlign);
  public
    constructor Create(AOwner: TComponent; wc: TWinControl);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property Align  : TAlign  read FAlign   write SetAlign default alNone;
    property Height : Integer read FHeight  write SetControlHeight;
    property Left   : Integer read FLeft    write SetControlLeft;
    property Top    : Integer read FTop     write SetControlTop;
    property Width  : Integer read FWidth   write SetControlWidth;
    property Handle;
  end;

  TWinControl = class(TControl)
  private
    FOnClick: TNotifyEvent;
    class function WndProcStatic(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; static;
    function WndProc(hW: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property Handle;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
  end;
  
  TScrollingWinControl = class(TWinControl)
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property Handle;
  end;
  
  TCustomForm = class(TScrollingWinControl)
  public
    constructor Create(p: TForm);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property Handle;
  end;

  TForm = class(TCustomForm)
  public
    constructor Create; overload;
    constructor Create(x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
    
    procedure ShowModal;
    procedure Show(modal: Boolean); overload;
    procedure Show; overload;
  published
    property Handle;
  end;

  TButton = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;
  
  TCheckBox = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

  TRadioBox = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;
  
  TProgressBar = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

  TComboBox = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

  TSpinDate = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;
  
  TSpinTime = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;
  
  TMemo = class(TWinControl)
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(AOwner: TComponent; x,y, w,h: Integer); overload;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
type
  PComponentsArray = ^TComponentsArray;
  TComponentsArray = array[0..0] of TComponent;

var
  Application: TApplication;
  
  Components: PComponentsArray;
  ComponentsCount: Integer = 0;

{$ifdef DLLEXPORT}
function  TApplication_Create1          (p: TApplication                                 ): TApplication; stdcall; export;
function  TApplication_Create2          (p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; stdcall; export;
function  TApplication_Run2             (p: TApplication; form: TForm ): Integer; stdcall; export;
function  TApplication_Run1             (p: TApplication              ): Integer; stdcall; export;

procedure TApplication_CreateForm       (p: TApplication; InstanceClass: TComponentClass; out Referenz ); stdcall; export;
procedure TApplication_Destroy          (P: TApplication             );          stdcall; export;
procedure TApplication_Initialize       (p: TApplication             );          stdcall; export;
// ---------------------------------------------------------------------------------------
function  TPersistent_Create            (p: TPersistent            ): TPersistent;          stdcall; export;
// ---------------------------------------------------------------------------------------
function  TComponent_Create             (p: TComponent ; AOwner: TComponent): TComponent;  stdcall; export;
procedure TComponent_Destroy            (p: TComponent             );              stdcall; export;

function  TComponent_GetComponent       (p: TComponent ; I: Integer): TComponent;  stdcall; export;
function  TComponent_GetComponentCount  (p: TComponent             ): Integer;     stdcall; export;
function  TComponent_GetComponentIndex  (p: TComponent             ): Integer;     stdcall; export;
function  TComponent_GetComponentOwner  (p: TComponent ; AOwner: TComponent ): TComponent;  stdcall; export;

procedure TComponent_SetComponentIndex  (p: TComponent ; AValue: Integer    );     stdcall; export;
procedure TComponent_SetComponentOwner  (p: TComponent ; AOwner: TComponent );     stdcall; export;
procedure TComponent_SetComponentCount  (p: TComponent ; AValue: Integer    );     stdcall; export;
// ---------------------------------------------------------------------------------------
function  TControl_Create               (p: TControl   ; AOwner: TComponent): TControl;             stdcall; export;
procedure TControl_SetControlHeight     (p: TControl   ; AValue: Integer); stdcall; export;
procedure TControl_SetControlLeft       (p: TControl   ; AValue: Integer); stdcall; export;
procedure TControl_SetControlTop        (p: TControl   ; AValue: Integer); stdcall; export;
procedure TControl_SetControlWidth      (p: TControl   ; AValue: Integer); stdcall; export;
// ---------------------------------------------------------------------------------------
function  TWinControl_Create            (p: TWinControl; AOwner: TComponent): TWinControl;          stdcall; export;

function  TScrollingWinControl_Create   (p: TScrollingWinControl  ): TScrollingWinControl; stdcall; export;
function  TCustomForm_Create            (p: TCustomForm; f: TForm ): TCustomForm;          stdcall; export;
// ---------------------------------------------------------------------------------------
function  TButton_Create                (p: TButton       ; AOwner: TComponent ): TButton;          stdcall; export;
function  TCheckBox_Create              (p: TCheckBox     ; AOwner: TComponent ): TCheckBox;        stdcall; export;
function  TRadioBox_Create              (p: TRadioBox     ; AOwner: TComponent ): TRadioBox;        stdcall; export;
function  TProgressBar_Create           (p: TProgressBar  ; AOwner: TComponent ): TProgressBar;     stdcall; export;
function  TComboBox_Create              (p: TComboBox     ; AOwner: TComponent ): TComboBox;        stdcall; export;
function  TSpinDate_Create              (p: TSpinDate     ; AOwner: TComponent ): TSpinDate;        stdcall; export;
function  TSpinTime_Create              (p: TSpinTime     ; AOwner: TComponent ): TSpinTime;        stdcall; export;
function  TMemo_Create                  (p: TMemo         ; AOwner: TComponent ): TMemo;            stdcall; export;
// ---------------------------------------------------------------------------------------
function  TButton_Create2               (p: TButton       ; AOwner: TComponent; x,y, w,h: Integer ): TButton       ; stdcall; export;
function  TCheckBox_Create2             (p: TCheckBox     ; AOwner: TComponent; x,y, w,h: Integer ): TCheckBox     ; stdcall; export;
function  TRadioBox_Create2             (p: TRadioBox     ; AOwner: TComponent; x,y, w,h: Integer ): TRadioBox     ; stdcall; export;
function  TProgressBar_Create2          (p: TProgressBar  ; AOwner: TComponent; x,y, w,h: Integer ): TProgressBar  ; stdcall; export;
function  TComboBox_Create2             (p: TComboBox     ; AOwner: TComponent; x,y, w,h: Integer ): TComboBox     ; stdcall; export;
function  TSpinDate_Create2             (p: TSpinDate     ; AOwner: TComponent; x,y, w,h: Integer ): TSpinDate     ; stdcall; export;
function  TSpinTime_Create2             (p: TSpinTime     ; AOwner: TComponent; x,y, w,h: Integer ): TSpinTime     ; stdcall; export;
function  TMemo_Create2                 (p: TMemo         ; AOwner: TComponent; x,y, w,h: Integer ): TMemo         ; stdcall; export;
// ---------------------------------------------------------------------------------------
procedure TPersistent_Destroy           (p: TPersistent         ); stdcall; export;
procedure TControl_Destroy              (p: TControl            ); stdcall; export;
procedure TWinControl_Destroy           (p: TWinControl         ); stdcall; export;

procedure TScrollingWinControl_Destroy  (p: TScrollingWinControl); stdcall; export;
procedure TCustomForm_Destroy           (p: TCustomForm         ); stdcall; export;
// ---------------------------------------------------------------------------------------
procedure TButton_Destroy               (p: TButton             ); stdcall; export;
procedure TCheckBox_Destroy             (p: TCheckBox           ); stdcall; export;
procedure TRadioBox_Destroy             (p: TRadioBox           ); stdcall; export;
procedure TProgressBar_Destroy          (p: TProgressBar        ); stdcall; export;
procedure TComboBox_Destroy             (p: TComboBox           ); stdcall; export;
procedure TSpinDate_Destroy             (p: TSpinDate           ); stdcall; export;
procedure TSpinTime_Destroy             (p: TSpinTime           ); stdcall; export;
procedure TMemo_Destroy                 (p: TMemo               ); stdcall; export;
// ---------------------------------------------------------------------------------------
function  TControl_GetClientHeight      (p: TControl): Integer; stdcall; export;
function  TControl_GetClientWidth       (p: TControl): Integer; stdcall; export;

procedure TControl_SetClientHeight      (p: TControl; AValue: Integer); stdcall; export;
procedure TControl_SetClientWidth       (p: TControl; AValue: Integer); stdcall; export;

procedure TControl_SetAlign             (p: TControl; AValue: TAlign); stdcall; export;

// ---------------------------------------------------------------------------------------
function  TForm_Create                  (p: TForm                   ): HWND;  stdcall; export;
function  TForm_Create2                 (p: TForm; x,y, w,h: Integer): HWND;  stdcall; export;
procedure TForm_Destroy                 (p: TForm                   );        stdcall; export;

procedure TForm_Show                    (p: TForm); stdcall; export;
procedure TForm_ShowModal               (p: TForm); stdcall; export;

procedure TForm_ShowBool  (p: TForm ; modal: Boolean); stdcall; export;
// ---------------------------------------------------------------------------------------
function HitTestToStr(ht: Integer): string; stdcall; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function  TApplication_Create1         (p: TApplication                                 ): TApplication; stdcall; external RTLDLL;
function  TApplication_Create2         (p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; stdcall; external RTLDLL;
function  TApplication_Run2            (p: TApplication; form: TForm ): Integer; stdcall; external RTLDLL;
function  TApplication_Run1            (p: TApplication              ): Integer; stdcall; external RTLDLL;

procedure TApplication_CreateForm      (p: TApplication; InstanceClass: TComponentClass; out Referenz ); stdcall; external RTLDLL;

procedure TApplication_Destroy         (P: TApplication             );          stdcall; external RTLDLL;
procedure TApplication_Initialize      (p: TApplication             );          stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function  TPersistent_Create           (p: TPersistent             ): TPersistent;          stdcall; external RTLDLL;
function  TComponent_Create            (p: TComponent ; AOwner: TComponent): TComponent;    stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function  TControl_Create              (p: TControl   ; AOwner: TComponent): TControl;      stdcall; external RTLDLL;
procedure TControl_SetControlHeight    (p: TControl   ; AValue: Integer); stdcall; external RTLDLL;
procedure TControl_SetControlLeft      (p: TControl   ; AValue: Integer); stdcall; external RTLDLL;
procedure TControl_SetControlTop       (p: TControl   ; AValue: Integer); stdcall; external RTLDLL;
procedure TControl_SetControlWidth     (p: TControl   ; AValue: Integer); stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function  TWinControl_Create           (p: TWinControl; AOwner: TComponent): TWinControl;   stdcall; external RTLDLL;

function  TScrollingWinControl_Create  (p: TScrollingWinControl    ): TScrollingWinControl; stdcall; external RTLDLL;
function  TCustomForm_Create           (p: TCustomForm; f: TForm   ): TCustomForm;          stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
procedure TPersistent_Destroy          (p: TPersistent          ); stdcall; external RTLDLL;
procedure TComponent_Destroy           (p: TComponent           ); stdcall; external RTLDLL;
procedure TControl_Destroy             (p: TControl             ); stdcall; external RTLDLL;
procedure TWinControl_Destroy          (p: TWinControl          ); stdcall; external RTLDLL;
procedure TScrollingWinControl_Destroy (p: TScrollingWinControl ); stdcall; external RTLDLL;
procedure TCustomForm_Destroy          (p: TCustomForm          ); stdcall; external RTLDLL;

function  TComponent_GetComponentCount (p: TComponent                     ): Integer;     stdcall; external RTLDLL;
function  TComponent_GetComponentIndex (p: TComponent                     ): Integer;     stdcall; external RTLDLL;
function  TComponent_GetComponentOwner (p: TComponent; AOwner: TComponent ): TComponent;  stdcall; external RTLDLL;
function  TComponent_GetComponent      (p: TComponent; I: Integer         ): TComponent;  stdcall; external RTLDLL;

procedure TComponent_SetComponentIndex (p: TComponent; AValue: Integer    );              stdcall; external RTLDLL;
procedure TComponent_SetComponentOwner (p: TComponent; AOwner: TComponent );              stdcall; external RTLDLL;
procedure TComponent_SetComponentCount (p: TComponent ; AValue: Integer   );              stdcall; external RTLDLL;

// ---------------------------------------------------------------------------------------
function  TControl_GetClientHeight     (p: TControl): Integer; stdcall; external RTLDLL;
function  TControl_GetClientWidth      (p: TControl): Integer; stdcall; external RTLDLL;

procedure TControl_SetClientHeight     (p: TControl; AValue: Integer); stdcall; external RTLDLL;
procedure TControl_SetClientWidth      (p: TControl; AValue: Integer); stdcall; external RTLDLL;

procedure TControl_SetAlign(p: TControl; AValue: TAlign); stdcall; external RTLDLL;

// ---------------------------------------------------------------------------------------
function  TForm_Create    (p: TForm                   ): HWND; stdcall; external RTLDLL;
function  TForm_Create2   (p: TForm; x,y, w,h: Integer): HWND; stdcall; external RTLDLL;
procedure TForm_Destroy   (p: TForm                   );       stdcall; external RTLDLL;

procedure TForm_Show      (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowModal (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowBool  (p: TForm ; modal: Boolean); stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function  TButton_Create                (p: TButton       ; AOwner: TComponent ): TButton;         stdcall; external RTLDLL;
function  TCheckBox_Create              (p: TCheckBox     ; AOwner: TComponent ): TCheckBox;       stdcall; external RTLDLL;
function  TRadioBox_Create              (p: TRadioBox     ; AOwner: TComponent ): TRadioBox;       stdcall; external RTLDLL;
function  TProgressBar_Create           (p: TProgressBar  ; AOwner: TComponent ): TProgressBar;    stdcall; external RTLDLL;
function  TComboBox_Create              (p: TComboBox     ; AOwner: TComponent ): TComboBox;       stdcall; external RTLDLL;
function  TSpinDate_Create              (p: TSpinDate     ; AOwner: TComponent ): TSpinDate;       stdcall; external RTLDLL;
function  TSpinTime_Create              (p: TSpinTime     ; AOwner: TComponent ): TSpinTime;       stdcall; external RTLDLL;
function  TMemo_Create                  (p: TMemo         ; AOwner: TComponent ): TMemo;           stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function  TButton_Create2               (p: TButton       ; AOwner: TComponent; x,y, w,h: Integer ): TButton       ; stdcall; external RTLDLL;
function  TCheckBox_Create2             (p: TCheckBox     ; AOwner: TComponent; x,y, w,h: Integer ): TCheckBox     ; stdcall; external RTLDLL;
function  TRadioBox_Create2             (p: TRadioBox     ; AOwner: TComponent; x,y, w,h: Integer ): TRadioBox     ; stdcall; external RTLDLL;
function  TProgressBar_Create2          (p: TProgressBar  ; AOwner: TComponent; x,y, w,h: Integer ): TProgressBar  ; stdcall; external RTLDLL;
function  TComboBox_Create2             (p: TComboBox     ; AOwner: TComponent; x,y, w,h: Integer ): TComboBox     ; stdcall; external RTLDLL;
function  TSpinDate_Create2             (p: TSpinDate     ; AOwner: TComponent; x,y, w,h: Integer ): TSpinDate     ; stdcall; external RTLDLL;
function  TSpinTime_Create2             (p: TSpinTime     ; AOwner: TComponent; x,y, w,h: Integer ): TSpinTime     ; stdcall; external RTLDLL;
function  TMemo_Create2                 (p: TMemo         ; AOwner: TComponent; x,y, w,h: Integer ): TMemo         ; stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
procedure TButton_Destroy               (p: TButton             ); stdcall; external RTLDLL;
procedure TCheckBox_Destroy             (p: TCheckBox           ); stdcall; external RTLDLL;
procedure TRadioBox_Destroy             (p: TRadioBox           ); stdcall; external RTLDLL;
procedure TProgressBar_Destroy          (p: TProgressBar        ); stdcall; external RTLDLL;
procedure TComboBox_Destroy             (p: TComboBox           ); stdcall; external RTLDLL;
procedure TSpinDate_Destroy             (p: TSpinDate           ); stdcall; external RTLDLL;
procedure TSpinTime_Destroy             (p: TSpinTime           ); stdcall; external RTLDLL;
procedure TMemo_Destroy                 (p: TMemo               ); stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function HitTestToStr(ht: Integer): string; stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

var
  CLASS_NAME: AnsiString = 'MyWindowClass';

procedure fpc_do_exit; external name 'FPC_DO_EXIT';

// alternative to SetLength ...
function SetComponentsArrayLength(var Arr: PComponentsArray; oldsize, newsize: Integer): PComponentsArray;
var
  NewMem: PComponentsArray;
  CopyCount, i: Integer;
begin
  GetMem  (NewMem , NewSize * sizeof(Integer));
  FillChar(NewMem^, NewSize * sizeof(Integer), 0);
  
  if (Arr <> nil) then
  begin
    CopyCount := oldsize;
    if newsize < oldsize then
    CopyCount := NewSize;
    
    for i := 0 to CopyCount - 1 do
    NewMem^[i] := Arr^[i];
    
    FreeMem(Arr);
  end;
  
  Arr := NewMem;
  result := Arr;
end;
procedure AddComponent(AComp: TComponent);
begin
  writeln('AA');
  SetComponentsArrayLength(Components, ComponentsCount, ComponentsCount + 1);
  writeln('CC');
  Components[ComponentsCount] := AComp;
  inc(ComponentsCount);
writeln('DD');
end;

{$ifdef DLLEXPORT}
function TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Create(ArgCount, Args)');
  {$endif DLLDEBUG}
  
  if not Assigned(p) then
  begin
    ShowError(sError_TApplication_ref);
    Exit(nil);
  end;
  
  result := p;
end;
function TApplication_Create1(p: TApplication): TApplication; stdcall; export;
var
  cmdline   : PAnsiChar;
  Args      : PPAnsiChar;
  ArgsCount : Integer;
  S, R      : PChar;
  TotalLen  : Integer;
  I : Integer;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Create');
  {$endif DLLDEBUG}
  
  if not Assigned(p) then
  begin
    ShowError(sError_TApplication_nil);
    Exit(nil);
  end;
  
  result  := nil;
  CmdLine := GetCommandLineA;
  Args    := CommandLineToArgvA(CmdLine, ArgsCount);
  
  if Args = nil then
  begin
    ShowError(sError_TApplication_parseArgs);
    ExitProcess(1);
  end;
  
  while Args^ <> nil do
  begin
    WriteLn(Args^);
    Inc(Args);
  end;
  
  p := TApplication.Create(ArgsCount, Args);
  result := p;
end;
procedure TApplication_Destroy(p: TApplication); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Destroy');
  {$endif DLLDEBUG}
  
  if Application = nil then
  begin
    ShowError(sError_TApplication_ref);
    Exit;
  end;
end;
procedure TApplication_Initialize(p: TApplication); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Initialize');
  {$endif DLLDEBUG}
  
  if not Assigned(Application) then
  begin
    Application := TApplication.Create;
  end;
end;
procedure TApplication_CreateForm(p: TApplication; InstanceClass: TComponentClass; out Referenz ); stdcall;
var
  WndClass: TWndClassExA;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: CreateForm');
  {$endif DLLDEBUG}
  
  if not Assigned(Application) then
  begin
    ShowError(sError_TApplication_ref);
    Exit;
  end;

  TForm(Referenz) := TForm(InstanceClass).Create;
  if not Assigned(Application.FAppForm) then
  begin
    ShowError(sError_TApplication_ref);
    halt(2);
  end;
  
  FillChar(WndClass, sizeof(WndClass), 0);
  WndClass.cbSize          := sizeof(WndClass);
  WndClass.style           := CS_HREDRAW or CS_VREDRAW;
  //WndClass.lpfnWndProc     := @WndProcStatic;
  WndClass.cbClsExtra      := 0;
  WndClass.cbWndExtra      := 0;
  WndClass.hInstance       := hInstanceDLL;
  WndClass.hIcon           := LoadIconA  (0, PAnsiChar(32512));
  WndClass.hCursor         := LoadCursorA(0, PAnsiChar(32512));
  WndClass.hbrBackground   := HBRUSH(COLOR_WINDOW + 1);
  WndClass.lpszMenuName    := nil;
  WndClass.lpszClassName   := PAnsiChar(CLASS_NAME);
  WndClass.hIconSm         := WndClass.hIcon;

  //if not GetClassInfoExA(hInstanceDLL, WndClass.lpszClassName, @WndClass) then
  begin
    if RegisterClassExA(@WndClass) = 0 then
    begin
      writeln('DLL error: ' + IntToStr(GetLastError));
      Halt(2);
    end;
  end;
end;
function TApplication_Run2(p: TApplication; form: TForm): Integer; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: run');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TApplication_ref);
    Exit(1);
  end;
  
  if form = nil then
  begin
    ShowError(sError_TForm_nil);
    Exit(1);
  end;
  form.ShowModal;
  writeln('TApplication: after show modal');
end;
function TApplication_Run1(p: TApplication): Integer; stdcall; export;
begin
  if not Assigned(Application) then
  begin
    ShowError(sError_TApplication_ref);
    Exit(1);
  end;
  
  if not Assigned(Application.FAppForm) then
  begin
    writeln('console: app');
    halt(2);
  end else
  begin
    writeln('gui: app');
    Application.FAppForm.ShowModal;
  end;
end;


{ TPersistent }

function TPersistent_Create(p: TPersistent): TPersistent; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TPersistent: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TPersistent_ref);
    exit;
  end;
  
  Exit(p);
end;

procedure TPersistent_Destroy(p: TPersistent); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TPersistent: Destroy');
  {$endif DLLDEBUG}
    
  if p = nil then
  begin
    ShowError(sError_TForm_ref);
    exit;
  end;
end;

{ TComponent }

function TComponent_Create(p: TComponent; AOwner: TComponent): TComponent; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TComponent: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TComponent_ref);
    exit;
  end;
  
  result := p;
end;

procedure TComponent_Destroy(p: TComponent); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TComponent: Destroy');
  {$endif DLLDEBUG}
    
  if p = nil then
  begin
    ShowError(sError_TComponent_ref);
    exit;
  end;
end;

function TComponent_GetComponentOwner(p: TComponent; AOwner: TComponent): TComponent; stdcall; export;
begin
  result := AOwner;
end;

procedure TComponent_SetComponentCount(p: TComponent; AValue: Integer); stdcall; export;
begin
  if p = nil then
  begin
    ShowError(sError_TComponent_ref);
    exit;
  end;
  p.FCounter := AValue;
end;

function TComponent_GetComponentCount(p: TComponent): Integer; stdcall; export;
begin
  if p = nil then
  begin
    ShowError(sError_TComponent_ref);
    exit;
  end;
  //result := Length(p.FArray);
  result := p.FCounter;
end;

function TComponent_GetComponentIndex(p: TComponent): Integer; stdcall; export;
begin
  Exit(0);
end;

function TComponent_GetComponent(p: TComponent; I: Integer): TComponent; stdcall; export;
begin
  if p = nil then
  begin
    ShowError(sError_TComponent_ref);
    exit;
  end;
  //result := p.FIndex;
end;

procedure TComponent_SetComponentIndex(p: TComponent; AValue: Integer); stdcall; export;
begin
  p.FIndex := AValue;
end;

procedure TComponent_SetComponentOwner(p: TComponent; AOwner: TComponent); stdcall; export;
begin
  if p = nil then
  begin
    ShowError(sError_TComponent_noOwner);
    exit;
  end;
  
  p.FOwner := AOwner;
end;


{ TControl }

function TControl_Create(p: TControl; AOwner: TComponent): TControl; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(Format('%s: TControl: %s', [sError_Internal, sError_ref]));
    exit;
  end;
  
  Exit(p);
end;

procedure TControl_Destroy(p: TControl); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TControl: Destroy');
  {$endif DLLDEBUG}
    
  if p = nil then
  begin
    ShowError(sError_TControl_ref);
    exit;
  end;
end;

function TControl_GetClientHeight(p: TControl): Integer; stdcall; export;
begin
  Exit(p.FClientHeight);
end;
function TControl_GetClientWidth(p: TControl): Integer; stdcall; export;
begin
  Exit(p.FClientWidth);
end;
procedure TControl_SetClientHeight(p: TControl; AValue: Integer); stdcall; export;
begin
  p.FClientHeight := AValue;
end;
procedure TControl_SetClientWidth(p: TControl; AValue: Integer); stdcall; export;
begin
  p.FClientWidth := AValue;
end;
procedure TControl_SetAlign(p: TControl; AValue: TAlign); stdcall; export;
begin
  p.FAlign := AValue;
end;
procedure TControl_check(p: TControl);
begin
  if not Assigned(p) then
  begin
    ShowError(sError_TControl_ref);
    halt(2);
  end;
end;
procedure TControl_SetControlHeight(p: TControl; AValue: Integer); stdcall; export;
var
  windowID: HWND;
  r: Rect;
  pt: Point;
begin
  TControl_check(p);
  
  pt.x := p.Left;
  pt.y := AValue;
  
  p.FHeight := AValue;
  
  // Bildschirmkoordinaten in Clientkoordinaten umrechnen
  ScreenToClient(p.FHandle, pt);
  
  // Höhe setzen auf Pixel, Breite bleibt gleich
  SetWindowPos(
    p.FHandle, 0,
    p.FLeft  ,
    p.FTop   ,
    p.FWidth ,
    AValue   ,
    SWP_NOZORDER or SWP_NOACTIVATE
  );
  //p.Height := AValue;
end;
procedure TControl_SetControlLeft(p: TControl; AValue: Integer); stdcall; export;
var
  windowID: HWND;
  r: Rect;
  pt: Point;
begin
  TControl_check(p);
  GetWindowRect(p.FHandle, r);
  
  pt.x := p.Left;
  pt.y := p.Top;
  
  p.FLeft := AValue;
  
  // Bildschirmkoordinaten in Clientkoordinaten umrechnen
  ScreenToClient(p.FHandle, pt);
  
  // Position ändern, Breite und Höhe beibehalten
  SetWindowPos(
    p.FHandle, 0,
    p.FLeft  ,
    p.FTop   ,
    p.FWidth ,
    p.FHeight,
    SWP_NOZORDER or SWP_NOACTIVATE
  );
  //p.Left := AValue;
end;
procedure TControl_SetControlTop(p: TControl; AValue: Integer); stdcall; export;
var
  windowID: HWND;
  r: Rect;
  pt: Point;
begin
  TControl_check(p);
  GetWindowRect(p.FHandle, r);
  
  pt.x   := p.FLeft;
  pt.y   := AValue;

  p.FTop := AValue;
  
  // Bildschirmkoordinaten in Clientkoordinaten umrechnen
  ScreenToClient(p.FHandle, pt);

  if not SetWindowPos(
    p.FHandle, 0,
    p.FLeft  ,
    p.FTop   ,
    p.FWidth ,
    p.FHeight,
    SWP_NOZORDER or SWP_NOACTIVATE) then begin
    writeln('no change');
  end;
  //p.Top := AValue;
end;
procedure TControl_SetControlWidth(p: TControl; AValue: Integer); stdcall; export;
var
  windowID: HWND;
  r: Rect;
  pt: Point;
begin
  TControl_check(p);
  GetWindowRect(p.FHandle, r);
  
  pt.x := p.Left;
  pt.y := p.Top;
  
  p.FWidth := AValue;
  
  // Bildschirmkoordinaten in Clientkoordinaten umrechnen
  ScreenToClient(GetParent(windowID), pt);
  
  SetWindowPos(
    p.FHandle, 0,
    p.Left   ,
    p.FTop   ,
    p.FWidth ,
    p.FHeight,
    SWP_NOZORDER or SWP_NOACTIVATE
  );
  //p.Width := AValue;
end;


{ TWinControl }

function TWinControl_Create(p: TWinControl; AOwner: TComponent): TWinControl; stdcall; export;
var
  WndClass: TWndClassExA;
  tc: TComponent;
begin
  {$ifdef DLLDEBUG}
  writeln('TWinControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TWinControl_ref);
    exit(nil);
  end;
  
  result := p;
end;

procedure TWinControl_Destroy(p: TWinControl); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TWinControl: Destroy');
  {$endif DLLDEBUG}
    
  if p = nil then
  begin
    ShowError(sError_TWinControl_ref);
    exit;
  end;
  
  if isWindow(p.FHandle) then
  DestroyWindow(p.FHandle);
end;

// ---------------------------------------------------------------------------------------
// window hit test - for debugging ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLDEBUG}
function HitTestToStr(ht: Integer): string; stdcall; export;
begin
  result := 'unknown: ';
  case ht of
    HTERROR         : Result := 'HTERROR';
    HTTRANSPARENT   : Result := 'HTTRANSPARENT';
    HTNOWHERE       : Result := 'HTNOWHERE';
    HTCLIENT        : Result := 'HTCLIENT';
    HTCAPTION       : Result := 'HTCAPTION';
    HTSYSMENU       : Result := 'HTSYSMENU';
    HTSIZE          : Result := 'HTSIZE / HTGROWBOX';
    HTMENU          : Result := 'HTMENU';
    HTHSCROLL       : Result := 'HTHSCROLL';
    HTVSCROLL       : Result := 'HTVSCROLL';
    HTMINBUTTON     : Result := 'HTMINBUTTON / HTREDUCE';
    HTMAXBUTTON     : Result := 'HTMAXBUTTON';
    HTLEFT          : Result := 'HTLEFT';
    HTRIGHT         : Result := 'HTRIGHT';
    HTTOP           : Result := 'HTTOP';
    HTTOPLEFT       : Result := 'HTTOPLEFT';
    HTTOPRIGHT      : Result := 'HTTOPRIGHT';
    HTBOTTOM        : Result := 'HTBOTTOM';
    HTBOTTOMLEFT    : Result := 'HTBOTTOMLEFT';
    HTBOTTOMRIGHT   : Result := 'HTBOTTOMRIGHT';
    HTCLOSE         : Result := 'HTCLOSE';
    HTHELP          : Result := 'HTHELP';
  end;
  result := result + ' : ' + IntToStr(ht);
end;
{$endif DLLDEBUG}


{ TScrollingWinControl }

function TScrollingWinControl_Create(p: TScrollingWinControl): TScrollingWinControl; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TScrollingWinControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TScrollingWinControl_ref);
    exit;
  end;
  
  Exit(p);
end;

procedure TScrollingWinControl_Destroy(p: TScrollingWinControl); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TScrollingWinControl: Destroy');
  {$endif DLLDEBUG}
    
  if p = nil then
  begin
    ShowError(sError_TScrollingWinControl_ref);
    exit;
  end;
end;


{ TCustomForm }

function TCustomForm_Create(p: TCustomForm; f: TForm): TCustomForm; stdcall; export;
var
  FHandle: HWND;
begin
  {$ifdef DLLDEBUG}
  writeln('TCustomForm: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TCustomForm_ref);
    exit;
  end;
  
  result := p;
end;

procedure TCustomForm_Destroy(p: TCustomForm); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TCustomForm: Destroy');
  {$endif DLLDEBUG}
    
  if p = nil then
  begin
    ShowError(sError_TCustomForm_ref);
    exit;
  end;
end;


{ TForm }

function TForm_Create2(p: TForm; x,y, w,h: Integer): HWND; stdcall; export;
var
  WndClass: TWndClassExA;
  win_hwnd: HWND;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: Create 2');
  {$endif DLLDEBUG}

  if p = nil then
  begin
    ShowError('TForm error');
    exit;
  end;
  
  p.FCounter := 1;
  
  InitCommonControls;
  CLASS_NAME := PAnsiChar('MyWindowClass');

  FillChar(WndClass, sizeof(WndClass), 0);
  WndClass.cbSize          := sizeof(WndClass);
  WndClass.style           := CS_HREDRAW or CS_VREDRAW;
  WndClass.lpfnWndProc     := @TWinControl.WndProcStatic;
  WndClass.cbClsExtra      := 0;
  WndClass.cbWndExtra      := 0;
  WndClass.hInstance       := hInstanceDLL;
  WndClass.hIcon           := LoadIconA  (0, PAnsiChar(32512));
  WndClass.hCursor         := LoadCursorA(0, PAnsiChar(32512));
  WndClass.hbrBackground   := HBRUSH(COLOR_WINDOW + 1);
  WndClass.lpszMenuName    := nil;
  WndClass.lpszClassName   := LPCSTR(CLASS_NAME);
  WndClass.hIconSm         := WndClass.hIcon;

  if not GetClassInfoExA(hInstanceDLL, LPCSTR(CLASS_NAME), @WndClass) then
  begin
    if RegisterClassExA(@WndClass) = 0 then
    begin
      writeln('class register error: ' + IntToStr(GetLastError));
      Halt(2);
    end;
  end;

  if TWinControl(p) = nil then
  writeln('eeeeee');
  
  p.SetComponentCount(1);
  p.FHandle := CreateWindowExA(
    0,
    LPCSTR(CLASS_NAME ),
    LPCSTR('AppName'  ),
    ws_Overlapped     or
    ws_SysMenu        or
    ws_MinimizeBox    or
    ws_ClipSiblings   or
    ws_ClipChildren   or
    ws_Visible         ,
    x, y, w, h         ,
    GetDesktopWindow   ,   // owner window/parent
    0, hInstanceDLL    ,
    Pointer(TWinControl(p))
  );
  
  if p.FHandle = 0 then
  begin
    ShowError('TForm: no handle');
    Halt(2);
  end;
  
  p.SetComponentCount(p.GetComponentCount + 1);
  result := p.FHandle;
end;
function TForm_Create(p: TForm): HWND; stdcall; export;
var
  res: HWND;
begin
  result := TForm_Create2(p,
    CW_USEDEFAULT,   // default horizontal position
    CW_USEDEFAULT,   // default vertical position
    CW_USEDEFAULT,   // default Width
    CW_USEDEFAULT    // default height
  );
  p.SetComponentHandle(result);
end;

procedure TForm_Destroy(p: TForm); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: Destroy');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TForm_ref);
    exit;
  end;
end;

procedure TForm_Show(p: TForm); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: Show');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TForm_ref);
    exit;
  end;
end;

procedure TForm_ShowModal(p: TForm); stdcall; export;
var
  _msg: TMsg;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: ShowModal');
  {$endif DLLDEBUG}
  
  if not Assigned(p) then
  begin
    ShowError(sError_TForm_ref);
    halt(2);
  end;
  
  while GetMessageA(_msg, 0, 0, 0) do
  begin
    TranslateMessage(_msg);
    DispatchMessageA(_msg);
    if p.WndProc(p.Handle, _msg.Message, _msg.wParam, _msg.lParam) = -100 then break;
  end;
  Application.Free;
end;

procedure TForm_ShowBool(p: TForm; modal: Boolean); stdcall; export;
begin
  if p = nil then
  begin
    ShowError(sError_TForm_ref);
    exit;
  end;
end;


{ TButton }

function TButton_Create2(p: TButton; AOwner: TComponent; x,y, w,h: Integer): TButton; stdcall; export;
var
  FHandle: HWND;
begin
  {$ifdef DLLDEBUG}
  writeln('TButton: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TButton_ref);
    exit;
  end;

  p.Caption := 'Button';
  p.FHandle := CreateWindowExA(
  0, 'BUTTON', PChar(p.Caption),
  WS_CHILD or WS_VISIBLE or BS_DEFPUSHBUTTON,
  x, y, w, h,
  AOwner.FHandle, HMENU(p.GetComponentCount),
  hInstanceDLL, Pointer(TWinControl(p)));
  
  AddComponent(p);
  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TButton_Create(p: TButton; AOwner: TComponent): TButton; stdcall; export;
begin
  result := TButton_Create2(p, AOwner, 50, 50, 150, 20);
end;
procedure TButton_Destroy(p: TButton); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TButton: Destroy');
  {$endif DLLDEBUG}
end;


{ TCheckBox }

function TCheckBox_Create2(p: TCheckBox; AOwner: TComponent; x,y, w,h: Integer): TCheckBox; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TCheckBox: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TCheckBox_ref);
    exit;
  end;
  
  p.FHandle := CreateWindowExA(
  0, 'BUTTON', 'Click Me',
  WS_CHILD or WS_VISIBLE or BS_AUTOCHECKBOX, x, y, w, h,
  AOwner.FHandle, HMENU(p.GetComponentCount),
  hInstanceDLL, nil);
  
  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TCheckBox_Create(p: TCheckBox; AOwner: TComponent): TCheckBox; stdcall; export;
begin
  result := TCheckBox_Create2(p, AOwner, 50, 50, 150, 30);
end;
procedure TCheckBox_Destroy(p: TCheckBox); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TCheckBox: Destroy');
  {$endif DLLDEBUG}
end;


{ TRadioBox }

function TRadioBox_Create2(p: TRadioBox; AOwner: TComponent; x,y, w,h: Integer): TRadioBox; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TRadioBox: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TRadioBox_ref);
    exit;
  end;
  
  p.FHandle := CreateWindowExA(
  0, 'BUTTON', 'Click Me',
  WS_CHILD or WS_VISIBLE or BS_AUTORADIOBUTTON, x, y, w, h,
  AOwner.FHandle, HMENU(p.GetComponentCount),
  hInstanceDLL, nil);
  
  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TRadioBox_Create(p: TRadioBox; AOwner: TComponent): TRadioBox; stdcall; export;
begin
  result := TRadioBox_Create2(p, AOwner, 50, 50, 150, 30);
end;
procedure TRadioBox_Destroy(p: TRadioBox); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TRadioBox: Destroy');
  {$endif DLLDEBUG}
end;


{ TProgressBar }

function TProgressBar_Create2(p: TProgressBar; AOwner: TComponent; x,y, w,h: Integer): TProgressBar; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TProgressBar: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TProgressBar_ref);
    halt(2);
  end;
  
  if AOwner.FHandle = 0 then
  begin
    ShowError(sError_TComponent_noOwner);
    halt(2);
  end;
  
  p.FHandle := CreateWindowExA(
  0, 'msctls_progress32', nil,
  WS_CHILD or WS_VISIBLE, x, y, w, h,
  AOwner.FHandle, 0,
  hInstanceDLL, nil);
  
  if p.Handle = 0 then
  begin
    ShowError(sError_TProgressBar_ref);
    halt(2);
  end;

  // Bereich setzen (0 - 100)
  SendMessageA(p.FHandle, PBM_SETRANGE,  0, MAKELPARAM(0, 100));
  SendMessageA(p.FHandle, PBM_SETPOS  , 32, 0);
  
  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TProgressBar_Create(p: TProgressBar; AOwner: TComponent): TProgressBar; stdcall; export;
begin
  result := TProgressBar_Create2(p, AOwner, 20, 20, 150, 24);
end;
procedure TProgressBar_Destroy(p: TProgressBar); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TProgressBar: Destroy');
  {$endif DLLDEBUG}
end;


{ TComboBox }

function TComboBox_Create2(p: TComboBox; AOwner: TComponent; x,y, w,h: Integer): TComboBox; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TComboBox: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TComboBox_ref);
    halt(2);
  end;
  
  if AOwner.FHandle = 0 then
  begin
    ShowError(sError_TComboBox_noOwner);
    halt(2);
  end;
  
  p.FHandle := CreateWindowExA(
  0, 'COMBOBOX', nil,
  WS_CHILD or WS_VISIBLE or CBS_DROPDOWNLIST or WS_VSCROLL, x,y, w,h,
  AOwner.FHandle, 0,
  hInstanceDLL, nil);
  
  if p.Handle = 0 then
  begin
    ShowError(sError_TComboBox_ref);
    halt(2);
  end;

  // Einträge hinzufügen
  SendMessageA(p.FHandle, CB_ADDSTRING, 0, LPARAM(PChar('Item 1')));
  SendMessageA(p.FHandle, CB_ADDSTRING, 0, LPARAM(PChar('Item 2')));
  SendMessageA(p.FHandle, CB_ADDSTRING, 0, LPARAM(PChar('Item 3')));
  
  SendMessageA(p.FHandle, CB_SETCURSEL, 0, 0);  // Standardauswahl
  
  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TComboBox_Create(p: TComboBox; AOwner: TComponent): TComboBox; stdcall; export;
begin
  result := TComboBox_Create2(p, AOwner, 20, 20, 150, 24);
end;
procedure TComboBox_Destroy(p: TComboBox); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TComboBox: Destroy');
  {$endif DLLDEBUG}
end;


{ TSpinDate }

function TSpinDate_Create2(p: TSpinDate; AOwner: TComponent; x,y, w,h: Integer): TSpinDate; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TSpinDate: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TSpinDate_ref);
    halt(2);
  end;
  
  if AOwner.FHandle = 0 then
  begin
    ShowError(sError_TSpinDate_noOwner);
    halt(2);
  end;
  
  p.FHandle := CreateWindowExA(
  0, 'SysDateTimePick32', nil,
  WS_CHILD or WS_VISIBLE or DTS_SHORTDATEFORMAT or DTS_UPDOWN, x,y, w,h,
  AOwner.FHandle, 0,
  hInstanceDLL, nil);
  
  if p.Handle = 0 then
  begin
    ShowError(sError_TSpinDate_ref);
    halt(2);
  end;
  
  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TSpinDate_Create(p: TSpinDate; AOwner: TComponent): TSpinDate; stdcall; export;
begin
  result := TSpinDate_Create2(p, AOwner, 20, 20, 150, 24);
end;
procedure TSpinDate_Destroy(p: TSpinDate); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TSpinDate: Destroy');
  {$endif DLLDEBUG}
end;


{ TSpinTime }

function TSpinTime_Create2(p: TSpinTime; AOwner: TComponent; x,y, w,h: Integer): TSpinTime; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TSpinTime: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TSpinTime_ref);
    halt(2);
  end;
  
  if AOwner.FHandle = 0 then
  begin
    ShowError(sError_TSpinTime_noOwner);
    halt(2);
  end;
  
  p.FHandle := CreateWindowExA(
  0, 'SysDateTimePick32', nil,
  WS_CHILD or WS_VISIBLE or DTS_TIMEFORMAT, x, y, w, h,
  AOwner.FHandle, 0,
  hInstanceDLL, nil);
  
  if p.Handle = 0 then
  begin
    ShowError(sError_TSpinTime_ref);
    halt(2);
  end;

  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TSpinTime_Create(p: TSpinTime; AOwner: TComponent): TSpinTime; stdcall; export;
begin
  result := TSpinTime_Create2(p, AOwner, 20, 20, 150, 24);
end;
procedure TSpinTime_Destroy(p: TSpinTime); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TSpinTime: Destroy');
  {$endif DLLDEBUG}
end;


{ TMemo }

function TMemo_Create2(p: TMemo; AOwner: TComponent; x,y, w,h: Integer): TMemo; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TMemo: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TMemo_ref);
    halt(2);
  end;
  
  if AOwner.FHandle = 0 then
  begin
    ShowError(sError_TMemo_noOwner);
    halt(2);
  end;
  
  p.FHandle := CreateWindowExA(
  WS_EX_CLIENTEDGE, 'EDIT', nil,
  WS_CHILD or WS_VISIBLE   or WS_VSCROLL or
  ES_LEFT  or ES_MULTILINE or ES_AUTOVSCROLL, x, y, w, h,
  AOwner.FHandle, 0,
  hInstanceDLL, nil);
  
  if p.Handle = 0 then
  begin
    ShowError(sError_TMemo_ref);
    halt(2);
  end;

  p.SetComponentCount(p.GetComponentCount + 1);
  result := p;
end;
function TMemo_Create(p: TMemo; AOwner: TComponent): TMemo; stdcall; export;
begin
  result := TMemo_Create2(p, AOwner, 20, 20, 150, 24);
end;
procedure TMemo_Destroy(p: TMemo); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TMemo: Destroy');
  {$endif DLLDEBUG}
end;

{$endif DLLEXPORT}

(**
 * \brief CTOR Create of TApplication
 * \param ArgCount - Integer
 * \param Args     - Array of String
 *)
constructor TApplication.Create(
  ArgCount: Integer;
  Args: PPChar);
begin
  inherited Create;
  TApplication_Create2(self, ArgCount, Args);
end;
procedure TApplication.CreateForm(InstanceClass: TComponentClass; out Referenz); stdcall;
begin
  //inherited Create;
  TApplication_CreateForm(self, InstanceClass, Referenz);
end;
constructor TApplication.Create;
begin
  inherited Create;
  TApplication_Create1(self);
end;
destructor TApplication.Destroy;
begin
  TApplication_Destroy(self);
  inherited Destroy;
end;
procedure TApplication.Initialize; stdcall;
begin
  TApplication_Initialize(self);
end;
procedure TApplication.SetAppForm(form: TForm);
begin
  FAppForm := form;
end;
class function TApplication.ClassName: String; stdcall;
begin
  result := 'TApplication';
end;
function TApplication.Run(form: TForm): Integer; stdcall;
begin
  result := TApplication_Run2(self, TForm(form));
end;
function TApplication.Run: Integer; stdcall;
begin
  TApplication_Run1(self);
  //TApplication_Run2(self, FAppForm);
end;


{ TPersistent }

constructor TPersistent.Create;
begin
  inherited Create;
  writeln('1');
  TPersistent_Create(self);
end;
destructor TPersistent.Destroy;
begin
  TPersistent_Destroy(self);
  inherited Destroy;
end;

class function TPersistent.ClassName: String; stdcall;
begin
  result := 'TPersistent';
end;


{ TComponent }

constructor TComponent.Create(AOwner: TComponent; wc: TWinControl);
begin
  if not isInitialized then
  begin
    inherited Create;
    setInitialized(true);
    FWinControl := wc;
    writeln('2');
    TComponent_Create(self, AOwner);
  end;
end;
destructor TComponent.Destroy;
begin
  if not isInitialized then
  begin
    ShowError('TComponent: not init.');
    exit;
  end else
  begin
    TComponent_Destroy(self);
    inherited Destroy;
  end;
end;
class function TComponent.ClassName: String; stdcall;
begin
  result := 'TComponent';
end;

function TComponent.isInitialized: BOOL;
begin
  result := FInitialized;
end;
procedure TComponent.setInitialized(AValue: BOOL);
begin
  FInitialized := AValue;
end;

procedure TComponent.SetComponentCount(AValue: Integer);
begin
  TComponent_SetComponentCount(self, AValue);
end;
function TComponent.GetComponentCount: Integer;
begin
  result := TComponent_GetComponentCount(self);
end;
function TComponent.GetComponentIndex: Integer;
begin
  Exit(TComponent_GetComponentIndex(self));
end;
function TComponent.GetComponent(I: Integer): TComponent;
begin
  Exit(TComponent_GetComponent(self, I));
end;
function TComponent.GetComponentOwner: TComponent;
begin
  result := TComponent_GetComponentOwner(self, Owner);
end;
procedure TComponent.SetComponentIndex(AValue: Integer);
begin
  TComponent_SetComponentIndex(self, AValue);
end;
procedure TComponent.SetComponentOwner(AOwner: TComponent);
begin
  TComponent_SetComponentOwner(self, AOwner);
end;
procedure TComponent.SetComponentHandle(AHandle: HWND);
begin
  FHandle := AHandle;
end;


{ TControl }

constructor TControl.Create(AOwner: TComponent; wc: TWinControl);
begin
  if not isInitialized then
  begin
    inherited Create(AOwner, wc);
    setInitialized(true);
    FWinControl := wc;
    
    writeln('3');
    TControl_Create(self, AOwner);
  end;
end;
destructor TControl.Destroy;
begin
  if not isInitialized then
  begin
    ShowError('TControl not initialized');
    exit;
  end else
  begin
    TControl_Destroy(self);
    inherited Destroy;
  end;
end;
class function TControl.ClassName: String; stdcall;
begin
  result := 'TControl';
end;
function TControl.GetClientHeight: Integer;
begin
  Exit(TControl_GetClientHeight(self));
end;
function TControl.GetClientWidth: Integer;
begin
  Exit(TControl_GetClientWidth(self));
end;
procedure TControl.SetClientHeight(AValue: Integer);
begin
  TControl_SetClientHeight(self, AValue);
end;
procedure TControl.SetClientWidth(AValue: Integer);
begin
  TControl_SetClientWidth(self, AValue);
end;
procedure TControl.SetAlign(AValue: TAlign);
begin
  TControl_SetAlign(self, AValue);
end;
procedure TControl.SetControlHeight(AValue: Integer); begin TControl_SetControlHeight(self, AValue); end;
procedure TControl.SetControlLeft  (AValue: Integer); begin TControl_SetControlLeft  (self, AValue); end;
procedure TControl.SetControlTop   (AValue: Integer); begin TControl_SetControlTop   (self, AValue); end;
procedure TControl.SetControlWidth (AValue: Integer); begin TControl_SetControlWidth (self, AValue); end;

{ TWinControl }

constructor TWinControl.Create(AOwner: TComponent);
begin
  if not isInitialized then
  begin
    inherited Create(AOwner, self);
    writeln('4');
    TWinControl_Create(self, AOwner);
  end;
end;
destructor TWinControl.Destroy;
begin
  TWinControl_Destroy(self);
  inherited Destroy;
end;

class function TWinControl.ClassName: String; stdcall;
begin
  result := 'TWinControl';
end;

class function TWinControl.WndProcStatic(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
var
  Window: TWinControl;
  ptr: Pointer;
begin
  if uMsg = WM_NCCREATE then
  begin
    // get "self" pointer out from lParam
    // put it in GWL_USERDATA
    Window := TWinControl(PCREATESTRUCTA(lParam)^.lpCreateParams);
    SetWindowLongPtrA(hWnd, GWL_USERDATA, LONG_PTR(Window));
  end else
  begin
    ptr := Pointer(GetWindowLongPtrA(hwnd, GWL_USERDATA));
    if ptr = nil then
    begin
      result := DefWindowProcA(hwnd, uMsg, wParam, lParam);
      exit;
    end;
  end;
  Window := TWinControl(ptr);
  if Assigned(Window) then
  result := Window.WndProc(hWnd, uMsg, wParam, lParam) else
  result := DefWindowProcA(hWnd, uMsg, wParam, lParam) ;
end;

function TWinControl.WndProc(hW: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
var
  i, hi, len: Integer;
  tc: TComponent;
begin
  case uMsg of
    WM_NCLBUTTONDOWN: begin
      writeln('HT_TEST -> ' + HitTestToStr(LoWord(wParam)));
      writeln('wParam lo: ' + IntToStr(LoWord(wParam)));
      writeln('wParam hi: ' + IntToStr(HiWord(wParam)));
      writeln('-----------');
      writeln('lParam lo: ' + IntToStr(LoWord(lParam)));
      writeln('lParam hi: ' + IntToStr(HiWord(lParam)));
      if LoWord(wParam) = HTCLOSE then
      begin
        writeln('window closed');
        result := -100;
        PostQuitMessage(0);
        exit;
      end;
    end;
    WM_COMMAND: begin
      case HiWord(wParam) of
        BN_CLICKED: begin
          for i := 0 to ComponentsCount - 1 do
          begin
            tc := Components[i];
            if tc.Handle = lparam then
            begin
              if Assigned(tc.FWinControl.FOnClick) then
              tc.FWinControl.FOnClick(self);
              break;
            end;
          end;
        end;
      end;
    end;
    WM_CLOSE: begin
      writeln('close');
      DestroyWindow(hW);
      result := -100;
    end;
    WM_DESTROY: begin
      PostQuitMessage(0);
      Result := -100;
    end;
  end;
  result := DefWindowProcA(hW, uMsg, wParam, lParam);
end;


{ TScrollingWinControl }

constructor TScrollingWinControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);  // todo
  TScrollingWinControl_Create(self);
end;
destructor TScrollingWinControl.Destroy;
begin
  TScrollingWinControl_Destroy(self);
  inherited Destroy;
end;

class function TScrollingWinControl.ClassName: String; stdcall;
begin
  result := 'TScrollingWinControl';
end;


{ TCustomForm }

constructor TCustomForm.Create(p: TForm);
begin
  inherited Create(self);
  TCustomForm_Create(self, p);
end;

destructor TCustomForm.Destroy;
begin
  TCustomForm_Destroy(self);
  inherited Destroy;
end;

class function TCustomForm.ClassName: String; stdcall;
begin
  result := 'TCustomForm';
end;


{ TForm }

constructor TForm.Create(x, y, w, h: Integer);
begin
  FHandle := TForm_Create2(self, x, y, w, h);
end;
constructor TForm.Create;
begin
  FHandle := TForm_Create(self);
end;
destructor TForm.Destroy;
begin
  TForm_Destroy(self);
  inherited Destroy;
end;
class function TForm.ClassName: String; stdcall;
begin
  result := 'TForm';
end;
procedure TForm.Show;
begin
  TForm_Show(self);
end;
procedure TForm.ShowModal;
begin
  TForm_ShowModal(self);
end;
procedure TForm.Show(modal: Boolean);
begin
  TForm_ShowBool(self, modal);
end;


{ TButton }

constructor TButton.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  if not isInitialized then
  begin
    if AOwner = nil then
    begin
      ShowError('TButton: AOwner = nil');
      Halt(2);
    end;
    inherited Create(AOwner);
    setInitialized(true);
    writeln('6');
    TButton_Create2(self, AOwner, x,y, w,h);
  end else
  begin
    ShowError('TButton: already init.');
  end;
end;
constructor TButton.Create(AOwner: TComponent);
begin
  if not isInitialized then
  begin
    inherited Create(AOwner);
    setInitialized(true);
    TButton_Create(self, AOwner);
  end else
  begin
    ShowError('TButton: already init.');
  end;
end;
destructor TButton.Destroy;
begin
  TButton_Destroy(self);
  inherited Destroy;
end;
class function TButton.ClassName: String; stdcall;
begin
  result := 'TButton';
end;


{ TCheckBox }

constructor TCheckBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TCheckBox_Create(self, AOwner);
end;
constructor TCheckBox.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  inherited Create(AOwner);
  TCheckBox_Create2(self, AOwner, x,y, w,h);
end;
destructor TCheckBox.Destroy;
begin
  TCheckBox_Destroy(self);
  inherited Destroy;
end;
class function TCheckBox.ClassName: String; stdcall;
begin
  result := 'TCheckBox';
end;


{ TRadioBox }

constructor TRadioBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TRadioBox_Create(self, AOwner);
end;
constructor TRadioBox.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  inherited Create(AOwner);
  TRadioBox_Create2(self, AOwner, x,y, w,h);
end;
destructor TRadioBox.Destroy;
begin
  TRadioBox_Destroy(self);
  inherited Destroy;
end;
class function TRadioBox.ClassName: String; stdcall;
begin
  result := 'TRadioBox';
end;


{ TProgressBar }

constructor TProgressBar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TProgressBar_Create(self, AOwner);
end;
constructor TProgressBar.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  inherited Create(AOwner);
  TProgressBar_Create2(self, AOwner, x,y, w,h);
end;
destructor TProgressBar.Destroy;
begin
  TProgressBar_Destroy(self);
  inherited Destroy;
end;
class function TProgressBar.ClassName: String; stdcall;
begin
  result := 'TProgressBar';
end;


{ TComboBox }

constructor TComboBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TComboBox_Create(self, AOwner);
end;
constructor TComboBox.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  inherited Create(AOwner);
  TComboBox_Create2(self, AOwner, x,y, w,h);
end;
destructor TComboBox.Destroy;
begin
  TComboBox_Destroy(self);
  inherited Destroy;
end;
class function TComboBox.ClassName: String; stdcall;
begin
  result := 'TComboBox';
end;


{ TSpinDate }

constructor TSpinDate.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TSpinDate_Create(self, AOwner);
end;
constructor TSpinDate.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  inherited Create(AOwner);
  TSpinDate_Create2(self, AOwner, x,y, w,h);
end;
destructor TSpinDate.Destroy;
begin
  TSpinDate_Destroy(self);
  inherited Destroy;
end;
class function TSpinDate.ClassName: String; stdcall;
begin
  result := 'TSpinDate';
end;


{ TSpinTime }

constructor TSpinTime.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TSpinTime_Create(self, AOwner);
end;
constructor TSpinTime.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  inherited Create(AOwner);
  TSpinTime_Create2(self, AOwner, x,y, w,h);
end;
destructor TSpinTime.Destroy;
begin
  TSpinTime_Destroy(self);
  inherited Destroy;
end;
class function TSpinTime.ClassName: String; stdcall;
begin
  result := 'TSpinTime';
end;


{ TMemo }

constructor TMemo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TMemo_Create(self, AOwner);
end;
constructor TMemo.Create(AOwner: TComponent; x,y, w,h: Integer);
begin
  inherited Create(AOwner);
  TMemo_Create2(self, AOwner, x,y, w,h);
end;
destructor TMemo.Destroy;
begin
  TMemo_Destroy(self);
  inherited Destroy;
end;
class function TMemo.ClassName: String; stdcall;
begin
  result := 'TMemo';
end;

{$ifdef DLLEXPORT}
exports
  TApplication_Create1              name 'TApplication_Create1',
  TApplication_Create2              name 'TApplication_Create2',
  TApplication_CreateForm           name 'TApplication_CreateForm',
  TApplication_Initialize           name 'TApplication_Initialize',
  TApplication_Run1                 name 'TApplication_Run1',
  TApplication_Run2                 name 'TApplication_Run2',
  TApplication_Destroy              name 'TApplication_Destroy',

  TPersistent_Create                name 'TPersistent_Create',
  TComponent_Create                 name 'TComponent_Create',
  
  TWinControl_Create                name 'TWinControl_Create',
  
  TScrollingWinControl_Create       name 'TScrollingWinControl_Create',
  TCustomForm_Create                name 'TCustomForm_Create',

  TPersistent_Destroy               name 'TPersistent_Destroy',
  TComponent_Destroy                name 'TComponent_Destroy',
  TControl_Destroy                  name 'TControl_Destroy',
  TWinControl_Destroy               name 'TWinControl_Destroy',
  TScrollingWinControl_Destroy      name 'TScrollingWinControl_Destroy',
  TCustomForm_Destroy               name 'TCustomForm_Destroy',
  
  TComponent_GetComponentCount      name 'TComponent_GetComponentCount',
  TComponent_GetComponentIndex      name 'TComponent_GetComponentIndex',
  TComponent_GetComponentOwner      name 'TComponent_GetComponentOwner',
  //
  TComponent_GetComponent           name 'TComponent_GetComponent',
  TComponent_SetComponentIndex      name 'TComponent_SetComponentIndex',
  TComponent_SetComponentOwner      name 'TComponent_SetComponentOwner',
  
  TControl_Create                   name 'TControl_Create',
  TControl_GetClientHeight          name 'TControl_GetClientHeight',
  TControl_SetClientWidth           name 'TControl_SetClientWidth',
  TControl_SetClientHeight          name 'TControl_SetClientHeight',
  //
  TControl_SetControlHeight         name 'TControl_SetControlHeight',
  TControl_SetControlLeft           name 'TControl_SetControlLeft',
  TControl_SetControlTop            name 'TControl_SetControlTop',
  TControl_SetControlWidth          name 'TControl_SetControlWidth',
  //
  TControl_SetAlign                 name 'TControl_SetAlign',
  
  TButton_Create                    name 'TButton_Create',
  TButton_Create2                   name 'TButton_Create2',
  TButton_Destroy                   name 'TButton_Destroy',
  
  TCheckBox_Create                  name 'TCheckBox_Create',
  TCheckBox_Create2                 name 'TCheckBox_Create2',
  TCheckBox_Destroy                 name 'TCheckBox_Destroy',
  
  TRadioBox_Create                  name 'TRadioBox_Create',
  TRadioBox_Create2                 name 'TRadioBox_Create2',
  TRadioBox_Destroy                 name 'TRadioBox_Destroy',
  
  TProgressBar_Create               name 'TProgressBar_Create',
  TProgressBar_Create2              name 'TProgressBar_Create2',
  TProgressBar_Destroy              name 'TProgressBar_Destroy',
  
  TComboBox_Create                  name 'TComboBox_Create',
  TComboBox_Create2                 name 'TComboBox_Create2',
  TComboBox_Destroy                 name 'TComboBox_Destroy',
  
  TSpinDate_Create                  name 'TSpinDate_Create',
  TSpinDate_Create2                 name 'TSpinDate_Create2',
  TSpinDate_Destroy                 name 'TSpinDate_Destroy',
  
  TSpinTime_Create                  name 'TSpinTime_Create',
  TSpinTime_Create2                 name 'TSpinTime_Create2',
  TSpinTime_Destroy                 name 'TSpinTime_Destroy',
  
  TMemo_Create                      name 'TMemo_Create',
  TMemo_Create2                     name 'TMemo_Create2',
  TMemo_Destroy                     name 'TMemo_Destroy',
  
  TForm_Create                      name 'TForm_Create',
  TForm_Create2                     name 'TForm_Create2',
  TForm_Destroy                     name 'TForm_Destroy',
  TForm_Show                        name 'TForm_Show',
  TForm_ShowBool                    name 'TForm_ShowBool',
  TForm_ShowModal                   name 'TForm_ShowModal',
  
  HitTestToStr    name 'HitTestToStr'
  ;
  
initialization
begin
  //Application := TApplication.Create;
end;

finalization
begin
  //Application.Free;
end;
{$endif DLLEXPORT}

end.

/// </file>
