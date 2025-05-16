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
SET THEFILE=exceptions
echo Assembling %THEFILE%
as.exe --64 -o exceptions.o   exceptions.s
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
SET THEFILE=rtllib
echo Assembling %THEFILE%
as.exe --64 -o RTLLib.o   RTLLib.s
if errorlevel 1 goto asmend
SET THEFILE=RTLLib.dll
echo Linking %THEFILE%
ld.exe -b pei-x86-64  --gc-sections  -s --dll  --entry _DLLMainCRTStartup   --base-file base.$$$ -o RTLLib.dll RTLLib_link.res
if errorlevel 1 goto linkend
dlltool.exe -S as.exe -D RTLLib.dll -e exp.$$$ --base-file base.$$$ 
if errorlevel 1 goto linkend
ld.exe -b pei-x86-64  -s --dll  --entry _DLLMainCRTStartup   -o RTLLib.dll RTLLib_link.res exp.$$$
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
