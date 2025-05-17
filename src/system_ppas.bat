@echo off
SET THEFILE=xmm
echo Assembling %THEFILE%
as.exe --64 -o xmm.o   xmm.s
if errorlevel 1 goto asmend
SET THEFILE=system
echo Assembling %THEFILE%
as.exe --64 -o system.o   system.s
if errorlevel 1 goto asmend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
