// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit QApplicationPascal;

interface
uses Windows, Dialogs, SysUtils, QObjectPascalExport;

function GetCommandLineA: LPSTR; stdcall; external kernel32;
function StrAlloc(Size: Cardinal): PChar; stdcall; external RTLDLL;

type
  (**
   * \class   QApplication
   * \brief   The QApplication class manages the GUI application's control flow and main settings.
   * \details QApplication specializes QGuiApplication with some functionality needed for
   *          QWidget-based applications. It handles widget specific initialization, and
   *          finalization.
   *
   *          For any GUI application using Qt, there is precisely one QApplication object,
   *          no matter whether the application has 0, 1, 2 or more windows at any given
   *          time.
   *          For non-QWidget based Qt applications, use QGuiApplication instead, as it does
   *          not depend on the QtWidgets library.
   *
   *          Some GUI applications provide a special batch mode ie. provide command line
   *          arguments for executing tasks without manual intervention. In such non-GUI mode,
   *          it is often sufficient to instantiate a plain QCoreApplication to avoid unnecessarily
   *          initializing resources needed for a graphical user interface.
   *
   *          The following example shows how to dynamically create an appropriate type of
   *          application instance:
   *)
  QApplication = class(QObject)
  public
    (**
     * \brief This is the Pascal constructor for class QApplication.
     *)
    constructor Create(ArgCount: Integer; Args: PPChar); overload;
    constructor Create; overload;
    
    (**
     * \brief This ist the Pascal destructor for class QApplication.
     *)
    destructor Destroy;
  end;

implementation

{$ifdef DLLEXPORT}
function QApplication_Create(var p: QApplication): QApplication; export;
begin
  p := QApplication.Create;
  if p = nil then
  begin
    ShowMessage('Error: could not create QApplication.');
    ExitProcess(1)
  end;
  Exit(p);
end;
procedure QApplication_Destroy(p: QApplication); export;
begin
  p.Free;
end;
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
function  QApplication_Create(var p: QApplication): QApplication; external RTLDLL;
procedure QApplication_Destroy(P: QApplication); external RTLDLL;
{$endif DLLIMPORT}

(**
 * \brief CTOR Create of QApplication
 * \param ArgCount - Integer
 * \param Args     - Array of String
 *)
{$ifdef DLLEXPORT}
constructor QApplication.Create(
  ArgCount: Integer;
  Args: PPChar);
begin
  inherited Create;
end;
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
constructor QApplication.Create(
  ArgCount: Integer;
  Args: PPChar);
begin
end;
{$endif DLLIMPORT}

constructor QApplication.Create;
begin
  inherited Create;
end;

destructor QApplication.Destroy;
begin
  inherited Destroy;
end;

{$ifdef DLLEXPORT}
function  QApplication__Create: QApplication; stdcall; export;
var
  cmdline   : PAnsiChar;
  Args      : PPAnsiChar;
  ArgsCount : Integer;
  S, R      : PChar;
  TotalLen  : Integer;
  
  P : QApplication;
  I : Integer;
begin
  result  := nil;
  CmdLine := GetCommandLineA;
  Args    := CommandLineToArgvA(CmdLine, ArgsCount);
  
  if Args = nil then
  begin
    MessageBoxA(0,'Error: can not parse command line.', 'Error', MB_OK);
    ExitProcess(1);
  end;
      
  TotalLen := 128;
  
  R := StrAlloc(TotalLen);
  S := StrAlloc(16);
  
  //StrCopy(S, IntToStr(ArgsCount));
  
  StrCopy(R, 'Count of Parameters: ');
  StrCopy(S, IntToStr(ArgsCount));
  
  MessageBoxA(0, R, '222  11  222', 0);
  MessageBoxA(0, S, '222  11  222', 0);
  
  StrCat (R, S);
  
  MessageBoxA(0, R, '222  11  222', 0);
  
  StrDispose(R);
  
  Exit(QApplication.Create(ArgsCount, Args));
end;
{$endif DLLEXPORT}

{$ifdef DLLEXPORT}
exports
  QApplication_Create  name 'QApplication_Create',
  QApplication_Destroy name 'QApplication_Create'
  ;
{$endif DLLEXPORT}

end.
