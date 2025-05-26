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
  TApplication = class(QObject)
  public
    /// <constructor>
    /// <brief>
    ///   This is the Pascal constructor for class TApplication.
    /// </brief>
    /// </constructor>
    constructor Create(ArgCount: Integer; Args: PPChar); overload;
    constructor Create; overload;
    
    /// <destructor>
    /// <brief>
    ///   This ist the Pascal destructor for class TApplication.
    /// </brief>
    /// </destructor>
    destructor Destroy;
    
    function exec(form: Pointer): Integer;
  end;
  /// </class>

type
  TPersistent = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;
  end;

type
  TComponent = class(TPersistent)
  private
    FOwner: TComponent;
    FIndex: Integer;
    FTag: NativeInt;
  protected
    function GetComponent(I: Integer): TComponent;
    function GetComponentCount: Integer;
    function GetComponentIndex: Integer;
    
    procedure SetComponentIndex(AValue: Integer);
  public
    constructor Create;
    destructor Destroy; override;
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
    constructor Create;
    destructor Destroy; override;
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
  protected
    function HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Handle: Integer read FHandle;
  end;
  
  TScrollingWinControl = class(TWinControl)
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TCustomForm = class(TScrollingWinControl)
  public
    constructor Create;
    destructor Destroy; override;
  end;

type
  TForm = class(TCustomForm)
  public
    constructor Create;
    destructor Destroy; override;
    
    procedure ShowModal;
    
    procedure Show(modal: Boolean); overload;
    procedure Show; overload;
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
function  TPersistent_Create             (p: TPersistent         ): TPersistent;          stdcall; export;
function  TComponent_Create              (p: TComponent          ): TComponent;           stdcall; export;
function  TControl_Create                (p: TControl            ): TControl;             stdcall; export;

