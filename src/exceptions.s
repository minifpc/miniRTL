	.file "exceptions.pas"
# Begin asmlist al_procedures

.section .text.n_exceptions$_$translate_windows_error$longint$$ansistring_$$_fin$00000017,"x"
	.balign 16,0x90
EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017:
.Lc1:
.seh_proc EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017
# [exceptions.pas]
# [71] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rcx,%rbp
.Lc5:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [49] begin
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:

.section .text.n_exceptions_$$_translate_windows_error$longint$$ansistring,"x"
	.balign 16,0x90
.globl	EXCEPTIONS_$$_TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING
EXCEPTIONS_$$_TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING:
.Lc6:
# Temps allocated between rbp-40 and rbp-8
.seh_proc EXCEPTIONS_$$_TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
	movq	%rbx,-40(%rbp)
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
.seh_savereg %rbx, 72
.seh_savereg %rdi, 80
.seh_savereg %rsi, 88
.seh_endprologue
# Var len located in register ebx
# Var buf located at rbp-8, size=OS_64
	movq	%rcx,%rsi
# Var $result located in register rsi
	movl	%edx,%r8d
# Var code located in register r8d
	movq	$0,-16(%rbp)
.Lj11:
	nop
.Lj7:
# [50] len := FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM or FORMAT_MESSAGE_IGNORE_INSERTS or FORMAT_MESSAGE_ALLOCATE_BUFFER,
	movq	$0,48(%rsp)
	movl	$0,40(%rsp)
# [54] @buf,
	leaq	-8(%rbp),%rax
	movq	%rax,32(%rsp)
# [53] MAKELANGID(0{LANG_NEUTRAL}, 1{SUBLANG_DEFAULT}),
	movw	$1024,%r9w
	andl	$65535,%r9d
	xorl	%edx,%edx
	movl	$4864,%ecx
	call	_$dll$kernel32$FormatMessageA
	movl	%eax,%ebx
# [57] writeln('len = ', len);
	call	fpc_get_output
	movq	%rax,%rdi
	leaq	_$EXCEPTIONS$_Ld1(%rip),%r8
	movq	%rdi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movl	%ebx,%r8d
	movq	%rdi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_uint
	movq	%rdi,%rcx
	call	fpc_writeln_end
