@echo off
fpc -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -B -Twin64 -FE. -Fu. -Sc -Sg -Sh -Sx -O3 -Os -gw2 -CD -a -al -Anasmwin64 -st -Xr. -XX -CX -XMDLLMAIN RTLLib.pas
::sed -i "/; Begin asmlist al_dwarf_frame/,/; End asmlist al_dwarf_frame/d" "xmm.s"

SET THEFILE=windows
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\windows.o -w-orphan-labels  .\windows.s
if errorlevel 1 goto asmend
SET THEFILE=xmm
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\xmm.o -w-orphan-labels  .\xmm.s
if errorlevel 1 goto asmend
SET THEFILE=system
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\system.o -w-orphan-labels  .\system.s
if errorlevel 1 goto asmend
SET THEFILE=global
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\global.o -w-orphan-labels  .\global.s
if errorlevel 1 goto asmend
SET THEFILE=sysutils
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\SysUtils.o -w-orphan-labels  .\SysUtils.s
if errorlevel 1 goto asmend
SET THEFILE=strutils
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\StrUtils.o -w-orphan-labels  .\StrUtils.s
if errorlevel 1 goto asmend
SET THEFILE=locales
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\Locales.o -w-orphan-labels  .\Locales.s
if errorlevel 1 goto asmend
SET THEFILE=dialogs
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\Dialogs.o -w-orphan-labels  .\Dialogs.s
if errorlevel 1 goto asmend
SET THEFILE=exceptions
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\exceptions.o -w-orphan-labels  .\exceptions.s
if errorlevel 1 goto asmend
SET THEFILE=classes
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\Classes.o -w-orphan-labels  .\Classes.s
if errorlevel 1 goto asmend
SET THEFILE=forms
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\Forms.o -w-orphan-labels  .\Forms.s
if errorlevel 1 goto asmend
SET THEFILE=rtlunit
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\RTLUnit.o -w-orphan-labels  .\RTLUnit.s
if errorlevel 1 goto asmend
SET THEFILE=sysinitpas
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\sysinitpas.o -w-orphan-labels  .\sysinitpas.s
if errorlevel 1 goto asmend
SET THEFILE=rtllib
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\RTLLib.o -w-orphan-labels  .\RTLLib.s
if errorlevel 1 goto asmend
SET THEFILE=.\RTLLib.dll
echo Linking %THEFILE%
ld.exe -b pei-x86-64    -s --dll  --entry DLLMAIN   --base-file base.$$$ -o .\RTLLib.dll -T.\link.ld
if errorlevel 1 goto linkend
dlltool.exe -S as.exe -D .\RTLLib.dll -e exp.$$$ --base-file base.$$$ 
if errorlevel 1 goto linkend
ld.exe -b pei-x86-64  -s --dll  --entry DLLMAIN   -o .\RTLLib.dll -T.\link.ld exp.$$$
if errorlevel 1 goto linkend

::fpc -dDLLEXPORT -dLANGDEU -dDLLDEBUG -n -Twin64 -B -FE. -Fu. -Fl. -Sc -Sg -Sh -Sx -O3 -Os -gw2 -a -al -Anasmwin64 -st -Xr. -XX test.pas
fpc -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -Twin64 -B -FE. -Fu. -Fl. -O3 -Os -gw2 -a -al -Anasmwin64 test.pas
if errorlevel 1 goto testerror

SET THEFILE=windows
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\windows.o -w-orphan-labels  .\windows.s
if errorlevel 1 goto asmend
SET THEFILE=xmm
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\xmm.o -w-orphan-labels  .\xmm.s
if errorlevel 1 goto asmend
SET THEFILE=test
echo Assembling %THEFILE%
nasm.exe -f win64 -o .\test.o -w-orphan-labels  .\test.s
if errorlevel 1 goto asmend
SET THEFILE=.\test.exe
echo Linking %THEFILE%
ld.exe -b pei-x86-64      --entry=PASCALMAIN    -o .\test.exe -T.\test_link.ld
if errorlevel 1 goto linkend

echo all done without error's.
goto end

:testerror
echo test.exe could not be created
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
goto end
:end

::fpc -dDLLIMPORT -dLANGDEU -dDLLDEBUG -n -B -FE. -O3 -Os -gw2 test.pas
::strip test.exe
::strip rtllib.dll
