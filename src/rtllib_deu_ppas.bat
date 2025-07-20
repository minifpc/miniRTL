@echo off
SET THEFILE=.\rtllib_deu.dll
echo Linking %THEFILE%
nasm.exe -f bin rtllib.deu.dll.stub.s   -o rtllib.deu.dll.stub.bin
objcopy.exe -I binary -O pe-x86-64 -B i386 rtllib.deu.dll.stub.bin rtllib.deu.dll.stub.o

windres.exe -i rtllib_deu.res -o rtllib.deu.res.o --target=pe-x86-64
ld.exe -b pei-x86-64 -s --dll -o.\rtllib_deu.dll -T.\rtllib_deu_link.res

if errorlevel 1 goto linkend
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
