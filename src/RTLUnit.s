	.file "RTLUnit.pas"
# Begin asmlist al_procedures

.section .text.n_rtlunit_$$_getbsr8bit$$pbytelookup,"x"
.globl	RTLUNIT_$$_GETBSR8BIT$$PBYTELOOKUP
RTLUNIT_$$_GETBSR8BIT$$PBYTELOOKUP:
.Lc1:
# Var $result located in register rax
# [RTLUnit.pas]
# [63] begin
# [64] result := @bsr8bit;
	leaq	TC_$RTLUNIT_$$_BSR8BIT(%rip),%rax
# Var $result located in register rax
# [65] end;
	ret
.Lc2:

.section .text.n_rtlunit$_$twidgetset_$__$$_create$$twidgetset,"x"
.globl	RTLUNIT$_$TWIDGETSET_$__$$_CREATE$$TWIDGETSET
RTLUNIT$_$TWIDGETSET_$__$$_CREATE$$TWIDGETSET:
.Lc3:
.seh_proc RTLUNIT$_$TWIDGETSET_$__$$_CREATE$$TWIDGETSET
# [81] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc5:
.Lc6:
	movq	%rsp,%rbp
.Lc7:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj8
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj8:
	cmpq	$0,-16(%rbp)
	je	.Lj5
.Lj16:
	nop
.Lj15:
	movq	$-1,-24(%rbp)
# [82] inherited Create;
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
# [83] end;
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj13
	cmpq	$0,-8(%rbp)
	je	.Lj13
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*128(%rax)
	jmp	.Lj13
.Lj12:
	cmpq	$0,-8(%rbp)
	je	.Lj22
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj22:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj23:
	nop
.Lj13:
.Lj5:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj15
	.rva	.Lj12
	.rva	.Lj13

.section .text.n_rtlunit$_$twidgetset_$__$$_create$$twidgetset,"x"
.seh_endproc
.Lc4:

.section .text.n_rtlunit$_$twidgetset_$__$$_destroy,"x"
.globl	RTLUNIT$_$TWIDGETSET_$__$$_DESTROY
RTLUNIT$_$TWIDGETSET_$__$$_DESTROY:
.Lc8:
.seh_proc RTLUNIT$_$TWIDGETSET_$__$$_DESTROY
# [86] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc10:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var $self located in register rbx
	movq	%rdx,%rsi
# Var $vmt located in register rsi
	testq	%rsi,%rsi
	jng	.Lj27
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj27:
# Var $self located in register rbx
# [87] inherited Destroy;
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
# [88] end;
	testq	%rbx,%rbx
	je	.Lj29
	testq	%rsi,%rsi
	je	.Lj29
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*112(%rax)
.Lj29:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc9:

.section .text.n_rtlunit$_$trtl_$__$$_create$$trtl,"x"
.globl	RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL
RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL:
.Lc11:
.seh_proc RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL
# [91] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj34
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj34:
	cmpq	$0,-16(%rbp)
	je	.Lj31
.Lj42:
	nop
.Lj41:
	movq	$-1,-24(%rbp)
# [92] inherited Create;
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
# [93] end;
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj39
	cmpq	$0,-8(%rbp)
	je	.Lj39
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*128(%rax)
	jmp	.Lj39
.Lj38:
	cmpq	$0,-8(%rbp)
	je	.Lj48
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj48:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj49:
	nop
.Lj39:
.Lj31:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj41
	.rva	.Lj38
	.rva	.Lj39

.section .text.n_rtlunit$_$trtl_$__$$_create$$trtl,"x"
.seh_endproc
.Lc12:

.section .text.n_rtlunit$_$trtl_$__$$_destroy,"x"
.globl	RTLUNIT$_$TRTL_$__$$_DESTROY
RTLUNIT$_$TRTL_$__$$_DESTROY:
.Lc16:
.seh_proc RTLUNIT$_$TRTL_$__$$_DESTROY
# [96] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc18:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var $self located in register rbx
	movq	%rdx,%rsi
