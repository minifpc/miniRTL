@echo on
:: library and test stuff ...
@rm *.o        >nul 2>&1
@rm *.ppu      >nul 2>&1
@rm *.a        >nul 2>&1
@rm *.bak      >nul 2>&1
@rm test.exe   >nul 2>&1
@rm rtllib.dll >nul 2>&1
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

:: create Windows Error Codes resource 
@echo Create Error Codes Resource ...
windres.exe fehler_code_win.rc -o fehler_code_win.res
windres.exe fehler_text_win.rc -o fehler_text_win.res

:: pack resource
@echo Shrink/Encode Resource to packed Resource ...
gzip.exe -9 -f fehler_code_win.res
gzip.exe -9 -f fehler_text_win.res

:: create upstream of gz file (resource) ...
@echo Create Resource for import ...
windres.exe rtllib.enu.dll.rc -o rtllib.enu.dll.res
windres.exe rtllib.deu.dll.rc -o rtllib.deu.dll.res

:: build EXE/DLL .stub file ...
@echo Build EXE/DLL stub header ...
nasm.exe -f bin rtllib.deu.dll.stub.s   -o rtllib.deu.dll.stub.bin
nasm.exe -f bin rtllib.enu.dll.stub.s   -o rtllib.enu.dll.stub.bin

objcopy.exe -I binary -O pe-x86-64 -B i386 rtllib.deu.dll.stub.bin rtllib.deu.dll.stub.o
objcopy.exe -I binary -O pe-x86-64 -B i386 rtllib.enu.dll.stub.bin rtllib.enu.dll.stub.o

:: build dll entry ...
@echo Build DLL Entry ...
nasm.exe -f win64 rtllib.deu.dll.asm -o rtllib.deu.dll.o
nasm.exe -f win64 rtllib.enu.dll.asm -o rtllib.enu.dll.o

:: build the resource DLL ...
@echo Linking Resources ...
windres.exe -i rtllib.deu.dll.res -o  rtllib.deu.dll.res.o --target=pe-x86-64
windres.exe -i rtllib.enu.dll.res -o  rtllib.enu.dll.res.o --target=pe-x86-64

ld.exe -m i386pep -b pei-x86-64 -s --dll -o.\rtllib.deu.dll -T.\rtllib.deu.dll.link.ld
ld.exe -m i386pep -b pei-x86-64 -s --dll -o.\rtllib.enu.dll -T.\rtllib.enu.dll.link.ld

:: build the resource dll ...
::fpc.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -dDLLRES -n -B -Twin64 -FE. -Fu. -O3 rtllib_enu.pas
::fpc.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -dDLLRES -n -B -Twin64 -FE. -Fu. -O3 rtllib_deu.pas

:: build runtime dll ...
fpc.exe -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 rtllib.pas
fpc.exe -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 test.pas

:: strip debug symbols from resource dll ...
::x86_64-win64-strip.exe rtllib_enu.dll
::x86_64-win64-strip.exe rtllib_deu.dll

:: strip debug symbols from runtime dll and demo app ...
x86_64-win64-strip.exe rtllib.dll
x86_64-win64-strip.exe test.exe

:: parser stuff ...
::ppcrossx64.exe -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -O3 -Os parser.pas
::x86_64-win64-strip.exe parser.exe
