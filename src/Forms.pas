// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit Forms;

interface
uses
  Windows, Dialogs, SysUtils, Locales, Classes;

type
  TPersistent = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;
  end;

type
  TComponent = class(TPersistent)
  public
    constructor Create;
    destructor Destroy; override;
  end;

type
  TControl = class(TObject)
  private
    FHeight: Integer;
    FLeft: Integer;
    FTop: Integer;
    FWidth: Integer;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Height: Integer read FHeight write FHeight;
    property Left: Integer read FLeft write FLeft;
    property Top: Integer read FTop write FTop;
    property Width: Integer read FWidth write FWidth;
  end;

type
  TWinControl = class(TControl)
  public
    constructor Create;
    destructor Destroy; override;
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
function TScrollingWinControl_Create    (p: TScrollingWinControl): TScrollingWinControl; stdcall; export;
function TCustomForm_Create             (p: TCustomForm         ): TCustomForm;          stdcall; export;

procedure TPersistent_Destroy           (p: TPersistent         ); stdcall; export;
procedure TComponent_Destroy            (p: TComponent          ); stdcall; export;
procedure TControl_Destroy              (p: TControl            ); stdcall; export;
procedure TWinControl_Destroy           (p: TWinControl         ); stdcall; export;
procedure TScrollingWinControl_Destroy  (p: TScrollingWinControl); stdcall; export;
procedure TCustomForm_Destroy           (p: TCustomForm         ); stdcall; export;

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
function TScrollingWinControl_Create (p: TScrollingWinControl    ): TScrollingWinControl; stdcall; external RTLDLL;
function TCustomForm_Create          (p: TCustomForm             ): TCustomForm;          stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
procedure TPersistent_Destroy          (p: TPersistent          ); stdcall; external RTLDLL;
procedure TComponent_Destroy           (p: TComponent           ); stdcall; external RTLDLL;
procedure TControl_Destroy             (p: TControl             ); stdcall; external RTLDLL;
procedure TWinControl_Destroy          (p: TWinControl          ); stdcall; external RTLDLL;
procedure TScrollingWinControl_Destroy (p: TScrollingWinControl ); stdcall; external RTLDLL;
procedure TCustomForm_Destroy          (p: TCustomForm          ); stdcall; external RTLDLL;

// ---------------------------------------------------------------------------------------
function TForm_Create(p: TForm): TForm; stdcall; external RTLDLL;
procedure TForm_Destroy(p: TForm); stdcall; external RTLDLL;

procedure TForm_Show      (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowModal (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowBool  (p: TForm ; modal: Boolean); stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
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

function TWinControl_Create(p: TWinControl): TWinControl; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TWinControl: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TWinControl_ref);
    exit;
  end;
  
  Exit(p);
end;

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
  
  p.Free;
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
  
  p.Free;
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
  
  //p.Free;
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
  
  //p.Free;
end;

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

  TForm_Create    name 'TForm_Create',
  TForm_Destroy   name 'TForm_Destroy',
  TForm_Show      name 'TForm_Show',
  TForm_ShowBool  name 'TForm_ShowBool',
  TForm_ShowModal name 'TForm_ShowModal'
  ;
{$endif DLLEXPORT}

end.
