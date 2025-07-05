@echo on
:: library and test stuff ...
@rm *.o
@rm *.ppu
@rm *.a
@rm *.bak
@rm test.exe
@rm rtllib.dll
goto skip
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -Us -Ur -Twin64 -FE. -Fu. -O3 -Os system.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os windows.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os classes.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os dialogs.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os errordata.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os errordatadeu.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os errordata.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os exceptions.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os forms.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os fpintres.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os sysinit.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os objpas.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os global.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os locales.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os strutils.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os sysutils.pas
ppcrossx64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os xmm.pas

C:\FPC\fpc\bin\x86_64-win64\ppcrosswin64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os rtlunit.pas
C:\FPC\fpc\bin\x86_64-win64\ppcrosswin64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 -Os rtllib.pas

x86_64-win64-strip.exe rtllib.dll

:skip
where fpc.exe
fpc -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os rtllib.pas
fpc -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os test.pas

x86_64-win64-strip.exe rtllib.dll
x86_64-win64-strip.exe test.exe

:: parser stuff ...
::ppcrossx64.exe -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os parser.pas
::x86_64-win64-strip.exe parser.exe
