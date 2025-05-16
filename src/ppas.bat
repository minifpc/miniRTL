@echo off
SET THEFILE=xmm
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o xmm.o   xmm.s
if errorlevel 1 goto asmend
SET THEFILE=system
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o system.o   system.s
if errorlevel 1 goto asmend
SET THEFILE=global
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o global.o   global.s
if errorlevel 1 goto asmend
SET THEFILE=windows
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o windows.o   windows.s
if errorlevel 1 goto asmend
SET THEFILE=exceptions
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o exceptions.o   exceptions.s
if errorlevel 1 goto asmend
SET THEFILE=locales
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o Locales.o   Locales.s
if errorlevel 1 goto asmend
SET THEFILE=sysutils
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o SysUtils.o   SysUtils.s
if errorlevel 1 goto asmend
SET THEFILE=qapplicationpascal
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o QApplicationPascal.o   QApplicationPascal.s
if errorlevel 1 goto asmend
SET THEFILE=rtlunit
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o RTLUnit.o   RTLUnit.s
if errorlevel 1 goto asmend
SET THEFILE=sysinitpas
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o sysinitpas.o   sysinitpas.s
if errorlevel 1 goto asmend
SET THEFILE=rtllib
echo Assembling %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe --64 -o RTLLib.o   RTLLib.s
if errorlevel 1 goto asmend
SET THEFILE=RTLLib.dll
echo Linking %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\ld.exe -b pei-x86-64  --gc-sections  -s --dll  --entry _DLLMainCRTStartup   --base-file base.$$$ -o RTLLib.dll link10072.res
if errorlevel 1 goto linkend
C:\fpcupdeluxe\fpc\bin\x86_64-win64\dlltool.exe -S C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe -D RTLLib.dll -e exp.$$$ --base-file base.$$$ 
if errorlevel 1 goto linkend
C:\fpcupdeluxe\fpc\bin\x86_64-win64\ld.exe -b pei-x86-64  -s --dll  --entry _DLLMainCRTStartup   -o RTLLib.dll link10072.res exp.$$$
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