function  TWinControl_Create             (p: TWinControl         ): TWinControl;          stdcall; export;
function  TWinControl_HandleMessage      (p: TWinControl; id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; export;

function  TScrollingWinControl_Create    (p: TScrollingWinControl): TScrollingWinControl; stdcall; export;
function  TCustomForm_Create             (p: TCustomForm         ): TCustomForm;          stdcall; export;
// ---------------------------------------------------------------------------------------
procedure TPersistent_Destroy           (p: TPersistent         ); stdcall; export;
procedure TComponent_Destroy            (p: TComponent          ); stdcall; export;
procedure TControl_Destroy              (p: TControl            ); stdcall; export;
procedure TWinControl_Destroy           (p: TWinControl         ); stdcall; export;

procedure TScrollingWinControl_Destroy  (p: TScrollingWinControl); stdcall; export;
procedure TCustomForm_Destroy           (p: TCustomForm         ); stdcall; export;

function  TComponent_GetComponentCount(p: TComponent): Integer; stdcall; export;
function  TComponent_GetComponentIndex(p: TComponent): Integer; stdcall; export;
function  TComponent_GetComponent(p: TComponent; I: Integer): TComponent; stdcall; export;
procedure TComponent_SetComponentIndex(p: TComponent; AValue: Integer); stdcall; export;
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

function GlobalWndProc(hWnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; export;
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
function  TComponent_Create           (p: TComponent              ): TComponent;           stdcall; external RTLDLL;
function  TControl_Create             (p: TControl                ): TControl;             stdcall; external RTLDLL;

function  TWinControl_Create          (p: TWinControl             ): TWinControl;          stdcall; external RTLDLL;
function  TWinControl_HandleMessage   (p: TWinControl; id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; external RTLDLL;

function  TScrollingWinControl_Create (p: TScrollingWinControl    ): TScrollingWinControl; stdcall; external RTLDLL;
function  TCustomForm_Create          (p: TCustomForm             ): TCustomForm;          stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
procedure TPersistent_Destroy          (p: TPersistent          ); stdcall; external RTLDLL;
procedure TComponent_Destroy           (p: TComponent           ); stdcall; external RTLDLL;
procedure TControl_Destroy             (p: TControl             ); stdcall; external RTLDLL;
procedure TWinControl_Destroy          (p: TWinControl          ); stdcall; external RTLDLL;
procedure TScrollingWinControl_Destroy (p: TScrollingWinControl ); stdcall; external RTLDLL;
procedure TCustomForm_Destroy          (p: TCustomForm          ); stdcall; external RTLDLL;

function  TComponent_GetComponentCount(p: TComponent): Integer; stdcall; external RTLDLL;
function  TComponent_GetComponentIndex(p: TComponent): Integer; stdcall; external RTLDLL;
function  TComponent_GetComponent(p: TComponent; I: Integer): TComponent; external RTLDLL;
procedure TComponent_SetComponentIndex(p: TComponent; AValue: Integer); stdcall; external RTLDLL;

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

function GlobalWndProc(id: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; external RTLDLL;
function HitTestToStr(ht: Integer): string; stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

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

function TComponent_Create(p: TComponent): TComponent; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TComponent: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TComponent_ref);
    exit;
  end;
  
  Exit(p);
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

function TComponent_GetComponentCount(p: TComponent): Integer; stdcall; export;
begin
  Exit(0);
end;

function TComponent_GetComponentIndex(p: TComponent): Integer; stdcall; export;
begin
  Exit(0);
end;

function TComponent_GetComponent(p: TComponent; I: Integer): TComponent; stdcall; export;
begin
  Exit(p);
end;

procedure TComponent_SetComponentIndex(p: TComponent; AValue: Integer); stdcall; export;
begin
  p.FIndex := AValue;
end;


{ TControl }

function TControl_Create(p: TControl): TControl; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TControl_ref);
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

function GlobalWndProc(hWnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; export;
var
  winCtrl: TWinControl;
  cs: PCREATESTRUCTA;
begin
  if msg = WM_NCCREATE then
  begin
    cs := PCREATESTRUCTA(lParam);
    winCtrl := TWinControl(cs^.lpCreateParams);
    
    if Assigned(winCtrl) then
    begin
      SetWindowLongPtrA(hwnd, GWLP_USERDATA, NativeInt(winCtrl));
      winCtrl.FHandle := hWnd;
      Exit(DefWindowProcA(hWnd, Msg, wParam, lParam));
    end;
  end;
  
  winCtrl := TWinControl(GetWindowLongPtrA(hWnd, GWLP_USERDATA));
  
  if Assigned(winCtrl) then
  Exit(winCtrl.HandleMessage(hWnd, Msg, wParam, lParam)) else
  Exit(DefWindowProcA(hWnd, Msg, wParam, lParam));
end;

function TWinControl_Create(p: TWinControl): TWinControl; stdcall; export;
var
  WndClass: TWndClassExA;
  FHandle : HWND;
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
  WndClass.lpfnWndProc     := @GlobalWndProc;
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
  
  Exit(p);
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

function TWinControl_HandleMessage(p: TWinControl; id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; export;
begin
  if msg = WM_SYSCOMMAND then
  begin
    writeln('quit');
    p.Free;
  end;
  result := DefWindowProcA(id, msg, wParam, lParam);
end;

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
  
  
  
  Exit(p);
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
    if p.HandleMessage(p.FHandle, _msg.Message, _msg.wParam, _msg.lParam) = -100 then break;
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
  //inherited Destroy;
end;


{ TComponent }

constructor TComponent.Create;
begin
  inherited Create;
  TComponent_Create(self);
end;
destructor TComponent.Destroy;
begin
  TComponent_Destroy(self);
  inherited Destroy;
end;

function TComponent.GetComponentCount: Integer;
begin
  Exit(TComponent_GetComponentCount(self));
end;

function TComponent.GetComponentIndex: Integer;
begin
  Exit(TComponent_GetComponentIndex(self));
end;

function TComponent.GetComponent(I: Integer): TComponent;
begin
  Exit(TComponent_GetComponent(self, I));
end;

procedure TComponent.SetComponentIndex(AValue: Integer);
begin
  TComponent_SetComponentIndex(self, AValue);
end;

{ TControl }

constructor TControl.Create;
begin
  inherited Create;
  TControl_Create(self);
end;
destructor TControl.Destroy;
begin
  TControl_Destroy(self);
  inherited Destroy;
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

constructor TWinControl.Create;
begin
  inherited Create;
  TWinControl_Create(self);
end;
destructor TWinControl.Destroy;
begin
  TWinControl_Destroy(self);
  inherited Destroy;
end;

procedure fpc_do_exit; external name 'FPC_DO_EXIT';

function TWinControl.HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
begin
  //writeln('wmsg: ' + IntToStr(msg)); // HiWord(wParam)));
  case msg of
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
      DestroyWindow(id);
    end;
    WM_DESTROY: begin
      writeln('des');
      PostQuitMessage(0);
      Halt(0);
    end else begin
      result := DefWindowProcA(id, msg, wParam, lParam);
    end;
  end;
  result := 0;
end;


{ TScrollingWinControl }

constructor TScrollingWinControl.Create;
begin
  inherited Create;
  TScrollingWinControl_Create(self);
end;
destructor TScrollingWinControl.Destroy;
begin
  TScrollingWinControl_Destroy(self);
  inherited Destroy;
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

{$ifdef DLLEXPORT}
exports
  TApplication_Create1  name 'TApplication_Create1',
  TApplication_Create2  name 'TApplication_Create2',
  TApplication_Destroy  name 'TApplication_Destroy',
  
  TApplication_exec     name 'TApplication_exec',

  TPersistent_Create              name 'TPersistent_Create',
  TComponent_Create               name 'TComponent_Create',
  TControl_Create                 name 'TControl_Create',
  TWinControl_Create              name 'TWinControl_Create',
  TScrollingWinControl_Create     name 'TScrollingWinControl_Create',
  TCustomForm_Create              name 'TCustomForm_Create',

  TPersistent_Destroy             name 'TPersistent_Destroy',
  TComponent_Destroy              name 'TComponent_Destroy',
  TControl_Destroy                name 'TControl_Destroy',
  TWinControl_Destroy             name 'TWinControl_Destroy',
  TScrollingWinControl_Destroy    name 'TScrollingWinControl_Destroy',
  TCustomForm_Destroy             name 'TCustomForm_Destroy',
  
  TComponent_GetComponentCount    name 'TComponent_GetComponentCount',
  TComponent_GetComponentIndex    name 'TComponent_GetComponentIndex',
  TComponent_GetComponent         name 'TComponent_GetComponent',
  TComponent_SetComponentIndex    name 'TComponent_SetComponentIndex',
  
  TControl_GetClientHeight        name 'TControl_GetClientHeight',
  TControl_SetClientWidth         name 'TControl_SetClientWidth',
  TControl_SetClientHeight        name 'TControl_SetClientHeight',
  //
  TControl_SetAlign               name 'TControl_SetAlign',

  TWinControl_HandleMessage       name 'TWinControl_HandleMessage',
  
  TForm_Create    name 'TForm_Create',
  TForm_Destroy   name 'TForm_Destroy',
  TForm_Show      name 'TForm_Show',
  TForm_ShowBool  name 'TForm_ShowBool',
  TForm_ShowModal name 'TForm_ShowModal',
  
  GlobalWndProc   name 'GlobalWndProc',
  HitTestToStr    name 'HitTestToStr'
  ;
{$endif DLLEXPORT}

end.

/// </file>
