@echo off
SET THEFILE=windows
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\windows.o -w-orphan-labels  .\windows.s
if errorlevel 1 goto asmend
SET THEFILE=xmm
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\xmm.o -w-orphan-labels  .\xmm.s
if errorlevel 1 goto asmend
SET THEFILE=system
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\system.o -w-orphan-labels  .\system.s
if errorlevel 1 goto asmend
SET THEFILE=global
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\global.o -w-orphan-labels  .\global.s
if errorlevel 1 goto asmend
SET THEFILE=sysutils
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\SysUtils.o -w-orphan-labels  .\SysUtils.s
if errorlevel 1 goto asmend
SET THEFILE=strutils
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\StrUtils.o -w-orphan-labels  .\StrUtils.s
if errorlevel 1 goto asmend
SET THEFILE=locales
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\Locales.o -w-orphan-labels  .\Locales.s
if errorlevel 1 goto asmend
SET THEFILE=dialogs
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\Dialogs.o -w-orphan-labels  .\Dialogs.s
if errorlevel 1 goto asmend
SET THEFILE=exceptions
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\exceptions.o -w-orphan-labels  .\exceptions.s
if errorlevel 1 goto asmend
SET THEFILE=classes
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\Classes.o -w-orphan-labels  .\Classes.s
if errorlevel 1 goto asmend
SET THEFILE=forms
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\Forms.o -w-orphan-labels  .\Forms.s
if errorlevel 1 goto asmend
SET THEFILE=rtlunit
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\RTLUnit.o -w-orphan-labels  .\RTLUnit.s
if errorlevel 1 goto asmend
SET THEFILE=sysinitpas
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\sysinitpas.o -w-orphan-labels  .\sysinitpas.s
if errorlevel 1 goto asmend
SET THEFILE=rtllib
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o .\RTLLib.o -w-orphan-labels  .\RTLLib.s
if errorlevel 1 goto asmend
SET THEFILE=.\RTLLib.dll
echo Linking %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\ld.exe -b pei-x86-64    -s --dll  --entry _DLLMainCRTStartup   --base-file base.$$$ -o .\RTLLib.dll .\link17520.res
if errorlevel 1 goto linkend
C:\fpcupdeluxe\fpc\bin\x86_64-win64\dlltool.exe -S C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe -D .\RTLLib.dll -e exp.$$$ --base-file base.$$$ 
if errorlevel 1 goto linkend
C:\fpcupdeluxe\fpc\bin\x86_64-win64\ld.exe -b pei-x86-64  -s --dll  --entry _DLLMainCRTStartup   -o .\RTLLib.dll .\link17520.res exp.$$$
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
