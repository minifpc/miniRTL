// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
{$M-}
unit Application;

interface
uses
  Windows, Dialogs, SysUtils, Forms, Locales, Classes;

function GetCommandLineA: LPSTR; stdcall; external kernel32;
function StrAlloc(Size: Cardinal): PChar; stdcall; external RTLDLL;

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
    
    function exec(form: TForm): Integer;
  end;
  /// </class>

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLEXPORT}
function  TApplication_Create1(p: TApplication                                 ): TApplication; overload; export;
function  TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; overload; export;

procedure TApplication_Destroy(P: TApplication); export;
function TApplication_exec(p: TApplication; form: TForm): Integer; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function  TApplication_Create1(p: TApplication                                 ): TApplication; overload; external RTLDLL;
function  TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; overload; external RTLDLL;

procedure TApplication_Destroy(P: TApplication); external RTLDLL;
function TApplication_exec(p: TApplication; form: TForm): Integer; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
function TApplication_Create2(p: TApplication; ArgCount: Integer; Args: PPChar): TApplication; export;
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

function TApplication_Create1(p: TApplication): TApplication; export;
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
  
  Exit(TApplication.Create(ArgsCount, Args));
end;
procedure TApplication_Destroy(p: TApplication); export;
begin
  {$ifdef DLLDEBUG}
  writeln('TApplication: Destroy');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_TApplication_ref);
    Exit;
  end;
  p.Free;
end;

function TApplication_exec(p: TApplication; form: TForm): Integer; export;
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
  Halt(0);
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

function TApplication.exec(form: TForm): Integer;
begin
  Exit(TApplication_exec(self, form));
end;

{$ifdef DLLEXPORT}
exports
  TApplication_Create1  name 'TApplication_Create1',
  TApplication_Create2  name 'TApplication_Create2',
  TApplication_Destroy  name 'TApplication_Destroy',
  
  TApplication_exec     name 'TApplication_exec'
  ;
{$endif DLLEXPORT}

end.

/// </file>
