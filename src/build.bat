fpc -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -B -FE. -O3 -Os -gw2 -k--entry=DllMain -CD RTLLib.pas
dlltool --input-def rtllib_dll.def --dllname rtllib.dll --output-lib librtllib_dll.a
fpc -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -FE. -O3 -Os -gw2 test.pas
::strip test.exe
::strip rtllib.dll
