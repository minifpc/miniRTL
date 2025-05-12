fpc -dDLLEXPORT -dLANGDEU -n -B -O2 -Os -CD RTLLib.pas
dlltool --input-def rtllib_dll.def --dllname rtllib.dll --output-lib librtllib_dll.a
strip rtllib.dll

fpc -dDLLEXPORT -dLANGDEU -n -Cn -a -al -Anasmwin64 -sh test_unit.pas
::fpc -dDLLEXPORT -dLANGDEU -n -B -O3 -Os -CD RTLLib.pas
nasm.exe -f win64 -o test_unit.o -w-orphan-labels  test_unit.s
::objcopy --redefine-sym fpc_raiseexception=f1 test_unit.o

fpc -dDLLIMPORT -dLANGDEU -n -B -O2 -Os test.pas
::strip test.exe


::fpc -dDLLIMPORT -dLANGDEU -n -otest2.exe test.o
::strip test2.exe

::fpc -dDLLEXPORT -dLANGDEU -dCPU64 -n -B -O3 -Xe -Os -fPIC -Cg -XX -CD -a -al -Anasmwin64 system.pas 
