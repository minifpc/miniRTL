setlocal

fpc -dKERNEL -dDLLEXPORT -dLANGDEU -n -B -O2 -Os -CD RTLLib.pas
dlltool --input-def rtllib_dll.def --dllname rtllib.dll --output-lib librtllib_dll.a
strip rtllib.dll

::fpc -dDLLEXPORT -dLANGDEU -n -B -O2 -Os test_unit.pas
fpc -dDLLIMPORT -dLANGDEU -n -O2 -Os test.pas

strip test.exe

endlocal
