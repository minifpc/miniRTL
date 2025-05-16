setlocal

fpc -dKERNEL -dDLLEXPORT -dLANGDEU -n -B -O2 -Os -CD -a -al -Anasmwin64 -XX -Xs RTLLib.pas
dlltool --input-def rtllib_dll.def --dllname rtllib.dll --output-lib librtllib_dll.a
strip rtllib.dll

::fpc -dDLLEXPORT -dLANGDEU -n -B -O2 -Os test_unit.pas
fpc -dDLLIMPORT -dLANGDEU -n -B -O2 -Os test.pas

strip test.exe

endlocal
