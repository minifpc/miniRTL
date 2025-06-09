// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
{$M-}
unit Forms;

interface
uses
  Windows, Dialogs, SysUtils, StrUtils, Locales, Classes;

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
    FHandle: HWND;
    FWinControl: TWinControl;
    FArray: array of TComponent;
    FOwner: TComponent;
    FIndex: Integer;
    FTag: NativeInt;
  protected
    function  GetComponent(I: Integer): TComponent;
    function  GetComponentCount: Integer;
    function  GetComponentIndex: Integer;
    function  GetComponentOwner: TComponent;
    
    procedure SetComponentIndex(AValue: Integer);
    procedure SetComponentOwner(AOwner: TComponent);
    procedure SetComponentHandle(AHandle: HWND);
  public
    constructor Create(AOwner: TComponent); virtual;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property ComponentCount: Integer read GetComponentCount;
    property ComponentIndex: Integer read GetComponentIndex write SetComponentIndex;
    property Components[I: Integer]: TComponent read GetComponent;
    property Owner: TComponent read FOwner;
    property Handle: HWND read FHandle;
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
    constructor Create(AOwner: TComponent);
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
    class function WndProcStatic(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; static;
    function WndProc(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
  protected
    function HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
    procedure CreateHandle; virtual;
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property Handle;
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
    constructor Create;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
    
    procedure ShowModal;
    procedure Show(modal: Boolean); overload;
    procedure Show; overload;
  published
    property Handle;
  end;

  TButtonControl = class(TWinControl)
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

  TButton = class(TButtonControl)
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
var
  Application: TApplication;
  
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
// ---------------------------------------------------------------------------------------
function  TControl_Create               (p: TControl   ; AOwner: TComponent): TControl;             stdcall; export;
procedure TControl_SetControlHeight     (p: TControl   ; AValue: Integer); stdcall; export;
procedure TControl_SetControlLeft       (p: TControl   ; AValue: Integer); stdcall; export;
procedure TControl_SetControlTop        (p: TControl   ; AValue: Integer); stdcall; export;
procedure TControl_SetControlWidth      (p: TControl   ; AValue: Integer); stdcall; export;
// ---------------------------------------------------------------------------------------
function  TWinControl_Create            (p: TWinControl; AOwner: TComponent): TWinControl;          stdcall; export;
procedure TWinControl_CreateHandle      (p: TWinControl           );                       stdcall; export;

function  TScrollingWinControl_Create   (p: TScrollingWinControl  ): TScrollingWinControl; stdcall; export;
function  TCustomForm_Create            (p: TCustomForm; f: TForm ): TCustomForm;          stdcall; export;
// ---------------------------------------------------------------------------------------
function  TButtonControl_Create         (p: TButtonControl; AOwner: TComponent ): TButtonControl;       stdcall; export;
function  TButton_Create                (p: TButton       ; AOwner: TComponent ): TButton;              stdcall; export;
// ---------------------------------------------------------------------------------------
procedure TPersistent_Destroy           (p: TPersistent         ); stdcall; export;
procedure TControl_Destroy              (p: TControl            ); stdcall; export;
procedure TWinControl_Destroy           (p: TWinControl         ); stdcall; export;

procedure TScrollingWinControl_Destroy  (p: TScrollingWinControl); stdcall; export;
procedure TCustomForm_Destroy           (p: TCustomForm         ); stdcall; export;
// ---------------------------------------------------------------------------------------
procedure TButtonControl_Destroy        (p: TButtonControl      ); stdcall; export;
procedure TButton_Destroy               (p: TButton             ); stdcall; export;
// ---------------------------------------------------------------------------------------
function  TControl_GetClientHeight      (p: TControl): Integer; stdcall; export;
function  TControl_GetClientWidth       (p: TControl): Integer; stdcall; export;

procedure TControl_SetClientHeight      (p: TControl; AValue: Integer); stdcall; export;
procedure TControl_SetClientWidth       (p: TControl; AValue: Integer); stdcall; export;

procedure TControl_SetAlign             (p: TControl; AValue: TAlign); stdcall; export;

// ---------------------------------------------------------------------------------------
function  TForm_Create                  (p: TForm): HWND;  stdcall; export;
procedure TForm_Destroy                 (p: TForm);        stdcall; export;

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
procedure TWinControl_CreateHandle     (p: TWinControl             );                       stdcall; external RTLDLL;

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

// ---------------------------------------------------------------------------------------
function  TControl_GetClientHeight     (p: TControl): Integer; stdcall; external RTLDLL;
function  TControl_GetClientWidth      (p: TControl): Integer; stdcall; external RTLDLL;

procedure TControl_SetClientHeight     (p: TControl; AValue: Integer); stdcall; external RTLDLL;
procedure TControl_SetClientWidth      (p: TControl; AValue: Integer); stdcall; external RTLDLL;

procedure TControl_SetAlign(p: TControl; AValue: TAlign); stdcall; external RTLDLL;

// ---------------------------------------------------------------------------------------
function  TForm_Create    (p: TForm): HWND; stdcall; external RTLDLL;
procedure TForm_Destroy   (p: TForm);       stdcall; external RTLDLL;

procedure TForm_Show      (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowModal (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowBool  (p: TForm ; modal: Boolean); stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function  TButtonControl_Create         (p: TButtonControl; AOwner: TComponent ): TButtonControl;       stdcall; external RTLDLL;
function  TButton_Create                (p: TButton       ; AOwner: TComponent ): TButton;              stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
procedure TButtonControl_Destroy        (p: TButtonControl      ); stdcall; external RTLDLL;
procedure TButton_Destroy               (p: TButton             ); stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function HitTestToStr(ht: Integer): string; stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

var
  CLASS_NAME: AnsiString;

procedure fpc_do_exit; external name 'FPC_DO_EXIT';

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

  writeln('------> ' + TForm(InstanceClass).ClassName);

  TForm(Referenz) := TForm(InstanceClass).Create;
writeln('-------------------------------------');
  if not Assigned(Application.FAppForm) then
  begin
    ShowError(sError_TApplication_ref);
    halt(2);
  end;
  
  TForm(Referenz).FHandle := 0;
  //TForm(Referenz).ööööööööö
  
  CLASS_NAME := PAnsiChar('MyWindowClass');
  
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

function TComponent_GetComponentCount(p: TComponent): Integer; stdcall; export;
begin
  if p = nil then
  begin
    ShowError(sError_TComponent_ref);
    exit;
  end;
  result := Length(p.FArray);
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
  GetWindowRect(p.FHandle, r);
  
  pt.x := p.Left;
  pt.y := p.Top;
  
  // Bildschirmkoordinaten in Clientkoordinaten umrechnen
  ScreenToClient(p.FHandle, pt);
  
  // Höhe setzen auf Pixel, Breite bleibt gleich
  SetWindowPos(
    p.FHandle, 0,
    p.FLeft,
    p.FTop,
    p.FWidth - p.Left,
    AValue,
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
    AValue,
    p.Top,
    p.FWidth  - p.FLeft,
    p.FHeight - p.FTop,
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

  pt.x   := p.Left;
  pt.y   := AValue;

  p.FTop := AValue;
  
  // Bildschirmkoordinaten in Clientkoordinaten umrechnen
  ScreenToClient(p.FHandle, pt);

  if not SetWindowPos(
    p.FHandle, 0,
    p.Left,
    AValue,
    p.FWidth  - p.Left,
    p.FHeight - p.Top,
    SWP_NOZORDER or SWP_NOACTIVATE) then begin
    writeln('no change22');
    halt(2);
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
    p.Left,
    p.Top,
    AValue,
    r.Bottom - r.Top,
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

procedure TWinControl_CreateHandle(p: TWinControl);
var
  WndClass: TWndClassExA;
begin
  if p.FHandle = 0 then
  begin
    writeln('CREATE HANDLE');
    p.FHandle := CreateWindowExA(
      WS_EX_CLIENTEDGE,
      PAnsiChar(CLASS_NAME),
      'AppName',
      ws_Overlapped   or
      ws_SysMenu      or
      ws_MinimizeBox  or
      ws_ClipSiblings or
      ws_ClipChildren or
      ws_Visible,
      50, 50,
      400, 300,
      0, 0,
      hInstanceDLL, nil
    );
  
    if p.FHandle = 0 then
    begin
      ShowError(sError_TWinControl_noWindoeHandle);
      Halt(1);
    end;
  end;
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
  WndClass: TWndClassExA;
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

function TForm_Create(p: TForm): HWND; stdcall; export;
var
  WndClass: TWndClassExA;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: Create');
  {$endif DLLDEBUG}

  CLASS_NAME := PAnsiChar('MyWindowClass');

  FillChar(WndClass, sizeof(WndClass), 0);
  WndClass.cbSize          := sizeof(WndClass);
  WndClass.style           := CS_HREDRAW or CS_VREDRAW;
  WndClass.lpfnWndProc     := @p.WndProcStatic;
  WndClass.cbClsExtra      := 0;
  WndClass.cbWndExtra      := 0;
  WndClass.hInstance       := hInstanceDLL;
  WndClass.hIcon           := LoadIconA  (0, PAnsiChar(32512));
  WndClass.hCursor         := LoadCursorA(0, PAnsiChar(32512));
  WndClass.hbrBackground   := HBRUSH(COLOR_WINDOW + 1);
  WndClass.lpszMenuName    := nil;
  WndClass.lpszClassName   := LPCSTR('MyWindowClass');
  WndClass.hIconSm         := WndClass.hIcon;

  if not GetClassInfoExA(hInstanceDLL, LPCSTR('MyWindowClass'), @WndClass) then
  begin
    if RegisterClassExA(@WndClass) = 0 then
    begin
      writeln('class register error: ' + IntToStr(GetLastError));
      Halt(2);
    end;
  end;

  p.FHandle := CreateWindowExA(
    0,
    LPCSTR('MyWindowClass'),
    LPCSTR('AppName'),
    ws_Overlapped   or
    ws_SysMenu      or
    ws_MinimizeBox  or
    ws_ClipSiblings or
    ws_ClipChildren or
    ws_Visible,
    50, 50,
    400, 300,
    GetDesktopWindow,
    0, hInstanceDLL, nil
  );
  writeln('ok: ' + inttostr(p.FHandle));
  
  result := p.FHandle;
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


{ TButtonControl }

function TButtonControl_Create(p: TButtonControl; AOwner: TComponent): TButtonControl;
var
  winid: HWND;
begin
  {$ifdef DLLDEBUG}
  writeln('TButtonControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TButtonControl_ref);
    exit;
  end;

  if not Assigned(AOwner) then
  begin
    ShowError(sError_TComponent_ref);
    halt(2);
  end;

  if AOwner.FHandle = 0 then
  begin
    ShowError(sError_TWinControl_noWindoeHandle);
    Halt(2);
  end;
  
  result := p;
end;

procedure TButtonControl_Destroy(p: TButtonControl);
begin
  {$ifdef DLLDEBUG}
  writeln('TButtonControl: Destroy');
  {$endif DLLDEBUG}
end;


{ TButton }

function TButton_Create(p: TButton; AOwner: TComponent): TButton;
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

  p.FHandle := CreateWindowExA(
  0, 'BUTTON', 'Click Me',
  WS_CHILD or WS_VISIBLE or BS_DEFPUSHBUTTON,
  50, 50, 150, 30,
  AOwner.FHandle, 0,
  hInstanceDLL, nil);
  
  result := p;
end;

procedure TButton_Destroy(p: TButton);
begin
  {$ifdef DLLDEBUG}
  writeln('TButton: Destroy');
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

constructor TComponent.Create(AOwner: TComponent);
begin
  inherited Create;
  TComponent_Create(self, AOwner);
end;
destructor TComponent.Destroy;
begin
  TComponent_Destroy(self);
  inherited Destroy;
end;
class function TComponent.ClassName: String; stdcall;
begin
  result := 'TComponent';
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

constructor TControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TControl_Create(self, AOwner);
end;
destructor TControl.Destroy;
begin
  TControl_Destroy(self);
  inherited Destroy;
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
  inherited Create(AOwner);
  TWinControl_Create(self, AOwner);
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

function TWinControl.HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
begin
  result := 0;
end;

procedure TWinControl.CreateHandle;
begin
  TWinControl_CreateHandle(self);
end;

class function TWinControl.WndProcStatic(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
var
  Window: TWinControl;
begin
  if uMsg = WM_NCCREATE then
  begin
    // get "self" pointer out from lParam
    // put it in GWL_USERDATA
    Window := TWinControl(PCREATESTRUCTA(lParam)^.lpCreateParams);
    SetWindowLongPtrA(hWnd, GWL_USERDATA, LONG_PTR(Window));
  end else
  Window := TWinControl(GetWindowLongPtrA(hwnd, GWL_USERDATA));
  
  if Assigned(Window) then
  result := Window.WndProc(hWnd, uMsg, wParam, lParam) else
  result := DefWindowProcA(hWnd, uMsg, wParam, lParam) ;
end;

function TWinControl.WndProc(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
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
        exit;
        //Halt(1);
      end;
    end;
    WM_COMMAND: begin
      writeln('control-ID: ' + IntToStr(LoWord(wParam)));
      writeln('code: ' + intToStr(HiWord(wParam)));
    end;
    WM_CLOSE: begin
      writeln('close');
      DestroyWindow(hWnd);
      result := -100;
    end;
    WM_DESTROY: begin
      PostQuitMessage(0);
      Result := -100;
    end else begin
      result := DefWindowProcA(hWnd, uMsg, wParam, lParam);
    end;
  end;
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


{ TCustomForm }

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


{ TButtonControl }

constructor TButtonControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);  // todo
  //CreateHandle;
  TButtonControl_Create(self, AOwner);
end;

destructor TButtonControl.Destroy;
begin
  TButtonControl_Destroy(self);
  inherited Destroy;
end;

class function TButtonControl.ClassName: String; stdcall;
begin
  result := 'TButtonControl';
end;


{ TButton }

constructor TButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TButton_Create(self, AOwner);
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
  TWinControl_CreateHandle          name 'TWinControl_CreateHandle',
  
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
  
  TButtonControl_Create             name 'TButtonControl_Create',
  TButtonControl_Destroy            name 'TButtonControl_Destroy',
  
  TButton_Create                    name 'TButton_Create',
  TButton_Destroy                   name 'TButton_Destroy',
  
  TForm_Create                      name 'TForm_Create',
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
