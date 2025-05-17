	.file "sysinitpas.pas"
# Begin asmlist al_procedures

.section .text.n_sysinitpas_$$_dll_entry$tentryinformation$$longbool,"x"
	.balign 16,0x90
.globl	SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL:
.globl	_FPC_DLL_Entry
_FPC_DLL_Entry:
.Lc1:
.seh_proc SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
# [sysinitpas.pas]
# [72] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc3:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register eax
# Var info located in register rcx
# Var $result located in register ebx
# [73] result := true;
	movl	$-1,%ebx
# [75] case DLLReason of
	movl	U_$SYSINITPAS_$$_DLLREASON(%rip),%eax
	testl	%eax,%eax
	je	.Lj7
	subl	$1,%eax
	je	.Lj8
	subl	$1,%eax
	je	.Lj5
	subl	$1,%eax
	je	.Lj5
	jmp	.Lj6
	.balign 4,0x90
.Lj7:
# [79] fpc_finalizeunits;
	call	FPC_FINALIZEUNITS
	jmp	.Lj5
	.balign 4,0x90
.Lj8:
# [85] PASCALMAIN;
	call	PASCALMAIN
	.balign 4,0x90
	.balign 4,0x90
	.balign 4,0x90
.Lj6:
	.balign 4,0x90
.Lj5:
# [90] end;
	movl	%ebx,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc2:

.section .text.n_sysinitpas_$$__fpc_maincrtstartup,"x"
	.balign 16,0x90
.globl	SYSINITPAS_$$__FPC_MAINCRTSTARTUP
SYSINITPAS_$$__FPC_MAINCRTSTARTUP:
.globl	_mainCRTStartup
_mainCRTStartup:
.Lc4:
.seh_proc SYSINITPAS_$$__FPC_MAINCRTSTARTUP
# [97] begin
	leaq	-40(%rsp),%rsp
.Lc6:
.seh_stackalloc 40
.seh_endprologue
# [98] is_console := true;
	movb	$1,operatingsystem_isconsole(%rip)
# [100] system.StdIn := GetStdHandle(STD_INPUT_HANDLE);
	movl	$4294967286,%ecx
	call	_$dll$kernel32$GetStdHandle
	movq	%rax,U_$SYSTEM_$$_STDIN(%rip)
# [101] system.StdOut := GetStdHandle(STD_OUTPUT_HANDLE);
	movl	$4294967285,%ecx
	call	_$dll$kernel32$GetStdHandle
	movq	%rax,U_$SYSTEM_$$_STDOUT(%rip)
# [102] system.StdErr := GetStdHandle(STD_ERROR_HANDLE);
	movl	$4294967284,%ecx
	call	_$dll$kernel32$GetStdHandle
	movq	%rax,U_$SYSTEM_$$_STDERR(%rip)
# [105] SetConsoleMode(StdIn, ENABLE_ECHO_INPUT or ENABLE_LINE_INPUT);
	movq	U_$SYSTEM_$$_STDIN(%rip),%rcx
	movl	$6,%edx
	call	_$dll$kernel32$SetConsoleMode
# [107] PASCALMAIN;
	call	PASCALMAIN
# [108] fpc_do_exit;
	call	FPC_DO_EXIT
# [109] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc5:

.section .text.n_sysinitpas_$$__winmaincrtstartup,"x"
	.balign 16,0x90
.globl	SYSINITPAS_$$__WINMAINCRTSTARTUP
SYSINITPAS_$$__WINMAINCRTSTARTUP:
.globl	_WinMainCRTStartup
_WinMainCRTStartup:
.Lc7:
.seh_proc SYSINITPAS_$$__WINMAINCRTSTARTUP
# [113] begin
	leaq	-40(%rsp),%rsp
.Lc9:
.seh_stackalloc 40
.seh_endprologue
# [114] PASCALMAIN;
	call	PASCALMAIN
# [115] fpc_do_exit;
	call	FPC_DO_EXIT
# [116] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc8:

.section .text.n_sysinitpas_$$__fpc_dllmaincrtstartup$longint$longword$pointer,"x"
	.balign 16,0x90
.globl	SYSINITPAS_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER
SYSINITPAS_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER:
.globl	_DLLMainCRTStartup
_DLLMainCRTStartup:
.Lc10:
.seh_proc SYSINITPAS_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER
# [120] begin
	leaq	-40(%rsp),%rsp
.Lc12:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%eax
# Var _hinstance located in register eax
# Var _dllreason located in register edx
# Var _dllparam located in register r8
# [121] is_console := true;
	movb	$1,operatingsystem_isconsole(%rip)
# Var _hinstance located in register eax
# [122] SysInstance := _hinstance;
	movl	%eax,U_$SYSINITPAS_$$_SYSINSTANCE(%rip)
# Var _dllreason located in register edx
# [123] DLLReason := _dllreason;
	movl	%edx,U_$SYSINITPAS_$$_DLLREASON(%rip)
# Var _dllparam located in register r8
# [124] DLLParam := PtrUInt(_dllparam);
	movq	%r8,U_$SYSINITPAS_$$_DLLPARAM(%rip)
# [126] system.StdIn := GetStdHandle(STD_INPUT_HANDLE);
	movl	$4294967286,%ecx
	call	_$dll$kernel32$GetStdHandle
	movq	%rax,U_$SYSTEM_$$_STDIN(%rip)
# [127] system.StdOut := GetStdHandle(STD_OUTPUT_HANDLE);
	movl	$4294967285,%ecx
	call	_$dll$kernel32$GetStdHandle
	movq	%rax,U_$SYSTEM_$$_STDOUT(%rip)
