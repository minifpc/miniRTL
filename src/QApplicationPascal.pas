// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$linklib rtllib_dll}
unit QApplicationPascal;
interface
uses
  Windows, SysUtils;

function GetCommandLineA: LPSTR; stdcall; external kernel32;
function StrAlloc(Size: Cardinal): PChar; stdcall; external RTLDLL;

type
  ///
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
  TApplication = class
  private
  public
    /// <constructor>
    /// <brief>
    ///   This is the Pascal constructor for class QApplication.
    /// </brief>
    /// </constructor>
    constructor Create(var ArgCount: Integer; var Args: PPChar); overload;
    constructor Create; overload;
    
    /// <destructor>
    /// <brief>
    ///   This ist the Pascal destructor for class QApplication.
    /// </brief>
    /// </destructor>
    destructor Destroy;
  end;
  /// </class>

{$ifdef DLLIMPORT}
function TApplication_Create(p: TApplication): TApplication; stdcall; external 'rtllib.dll';
procedure TApplication_Destroy(P: TApplication); stdcall; external 'rtllib.dll';

function TApplication_Create2(p: TApplication; var ArgCount: Integer; var Args: PPChar): TApplication; stdcall; external 'rtllib.dll';
{$else}
function TApplication_Create(p: TApplication): TApplication; stdcall; export;
procedure TApplication_Destroy(P: TApplication); stdcall; export;

function TApplication_Create2(p: TApplication; var ArgCount: Integer; var Args: PPChar): TApplication; stdcall;
{$endif}

implementation

{$ifdef DLLEXPORT}
function TApplication_Create(p: TApplication): TApplication; stdcall; [public, alias: 'TApplication_Create'];
begin
  if p = nil then
  begin
    ShowMessage('Error: could not access TApplication.');
    ExitProcess(1)
  end;
  writeln('__init__');
  Exit(p);
end;
procedure TApplication_Destroy(P: TApplication); stdcall; [public, alias: 'TApplication_Destroy']; export;
begin
  writeln('delter');
  p.Free;
end;

function TApplication_Create2(p: TApplication; var ArgCount: Integer; var Args: PPChar): TApplication; stdcall; [public, alias: 'TApplication_Create2'];
var
  cmdline   : PAnsiChar;
  ArgsCount : Integer;
  S, R      : PChar;
  TotalLen  : Integer;
  
  I : Integer;
begin
  writeln('halplo');

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
  
  //Exit(QApplication.Create(ArgsCount, Args));
end;
{$endif}

constructor TApplication.Create;
begin
  writeln('cccccc');
  //inherited Create;
  TAPPLICATION_CREATE(self);
end;

constructor TApplication.Create(var ArgCount: Integer; var Args: PPChar);
begin
  TApplication_Create2(self, ArgCount, Args);
end;

destructor TApplication.Destroy;
begin
  writeln('destroyer');
  TApplication_Destroy(self);
  //inherited Destroy;
end;

{$ifdef DLLEXPORT}
exports
  TApplication_Create,
  TApplication_Create2,
  TApplication_Destroy
  ;
{$endif}
 
end.
