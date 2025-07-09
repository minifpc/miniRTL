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

C:\FPC\fpc\bin\x86_64-win64\ppcrosswin64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 rtlunit.pas
C:\FPC\fpc\bin\x86_64-win64\ppcrosswin64.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n     -Ur -Twin64 -FE. -Fu. -O3 rtllib.pas

x86_64-win64-strip.exe rtllib.dll

:skip
:: build resource ...
windres.exe test.rc -o test.res

windres.exe fehler_code_win.rc -o fehler_code_win.res
windres.exe fehler_text_win.rc -o fehler_text_win.res

:: pack resource
gzip.exe -9 -f fehler_code_win.res
gzip.exe -9 -f fehler_text_win.res

:: create upstream of gz file (resource) ...
windres.exe rtllib_enu.rc -o rtllib_enu.res
windres.exe rtllib_deu.rc -o rtllib_deu.res

:: biild the resource dll ...
fpc.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -dDLLRES -n -B -Twin64 -FE. -Fu. -O3 rtllib_enu.pas
fpc.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -dDLLRES -n -B -Twin64 -FE. -Fu. -O3 rtllib_deu.pas

:: build runtime dll ...
fpc.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 rtllib.pas
fpc.exe -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 test.pas

:: strip debug symbols from resource dll ...
x86_64-win64-strip.exe rtllib_enu.dll
x86_64-win64-strip.exe rtllib_deu.dll

:: strip debug symbols from runtime dll and demo app ...
x86_64-win64-strip.exe rtllib.dll
x86_64-win64-strip.exe test.exe

:: parser stuff ...
::ppcrossx64.exe -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os parser.pas
::x86_64-win64-strip.exe parser.exe
