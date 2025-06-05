// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$define DLLEXPORT}
{$undef  DLLIMPORT}

{$mode delphi}
{$WARN IMPLICIT_STRING_CAST_LOSS OFF}
library RTLLib;

uses
  Windows, global, StrUtils, RTLUnit;

var
  DllProc: procedure(hinstDLL: HINSTANCE; Reason: DWORD; lpReserved: Pointer);
  
function DllMain(
  hinstDLL   : HINSTANCE;
  fdwReason  : DWORD;
  lpReserved : Pointer): BOOL; stdcall; [public, alias: 'DLLMAIN' ];
begin
  case fdwReason of
    DLL_PROCESS_ATTACH:
    begin
      // DLL wird geladen
      write('DLL attach: ');
      
      if hinstDLL <> 0 then writeln('ok');
      hInstanceDLL := hInstDLL;
    end;
    DLL_PROCESS_DETACH:
    begin
      // DLL wird entladen
      writeln('DLL detach');
    end;
    DLL_THREAD_ATTACH:
    begin
      // Neuer Thread im Hostprozess
    end;
    DLL_THREAD_DETACH:
    begin
      // Thread im Hostprozess wird beendet
    end;
  end;
  Result := False; // wichtig! False = DLL-Load schlägt fehl
end;

exports
  DllMain name 'DllMain'
  ;

begin
  DllProc := @DllMain;
  DllMain(GetModuleHandleA('rtllib.dll'), DLL_PROCESS_ATTACH, nil);
end.
