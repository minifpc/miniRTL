// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit Forms;

interface
uses
  Windows, Dialogs, SysUtils, Locales, Classes;

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
function TPersistent_Create             (p: TPersistent         ): TPersistent;          stdcall; export;
function TComponent_Create              (p: TComponent          ): TComponent;           stdcall; export;
function TControl_Create                (p: TControl            ): TControl;             stdcall; export;

function TWinControl_Create             (p: TWinControl         ): TWinControl;          stdcall; export;
function TWinControl_HandleMessage      (id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; export;

function TScrollingWinControl_Create    (p: TScrollingWinControl): TScrollingWinControl; stdcall; export;
function TCustomForm_Create             (p: TCustomForm         ): TCustomForm;          stdcall; export;
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
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function TPersistent_Create          (p: TPersistent             ): TPersistent;          stdcall; external RTLDLL;
function TComponent_Create           (p: TComponent              ): TComponent;           stdcall; external RTLDLL;
function TControl_Create             (p: TControl                ): TControl;             stdcall; external RTLDLL;

function TWinControl_Create          (p: TWinControl             ): TWinControl;          stdcall; external RTLDLL;
function TWinControl_HandleMessage   (id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; external RTLDLL;

function TScrollingWinControl_Create (p: TScrollingWinControl    ): TScrollingWinControl; stdcall; external RTLDLL;
function TCustomForm_Create          (p: TCustomForm             ): TCustomForm;          stdcall; external RTLDLL;
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
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
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
  
  p.Free;
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
  
  p.Free;
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

function GlobalWndProc(id: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; export;
var
  winCtrl: TWinControl;
begin
  // Pointer aus Fensterdaten holen (z.B. aus GWL_USERDATA)
  if msg = WM_NCCREATE then
  begin
    winCtrl := TWinControl(GetWindowLongPtrA(id, GWLP_USERDATA));
    SetWindowLongPtrA(id, GWLP_USERDATA, NativeInt(winCtrl));
    winCtrl.FHandle := id;
  end else
  winCtrl := TWinControl(GetWindowLongPtrA(id, GWLP_USERDATA));
  
  if Assigned(winCtrl) then
  Result := winCtrl.HandleMessage (id, Msg, wParam, lParam) else
  Result := DefWindowProcA        (id, Msg, wParam, lParam) ;
end;

function TWinControl_Create(p: TWinControl): TWinControl; stdcall; export;
var
  _msg: TMsg;
  cls : TWndClassEx;
  wrd : WordBool;
  hin : HINSTANCE;
begin
  {$ifdef DLLDEBUG}
  writeln('TWinControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TWinControl_ref);
    exit(nil);
  end;
  
  hin := GetModuleHandleA(nil);
  
  FillChar(cls, sizeof(cls), 0);
  cls.cbSize          := sizeof(cls);        { must be initialized   }
  
  if not GetClassInfoEx (hin, 'AppName', @cls) then
  begin
    with cls do
    begin
      style           := CS_BYTEALIGNCLIENT;
      lpfnWndProc     := @GlobalWndProc;              { window class handler  }
      cbClsExtra      := 0;
      cbWndExtra      := 0;
      hInstance       := hin;                         { qualify instance!     }
      //hIcon           := LoadIconA(hin, 'APPICON');
      //hCursor         := LoadCursorA(0, 'idc_arrow');
      hbrBackground   := GetSysColorBrush(COLOR_WINDOW);
      lpszMenuName    := 'APPMENU';                   { Menu name             }
      lpszClassName   := 'AppName';                   { Window Class name     }
      (*hIconSm         := LoadImage(
      hin,
      APPICON,
      IMAGE_ICON,
      16,
      16,
      LR_DEFAULTCOLOR*
      );*)
    end;
 
    if RegisterClassExA(@cls) = 0 then
    begin
      ShowError('regois error.');
      Halt(255);
    end;
  end;

  p.FHandle := CreateWindowExA(
    WS_EX_CLIENTEDGE,
    'AppName',
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
    hin, nil
  );
  
  if p.FHandle = 0 then
  begin
    ShowError(sError_TWinControl_noWindoeHandle);
    Halt(1);
  end;
  
  ShowWindow  (p.FHandle, SW_NORMAL);
  UpdateWindow(p.FHandle);
  
  while GetMessageA(_msg, 0, 0, 0) do
  begin
    TranslateMessage(_msg);
    DispatchMessageA(_msg);
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

function TWinControl_HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; export;
begin
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
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: ShowModal');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TForm_ref);
    exit;
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


{ TPersistent }

constructor TPersistent.Create;
begin
  inherited Create;
  TPersistent_Create(self);
end;
destructor TPersistent.Destroy;
begin
  TPersistent_Destroy(self);
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
end;

function TWinControl.HandleMessage(id: HWND; MSG: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
begin
  case msg of
    WM_DESTROY: begin
      PostQuitMessage(0);
      exit(0);
    end;
  end;
  Exit(DefWindowProcA(id, msg, wParam, lParam));
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
  //inherited Destroy;
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
  //inherited Destroy;
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
  TForm_ShowModal name 'TForm_ShowModal'
  ;
{$endif DLLEXPORT}

end.
