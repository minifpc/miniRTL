	.file "QApplicationPascal.pas"
# Begin asmlist al_procedures

.section .text.n_qapplicationpascal_$$_tapplication_create$tapplication$$tapplication,"x"
	.balign 16,0x90
.globl	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION
QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION:
.globl	TApplication_Create
TApplication_Create:
.Lc1:
.seh_proc QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION
# [QApplicationPascal.pas]
# [79] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rbx
# Var p located in register rbx
# [80] if p = nil then
	testq	%rcx,%rcx
	jne	.Lj6
# [82] ShowMessage('Error: could not access TApplication.');
	leaq	_$QAPPLICATIONPASCAL$_Ld1(%rip),%rcx
	call	DIALOGS_$$_SHOWMESSAGE$PCHAR
# [83] ExitProcess(1)
	movl	$1,%ecx
	call	_$dll$kernel32$ExitProcess
	.balign 4,0x90
.Lj6:
# [85] writeln('__init__');
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$QAPPLICATIONPASCAL$_Ld2(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rsi,%rcx
	call	fpc_writeln_end
# Var $result located in register rax
# [86] Exit(p);
	movq	%rbx,%rax
# Var p located in register rax
# [87] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc2:

.section .text.n_qapplicationpascal_$$_tapplication_destroy$tapplication,"x"
	.balign 16,0x90
.globl	QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION
QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION:
.globl	TApplication_Destroy
TApplication_Destroy:
.Lc4:
.seh_proc QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION
# [89] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc6:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var P located in register rbx
# [90] writeln('delter');
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$QAPPLICATIONPASCAL$_Ld3(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rsi,%rcx
	call	fpc_writeln_end
# [91] p.Free;
	movq	%rbx,%rcx
# Var P located in register rcx
	call	SYSTEM$_$TOBJECT_$__$$_FREE
# [92] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc5:

.section .text.n_qapplicationpascal_$$_tapplication_create2$tapplication$longint$ppchar$$tapplication,"x"
	.balign 16,0x90
.globl	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION
QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION:
.globl	TApplication_Create2
TApplication_Create2:
.Lc7:
.seh_proc QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION
# [102] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc9:
.seh_stackalloc 56
.seh_endprologue
# Var $result located in register rdx
# Var cmdline located in register rax
# Var ArgsCount located at rsp+32, size=OS_S32
# Var S located at rsp+40, size=OS_64
# Var R located at rsp+48, size=OS_64
# Var TotalLen located in register eax
# Var I located in register eax
# Var p located in register rcx
# Var ArgCount located in register rdx
	movq	%r8,%rbx
# Var Args located in register rbx
# [103] writeln('halplo');
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$QAPPLICATIONPASCAL$_Ld4(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rsi,%rcx
	call	fpc_writeln_end
# [105] CmdLine := GetCommandLineA;
	call	_$dll$kernel32$GetCommandLineA
	movq	%rax,%rcx
# Var cmdline located in register rcx
# [106] Args    := CommandLineToArgvA(CmdLine, ArgsCount);
	leaq	32(%rsp),%rdx
# Var cmdline located in register rcx
	call	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
	movq	%rax,(%rbx)
# [108] if Args = nil then
	testq	%rax,%rax
	jne	.Lj12
# [110] MessageBoxA(0,'Error: can not parse command line.', 'Error', MB_OK);
	xorl	%r9d,%r9d
	leaq	_$QAPPLICATIONPASCAL$_Ld5(%rip),%r8
	leaq	_$QAPPLICATIONPASCAL$_Ld6(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
# [111] ExitProcess(1);
	movl	$1,%ecx
	call	_$dll$kernel32$ExitProcess
	.balign 4,0x90
.Lj12:
# Var TotalLen located in register ecx
# [114] TotalLen := 128;
	movl	$128,%ecx
# [116] R := StrAlloc(TotalLen);
	call	_$dll$rtllib$StrAlloc
	movq	%rax,48(%rsp)
# [117] S := StrAlloc(16);
	movl	$16,%ecx
	call	_$dll$rtllib$StrAlloc
	movq	%rax,40(%rsp)
# [121] StrCopy(R, 'Count of Parameters: ');
	leaq	48(%rsp),%rcx
	leaq	_$QAPPLICATIONPASCAL$_Ld7(%rip),%rdx
	call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
# [122] StrCopy(S, IntToStr(ArgsCount));
	movl	32(%rsp),%ecx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
	movq	%rax,%rdx
	leaq	40(%rsp),%rcx
	call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
# [124] MessageBoxA(0, R, '222  11  222', 0);
	movq	48(%rsp),%rdx
	xorl	%r9d,%r9d
	leaq	_$QAPPLICATIONPASCAL$_Ld8(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
# [125] MessageBoxA(0, S, '222  11  222', 0);
	movq	40(%rsp),%rdx
	xorl	%r9d,%r9d
	leaq	_$QAPPLICATIONPASCAL$_Ld8(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
# [127] StrCat (R, S);
	movq	40(%rsp),%rdx
	leaq	48(%rsp),%rcx
	call	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
# [129] MessageBoxA(0, R, '222  11  222', 0);
	movq	48(%rsp),%rdx
	xorl	%r9d,%r9d
	leaq	_$QAPPLICATIONPASCAL$_Ld8(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
# [131] StrDispose(R);
	movq	48(%rsp),%rcx
	call	SYSUTILS_$$_STRDISPOSE$PCHAR
# [134] end;
	movq	%rdx,%rax
	nop
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc8:

.section .text.n_qapplicationpascal$_$tapplication_$__$$_create$$tapplication,"x"
	.balign 16,0x90
.globl	QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$$TAPPLICATION
QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$$TAPPLICATION:
.Lc10:
# Temps allocated between rbp-32 and rbp-24
.seh_proc QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$$TAPPLICATION
# [138] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc12:
.Lc13:
	movq	%rsp,%rbp
.Lc14:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-32(%rbp)
.seh_savereg %rbx, 32
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj16
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
	.balign 4,0x90
.Lj16:
	cmpq	$0,-16(%rbp)
	je	.Lj13
	.balign 4,0x90
.Lj24:
	nop
.Lj23:
	movq	$-1,-24(%rbp)
# [139] writeln('cccccc');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$QAPPLICATIONPASCAL$_Ld9(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [141] TAPPLICATION_CREATE(self);
	movq	-16(%rbp),%rcx
	call	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION
# [142] end;
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj21
	cmpq	$0,-8(%rbp)
	je	.Lj21
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*128(%rax)
	.balign 4,0x90
	jmp	.Lj21
.Lj20:
	cmpq	$0,-8(%rbp)
	je	.Lj30
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY
	.balign 4,0x90
.Lj30:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj31:
	nop
.Lj21:
.Lj13:
	movq	-16(%rbp),%rax
	movq	-32(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj23
	.rva	.Lj20
	.rva	.Lj21

.section .text.n_qapplicationpascal$_$tapplication_$__$$_create$$tapplication,"x"
.seh_endproc
.Lc11:

.section .text.n_qapplicationpascal$_$tapplication_$__$$_create$longint$ppchar$$tapplication,"x"
	.balign 16,0x90
.globl	QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$TAPPLICATION
QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$TAPPLICATION:
.Lc15:
.seh_proc QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$TAPPLICATION
# [145] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc17:
.Lc18:
	movq	%rsp,%rbp
.Lc19:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var ArgCount located at rbp-8, size=OS_64
# Var Args located at rbp-16, size=OS_64
# Var $vmt located at rbp-24, size=OS_64
# Var $self located at rbp-32, size=OS_64
# Var $vmt_afterconstruction_local located at rbp-40, size=OS_S64
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%r8,-8(%rbp)
	movq	%r9,-16(%rbp)
	cmpq	$1,-24(%rbp)
	jne	.Lj35
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
	.balign 4,0x90
.Lj35:
	cmpq	$0,-32(%rbp)
	je	.Lj32
	.balign 4,0x90
.Lj43:
	nop
.Lj42:
	movq	$-1,-40(%rbp)
# [146] TApplication_Create2(self, ArgCount, Args);
	movq	-16(%rbp),%r8
	movq	-8(%rbp),%rdx
	movq	-32(%rbp),%rcx
	call	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION
# [147] end;
	movq	$1,-40(%rbp)
	cmpq	$0,-32(%rbp)
	je	.Lj40
	cmpq	$0,-24(%rbp)
	je	.Lj40
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*128(%rax)
	.balign 4,0x90
	jmp	.Lj40
.Lj39:
	cmpq	$0,-24(%rbp)
	je	.Lj49
	movq	-40(%rbp),%rdx
	movq	-32(%rbp),%rcx
	call	QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY
	.balign 4,0x90
.Lj49:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj50:
	nop
.Lj40:
.Lj32:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj42
	.rva	.Lj39
	.rva	.Lj40

.section .text.n_qapplicationpascal$_$tapplication_$__$$_create$longint$ppchar$$tapplication,"x"
.seh_endproc
.Lc16:

.section .text.n_qapplicationpascal$_$tapplication_$__$$_destroy,"x"
	.balign 16,0x90
.globl	QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY
QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY:
.Lc20:
.seh_proc QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY
# [150] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc22:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var $self located in register rbx
	movq	%rdx,%rsi
# Var $vmt located in register rsi
	testq	%rsi,%rsi
	jng	.Lj54
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
	.balign 4,0x90
.Lj54:
# [151] writeln('destroyer');
	call	fpc_get_output
	movq	%rax,%rdi
	leaq	_$QAPPLICATIONPASCAL$_Ld10(%rip),%r8
	movq	%rdi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rdi,%rcx
	call	fpc_writeln_end
# Var $self located in register rbx
# [152] TApplication_Destroy(self);
	movq	%rbx,%rcx
	call	QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION
# [154] end;
	testq	%rbx,%rbx
	je	.Lj56
	testq	%rsi,%rsi
	je	.Lj56
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*112(%rax)
	.balign 4,0x90
.Lj56:
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc21:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .rodata.n_VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION,"d"
	.balign 8
.globl	VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION
VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION:
	.quad	8,-8
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld11
	.quad	0,0,0
	.quad	RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0
# [164] end.
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION,"d"
	.balign 8
.Ld11:
	.byte	12
	.ascii	"TApplication"
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld1,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld1
_$QAPPLICATIONPASCAL$_Ld1:
	.ascii	"Error: could not access TApplication.\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld2,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld2
_$QAPPLICATIONPASCAL$_Ld2:
	.ascii	"\010__init__\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld3,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld3
_$QAPPLICATIONPASCAL$_Ld3:
	.ascii	"\006delter\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld4,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld4
_$QAPPLICATIONPASCAL$_Ld4:
	.ascii	"\006halplo\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld5,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld5
_$QAPPLICATIONPASCAL$_Ld5:
	.ascii	"Error\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld6,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld6
_$QAPPLICATIONPASCAL$_Ld6:
	.ascii	"Error: can not parse command line.\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld7,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld7
_$QAPPLICATIONPASCAL$_Ld7:
	.ascii	"Count of Parameters: \000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld8,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld8
_$QAPPLICATIONPASCAL$_Ld8:
	.ascii	"222  11  222\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld9,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld9
_$QAPPLICATIONPASCAL$_Ld9:
	.ascii	"\006cccccc\000"

.section .rodata.n__$QAPPLICATIONPASCAL$_Ld10,"d"
	.balign 8
.globl	_$QAPPLICATIONPASCAL$_Ld10
_$QAPPLICATIONPASCAL$_Ld10:
	.ascii	"\011destroyer\000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION,"d"
	.balign 8
.globl	INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION
INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION:
	.byte	15,12
# [165] 
	.ascii	"TApplication"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION,"d"
	.balign 8
.globl	RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION
RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION:
	.byte	15,12
	.ascii	"TApplication"
	.quad	VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	18
	.ascii	"QApplicationPascal"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION,"d"
	.balign 8
.globl	VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect
VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect:
	.quad	VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION

.section .rodata.n_INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION,"d"
	.balign 8
.globl	INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect
INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect:
	.quad	INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION

.section .rodata.n_RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION,"d"
	.balign 8
.globl	RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect
RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect:
	.quad	RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc23:
	.long	.Lc25-.Lc24
.Lc24:
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
.Lc25:
	.long	.Lc27-.Lc26
.Lc26:
	.secrel32	.Lc23
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc27:
	.long	.Lc29-.Lc28
.Lc28:
	.secrel32	.Lc23
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc29:
	.long	.Lc31-.Lc30
.Lc30:
	.secrel32	.Lc23
	.quad	.Lc7
	.quad	.Lc8-.Lc7
	.byte	4
	.long	.Lc9-.Lc7
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc31:
	.long	.Lc33-.Lc32
.Lc32:
	.secrel32	.Lc23
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.byte	4
	.long	.Lc12-.Lc10
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc13-.Lc12
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc14-.Lc13
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
	.secrel32	.Lc23
	.quad	.Lc15
	.quad	.Lc16-.Lc15
	.byte	4
	.long	.Lc17-.Lc15
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc18-.Lc17
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc19-.Lc18
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc23
	.quad	.Lc20
	.quad	.Lc21-.Lc20
	.byte	4
	.long	.Lc22-.Lc20
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc37:
# End asmlist al_dwarf_frame

