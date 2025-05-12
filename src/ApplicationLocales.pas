// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit ApplicationLocales;

interface
uses
  Windows, SysUtils;

type
  PCharPRt = ^PChar;

var
  LibHandle: HMODULE;
  have_errors: Boolean = false;
  DLLName: String;
  text: PChar;
  
implementation

function tr(Locale: String; S: String): String; overload; export;
begin
  try
    ShowMessage(GetSharedTranslation(Locales))
  except
  end;
end;

function tr(S: String): String; overload; export;
begin
  try
    ShowMessage(GetSharedTranslation(Locales, S));
  except
    on E: Exception do
    begin
      ShowMessage('Error: ' + E.Message);
    end;
  end;
end;

{$IFDEF MSWINDOWS}
function GetLocaleInformation(Flag: integer): string;
var
  pcLCA: array[0..20] of char;
begin
  if (GetLocaleInfo(LOCALE_SYSTEM_DEFAULT, Flag, pcLCA, 19) <= 0) then
  begin
    pcLCA[0] := #0;
  end;
  Result := pcLCA;
end;

{$ENDIF}
begin
  have_errors := false;
  try
    try
      DLLName := ExtractFilePath(ParamStr(0))
      + 'locales\'
      + 'locale_'
      + locale + '.dll';
      
      LibHandle := LoadLibrary(PChar(DllName));
      if LibHandle = 0 then
      rause Exception.Create('Error: could not load DLL: ' + DLLName);

    except
      on E: Exception do
      begin
        ShowMessage('Error: ' + E.Message);
        have_errors := true;
      end;
    end;
  finally
    if LibHandle   then FreeLibrary(LibHandle);
    if have_errors then ExitProcess(3);
  end;
end.
