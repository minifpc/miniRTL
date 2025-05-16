setlocal

fpc -dDLLEXPORT -dLANGDEU -n -Px86_64 -Twin64 -B -O2 -Os -CD -Cg -a -al -Aas -st RTLLib.pas
::----

fpc -dDLLEXPORT -XX -CX -Xs -B -al -O2 -Twin64 -Px86_64 ^
  -oRTLLib.dll  ^
  -k-Trtlld ^
  -k--dll ^
  -k-eDllEntryPoint ^
  RTLLib.pas

strip rtllib.dll

fpc -dDLLEXPORT -dDLANGDEU -n -O2 -Os -Cg -a -al -Aas -st main.pas
dir main*.*
as.exe --64 -o main.o main.s

fpc -n -dDLLIMPORT -O2 -Xi test.pas


goto end
::dlltool --input-def rtllib_dll.def --dllname rtllib.dll --output-lib librtllib_dll.a
strip rtllib.dll

::fpc -dDLLEXPORT -dLANGDEU -n -B -O2 -Os test_unit.pas
fpc -dDLLIMPORT -dLANGDEU -n -B -O2 -Os -Cg -a -al -Aas -st test.pas

strip test.exe
:end
endlocal
