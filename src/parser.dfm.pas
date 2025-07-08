// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
unit parser.dfm;

interface

type
  TDFMParser = class
  public
    constructor Create(AFileName: String);
  end;

{$ifdef DLLEXPORT}
// ---------------------------------------------------------------------------------------
procedure TDFMParser_Create (p: TDFMParser; AFileName: String); stdcall; export;
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
// ---------------------------------------------------------------------------------------
procedure TDFMParser_Create (p: TDFMParser; AFileName: String); stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation
uses
  Windows, Dialogs, SysUtils, ErrorData, Locales;

{$ifdef DLLEXPORT}
{ TDFMParser }
procedure TDFMParser_Create(p: TDFMParser; AFileName: String); stdcall; export;
var
  resinst : HMODULE;
  resinfo : HANDLE;
  ressize : DWORD;
  
  resdata : HGLOBAL;
  reslock : Pointer;
begin
  resinst := GetModuleHandleA(nil);
  resinfo := FindResource   (resinst, PChar(AFileName), RT_RCDATA);
  
  if resinfo =  0 then
  begin
    AFileName := AFileName + '.dfm';
    if isDirectory(AFileName) then
    begin
      ShowError(sError_TDFMParser_isDir);
      Halt(2);
    end;
    if not isFile(AFileName) then
    begin
      ShowError(sError_NoFile_Or_Missing);
      Halt(2);
    end;
    
  end;
  
  writeln('resourced loaded.');
  
  ressize := SizeOfResource (resinst, resinfo); if ressize =  0  then RaiseLastOSError;
  resdata := LoadResource   (resinst, resinfo); if resdata =  0  then RaiseLastOSError;
  reslock := LockResource   (         resdata); if reslock = nil then RaiseLastOSError;
  
  // text
  writeln(Copy(PChar(resdata), 1, ressize));
end;
{$endif DLLEXPORT}

constructor TDFMParser.Create(AFileName: String);
begin
  TDFMParser_Create(self, AFileName);
end;

{$ifdef DLLEXPORT}
exports
  TDFMParser_Create name 'TDFMParser_Create'
  ;
{$endif DLLEXPORT}
end.
