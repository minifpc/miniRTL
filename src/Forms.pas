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

type
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
    
    function exec(form: Pointer): Integer;
  end;
  /// </class>

type
  TPersistent = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

type
  TComponent = class(TPersistent)
  private
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
  public
    constructor Create(AOwner: TComponent); virtual;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property ComponentCount: Integer read GetComponentCount;
    property ComponentIndex: Integer read GetComponentIndex write SetComponentIndex;
    property Components[I: Integer]: TComponent read GetComponent;
    property Owner: TComponent read FOwner;
    property Tag: NativeInt read FTag write FTag default 0;
  end;

type
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
    
    procedure SetAlign(AValue: TAlign);
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property Align: TAlign read FAlign write SetAlign default alNone;
    property Height: Integer read FHeight write FHeight;
    property Left: Integer read FLeft write FLeft;
    property Top: Integer read FTop write FTop;
    property Width: Integer read FWidth write FWidth;
  end;

type
  TWinControl = class(TControl)
  private
    FHandle: Integer;
    class function WndProcStatic(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; static;
    function WndProc(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
  protected
    procedure CreateHandle; virtual;
    function HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  published
    property Handle: Integer read FHandle;
  end;
  
  TScrollingWinControl = class(TWinControl)
  public
    constructor Create;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;
  
  TCustomForm = class(TScrollingWinControl)
  public
    constructor Create;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

type
  TForm = class(TCustomForm)
  public
    constructor Create;
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
    
    procedure ShowModal;
    procedure Show(modal: Boolean); overload;
    procedure Show; overload;
  end;

type
  TButtonControl = class(TWinControl)
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

type
  TButton = class(TButtonControl)
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    
    class function ClassName: String; stdcall; virtual;
  end;

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLEXPORT}
var
  Application: TApplication;

function  TApplication_Create1(p: TApplication                                 ): TApplication; overload; export;
function  TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; overload; export;

procedure TApplication_Destroy(P: TApplication); stdcall; export;
function  TApplication_exec(p: TApplication; form: TForm): Integer; stdcall; export;
// ---------------------------------------------------------------------------------------
function  TPersistent_Create            (p: TPersistent            ): TPersistent;          stdcall; export;
// ---------------------------------------------------------------------------------------
function  TComponent_Create             (p: TComponent ; AOwner: TComponent): TComponent;  stdcall; export;
procedure TComponent_Destroy            (p: TComponent             );              stdcall; export;
function  TComponent_GetComponent       (p: TComponent ; I: Integer): TComponent;  stdcall; export;
function  TComponent_GetComponentCount  (p: TComponent             ): Integer;     stdcall; export;
function  TComponent_GetComponentIndex  (p: TComponent             ): Integer;     stdcall; export;
function  TComponent_GetComponentOwner  (p: TComponent ; AOwner: TComponent): TComponent;  stdcall; export;
procedure TComponent_SetComponentIndex  (p: TComponent ; AValue: Integer   );      stdcall; export;
procedure TComponent_SetComponentOwner  (p: TComponent ; AOwner: TComponent);      stdcall; export;
// ---------------------------------------------------------------------------------------
function  TControl_Create               (p: TControl   ; AOwner: TComponent): TControl;             stdcall; export;
// ---------------------------------------------------------------------------------------
function  TWinControl_Create            (p: TWinControl; AOwner: TComponent): TWinControl;          stdcall; export;
procedure TWinControl_CreateHandle      (p: TWinControl         );                       stdcall; export;

function  TScrollingWinControl_Create   (p: TScrollingWinControl): TScrollingWinControl; stdcall; export;
function  TCustomForm_Create            (p: TCustomForm         ): TCustomForm;          stdcall; export;
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
function  TControl_GetClientHeight(p: TControl): Integer; stdcall; export;
function  TControl_GetClientWidth (p: TControl): Integer; stdcall; export;

procedure TControl_SetClientHeight(p: TControl; AValue: Integer); stdcall; export;
procedure TControl_SetClientWidth (p: TControl; AValue: Integer); stdcall; export;

procedure TControl_SetAlign(p: TControl; AValue: TAlign); stdcall; export;

// ---------------------------------------------------------------------------------------
function  TForm_Create  (p: TForm): TForm;  stdcall; export;
procedure TForm_Destroy (p: TForm);         stdcall; export;

procedure TForm_Show      (p: TForm); stdcall; export;
procedure TForm_ShowModal (p: TForm); stdcall; export;

procedure TForm_ShowBool  (p: TForm ; modal: Boolean); stdcall; export;
// ---------------------------------------------------------------------------------------
function HitTestToStr(ht: Integer): string; stdcall; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
var
  Application: TApplication;

function  TApplication_Create1(p: TApplication                                 ): TApplication; overload; stdcall; external RTLDLL;
function  TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; overload; stdcall; external RTLDLL;

procedure TApplication_Destroy(P: TApplication); stdcall; external RTLDLL;
function  TApplication_exec(p: TApplication; form: TForm): Integer; stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
function  TPersistent_Create          (p: TPersistent             ): TPersistent;          stdcall; external RTLDLL;
function  TComponent_Create           (p: TComponent ; AOwner: TComponent): TComponent;    stdcall; external RTLDLL;
function  TControl_Create             (p: TControl   ; AOwner: TComponent): TControl;      stdcall; external RTLDLL;

function  TWinControl_Create          (p: TWinControl; AOwner: TComponent): TWinControl;   stdcall; external RTLDLL;
procedure TWinControl_CreateHandle    (p: TWinControl             );                       stdcall; external RTLDLL;

function  TScrollingWinControl_Create (p: TScrollingWinControl    ): TScrollingWinControl; stdcall; external RTLDLL;
function  TCustomForm_Create          (p: TCustomForm             ): TCustomForm;          stdcall; external RTLDLL;
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
function  TControl_GetClientHeight(p: TControl): Integer; stdcall; external RTLDLL;
function  TControl_GetClientWidth (p: TControl): Integer; stdcall; external RTLDLL;

procedure TControl_SetClientHeight(p: TControl; AValue: Integer); stdcall; external RTLDLL;
procedure TControl_SetClientWidth (p: TControl; AValue: Integer); stdcall; external RTLDLL;

procedure TControl_SetAlign(p: TControl; AValue: TAlign); stdcall; external RTLDLL;

// ---------------------------------------------------------------------------------------
function TForm_Create(p: TForm): TForm; stdcall; external RTLDLL;
procedure TForm_Destroy(p: TForm); stdcall; external RTLDLL;

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

procedure fpc_do_exit; external name 'FPC_DO_EXIT';

{$ifdef DLLEXPORT}
var
  CLASS_NAME: AnsiString;

function TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Create(ArgCount, Args)');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TApplication_ref);
    Exit(nil);
  end;
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
  
  if p = nil then
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
  
  if p = nil then
  begin
    ShowError(sError_TApplication_ref);
    Exit;
  end;
end;

function TApplication_exec(p: TApplication; form: TForm): Integer; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: exec');
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
  
  if AOwner = nil then
  begin
  writeln('owner: nil');
    if p.GetComponentOwner = nil then
    begin
      writeln('owner: not allocated');
      halt(2);
    end;
    AOwner := TComponent.Create(p.GetComponentOwner);
    p.SetComponentOwner(AOwner);
  writeln('owner: ok');
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


{ TWinControl }

function TWinControl_Create(p: TWinControl; AOwner: TComponent): TWinControl; stdcall; export;
var
  WndClass: TWndClassExA;
  FHandle : HWND;
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
  WndClass.lpszClassName   := PAnsiChar(CLASS_NAME);
  WndClass.hIconSm         := WndClass.hIcon;

  if GetClassInfoExA(hInstanceDLL, WndClass.lpszClassName, @WndClass) = True then
  begin
    writeln('GetClass error: ' + IntToStr(GetLastError));
    writeln('ClassInfo: ' + IntToStr(GetLastError));
    UnregisterClassA(WndClass.lpszClassName, hInstanceDLL);
    writeln('UnRegClass error: ' + IntToStr(GetLastError));
  end;

  if RegisterClassExA(@WndClass) = 0 then
  begin
    writeln('DLL error: ' + IntToStr(GetLastError));
    Halt(2);
  end;

  if AOwner = nil then
  begin
    {$ifdef DLLDEBUG}
    writeln('AOwner: nil in ' + p.ClassName);
    {$endif DLLDEBUG}
    
    tc := TComponent.Create(nil);
    p.SetComponentOwner(tc);
    
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
  end else
  begin
    
    p.SetComponentOwner(AOwner);
  end;
  
  if p.FHandle = 0 then
  begin
    ShowError(sError_TWinControl_noWindoeHandle);
    Halt(1);
  end;
  
  result := p;
end;

procedure TWinControl_CreateHandle(p: TWinControl);
begin
  if p.FHandle = 0 then
  begin
    ShowError(sError_TWinControl_noWindoeHandle);
    Halt(1);
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

function TCustomForm_Create(p: TCustomForm): TCustomForm; stdcall; export;
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

function TForm_Create(p: TForm): TForm; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TForm_ref);
    exit;
  end;
  
  result := p;
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
  
  if p = nil then
  begin
    ShowError(sError_TForm_ref);
    exit;
  end;
  
  ShowWindow  (p.FHandle, SW_NORMAL);
  UpdateWindow(p.FHandle);
  
  while GetMessageA(_msg, 0, 0, 0) do
  begin
    TranslateMessage(_msg);
    DispatchMessageA(_msg);
    if p.WndProc(p.FHandle, _msg.Message, _msg.wParam, _msg.lParam) = -100 then break;
  end;
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
begin
  {$ifdef DLLDEBUG}
  writeln('TButtonControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TButtonControl_ref);
    exit;
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
begin
  {$ifdef DLLDEBUG}
  writeln('TButton: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TButton_ref);
    exit;
  end;
  
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
  {$ifdef DLLDEBUG}
  writeln('TApplication: Create Args');
  {$endif DLLDEBUG}
  
  inherited Create;
  TApplication_Create2(self, ArgCount, Args);
end;

constructor TApplication.Create;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Create');
  {$endif DLLDEBUG}

  inherited Create;
  TApplication_Create1(self);
end;

destructor TApplication.Destroy;
begin
  TApplication_Destroy(self);
  inherited Destroy;
end;

class function TApplication.ClassName: String; stdcall;
begin
  result := 'TApplication';
end;

function TApplication.exec(form: Pointer): Integer; stdcall;
var
  R: Integer;
begin
  if TForm(form) = nil then
  begin
    writeln('Pointer not TForm.');
    Halt(2);
  end;
  
  R := TApplication_exec(self, TForm(form));
  result := 2;
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

procedure TWinControl.CreateHandle;
begin
end;

class function TWinControl.ClassName: String; stdcall;
begin
  result := 'TWinControl';
end;

function TWinControl.HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
begin
  result := 0;
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
        //Application.Free;
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

constructor TScrollingWinControl.Create;
begin
  inherited Create(nil);  // todo
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

constructor TCustomForm.Create;
begin
  inherited Create;
  TCustomForm_Create(self);
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
  inherited Create;
  TForm_Create(self);
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
  inherited Create(nil);  // todo
  TButtonControl_Create(self, AOwner);
  TWinControl_CreateHandle(self);
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
  TApplication_Destroy              name 'TApplication_Destroy',
  
  TApplication_exec                 name 'TApplication_exec',

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
{$endif DLLEXPORT}

end.

/// </file>
