@echo on
ppcrossx64.exe -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -Twin64 -FE. -Fu. -O3 -Os test.pas
x86_64-win64-strip.exe test.exe
