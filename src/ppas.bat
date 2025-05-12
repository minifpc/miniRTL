@echo off
SET THEFILE=windows
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o windows.o -w-orphan-labels  windows.s
if errorlevel 1 goto asmend
SET THEFILE=xmm
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o xmm.o -w-orphan-labels  xmm.s
if errorlevel 1 goto asmend
SET THEFILE=rtllibimport
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o RTLLibImport.o -w-orphan-labels  RTLLibImport.s
if errorlevel 1 goto asmend
SET THEFILE=qobjectpascalexport
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o QObjectPascalExport.o -w-orphan-labels  QObjectPascalExport.s
if errorlevel 1 goto asmend
SET THEFILE=qapplicationpascal
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o QApplicationPascal.o -w-orphan-labels  QApplicationPascal.s
if errorlevel 1 goto asmend
SET THEFILE=test_unit
echo Assembling %THEFILE%
T:\msys64\mingw64\bin\nasm.exe -f win64 -o test_unit.o -w-orphan-labels  test_unit.s
if errorlevel 1 goto asmend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
