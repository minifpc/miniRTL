	.file "RTLLib.pas"
# Begin asmlist al_procedures

.section .text.n_p$rtllib_$$_dllentrypoint$longword$$longbool,"x"
	.balign 16,0x90
.globl	P$RTLLIB_$$_DLLENTRYPOINT$LONGWORD$$LONGBOOL
P$RTLLIB_$$_DLLENTRYPOINT$LONGWORD$$LONGBOOL:
.Lc1:
.seh_proc P$RTLLIB_$$_DLLENTRYPOINT$LONGWORD$$LONGBOOL
# [RTLLib.pas]
# [31] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc3:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register eax
# Var dwReason located in register ecx
# [32] writeln('zuzu');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$RTLLIB$_Ld1(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# Var $result located in register eax
# [33] Exit(True);
	movl	$-1,%eax
# [34] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc2:

.section .text.n_p$rtllib_$$_main,"x"
	.balign 16,0x90
.globl	PASCALMAIN
PASCALMAIN:
.globl	P$RTLLIB_$$_main
P$RTLLIB_$$_main:
.Lc4:
.seh_proc P$RTLLIB_$$_main
# [39] begin
	leaq	-40(%rsp),%rsp
.Lc6:
.seh_stackalloc 40
.seh_endprologue
	call	fpc_libinitializeunits
# [40] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc5:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .data.n_INITFINAL,"d"
	.balign 8
.globl	INITFINAL
INITFINAL:
	.quad	3,0
	.quad	INIT$_$XMM
	.quad	0
	.quad	INIT$_$SYSTEM
	.quad	0
	.quad	INIT$_$EXCEPTIONS
	.quad	0

.section .data.n_FPC_THREADVARTABLES,"d"
	.balign 8
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	0

.section .rodata.n_FPC_RESOURCESTRINGTABLES,"d"
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.quad	0

.section .data.n_FPC_WIDEINITTABLES,"d"
	.balign 8
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.quad	0

.section .data.n_FPC_RESSTRINITTABLES,"d"
	.balign 8
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.quad	0

.section .fpc.n_version
	.balign 16
__fpc_ident:
	.ascii	"FPC 3.2.2-r0d122c49 [2024/11/15] for x86_64 - Win64"

.section .data.n___heapsize,"d"
	.balign 8
.globl	__heapsize
__heapsize:
	.quad	0

.section .data.n___fpc_valgrind,"d"
	.balign 8
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$RTLLIB$_Ld1,"d"
	.balign 8
.globl	_$RTLLIB$_Ld1
_$RTLLIB$_Ld1:
	.ascii	"\004zuzu\000"
# End asmlist al_typedconsts
# Begin asmlist al_exports

.section .edata
.globl	EDATA_$P$RTLLIB
EDATA_$P$RTLLIB:
	.long	0
	.long	0
	.short	0
	.short	0
	.rva	.Lj5
	.long	1
	.long	21
	.long	21
	.rva	.Lj6
	.rva	.Lj7
	.rva	.Lj8
.Lj5:
	.ascii	"RTLLIB.dll\000"
	.balign 4,0
.Lj6:
	.rva	P$RTLLIB_$$_DLLENTRYPOINT$LONGWORD$$LONGBOOL
	.rva	QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION
	.rva	QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION
	.rva	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION
	.rva	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION
	.rva	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION
	.rva	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION
	.rva	SYSUTILS_$$_STRDISPOSE$PCHAR
	.rva	SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
	.rva	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
	.rva	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
	.rva	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
	.rva	SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING
	.rva	SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING
	.rva	SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING
	.rva	SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING
	.rva	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
	.rva	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	.rva	SYSTEM_$$_FPCINTFDECRREF$POINTER
	.rva	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
	.rva	XMM_$$_XFREEMEM$POINTER$$QWORD
	.balign 4,0
.Lj7:
	.rva	.Lj9
	.rva	.Lj10
	.rva	.Lj11
	.rva	.Lj12
	.rva	.Lj13
	.rva	.Lj14
	.rva	.Lj15
	.rva	.Lj16
	.rva	.Lj17
	.rva	.Lj18
	.rva	.Lj19
	.rva	.Lj20
	.rva	.Lj21
	.rva	.Lj22
	.rva	.Lj23
	.rva	.Lj24
	.rva	.Lj25
	.rva	.Lj26
	.rva	.Lj27
	.rva	.Lj28
	.rva	.Lj29
	.balign 4,0
.Lj8:
	.short	15
	.short	14
	.short	13
	.short	16
	.short	0
	.short	19
	.short	17
	.short	6
	.short	4
	.short	2
	.short	11
	.short	9
	.short	8
	.short	10
	.short	7
	.short	5
	.short	3
	.short	1
	.short	12
	.short	18
	.short	20
	.balign 4,0
	.balign 2,0
.Lj9:
	.ascii	"ChATAStr1\000"
	.balign 2,0
.Lj10:
	.ascii	"ChATAStr2\000"
	.balign 2,0
.Lj11:
	.ascii	"ChATAStr3\000"
	.balign 2,0
.Lj12:
	.ascii	"CommandLineToArgvA\000"
	.balign 2,0
.Lj13:
	.ascii	"DllEntryPoint\000"
	.balign 2,0
.Lj14:
	.ascii	"InitInterfacePointers\000"
	.balign 2,0
.Lj15:
	.ascii	"IsGUIDEqual\000"
	.balign 2,0
.Lj16:
	.ascii	"QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICAT"
	.ascii	"ION$$TAPPLICATION\000"
	.balign 2,0
.Lj17:
	.ascii	"QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICA"
	.ascii	"TION$LONGINT$PPCHAR$$TAPPLICATION\000"
	.balign 2,0
.Lj18:
	.ascii	"QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICA"
	.ascii	"TION\000"
	.balign 2,0
.Lj19:
	.ascii	"StrAlloc\000"
	.balign 2,0
.Lj20:
	.ascii	"StrCat\000"
	.balign 2,0
.Lj21:
	.ascii	"StrCat_\000"
	.balign 2,0
.Lj22:
	.ascii	"StrCopy\000"
	.balign 2,0
.Lj23:
	.ascii	"StrDispose\000"
	.balign 2,0
.Lj24:
	.ascii	"TApplication_Create\000"
	.balign 2,0
.Lj25:
	.ascii	"TApplication_Create2\000"
	.balign 2,0
.Lj26:
	.ascii	"TApplication_Destroy\000"
	.balign 2,0
.Lj27:
	.ascii	"UIntToStr\000"
	.balign 2,0
.Lj28:
	.ascii	"fpcintfdecrref\000"
	.balign 2,0
.Lj29:
	.ascii	"xfreemem\000"
# End asmlist al_exports
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc7:
	.long	.Lc9-.Lc8
.Lc8:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc9:
	.long	.Lc11-.Lc10
.Lc10:
	.secrel32	.Lc7
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc11:
	.long	.Lc13-.Lc12
.Lc12:
	.secrel32	.Lc7
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc13:
# End asmlist al_dwarf_frame

