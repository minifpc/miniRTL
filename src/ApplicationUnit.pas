// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
unit ApplicationUnit;

interface
uses
  Windows, Forms, Dialogs, Graphics, SysUtils, Locales;

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
  private
    FAppPalette : TCustomPalette;
    FAppForm    : TForm;
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
    
  published
    property Palette: TCustomPalette read FAppPalette write FAppPalette;
  end;
  /// </class>

var
  CLASS_NAME: AnsiString = 'MyWindowClass';

var
  Application : TApplication;

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLEXPORT}
function  TApplication_Create1          (p: TApplication                                 ): TApplication; stdcall; export;
function  TApplication_Create2          (p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; stdcall; export;
function  TApplication_Run2             (p: TApplication; form: TForm ): Integer; stdcall; export;
function  TApplication_Run1             (p: TApplication              ): Integer; stdcall; export;

procedure TApplication_CreateForm       (p: TApplication; InstanceClass: TComponentClass; out Referenz ); stdcall; export;
procedure TApplication_Destroy          (P: TApplication             );          stdcall; export;
procedure TApplication_Initialize       (p: TApplication             );          stdcall; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function  TApplication_Create1          (p: TApplication                                 ): TApplication; stdcall; external RTLDLL;
function  TApplication_Create2          (p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; stdcall; external RTLDLL;
function  TApplication_Run2             (p: TApplication; form: TForm ): Integer; stdcall; external RTLDLL;
function  TApplication_Run1             (p: TApplication              ): Integer; stdcall; external RTLDLL;

procedure TApplication_CreateForm       (p: TApplication; InstanceClass: TComponentClass; out Referenz ); stdcall; external RTLDLL;

procedure TApplication_Destroy          (P: TApplication             );          stdcall; external RTLDLL;
procedure TApplication_Initialize       (p: TApplication             );          stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
function TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; stdcall; export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Create(ArgCount, Args)');
  {$endif DLLDEBUG}
  
  if not Assigned(p) then
  begin
    ShowErrorA(sError_TApplication_ref);
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
    ShowErrorA(sError_TApplication_nil);
    Exit(nil);
  end;
  
  result  := nil;
  CmdLine := GetCommandLineA;
  Args    := CommandLineToArgvA(CmdLine, ArgsCount);
  
  if Args = nil then
  begin
    ShowErrorA(sError_TApplication_parseArgs);
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
    ShowErrorA(sError_TApplication_ref);
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
    ShowErrorA(sError_TApplication_ref);
    Exit;
  end;

  TForm(Referenz) := TForm(InstanceClass).Create;
  if not Assigned(Application.FAppForm) then
  begin
    ShowErrorA(sError_TApplication_ref);
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
    ShowErrorA(sError_TApplication_ref);
    Exit(1);
  end;
  
  if form = nil then
  begin
    ShowErrorA(sError_TForm_nil);
    Exit(1);
  end;
  form.ShowModal;
  writeln('TApplication: after show modal');
end;
function TApplication_Run1(p: TApplication): Integer; stdcall; export;
begin
  if not Assigned(Application) then
  begin
    ShowErrorA(sError_TApplication_ref);
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
{$endif DLLEXPORT}


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
  Palette := TCustomPalette(TPaletteLight.Create);
  TApplication_CreateForm(self, InstanceClass, Referenz);
end;
constructor TApplication.Create;
begin
  inherited Create;
  Palette := TCustomPalette(TPaletteLight.Create);
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

{$ifdef DLLEXPORT}
exports
  TApplication_Create1              name 'TApplication_Create1',
  TApplication_Create2              name 'TApplication_Create2',
  TApplication_CreateForm           name 'TApplication_CreateForm',
  TApplication_Initialize           name 'TApplication_Initialize',
  TApplication_Run1                 name 'TApplication_Run1',
  TApplication_Run2                 name 'TApplication_Run2',
  TApplication_Destroy              name 'TApplication_Destroy'
  ;
{$endif DLLEXPORT}

end.