# Var $vmt located in register rsi
	testq	%rsi,%rsi
	jng	.Lj53
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj53:
# Var $self located in register rbx
# [97] inherited Destroy;
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
# [98] end;
	testq	%rbx,%rbx
	je	.Lj55
	testq	%rsi,%rsi
	je	.Lj55
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*112(%rax)
.Lj55:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc17:

.section .text.n_rtlunit_$$_trtl_create$$trtl,"x"
.globl	RTLUNIT_$$_TRTL_CREATE$$TRTL
RTLUNIT_$$_TRTL_CREATE$$TRTL:
.Lc19:
.seh_proc RTLUNIT_$$_TRTL_CREATE$$TRTL
# [101] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc21:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# [102] WriteLn('xxxx');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$RTLUNIT$_Ld1(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [103] result := TRTL.Create;
	movl	$1,%edx
	leaq	VMT_$RTLUNIT_$$_TRTL(%rip),%rcx
	call	RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL
# Var $result located in register rax
# [104] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc20:

.section .text.n_rtlunit_$$_trtl_destroy$trtl,"x"
.globl	RTLUNIT_$$_TRTL_DESTROY$TRTL
RTLUNIT_$$_TRTL_DESTROY$TRTL:
.Lc22:
.seh_proc RTLUNIT_$$_TRTL_DESTROY$TRTL
# [107] begin
	leaq	-40(%rsp),%rsp
.Lc24:
.seh_stackalloc 40
.seh_endprologue
# Var AValue located in register rax
# Var AValue located in register rcx
# [108] AValue.Free;
	call	SYSTEM$_$TOBJECT_$__$$_FREE
# [109] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc23:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .rodata.n_VMT_$RTLUNIT_$$_TWIDGETSET,"d"
	.balign 8
.globl	VMT_$RTLUNIT_$$_TWIDGETSET
VMT_$RTLUNIT_$$_TWIDGETSET:
	.quad	8,-8
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld2
	.quad	0,0,0
	.quad	RTTI_$RTLUNIT_$$_TWIDGETSET
	.quad	0,0,0,0
	.quad	RTLUNIT$_$TWIDGETSET_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0
# [154] end.

.section .rodata.n_VMT_$RTLUNIT_$$_TRTL,"d"
	.balign 8
.globl	VMT_$RTLUNIT_$$_TRTL
VMT_$RTLUNIT_$$_TRTL:
	.quad	16,-16
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld3
	.quad	0,0,0
	.quad	RTTI_$RTLUNIT_$$_TRTL
	.quad	0,0,0,0
	.quad	RTLUNIT$_$TRTL_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_VMT_$RTLUNIT_$$_TWIDGETSET,"d"
	.balign 8
.Ld2:
	.byte	10
	.ascii	"TWidgetSet"

.section .rodata.n_VMT_$RTLUNIT_$$_TRTL,"d"
	.balign 8
.Ld3:
	.byte	4
	.ascii	"TRtl"
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$RTLUNIT_$$_BSR8BIT,"d"
.globl	TC_$RTLUNIT_$$_BSR8BIT
TC_$RTLUNIT_$$_BSR8BIT:
	.byte	255,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6
	.byte	6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,7,7
	.byte	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
	.byte	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
# [28] function GetBsr8bit: PByteLookup; stdcall; export;

.section .rodata.n__$RTLUNIT$_Ld1,"d"
.globl	_$RTLUNIT$_Ld1
_$RTLUNIT$_Ld1:
	.ascii	"\004xxxx\000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$RTLUNIT_$$_TBYTELOOKUP,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_TBYTELOOKUP
RTTI_$RTLUNIT_$$_TBYTELOOKUP:
	.byte	12,11
# [155] 
	.ascii	"TByteLookup"
	.quad	256,256
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect

