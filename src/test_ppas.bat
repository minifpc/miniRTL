@echo off
SET THEFILE=xmm
echo Assembling %THEFILE%
as.exe --64 -o xmm.o   xmm.s
if errorlevel 1 goto asmend
SET THEFILE=system
echo Assembling %THEFILE%
as.exe --64 -o system.o   system.s
if errorlevel 1 goto asmend
SET THEFILE=windows
echo Assembling %THEFILE%
as.exe --64 -o windows.o   windows.s
if errorlevel 1 goto asmend
SET THEFILE=global
echo Assembling %THEFILE%
as.exe --64 -o global.o   global.s
if errorlevel 1 goto asmend
SET THEFILE=sysutils
echo Assembling %THEFILE%
as.exe --64 -o SysUtils.o   SysUtils.s
if errorlevel 1 goto asmend
SET THEFILE=qapplicationpascal
echo Assembling %THEFILE%
as.exe --64 -o QApplicationPascal.o   QApplicationPascal.s
if errorlevel 1 goto asmend
SET THEFILE=sysinitpas
echo Assembling %THEFILE%
as.exe --64 -o sysinitpas.o   sysinitpas.s
if errorlevel 1 goto asmend
SET THEFILE=test
echo Assembling %THEFILE%
as.exe --64 -o test.o   test.s
if errorlevel 1 goto asmend
SET THEFILE=test.exe
echo Linking %THEFILE%
ld.exe -b pei-x86-64  --gc-sections    --entry=_mainCRTStartup    -o test.exe test_link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