# [128] system.StdErr := GetStdHandle(STD_ERROR_HANDLE);
	movl	$4294967284,%ecx
	call	_$dll$kernel32$GetStdHandle
	movq	%rax,U_$SYSTEM_$$_STDERR(%rip)
# [130] DLL_Entry(SysInitEntryInformation);
	leaq	TC_$SYSINITPAS_$$_SYSINITENTRYINFORMATION(%rip),%rcx
	call	SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
# [131] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc11:

.section .text.n_sysinitpas_$$__fpc_dllwinmaincrtstartup$longint$longword$pointer,"x"
	.balign 16,0x90
.globl	SYSINITPAS_$$__FPC_DLLWINMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER
SYSINITPAS_$$__FPC_DLLWINMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER:
.globl	_DLLWinMainCRTStartup
_DLLWinMainCRTStartup:
.Lc13:
.seh_proc SYSINITPAS_$$__FPC_DLLWINMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER
# [135] begin
	leaq	-40(%rsp),%rsp
.Lc15:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,U_$SYSINITPAS_$$_SYSINSTANCE(%rip)
# Var _hinstance located in register eax
# Var _dllreason located in register edx
# Var _dllparam located in register r8
# Var _hinstance located in register eax
# Var _dllreason located in register edx
# [137] DLLReason := _dllreason;
	movl	%edx,U_$SYSINITPAS_$$_DLLREASON(%rip)
# Var _dllparam located in register r8
# [138] DLLParam := PtrUInt(_dllparam);
	movq	%r8,U_$SYSINITPAS_$$_DLLPARAM(%rip)
# [140] DLL_Entry(SysInitEntryInformation);
	leaq	TC_$SYSINITPAS_$$_SYSINITENTRYINFORMATION(%rip),%rcx
	call	SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
# [141] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc14:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 4
# [49] SysInstance: LongInt;
	.globl U_$SYSINITPAS_$$_SYSINSTANCE
U_$SYSINITPAS_$$_SYSINSTANCE:
	.zero 4

.section .bss
	.balign 4
# [50] DLLReason: DWord;
	.globl U_$SYSINITPAS_$$_DLLREASON
U_$SYSINITPAS_$$_DLLREASON:
	.zero 4

.section .bss
	.balign 8
# [51] DLLParam: PtrInt;
	.globl U_$SYSINITPAS_$$_DLLPARAM
U_$SYSINITPAS_$$_DLLPARAM:
	.zero 8
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_TC_$SYSINITPAS_$$_SYSINITENTRYINFORMATION,"d"
	.balign 8
TC_$SYSINITPAS_$$_SYSINITENTRYINFORMATION:
	.quad	0,0,0,0,0
	.quad	PASCALMAIN
	.byte	0,0,0,0,0,0,0,0
# [69] procedure fpc_finalizeunits; [external name 'FPC_FINALIZEUNITS'];
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_INIT_$SYSINITPAS_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	INIT_$SYSINITPAS_$$_TENTRYINFORMATION
INIT_$SYSINITPAS_$$_TENTRYINFORMATION:
	.byte	13,17
# [144] 
	.ascii	"TEntryInformation"
	.quad	0
	.long	56
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSINITPAS_$$_def00000001,"d"
	.balign 8
.globl	RTTI_$SYSINITPAS_$$_def00000001
RTTI_$SYSINITPAS_$$_def00000001:
	.byte	23,0,0,0
	.quad	0
	.byte	0

.section .rodata.n_RTTI_$SYSINITPAS_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	RTTI_$SYSINITPAS_$$_TENTRYINFORMATION
RTTI_$SYSINITPAS_$$_TENTRYINFORMATION:
	.byte	13,17
	.ascii	"TEntryInformation"
	.quad	INIT_$SYSINITPAS_$$_TENTRYINFORMATION
	.long	56,7
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSINITPAS_$$_def00000001$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_BOOLEAN$indirect
	.quad	48
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_INIT_$SYSINITPAS_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	INIT_$SYSINITPAS_$$_TENTRYINFORMATION$indirect
INIT_$SYSINITPAS_$$_TENTRYINFORMATION$indirect:
	.quad	INIT_$SYSINITPAS_$$_TENTRYINFORMATION

.section .rodata.n_RTTI_$SYSINITPAS_$$_def00000001,"d"
	.balign 8
.globl	RTTI_$SYSINITPAS_$$_def00000001$indirect
RTTI_$SYSINITPAS_$$_def00000001$indirect:
	.quad	RTTI_$SYSINITPAS_$$_def00000001

.section .rodata.n_RTTI_$SYSINITPAS_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	RTTI_$SYSINITPAS_$$_TENTRYINFORMATION$indirect
RTTI_$SYSINITPAS_$$_TENTRYINFORMATION$indirect:
	.quad	RTTI_$SYSINITPAS_$$_TENTRYINFORMATION
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc16:
	.long	.Lc18-.Lc17
.Lc17:
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
.Lc18:
	.long	.Lc20-.Lc19
.Lc19:
	.secrel32	.Lc16
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc20:
	.long	.Lc22-.Lc21
.Lc21:
	.secrel32	.Lc16
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc22:
	.long	.Lc24-.Lc23
.Lc23:
	.secrel32	.Lc16
	.quad	.Lc7
	.quad	.Lc8-.Lc7
	.byte	4
	.long	.Lc9-.Lc7
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc24:
	.long	.Lc26-.Lc25
.Lc25:
	.secrel32	.Lc16
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.byte	4
	.long	.Lc12-.Lc10
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc26:
	.long	.Lc28-.Lc27
.Lc27:
	.secrel32	.Lc16
	.quad	.Lc13
	.quad	.Lc14-.Lc13
	.byte	4
	.long	.Lc15-.Lc13
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc28:
# End asmlist al_dwarf_frame

