@echo on
fpc -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -Sc -Sg -Sh -Sx -O3 -Os -CD RTLLib.pas
fpc -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os test.pas
strip test.exe
strip rtllib.dll