.section .rodata.n_RTTI_$RTLUNIT_$$_PBYTELOOKUP,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_PBYTELOOKUP
RTTI_$RTLUNIT_$$_PBYTELOOKUP:
	.byte	29,11
	.ascii	"PByteLookup"
	.quad	RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect

.section .rodata.n_INIT_$RTLUNIT_$$_TWIDGETSET,"d"
	.balign 8
.globl	INIT_$RTLUNIT_$$_TWIDGETSET
INIT_$RTLUNIT_$$_TWIDGETSET:
	.byte	15,10
	.ascii	"TWidgetSet"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$RTLUNIT_$$_TWIDGETSET,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_TWIDGETSET
RTTI_$RTLUNIT_$$_TWIDGETSET:
	.byte	15,10
	.ascii	"TWidgetSet"
	.quad	VMT_$RTLUNIT_$$_TWIDGETSET
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	7
	.ascii	"RTLUnit"
	.short	0

.section .rodata.n_INIT_$RTLUNIT_$$_TRTL,"d"
	.balign 8
.globl	INIT_$RTLUNIT_$$_TRTL
INIT_$RTLUNIT_$$_TRTL:
	.byte	15,4
	.ascii	"TRtl"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$RTLUNIT_$$_TRTL,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_TRTL
RTTI_$RTLUNIT_$$_TRTL:
	.byte	15,4
	.ascii	"TRtl"
	.quad	VMT_$RTLUNIT_$$_TRTL
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	7
	.ascii	"RTLUnit"
	.short	0

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN
RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN:
	.byte	21,15
	.ascii	"T_Array_Boolean"
	.quad	1
	.quad	RTTI_$SYSTEM_$$_BOOLEAN$indirect
	.long	11
	.quad	0
	.byte	7
	.ascii	"RTLUnit"

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_CHAR,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_CHAR
RTTI_$RTLUNIT_$$_T_ARRAY_CHAR:
	.byte	21,12
	.ascii	"T_Array_Char"
	.quad	1
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.long	-1
	.quad	0
	.byte	7
	.ascii	"RTLUnit"

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_BYTE,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_BYTE
RTTI_$RTLUNIT_$$_T_ARRAY_BYTE:
	.byte	21,12
	.ascii	"T_Array_Byte"
	.quad	1
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.long	17
	.quad	0
	.byte	7
	.ascii	"RTLUnit"

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_WORD,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_WORD
RTTI_$RTLUNIT_$$_T_ARRAY_WORD:
	.byte	21,12
	.ascii	"T_Array_Word"
	.quad	2
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.long	18
	.quad	0
	.byte	7
	.ascii	"RTLUnit"

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_DWORD,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_DWORD
RTTI_$RTLUNIT_$$_T_ARRAY_DWORD:
	.byte	21,13
	.ascii	"T_Array_DWord"
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.long	19
	.quad	0
	.byte	7
	.ascii	"RTLUnit"

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER
RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER:
	.byte	21,15
	.ascii	"T_Array_Integer"
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.long	3
	.quad	0
	.byte	7
	.ascii	"RTLUnit"

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_STRING,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_STRING
RTTI_$RTLUNIT_$$_T_ARRAY_STRING:
	.byte	21,14
	.ascii	"T_Array_String"
	.quad	8
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.long	256
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.byte	7
	.ascii	"RTLUnit"
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_VMT_$RTLUNIT_$$_TWIDGETSET,"d"
	.balign 8
.globl	VMT_$RTLUNIT_$$_TWIDGETSET$indirect
VMT_$RTLUNIT_$$_TWIDGETSET$indirect:
	.quad	VMT_$RTLUNIT_$$_TWIDGETSET

.section .rodata.n_VMT_$RTLUNIT_$$_TRTL,"d"
	.balign 8
