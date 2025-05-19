// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit QApp;

interface
uses
  Windows, Dialogs, SysUtils, Forms, Locales, QClasses;

function GetCommandLineA: LPSTR; stdcall; external kernel32;
function StrAlloc(Size: Cardinal): PChar; stdcall; external RTLDLL;

type
  // -----------------------------------------------------------------------------------------------
  /// <class>
  /// <name>QApplication</name>
  /// <parent>
  ///   QObject
  /// </parent>
  /// <brief>
  ///   The QApplication class manages the GUI application's control flow and main settings.
  /// </brief>
  /// <details>
  ///   QApplication specializes QGuiApplication with some functionality needed for
  ///   QWidget-based applications. It handles widget specific initialization, and
  ///   finalization.
  ///
  ///   For any GUI application using Qt, there is precisely one QApplication object,
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
  QApplication = class(QObject)
  public
    /// <constructor>
    /// <brief>
    ///   This is the Pascal constructor for class QApplication.
    /// </brief>
    /// </constructor>
    constructor Create(ArgCount: Integer; Args: PPChar); overload;
    constructor Create; overload;
    
    /// <destructor>
    /// <brief>
    ///   This ist the Pascal destructor for class QApplication.
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
function  QApplication_Create1(p: QApplication                                 ): QApplication; overload; export;
function  QApplication_Create2(p: QApplication; ArgCount: Integer; Args: PPChar): QApplication; overload; export;

procedure QApplication_Destroy(P: QApplication); export;
function QApplication_exec(p: QApplication; form: TForm): Integer; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function  QApplication_Create1(p: QApplication                                 ): QApplication; overload; external RTLDLL;
function  QApplication_Create2(p: QApplication; ArgCount: Integer; Args: PPChar): QApplication; overload; external RTLDLL;

procedure QApplication_Destroy(P: QApplication); external RTLDLL;
function QApplication_exec(p: QApplication; form: TForm): Integer; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
function QApplication_Create2(p: QApplication; ArgCount: Integer; Args: PPChar): QApplication; export;
begin
  {$ifdef DLLDEBUG}
  writeln('QApplication: Create(ArgCount, Args)');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_QApplication_ref);
    Exit(nil);
  end;
end;

function  QApplication_Create1(p: QApplication): QApplication; export;
var
  cmdline   : PAnsiChar;
  Args      : PPAnsiChar;
  ArgsCount : Integer;
  S, R      : PChar;
  TotalLen  : Integer;
  I : Integer;
begin
  {$ifdef DLLDEBUG}
  writeln('QApplication: Create');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_QApplication_nil);
    Exit(nil);
  end;
  
  result  := nil;
  CmdLine := GetCommandLineA;
  Args    := CommandLineToArgvA(CmdLine, ArgsCount);
  
  if Args = nil then
  begin
    ShowError(sError_QApplication_parseArgs);
    ExitProcess(1);
  end;
  
  while Args^ <> nil do
  begin
    WriteLn(Args^);
    Inc(Args);
  end;
  
  Exit(QApplication.Create(ArgsCount, Args));
end;
procedure QApplication_Destroy(p: QApplication); export;
begin
  {$ifdef DLLDEBUG}
  writeln('QApplication: Destroy');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_QApplication_ref);
    Exit;
  end;
  p.Free;
end;

function QApplication_exec(p: QApplication; form: TForm): Integer; export;
begin
  {$ifdef DLLDEBUG}
  writeln('QApplication: exec');
  {$endif DLLDEBUG}
  
  if p = nil then
  begin
    ShowError(sError_QApplication_ref);
    Exit(1);
  end;
  
  if form = nil then
  begin
    ShowError(sError_QApplication_TForm_nil);
    Exit(1);
  end;
  
  form.ShowModal;
  Exit(0);
end;
{$endif DLLEXPORT}

(**
 * \brief CTOR Create of QApplication
 * \param ArgCount - Integer
 * \param Args     - Array of String
 *)
constructor QApplication.Create(
  ArgCount: Integer;
  Args: PPChar);
begin
  inherited Create;
  QApplication_Create2(self, ArgCount, Args);
end;

constructor QApplication.Create;
begin
  inherited Create;
  QApplication_Create1(self);
end;

destructor QApplication.Destroy;
begin
  QApplication_Destroy(self);
  inherited Destroy;
end;

function QApplication.exec(form: TForm): Integer;
begin
  Exit(QApplication_exec(self, form));
end;

{$ifdef DLLEXPORT}
exports
  QApplication_Create1  name 'QApplication_Create1',
  QApplication_Create2  name 'QApplication_Create2',
  QApplication_Destroy  name 'QApplication_Destroy',
  
  QApplication_exec     name 'QApplication_exec'
  ;
{$endif DLLEXPORT}

end.

/// </file>
