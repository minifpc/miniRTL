@echo off
setlocal

fpc -dKERNEL -dDLLEXPORT -dLANGDEU -n -B -O2 -Os -CD RTLLib.pas
dlltool --input-def rtllib_dll.def --dllname rtllib.dll --output-lib librtllib_dll.a
strip rtllib.dll

set "filelist=global sysutils strutils dialogs locales exceptions RTLunit QApplicationPascal RTLLib RTLLibImport"
for %%f in (%filelist%) do (
    echo "fpc : %%f.pas -> %%f.s"
    fpc -dDLLEXPORT -dLANGDEU -n -Cn -fPIC -CD -a -al -Anasmwin64 "%%f.pas"
    echo "sed : %%f.s (debug)"
    sed -i '/; Begin asmlist al_dwarf_frame/,/; End asmlist al_dwarf_frame/d' "%%f.s"
    echo "sed : %%f.s (line )"
    sed -i '/^%%LINE/d' %%f.s
    echo "nasm: %%f.s  -> %%f.o"
    nasm.exe -f win64 -o "%%f.o" -w-orphan-labels "%%f.s"
    echo ---
)

fpc -dDLLIMPORT -dLANGDEU -n -Cn -fPIC -CD -a -al -Anasmwin64 xmm.pas
sed -i '/; Begin asmlist al_dwarf_frame/,/; End asmlist al_dwarf_frame/d' "xmm.s"
sed -i '/; Begin asmlist al_dwarf_frame/,/; End asmlist al_dwarf_frame/d' "windows.s"

nasm.exe -f win64 -o "windows.o" -w-orphan-labels "windows.s"
nasm.exe -f win64 -o "xmm.o"     -w-orphan-labels "xmm.s"

echo "linking..."
::C:\fpcupdeluxe\fpc\bin\x86_64-win64\gcc.exe -m64 -nostdlib -o mydll.dll ^
::RTLLib.o system.o xmm.o windows.o global.o RTLunit.o dialogs.o sysutils.o strutils.o exceptions.o locales.o sysinitpas.o ^
::-L.\ -limpsystem -limpxmm -limpwindows -limpRTLunit -limpsysutils -limpexceptions

::python tools/remove_block.py
::move /Y QApplicationPascal_clean.s QApplicationPascal.s

::nasm.exe -f win64 -o QApplicationPascal.o -w-orphan-labels QApplicationPascal.s

::objcopy --redefine-sym fpc_raiseexception=f1 test_unit.o





::fpc -dDLLEXPORT -dLANGDEU -n -B -O2 -Os test_unit.pas
::fpc -dDLLIMPORT -dLANGDEU -n -O2 -Os test.pas

::fpc -dDLLIMPORT -dLANGDEU -n -O2 -Os test.pas
::strip test.exe


::fpc -dDLLIMPORT -dLANGDEU -n -otest2.exe test.o
::strip test2.exe

::fpc -dDLLEXPORT -dLANGDEU -dCPU64 -n -B -O3 -Xe -Os -fPIC -Cg -XX -CD -a -al -Anasmwin64 system.pas 

endlocal
