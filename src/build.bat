fpc -dDLLEXPORT -dLANGDEU -n -B -O3 -Os -WN -CD RTLLib.pas
dlltool --input-def rtllib_dll.def --dllname rtllib.dll --output-lib librtllib_dll.a
fpc -dDLLIMPORT -dLANGDEU -n -B -O3 -Os -WN test.pas
strip test.exe
strip rtllib.dll
