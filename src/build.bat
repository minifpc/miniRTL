@echo on
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os RTLLib.pas
ppcrossx64.exe -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os test.pas

x86_64-win64-strip.exe test.exe
x86_64-win64-strip.exe rtllib.dll
