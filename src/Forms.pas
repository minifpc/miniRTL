// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit Forms;

interface
uses
  Windows, Dialogs, SysUtils, Locales, QClasses;
  
type
  TForm = class(TObject)
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
function TForm_Create(p: TForm): TForm; stdcall; export;
procedure TForm_Destroy(p: TForm); stdcall; export;

procedure TForm_Show      (p: TForm); stdcall; export;
procedure TForm_ShowModal (p: TForm); stdcall; export;
procedure TForm_ShowBool  (p: TForm ; modal: Boolean); stdcall; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function TForm_Create(p: TForm): TForm; stdcall; external RTLDLL;
procedure TForm_Destroy(p: TForm); stdcall; external RTLDLL;

procedure TForm_Show      (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowModal (p: TForm); stdcall; external RTLDLL;
procedure TForm_ShowBool  (p: TForm ; modal: Boolean); stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
function TForm_Create(p: TForm): TForm; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_QApplication_TForm_ref);
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
    ShowError(sError_QApplication_TForm_ref);
    exit;
  end;

  //p.Free;
end;

procedure TForm_Show(p: TForm); stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TForm: Show');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_QApplication_TForm_ref);
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
    ShowError(sError_QApplication_TForm_ref);
    exit;
  end;
end;

procedure TForm_ShowBool(p: TForm; modal: Boolean); stdcall; export;
begin
  if p = nil then
  begin
    ShowError(sError_QApplication_TForm_ref);
    exit;
  end;
end;
{$endif DLLEXPORT}

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
  TForm_Create    name 'TForm_Create',
  TForm_Destroy   name 'TForm_Destroy',
  TForm_Show      name 'TForm_Show',
  TForm_ShowBool  name 'TForm_ShowBool',
  TForm_ShowModal name 'TForm_ShowModal'
  ;
{$endif DLLEXPORT}

end.