# [60] writeln('msg = ', string(buf));
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$EXCEPTIONS$_Ld2(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	-8(%rbp),%rdx
	xorl	%r8d,%r8d
	leaq	-16(%rbp),%rcx
	call	fpc_pchar_to_ansistr
	movq	-16(%rbp),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_ansistr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [63] result := buf;
	movq	%rsi,%rcx
	movq	-8(%rbp),%rdx
	xorl	%r8d,%r8d
	call	fpc_pchar_to_ansistr
# [69] writeln('result = ', result);
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$EXCEPTIONS$_Ld3(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	(%rsi),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_ansistr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [70] LocalFree(HLOCAL(buf));
	movq	-8(%rbp),%rcx
	call	_$dll$kernel32$LocalFree
.Lj9:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017
	movq	-40(%rbp),%rbx
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj7
	.rva	.Lj8
	.rva	EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017

.section .text.n_exceptions_$$_translate_windows_error$longint$$ansistring,"x"
.seh_endproc
.Lc7:

.section .text.n_exceptions$_$exception_$__$$_create$ansistring$longint$$exception,"x"
	.balign 16,0x90
.globl	EXCEPTIONS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$LONGINT$$EXCEPTION
EXCEPTIONS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$LONGINT$$EXCEPTION:
.Lc11:
.seh_proc EXCEPTIONS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$LONGINT$$EXCEPTION
# [74] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var msg located at rbp-8, size=OS_64
# Var errcode located at rbp-16, size=OS_S32
# Var $vmt located at rbp-24, size=OS_64
# Var $self located at rbp-32, size=OS_64
# Var $vmt_afterconstruction_local located at rbp-40, size=OS_S64
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%r8,-8(%rbp)
	movl	%r9d,-16(%rbp)
	cmpq	$1,-24(%rbp)
	jne	.Lj15
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
	.balign 4,0x90
.Lj15:
	cmpq	$0,-32(%rbp)
	je	.Lj12
	.balign 4,0x90
.Lj23:
	nop
.Lj22:
	movq	$-1,-40(%rbp)
# [75] Message := msg;
	movq	-32(%rbp),%rax
	leaq	8(%rax),%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_assign
# [76] Code := errcode;
	movq	-32(%rbp),%rax
	movl	-16(%rbp),%edx
	movl	%edx,16(%rax)
# [77] end;
	movq	$1,-40(%rbp)
	cmpq	$0,-32(%rbp)
	je	.Lj20
	cmpq	$0,-24(%rbp)
	je	.Lj20
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*128(%rax)
	.balign 4,0x90
	jmp	.Lj20
.Lj19:
	cmpq	$0,-24(%rbp)
	je	.Lj29
	movq	-40(%rbp),%rdx
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
	.balign 4,0x90
.Lj29:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj30:
	nop
.Lj20:
.Lj12:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj22
	.rva	.Lj19
	.rva	.Lj20

.section .text.n_exceptions$_$exception_$__$$_create$ansistring$longint$$exception,"x"
.seh_endproc
.Lc12:

.section .text.n_exceptions_$$_default_exceptobjproc$longint$exception_record$$pointer,"x"
	.balign 16,0x90
EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER:
.Lc16:
.seh_proc EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER
# [80] begin
	leaq	-40(%rsp),%rsp
.Lc18:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var code located in register ecx
# Var rec located in register rdx
# [81] result := TTestException.Create('@@todo');
	leaq	.Ld4(%rip),%r8
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TTESTEXCEPTION(%rip),%rcx
	call	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
# Var $result located in register rax
# [82] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc17:

.section .text.n_exceptions_$$_default_exceptclsproc$longint$$pointer,"x"
	.balign 16,0x90
EXCEPTIONS_$$_DEFAULT_EXCEPTCLSPROC$LONGINT$$POINTER:
.Lc19:
# Var $result located in register rax
# Var code located in register ecx
# [84] begin
# [85] if (code >= low(exception_classes)) and (code <= high(exception_classes)) then result := exception_classes[code] else result := nil;
	cmpl	$200,%ecx
	jnge	.Lj36
	cmpl	$236,%ecx
	jnle	.Lj36
	andl	%ecx,%ecx
	leaq	U_$EXCEPTIONS_$$_EXCEPTION_CLASSES(%rip),%rax
	movq	-1600(%rax,%rcx,8),%rax
	ret
.Lj36:
	xorl	%eax,%eax
# [86] end;
	ret
.Lc20:

.section .text.n_exceptions_$$_default_errorproc$longint$pointer$pointer,"x"
	.balign 16,0x90
EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER:
.Lc21:
# Temps allocated between rbp-24 and rbp+0
.seh_proc EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER
# [88] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rdi,-16(%rbp)
	movq	%rsi,-8(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_endprologue
	movl	%ecx,%ebx
# Var code located in register ebx
	movq	%rdx,%rsi
# Var addr located in register rsi
	movq	%r8,%rdi
# Var frame located in register rdi
.Lj41:
# [89] raise TTestException.Create('@@todo');
	leaq	.Ld4(%rip),%r8
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TTESTEXCEPTION(%rip),%rcx
	call	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
	movq	%rax,%rcx
	leaq	.Lj41(%rip),%rdx
	movq	%rbp,%r8
	call	fpc_raiseexception
# [90] end;
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rdi
	movq	-8(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc22:

.section .text.n_exceptions_$$_initexceptions,"x"
	.balign 16,0x90
EXCEPTIONS_$$_INITEXCEPTIONS:
.Lc26:
# Var i located in register eax
# [95] begin
# [96] exception_classes[200] := EDivByZero;
	leaq	VMT_$EXCEPTIONS_$$_EDIVBYZERO(%rip),%rax
	movq	%rax,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES(%rip)
# [97] exception_classes[201] := nil;
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+8(%rip)
# [98] exception_classes[202] := nil;
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+16(%rip)
# [99] exception_classes[203] := EOutOfMemory;
	leaq	VMT_$EXCEPTIONS_$$_EOUTOFMEMORY(%rip),%rax
	movq	%rax,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+24(%rip)
# [102] exception_classes[i] := nil;
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+32(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+40(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+48(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+56(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+64(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+72(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+80(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+88(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+96(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+104(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+112(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+120(%rip)
# [104] exception_classes[216] := EAccessViolation;
	leaq	VMT_$EXCEPTIONS_$$_EACCESSVIOLATION(%rip),%rax
	movq	%rax,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+128(%rip)
# [107] exception_classes[i] := nil;
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+136(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+144(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+152(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+160(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+168(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+176(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+184(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+192(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+200(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+208(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+216(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+224(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+232(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+240(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+248(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+256(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+264(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+272(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+280(%rip)
	movq	$0,U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+288(%rip)
# [108] end;
	ret
.Lc27:

.section .text.n_exceptions_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$EXCEPTIONS
INIT$_$EXCEPTIONS:
.globl	EXCEPTIONS_$$_init$
EXCEPTIONS_$$_init$:
.Lc28:
.seh_proc EXCEPTIONS_$$_init$
# [110] initialization
	leaq	-40(%rsp),%rsp
.Lc30:
.seh_stackalloc 40
.seh_endprologue
# [111] initExceptions;
	call	EXCEPTIONS_$$_INITEXCEPTIONS
# [113] ExceptObjProc := @default_ExceptObjProc;
	leaq	EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER(%rip),%rax
	movq	%rax,TC_$SYSTEM_$$_EXCEPTOBJPROC(%rip)
# [114] ExceptClsProc := @default_ExceptClsProc;
	leaq	EXCEPTIONS_$$_DEFAULT_EXCEPTCLSPROC$LONGINT$$POINTER(%rip),%rax
	movq	%rax,TC_$SYSTEM_$$_EXCEPTCLSPROC(%rip)
# [115] ErrorProc := @default_ErrorProc;
	leaq	EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER(%rip),%rax
	movq	%rax,TC_$SYSTEM_$$_ERRORPROC(%rip)
# [117] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc29:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [28] exception_classes: array[200..236] of TClass;
	.globl U_$EXCEPTIONS_$$_EXCEPTION_CLASSES
U_$EXCEPTIONS_$$_EXCEPTION_CLASSES:
	.zero 296

.section .rodata.n_VMT_$EXCEPTIONS_$$_EXCEPTION,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EXCEPTION
VMT_$EXCEPTIONS_$$_EXCEPTION:
	.quad	24,-24
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld5
	.quad	0,0,0
	.quad	RTTI_$EXCEPTIONS_$$_EXCEPTION
	.quad	INIT_$EXCEPTIONS_$$_EXCEPTION
	.quad	0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0

.section .rodata.n_VMT_$EXCEPTIONS_$$_EDIVBYZERO,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EDIVBYZERO
VMT_$EXCEPTIONS_$$_EDIVBYZERO:
	.quad	24,-24
	.quad	VMT_$EXCEPTIONS_$$_EXCEPTION$indirect
	.quad	.Ld6
	.quad	0,0,0
	.quad	RTTI_$EXCEPTIONS_$$_EDIVBYZERO
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0

.section .rodata.n_VMT_$EXCEPTIONS_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EOUTOFMEMORY
VMT_$EXCEPTIONS_$$_EOUTOFMEMORY:
	.quad	24,-24
	.quad	VMT_$EXCEPTIONS_$$_EXCEPTION$indirect
	.quad	.Ld7
	.quad	0,0,0
	.quad	RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0

.section .rodata.n_VMT_$EXCEPTIONS_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EACCESSVIOLATION
VMT_$EXCEPTIONS_$$_EACCESSVIOLATION:
	.quad	24,-24
	.quad	VMT_$EXCEPTIONS_$$_EXCEPTION$indirect
	.quad	.Ld8
	.quad	0,0,0
	.quad	RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_VMT_$EXCEPTIONS_$$_EXCEPTION,"d"
	.balign 8
.Ld5:
	.byte	9
	.ascii	"Exception"

.section .rodata.n_VMT_$EXCEPTIONS_$$_EDIVBYZERO,"d"
	.balign 8
.Ld6:
	.byte	10
	.ascii	"EDivByZero"

.section .rodata.n_VMT_$EXCEPTIONS_$$_EOUTOFMEMORY,"d"
	.balign 8
.Ld7:
	.byte	12
	.ascii	"EOutOfMemory"

.section .rodata.n_VMT_$EXCEPTIONS_$$_EACCESSVIOLATION,"d"
	.balign 8
.Ld8:
	.byte	16
	.ascii	"EAccessViolation"
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .rodata.n__$EXCEPTIONS$_Ld1,"d"
	.balign 8
.globl	_$EXCEPTIONS$_Ld1
_$EXCEPTIONS$_Ld1:
	.ascii	"\006len = \000"

.section .rodata.n__$EXCEPTIONS$_Ld2,"d"
	.balign 8
.globl	_$EXCEPTIONS$_Ld2
_$EXCEPTIONS$_Ld2:
	.ascii	"\006msg = \000"

.section .rodata.n__$EXCEPTIONS$_Ld3,"d"
	.balign 8
.globl	_$EXCEPTIONS$_Ld3
_$EXCEPTIONS$_Ld3:
	.ascii	"\011result = \000"

.section .rodata.n_.Ld4,"d"
	.balign 8
.Ld4$strlab:
	.short	0,1
	.long	0
	.quad	-1,6
.Ld4:
	.ascii	"@@todo\000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_INIT_$EXCEPTIONS_$$_EXCEPTION,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EXCEPTION
INIT_$EXCEPTIONS_$$_EXCEPTION:
	.byte	15,9
# [118] 
	.ascii	"Exception"
	.quad	0
	.long	8
	.quad	0,0
	.long	1
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.quad	8

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EXCEPTION,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EXCEPTION
RTTI_$EXCEPTIONS_$$_EXCEPTION:
	.byte	15,9
	.ascii	"Exception"
	.quad	VMT_$EXCEPTIONS_$$_EXCEPTION
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	10
	.ascii	"Exceptions"
	.short	0

.section .rodata.n_INIT_$EXCEPTIONS_$$_EDIVBYZERO,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EDIVBYZERO
INIT_$EXCEPTIONS_$$_EDIVBYZERO:
	.byte	15,10
	.ascii	"EDivByZero"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EDIVBYZERO,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EDIVBYZERO
RTTI_$EXCEPTIONS_$$_EDIVBYZERO:
	.byte	15,10
	.ascii	"EDivByZero"
	.quad	VMT_$EXCEPTIONS_$$_EDIVBYZERO
	.quad	RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
	.short	0
	.byte	10
	.ascii	"Exceptions"
	.short	0

.section .rodata.n_INIT_$EXCEPTIONS_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EOUTOFMEMORY
INIT_$EXCEPTIONS_$$_EOUTOFMEMORY:
	.byte	15,12
	.ascii	"EOutOfMemory"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY
RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY:
	.byte	15,12
	.ascii	"EOutOfMemory"
	.quad	VMT_$EXCEPTIONS_$$_EOUTOFMEMORY
	.quad	RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
	.short	0
	.byte	10
	.ascii	"Exceptions"
	.short	0

.section .rodata.n_INIT_$EXCEPTIONS_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EACCESSVIOLATION
INIT_$EXCEPTIONS_$$_EACCESSVIOLATION:
	.byte	15,16
	.ascii	"EAccessViolation"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION
RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION:
	.byte	15,16
	.ascii	"EAccessViolation"
	.quad	VMT_$EXCEPTIONS_$$_EACCESSVIOLATION
	.quad	RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
	.short	0
	.byte	10
	.ascii	"Exceptions"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_VMT_$EXCEPTIONS_$$_EXCEPTION,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EXCEPTION$indirect
VMT_$EXCEPTIONS_$$_EXCEPTION$indirect:
	.quad	VMT_$EXCEPTIONS_$$_EXCEPTION

.section .rodata.n_VMT_$EXCEPTIONS_$$_EDIVBYZERO,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EDIVBYZERO$indirect
VMT_$EXCEPTIONS_$$_EDIVBYZERO$indirect:
	.quad	VMT_$EXCEPTIONS_$$_EDIVBYZERO

.section .rodata.n_VMT_$EXCEPTIONS_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect
VMT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect:
	.quad	VMT_$EXCEPTIONS_$$_EOUTOFMEMORY

.section .rodata.n_VMT_$EXCEPTIONS_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	VMT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect
VMT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect:
	.quad	VMT_$EXCEPTIONS_$$_EACCESSVIOLATION

.section .rodata.n_INIT_$EXCEPTIONS_$$_EXCEPTION,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EXCEPTION$indirect
INIT_$EXCEPTIONS_$$_EXCEPTION$indirect:
	.quad	INIT_$EXCEPTIONS_$$_EXCEPTION

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EXCEPTION,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect:
	.quad	RTTI_$EXCEPTIONS_$$_EXCEPTION

.section .rodata.n_INIT_$EXCEPTIONS_$$_EDIVBYZERO,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EDIVBYZERO$indirect
INIT_$EXCEPTIONS_$$_EDIVBYZERO$indirect:
	.quad	INIT_$EXCEPTIONS_$$_EDIVBYZERO

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EDIVBYZERO,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EDIVBYZERO$indirect
RTTI_$EXCEPTIONS_$$_EDIVBYZERO$indirect:
	.quad	RTTI_$EXCEPTIONS_$$_EDIVBYZERO

.section .rodata.n_INIT_$EXCEPTIONS_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect
INIT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect:
	.quad	INIT_$EXCEPTIONS_$$_EOUTOFMEMORY

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect
RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect:
	.quad	RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY

.section .rodata.n_INIT_$EXCEPTIONS_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	INIT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect
INIT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect:
	.quad	INIT_$EXCEPTIONS_$$_EACCESSVIOLATION

.section .rodata.n_RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect
RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect:
	.quad	RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc31:
	.long	.Lc33-.Lc32
.Lc32:
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
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
	.secrel32	.Lc31
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc31
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc9-.Lc8
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc10-.Lc9
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
	.secrel32	.Lc31
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc14-.Lc13
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc15-.Lc14
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc31
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc41:
	.long	.Lc43-.Lc42
.Lc42:
	.secrel32	.Lc31
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.balign 4,0
.Lc43:
	.long	.Lc45-.Lc44
.Lc44:
	.secrel32	.Lc31
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc24-.Lc23
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc25-.Lc24
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc45:
	.long	.Lc47-.Lc46
.Lc46:
	.secrel32	.Lc31
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.balign 4,0
.Lc47:
	.long	.Lc49-.Lc48
.Lc48:
	.secrel32	.Lc31
	.quad	.Lc28
	.quad	.Lc29-.Lc28
	.byte	4
	.long	.Lc30-.Lc28
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc49:
# End asmlist al_dwarf_frame

