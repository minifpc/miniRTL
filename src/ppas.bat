@echo off
SET THEFILE=RTLLib.dll
echo Linking %THEFILE%
C:\fpcupdeluxe\fpc\bin\x86_64-win64\ld.exe -b pei-x86-64    -s --dll  --entry _DLLMainCRTStartup   --base-file base.$$$ -o RTLLib.dll link17976.res
if errorlevel 1 goto linkend
C:\fpcupdeluxe\fpc\bin\x86_64-win64\dlltool.exe -S C:\fpcupdeluxe\fpc\bin\x86_64-win64\as.exe -D RTLLib.dll -e exp.$$$ --base-file base.$$$ 
if errorlevel 1 goto linkend
C:\fpcupdeluxe\fpc\bin\x86_64-win64\ld.exe -b pei-x86-64  -s --dll  --entry _DLLMainCRTStartup   -o RTLLib.dll link17976.res exp.$$$
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