.globl	VMT_$RTLUNIT_$$_TRTL$indirect
VMT_$RTLUNIT_$$_TRTL$indirect:
	.quad	VMT_$RTLUNIT_$$_TRTL

.section .rodata.n_RTTI_$RTLUNIT_$$_TBYTELOOKUP,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect
RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect:
	.quad	RTTI_$RTLUNIT_$$_TBYTELOOKUP

.section .rodata.n_RTTI_$RTLUNIT_$$_PBYTELOOKUP,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_PBYTELOOKUP$indirect
RTTI_$RTLUNIT_$$_PBYTELOOKUP$indirect:
	.quad	RTTI_$RTLUNIT_$$_PBYTELOOKUP

.section .rodata.n_INIT_$RTLUNIT_$$_TWIDGETSET,"d"
	.balign 8
.globl	INIT_$RTLUNIT_$$_TWIDGETSET$indirect
INIT_$RTLUNIT_$$_TWIDGETSET$indirect:
	.quad	INIT_$RTLUNIT_$$_TWIDGETSET

.section .rodata.n_RTTI_$RTLUNIT_$$_TWIDGETSET,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_TWIDGETSET$indirect
RTTI_$RTLUNIT_$$_TWIDGETSET$indirect:
	.quad	RTTI_$RTLUNIT_$$_TWIDGETSET

.section .rodata.n_INIT_$RTLUNIT_$$_TRTL,"d"
	.balign 8
.globl	INIT_$RTLUNIT_$$_TRTL$indirect
INIT_$RTLUNIT_$$_TRTL$indirect:
	.quad	INIT_$RTLUNIT_$$_TRTL

.section .rodata.n_RTTI_$RTLUNIT_$$_TRTL,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_TRTL$indirect
RTTI_$RTLUNIT_$$_TRTL$indirect:
	.quad	RTTI_$RTLUNIT_$$_TRTL

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN$indirect:
	.quad	RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_CHAR,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_CHAR$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_CHAR$indirect:
	.quad	RTTI_$RTLUNIT_$$_T_ARRAY_CHAR

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_BYTE,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_BYTE$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_BYTE$indirect:
	.quad	RTTI_$RTLUNIT_$$_T_ARRAY_BYTE

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_WORD,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_WORD$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_WORD$indirect:
	.quad	RTTI_$RTLUNIT_$$_T_ARRAY_WORD

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_DWORD,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_DWORD$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_DWORD$indirect:
	.quad	RTTI_$RTLUNIT_$$_T_ARRAY_DWORD

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER$indirect:
	.quad	RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER

.section .rodata.n_RTTI_$RTLUNIT_$$_T_ARRAY_STRING,"d"
	.balign 8
.globl	RTTI_$RTLUNIT_$$_T_ARRAY_STRING$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_STRING$indirect:
	.quad	RTTI_$RTLUNIT_$$_T_ARRAY_STRING
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc25:
	.long	.Lc27-.Lc26
.Lc26:
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
.Lc27:
	.long	.Lc29-.Lc28
.Lc28:
	.secrel32	.Lc25
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.balign 4,0
.Lc29:
	.long	.Lc31-.Lc30
.Lc30:
	.secrel32	.Lc25
	.quad	.Lc3
	.quad	.Lc4-.Lc3
	.byte	4
	.long	.Lc5-.Lc3
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc6-.Lc5
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc7-.Lc6
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc31:
	.long	.Lc33-.Lc32
.Lc32:
	.secrel32	.Lc25
	.quad	.Lc8
	.quad	.Lc9-.Lc8
	.byte	4
	.long	.Lc10-.Lc8
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
	.secrel32	.Lc25
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
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc25
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
	.secrel32	.Lc25
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.byte	4
	.long	.Lc21-.Lc19
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc25
	.quad	.Lc22
	.quad	.Lc23-.Lc22
	.byte	4
	.long	.Lc24-.Lc22
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc41:
# End asmlist al_dwarf_frame

