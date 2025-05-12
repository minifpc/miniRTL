@echo off
SET THEFILE=xmm
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o T:\a\miniFPC\TinyFPC\xmm.o -w-orphan-labels  T:\a\miniFPC\TinyFPC\xmm.s
if errorlevel 1 goto asmend
SET THEFILE=system
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o T:\a\miniFPC\TinyFPC\system.o -w-orphan-labels  T:\a\miniFPC\TinyFPC\system.s
if errorlevel 1 goto asmend
SET THEFILE=windows
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o T:\a\miniFPC\TinyFPC\windows.o -w-orphan-labels  T:\a\miniFPC\TinyFPC\windows.s
if errorlevel 1 goto asmend
SET THEFILE=global
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o T:\a\miniFPC\TinyFPC\global.o -w-orphan-labels  T:\a\miniFPC\TinyFPC\global.s
if errorlevel 1 goto asmend
SET THEFILE=locales
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o T:\a\miniFPC\TinyFPC\Locales.o -w-orphan-labels  T:\a\miniFPC\TinyFPC\Locales.s
if errorlevel 1 goto asmend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
