	.file "system.pas"
# Begin asmlist al_pure_assembler

.section .text.n_system_$$_atomicexchange$longint$longint$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT:
.Lc693:
.seh_proc SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT
# [misc.inc]
# [63] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc695:
.Lc696:
	movq	%rsp,%rbp
.Lc697:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-4, size=OS_S32
#  CPU ATHLON64
# [64] mov    eax, val
	movl	%edx,%eax
# [66] xchg dword ptr [target], eax
	xchgl	%eax,(%rcx)
#  CPU ATHLON64
# [67] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc694:

.section .text.n_system_$$_atomicexchange$int64$int64$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64
SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64:
.Lc698:
.seh_proc SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64
# [70] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc700:
.Lc701:
	movq	%rsp,%rbp
.Lc702:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-8, size=OS_S64
#  CPU ATHLON64
# [71] mov    rax, val
	movq	%rdx,%rax
# [73] xchg qword ptr [target], rax
	xchgq	%rax,(%rcx)
#  CPU ATHLON64
# [74] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc699:

.section .text.n_system_$$_atomicincrement$longint$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT:
.Lc703:
.seh_proc SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
# [77] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc705:
.Lc706:
	movq	%rsp,%rbp
.Lc707:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-4, size=OS_S32
#  CPU ATHLON64
# [78] mov eax, 1
	movl	$1,%eax
# [79] lock xadd dword ptr [target], eax
	lock
	xaddl	%eax,(%rcx)
# [80] inc eax
	incl	%eax
#  CPU ATHLON64
# [81] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc704:

.section .text.n_system_$$_atomicincrement$int64$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64:
.Lc708:
.seh_proc SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
# [84] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc710:
.Lc711:
	movq	%rsp,%rbp
.Lc712:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-8, size=OS_S64
#  CPU ATHLON64
# [85] mov rax, 1
	movq	$1,%rax
# [86] lock xadd qword ptr [target], rax
	lock
	xaddq	%rax,(%rcx)
# [87] inc rax
	incq	%rax
#  CPU ATHLON64
# [88] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc709:

.section .text.n_system_$$_atomicdecrement$longint$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT:
.Lc713:
.seh_proc SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
# [91] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc715:
.Lc716:
	movq	%rsp,%rbp
.Lc717:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-4, size=OS_S32
#  CPU ATHLON64
# [92] mov eax, -1
	movl	$-1,%eax
# [93] lock xadd dword ptr [target], eax
	lock
	xaddl	%eax,(%rcx)
# [94] dec eax
	decl	%eax
#  CPU ATHLON64
# [95] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc714:

.section .text.n_system_$$_atomicdecrement$int64$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64:
.Lc718:
.seh_proc SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
# [98] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc720:
.Lc721:
	movq	%rsp,%rbp
.Lc722:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-8, size=OS_S64
#  CPU ATHLON64
# [99] mov rax, -1
	movq	$-1,%rax
# [100] lock xadd qword ptr [target], rax
	lock
	xaddq	%rax,(%rcx)
# [101] dec rax
	decq	%rax
#  CPU ATHLON64
# [102] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc719:

.section .text.n__fpc_leave,"x"
	.balign 16,0x90
.globl	_fpc_leave
_fpc_leave:
.globl	_FPC_leave
_FPC_leave:
.Lc845:
# [system.pas]
# [332] asm
#  CPU ATHLON64
# [333] movl   4(%esp),%eax
	movl	4(%esp),%eax
# [334] movl   %eax,%fs:(0)
	movl	%eax,%fs:0
# [335] movl   %ebp,%eax
	movl	%ebp,%eax
# [336] call   16(%esp)
	call	*16(%esp)
#  CPU ATHLON64
# [337] end;
	ret
.Lc846:

.section .text.n_fpc_setjmp,"x"
	.balign 16,0x90
.globl	fpc_setjmp
fpc_setjmp:
.globl	FPC_SETJMP
FPC_SETJMP:
.Lc871:
# [504] asm
#  CPU ATHLON64
# [505] movq     %rbx,jmp_buf.rbx(%rcx)
	movq	%rbx,(%rcx)
# [506] movq     %rbp,jmp_buf.rbp(%rcx)
	movq	%rbp,8(%rcx)
# [507] movq     %r12,jmp_buf.r12(%rcx)
	movq	%r12,16(%rcx)
# [508] movq     %r13,jmp_buf.r13(%rcx)
	movq	%r13,24(%rcx)
# [509] movq     %r14,jmp_buf.r14(%rcx)
	movq	%r14,32(%rcx)
# [510] movq     %r15,jmp_buf.r15(%rcx)
	movq	%r15,40(%rcx)
# [511] movq     %rsi,jmp_buf.rsi(%rcx)
	movq	%rsi,64(%rcx)
# [512] movq     %rdi,jmp_buf.rdi(%rcx)
	movq	%rdi,72(%rcx)
# [513] leaq     8(%rsp),%rax
	leaq	8(%rsp),%rax
# [514] movq     %rax,jmp_buf.rsp(%rcx)
	movq	%rax,48(%rcx)
# [515] movq     (%rsp),%rax
	movq	(%rsp),%rax
# [516] movq     %rax,jmp_buf.rip(%rcx)
	movq	%rax,56(%rcx)
# [517] movdqu   %xmm6,jmp_buf.xmm6(%rcx)
	movdqu	%xmm6,80(%rcx)
# [518] movdqu   %xmm7,jmp_buf.xmm7(%rcx)
	movdqu	%xmm7,96(%rcx)
# [519] movdqu   %xmm8,jmp_buf.xmm8(%rcx)
	movdqu	%xmm8,112(%rcx)
# [520] movdqu   %xmm9,jmp_buf.xmm9(%rcx)
	movdqu	%xmm9,128(%rcx)
# [521] movdqu   %xmm10,jmp_buf.xmm10(%rcx)
	movdqu	%xmm10,144(%rcx)
# [522] movdqu   %xmm11,jmp_buf.xmm11(%rcx)
	movdqu	%xmm11,160(%rcx)
# [523] movdqu   %xmm12,jmp_buf.xmm12(%rcx)
	movdqu	%xmm12,176(%rcx)
# [524] movdqu   %xmm13,jmp_buf.xmm13(%rcx)
	movdqu	%xmm13,192(%rcx)
# [525] movdqu   %xmm14,jmp_buf.xmm14(%rcx)
	movdqu	%xmm14,208(%rcx)
# [526] movdqu   %xmm15,jmp_buf.xmm15(%rcx)
	movdqu	%xmm15,224(%rcx)
# [527] stmxcsr  jmp_buf.mxcsr(%rcx)
	stmxcsr	240(%rcx)
# [528] fnstcw   jmp_buf.fpucw(%rcx)
	fnstcw	244(%rcx)
# [529] xorl     %eax,%eax
	xorl	%eax,%eax
#  CPU ATHLON64
# [530] end;
	ret
.Lc872:

.section .text.n_fpc_longjmp,"x"
	.balign 16,0x90
.globl	fpc_longjmp
fpc_longjmp:
.globl	FPC_LONGJMP
FPC_LONGJMP:
.Lc873:
# [534] asm
#  CPU ATHLON64
# [550] cmpl     $1,%edx
	cmpl	$1,%edx
# [551] adcl     $0,%edx
	adcl	$0,%edx
# [552] movl     %edx,%eax
	movl	%edx,%eax
# [553] movq     jmp_buf.rbx(%rcx),%rbx
	movq	(%rcx),%rbx
# [554] movq     jmp_buf.rbp(%rcx),%rbp
	movq	8(%rcx),%rbp
# [555] movq     jmp_buf.r12(%rcx),%r12
	movq	16(%rcx),%r12
# [556] movq     jmp_buf.r13(%rcx),%r13
	movq	24(%rcx),%r13
# [557] movq     jmp_buf.r14(%rcx),%r14
	movq	32(%rcx),%r14
# [558] movq     jmp_buf.r15(%rcx),%r15
	movq	40(%rcx),%r15
# [559] movq     jmp_buf.rsi(%rcx),%rsi
	movq	64(%rcx),%rsi
# [560] movq     jmp_buf.rdi(%rcx),%rdi
	movq	72(%rcx),%rdi
# [561] movq     jmp_buf.rsp(%rcx),%rsp
	movq	48(%rcx),%rsp
# [562] movdqu   jmp_buf.xmm6(%rcx),%xmm6
	movdqu	80(%rcx),%xmm6
# [563] movdqu   jmp_buf.xmm7(%rcx),%xmm7
	movdqu	96(%rcx),%xmm7
# [564] movdqu   jmp_buf.xmm8(%rcx),%xmm8
	movdqu	112(%rcx),%xmm8
# [565] movdqu   jmp_buf.xmm9(%rcx),%xmm9
	movdqu	128(%rcx),%xmm9
# [566] movdqu   jmp_buf.xmm10(%rcx),%xmm10
	movdqu	144(%rcx),%xmm10
# [567] movdqu   jmp_buf.xmm11(%rcx),%xmm11
	movdqu	160(%rcx),%xmm11
# [568] movdqu   jmp_buf.xmm12(%rcx),%xmm12
	movdqu	176(%rcx),%xmm12
# [569] movdqu   jmp_buf.xmm13(%rcx),%xmm13
	movdqu	192(%rcx),%xmm13
# [570] movdqu   jmp_buf.xmm14(%rcx),%xmm14
	movdqu	208(%rcx),%xmm14
# [571] movdqu   jmp_buf.xmm15(%rcx),%xmm15
	movdqu	224(%rcx),%xmm15
# [572] ldmxcsr  jmp_buf.mxcsr(%rcx)
	ldmxcsr	240(%rcx)
# [573] fnclex
	fnclex
# [574] fldcw    jmp_buf.fpucw(%rcx)
	fldcw	244(%rcx)
# [575] jmpq     jmp_buf.rip(%rcx)
	jmp	*56(%rcx)
#  CPU ATHLON64
# [577] end;
	ret
.Lc874:

.section .text.n_system_$$_interlockeddecrement$longint$$longint,"x"
	.balign 16,0x90
SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT:
.Lc904:
.seh_proc SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
# [721] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc906:
.Lc907:
	movq	%rsp,%rbp
.Lc908:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-4, size=OS_S32
#  CPU ATHLON64
# [723] mov rax, -1
	movq	$-1,%rax
# [724] lock xadd [Addend], rax
	lock
	xaddq	%rax,(%rcx)
# [725] dec rax
	decq	%rax
#  CPU ATHLON64
# [731] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc905:

.section .text.n_system_$$_interlockedincrement$longint$$longint,"x"
	.balign 16,0x90
SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT:
.Lc909:
.seh_proc SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
# [735] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc911:
.Lc912:
	movq	%rsp,%rbp
.Lc913:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-4, size=OS_S32
#  CPU ATHLON64
# [737] mov rax, 1
	movq	$1,%rax
# [738] lock xadd [Addend], rax
	lock
	xaddq	%rax,(%rcx)
# [739] inc rax
	incq	%rax
#  CPU ATHLON64
# [745] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc910:
# End asmlist al_pure_assembler
# Begin asmlist al_procedures

.section .text.n_system_$$_wait_for_enter,"x"
	.balign 16,0x90
SYSTEM_$$_WAIT_FOR_ENTER:
.Lc1:
.seh_proc SYSTEM_$$_WAIT_FOR_ENTER
# [208] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc3:
.seh_stackalloc 48
.seh_endprologue
# Var c located at rsp+40, size=OS_8
# Var d located at rsp+44, size=OS_32
# [209] writeln('press <enter>...');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld1(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
	.balign 8,0x90
.Lj5:
# [212] ReadConsoleA(StdIn, @c, 1, @d, nil);
	movq	$0,32(%rsp)
	leaq	44(%rsp),%r9
	leaq	40(%rsp),%rdx
	movq	U_$SYSTEM_$$_STDIN(%rip),%rcx
	movl	$1,%r8d
	call	_$dll$kernel32$ReadConsoleA
# [213] if c = #13 then break;
	cmpb	$13,40(%rsp)
	jne	.Lj5
	jmp	.Lj7
	.balign 4,0x90
# [211] while true do begin
	jmp	.Lj5
.Lj7:
# [215] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc2:

.section .text.n_system_$$_lo$longint$$byte,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_LO$LONGINT$$BYTE
SYSTEM_$$_LO$LONGINT$$BYTE:
.Lc4:
# Var $result located in register al
# [218] function Lo(i: Integer): Byte; overload; begin Result := Byte(i and $FF  ); end;
	movl	%ecx,%eax
# Var i located in register eax
	andl	$255,%eax
# Var $result located in register al
	ret
.Lc5:

.section .text.n_system_$$_lo$word$$byte,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_LO$WORD$$BYTE
SYSTEM_$$_LO$WORD$$BYTE:
.Lc6:
# Var $result located in register al
# [219] function Lo(w: Word   ): Byte; overload; begin Result := Byte(w and $FF  ); end;
	movw	%cx,%ax
# Var w located in register ax
# Var $result located in register al
	andl	$255,%eax
	ret
.Lc7:

.section .text.n_system_$$_lo$longint$$word,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_LO$LONGINT$$WORD
SYSTEM_$$_LO$LONGINT$$WORD:
.Lc8:
# Var $result located in register ax
# [220] function Lo(l: Longint): Word; overload; begin Result := Word(l and $FFFF); end;
	movl	%ecx,%eax
# Var l located in register eax
	andl	$65535,%eax
# Var $result located in register ax
	ret
.Lc9:

.section .text.n_system_$$_lo$longword$$word,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_LO$LONGWORD$$WORD
SYSTEM_$$_LO$LONGWORD$$WORD:
.Lc10:
# Var $result located in register ax
# [221] function Lo(l: DWord  ): Word; overload; begin Result := Word(l and $FFFF); end;
	movl	%ecx,%eax
# Var l located in register eax
	andl	$65535,%eax
# Var $result located in register ax
	ret
.Lc11:

.section .text.n_system_$$_lo$int64$$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_LO$INT64$$LONGWORD
SYSTEM_$$_LO$INT64$$LONGWORD:
.Lc12:
# Var $result located in register eax
# [223] function Lo(i: Int64): DWord; overload; begin Result := DWord(i and $FFFFFFFF); end;
	movq	%rcx,%rax
# Var i located in register rax
# Var $result located in register eax
	ret
.Lc13:

.section .text.n_system_$$_lo$qword$$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_LO$QWORD$$LONGWORD
SYSTEM_$$_LO$QWORD$$LONGWORD:
.Lc14:
# Var $result located in register eax
# [224] function Lo(q: QWord): DWord; overload; begin Result := DWord(q and $FFFFFFFF); end;
	movq	%rcx,%rax
# Var q located in register rax
# Var $result located in register eax
	ret
.Lc15:

.section .text.n_system_$$_hi$longint$$byte,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_HI$LONGINT$$BYTE
SYSTEM_$$_HI$LONGINT$$BYTE:
.Lc16:
# Var $result located in register al
# [226] function Hi(i: Integer): Byte ; overload; begin Result := Byte((i shr 8) and $FF); end;
	movl	%ecx,%eax
# Var i located in register eax
	shrl	$8,%eax
	andl	$255,%eax
# Var $result located in register al
	ret
.Lc17:

.section .text.n_system_$$_hi$word$$byte,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_HI$WORD$$BYTE
SYSTEM_$$_HI$WORD$$BYTE:
.Lc18:
# Var $result located in register al
# [227] function Hi(w: Word   ): Byte ; overload; begin Result := Byte((w shr 8) and $FF); end;
	movzwl	%cx,%eax
# Var w located in register ax
	shrl	$8,%eax
	andl	$255,%eax
# Var $result located in register al
	ret
.Lc19:

.section .text.n_system_$$_hi$longword$$word,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_HI$LONGWORD$$WORD
SYSTEM_$$_HI$LONGWORD$$WORD:
.Lc20:
# Var $result located in register ax
# [229] function Hi(l: DWord  ): Word ; overload; begin Result := Word ((l shr 16) and $FFFF    ); end;
	movl	%ecx,%eax
# Var l located in register eax
	shrl	$16,%eax
	andl	$65535,%eax
# Var $result located in register ax
	ret
.Lc21:

.section .text.n_system_$$_hi$int64$$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_HI$INT64$$LONGWORD
SYSTEM_$$_HI$INT64$$LONGWORD:
.Lc22:
# Var $result located in register eax
# [230] function Hi(i: Int64  ): DWord; overload; begin Result := DWord((i shr 32) and $FFFFFFFF); end;
	movq	%rcx,%rax
# Var i located in register rax
	shrq	$32,%rax
# Var $result located in register eax
	ret
.Lc23:

.section .text.n_system_$$_hi$qword$$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_HI$QWORD$$LONGWORD
SYSTEM_$$_HI$QWORD$$LONGWORD:
.Lc24:
# Var $result located in register eax
# [231] function Hi(q: QWord  ): DWord; overload; begin Result := DWord((q shr 32) and $FFFFFFFF); end;
	movq	%rcx,%rax
# Var q located in register rax
	shrq	$32,%rax
# Var $result located in register eax
	ret
.Lc25:

.section .text.n_system$_$tinterfaceentry_$__$$_getiid$$pguid,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID:
.Lc26:
# Var $result located in register rax
# Var $self located in register rcx
# [objects.inc]
# [226] begin
# [230] if Assigned(IIDRef) then GetIID := IIDRef^
	cmpq	$0,(%rcx)
	je	.Lj35
	movq	(%rcx),%rax
	movq	(%rax),%rax
	ret
.Lj35:
# [232] GetIID := nil;
	xorl	%eax,%eax
# [234] end;
	ret
.Lc27:

.section .text.n_system$_$tinterfaceentry_$__$$_getiidstr$$pshortstring,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING:
.Lc28:
# Var $result located in register rax
# Var $self located in register rcx
# [237] begin
# [241] if Assigned(IIDStrRef) then GetIIDStr := IIDStrRef^
	cmpq	$0,40(%rcx)
	je	.Lj40
	movq	40(%rcx),%rax
	movq	(%rax),%rax
	ret
.Lj40:
# [243] GetIIDStr := nil;
	xorl	%eax,%eax
# [245] end;
	ret
.Lc29:

.section .text.n_system$_$tvmt_$__$$_getvparent$$pvmt,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
.Lc30:
# Var $result located in register rax
# Var $self located in register rcx
# [252] begin
# [253] if vParentRef <> nil then result := vParentRef^ else result := nil;
	cmpq	$0,16(%rcx)
	je	.Lj45
	movq	16(%rcx),%rax
	movq	(%rax),%rax
	ret
.Lj45:
	xorl	%eax,%eax
# [254] end;
	ret
.Lc31:

.section .text.n_system$_$tobject_$__$$_create$$tobject,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
.Lc32:
.seh_proc SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
# [261] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc34:
.Lc35:
	movq	%rsp,%rbp
.Lc36:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj50
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
	.balign 4,0x90
.Lj50:
	cmpq	$0,-16(%rbp)
	je	.Lj47
	.balign 4,0x90
.Lj58:
	nop
.Lj57:
	movq	$-1,-24(%rbp)
# [262] end;
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj55
	cmpq	$0,-8(%rbp)
	je	.Lj55
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*128(%rax)
	.balign 4,0x90
	jmp	.Lj55
.Lj54:
	cmpq	$0,-8(%rbp)
	je	.Lj64
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
	.balign 4,0x90
.Lj64:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj65:
	nop
.Lj55:
.Lj47:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj57
	.rva	.Lj54
	.rva	.Lj55

.section .text.n_system$_$tobject_$__$$_create$$tobject,"x"
.seh_endproc
.Lc33:

.section .text.n_system$_$tobject_$__$$_destroy,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
.Lc37:
.seh_proc SYSTEM$_$TOBJECT_$__$$_DESTROY
# [265] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc39:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var $self located in register rbx
	movq	%rdx,%rsi
# Var $vmt located in register rsi
	testq	%rsi,%rsi
	jng	.Lj69
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
	.balign 4,0x90
.Lj69:
# [267] end;
	testq	%rbx,%rbx
	je	.Lj71
	testq	%rsi,%rsi
	je	.Lj71
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*112(%rax)
	.balign 4,0x90
.Lj71:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc38:

.section .text.n_system$_$tobject_$__$$_newinstance$$tobject,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
.Lc40:
.seh_proc SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
# [272] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc42:
.seh_stackalloc 48
.seh_endprologue
# Var $result located in register rax
# Var p located at rsp+32, size=OS_64
	movq	%rcx,%rbx
# Var $self located in register rbx
# Var $self located in register rbx
# [273] GetMem(p, InstanceSize);
	call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
	movq	%rax,%rdx
	leaq	32(%rsp),%rcx
	call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
# [275] if p <> nil then InitInstance(p);
	cmpq	$0,32(%rsp)
	je	.Lj76
	movq	32(%rsp),%rdx
	movq	%rbx,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
	.balign 4,0x90
.Lj76:
# Var $result located in register rax
# [276] result := TObject(p);
	movq	32(%rsp),%rax
# [277] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc41:

.section .text.n_system$_$tobject_$__$$_freeinstance,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
.Lc43:
.seh_proc SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
# [280] begin
	leaq	-40(%rsp),%rsp
.Lc45:
.seh_stackalloc 40
.seh_endprologue
# Var $self located in register rax
# Var $self located in register rcx
# [281] FreeMem(Pointer(Self));
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
# [282] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc44:

.section .text.n_system$_$tobject_$__$$_safecallexception$tobject$pointer$$hresult,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT:
.Lc46:
# Var $result located in register eax
# Var $self located in register rcx
# Var exceptobject located in register rdx
# Var exceptaddr located in register r8
# [285] begin
# Var $result located in register eax
# [286] result := 1;
	movl	$1,%eax
# [287] end;
	ret
.Lc47:

.section .text.n_system$_$tobject_$__$$_free,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
.Lc48:
.seh_proc SYSTEM$_$TOBJECT_$__$$_FREE
# [290] begin
	leaq	-40(%rsp),%rsp
.Lc50:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var $self located in register rax
# [292] if self <> nil then self.Destroy;
	testq	%rcx,%rcx
	je	.Lj84
	movq	%rax,%rcx
	movl	$1,%edx
	movq	(%rax),%rax
	call	*96(%rax)
	.balign 4,0x90
.Lj84:
# [293] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc49:

.section .text.n_system_$$_initinterfacepointers$tclass$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER:
.Lc51:
# Var ovmt located in register rax
# Var i located in register r10d
# Var intftable located in register r11
# Var Res located in register rax
# Var objclass located in register rcx
# Var instance located in register rdx
# [302] begin
# Var ovmt located in register rcx
# Var objclass located in register rcx
# [304] while assigned(ovmt) and {$ifdef VER3_0}(ovmt^.vIntfTable <> @emptyintf){$else}assigned(ovmt^.vIntfTable){$endif} do
	jmp	.Lj88
	.balign 8,0x90
.Lj87:
# [306] intftable:=ovmt^.vIntfTable;
	movq	80(%rcx),%r11
# [311] i:=intftable^.EntryCount;
	movl	(%r11),%r10d
# [312] Res:=@intftable^.Entries[0];
	leaq	8(%r11),%rax
# [313] while i>0 do begin
	jmp	.Lj91
	.balign 8,0x90
.Lj90:
# [314] if Res^.IType = etStandard then
	cmpl	$0,48(%rax)
	jne	.Lj94
	movq	%rax,%r8
# [315] ppointer(@(pbyte(instance)[Res^.IOffset]))^:=
	movq	32(%r8),%r9
	addq	%rdx,%r9
	movq	8(%r8),%r8
	movq	%r8,(%r9)
	.balign 4,0x90
.Lj94:
# [317] inc(Res);
	addq	$56,%rax
# [318] dec(i);
	subl	$1,%r10d
.Lj91:
	testl	%r10d,%r10d
	jg	.Lj90
# [321] ovmt:=ovmt^.vParent;
	cmpq	$0,16(%rcx)
	je	.Lj96
	movq	16(%rcx),%r8
	movq	(%r8),%r8
	jmp	.Lj97
.Lj96:
	xorq	%r8,%r8
.Lj97:
	movq	%r8,%rcx
.Lj88:
	testq	%rcx,%rcx
	je	.Lj89
	cmpq	$0,80(%rcx)
	jne	.Lj87
.Lj89:
# [323] end;
	ret
.Lc52:

.section .text.n_system$_$tobject_$__$$_initinstance$pointer$$tobject,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT:
.Lc53:
.seh_proc SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
# [332] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc55:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var vmt located in register rax
	movq	%rcx,%rbx
# Var $self located in register rbx
	movq	%rdx,%rsi
# Var Instance located in register rsi
# Var $self located in register rbx
# [333] FillChar(Instance^, InstanceSize, 0);
	movq	%rbx,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
	movq	%rax,%rdx
# Var Instance located in register rsi
	movq	%rsi,%rcx
	xorl	%r8d,%r8d
	call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
# Var Instance located in register rsi
# [334] PPointer(Instance)^ := Pointer(self);
	movq	%rbx,%rcx
# Var $self located in register rcx
	movq	%rcx,(%rsi)
# [336] if PVmt(self)^.vIntfTable <> nil then
	cmpq	$0,80(%rcx)
	je	.Lj104
# [337] InitInterfacePointers(self, Instance);
	movq	%rsi,%rdx
	call	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
	.balign 4,0x90
.Lj104:
# Var $result located in register rax
# [346] result := TObject(Instance);
	movq	%rsi,%rax
# Var Instance located in register rax
# [347] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc54:

.section .text.n_system$_$tobject_$__$$_classtype$$tclass,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS:
.Lc56:
# Var $result located in register rax
# [350] begin
	movq	%rcx,%rax
# Var $self located in register rax
# Var $result located in register rax
# Var $self located in register rax
# [352] end;
	ret
.Lc57:

.section .text.n_system$_$tobject_$__$$_classinfo$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER:
.Lc58:
# Var $result located in register rax
# Var $self located in register rcx
# [355] begin
# Var $self located in register rcx
# Var $result located in register rax
# [356] result := PVmt(Self)^.vTypeInfo;
	movq	56(%rcx),%rax
# [357] end;
	ret
.Lc59:

.section .text.n_system$_$tobject_$__$$_classname$$shortstring,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING:
.Lc60:
.seh_proc SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
# [360] begin
	leaq	-40(%rsp),%rsp
.Lc62:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var $self located in register rax
	movq	%rdx,%rcx
# Var $result located in register rcx
# Var $self located in register rax
# [361] result := PVmt(Self)^.vClassName^;
	movq	24(%rax),%rdx
	call	fpc_shortstr_to_shortstr
# [362] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc61:

.section .text.n_system$_$tobject_$__$$_classparent$$tclass,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS:
.Lc63:
# Var $result located in register rax
# Var $self located in register rcx
# [365] begin
# [366] result := TClass(PVmt(Self)^.vParent);
	cmpq	$0,16(%rcx)
	je	.Lj114
	movq	16(%rcx),%rax
	movq	(%rax),%rax
	ret
.Lj114:
	xorl	%eax,%eax
# Var $result located in register rax
# [367] end;
	ret
.Lc64:

.section .text.n_system$_$tobject_$__$$_instancesize$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64:
.Lc65:
# Var $result located in register rax
# Var $self located in register rcx
# [370] begin
# Var $self located in register rcx
# Var $result located in register rax
# [371] result := PVmt(Self)^.vInstanceSize;
	movq	(%rcx),%rax
# [372] end;
	ret
.Lc66:

.section .text.n_system$_$tobject_$__$$_inheritsfrom$tclass$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN:
.Lc67:
# Var $result located in register al
# Var vmt located in register rax
# Var $self located in register rcx
# Var aclass located in register rdx
# [377] begin
# [378] if aclass = nil then exit(false);
	testq	%rdx,%rdx
	jne	.Lj123
	xorb	%al,%al
	ret
	.balign 4,0x90
# Var vmt located in register rcx
# Var $self located in register rcx
# [380] while (vmt <> nil) and (vmt <> PVmt(aclass)) do vmt := vmt^.vParent;
	jmp	.Lj123
	.balign 8,0x90
.Lj122:
	cmpq	$0,16(%rcx)
	je	.Lj126
	movq	16(%rcx),%r8
	movq	(%r8),%r8
	jmp	.Lj127
.Lj126:
	xorq	%r8,%r8
.Lj127:
	movq	%r8,%rcx
.Lj123:
	testq	%rcx,%rcx
	je	.Lj124
	cmpq	%rcx,%rdx
	jne	.Lj122
.Lj124:
# [381] result := vmt = PVmt(aclass);
	cmpq	%rcx,%rdx
	seteb	%al
# [382] end;
	ret
.Lc68:

.section .text.n_system$_$tobject_$__$$_afterconstruction,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
.Lc69:
# [385] begin
	movq	%rcx,%rax
# Var $self located in register rax
# [386] end;
	ret
.Lc70:

.section .text.n_system$_$tobject_$__$$_beforedestruction,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
.Lc71:
# [389] begin
	movq	%rcx,%rax
# Var $self located in register rax
# [390] end;
	ret
.Lc72:

.section .text.n_system_$$_isguidequal$tguid$tguid$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
.Lc73:
# Var $result located in register al
# Var guid1 located in register rcx
# Var guid2 located in register rdx
# [395] begin
# [397] (guid1.D1=guid2.D1) and
	movl	(%rcx),%eax
	cmpl	(%rdx),%eax
	jne	.Lj138
# [398] (PDWORD(@guid1.D2)^=PDWORD(@guid2.D2)^) and
	leaq	4(%rcx),%rax
	leaq	4(%rdx),%r8
	movl	(%rax),%eax
	cmpl	(%r8),%eax
	jne	.Lj138
	leaq	8(%rcx),%rax
# [399] (PDWORD(@guid1.D4[0])^=PDWORD(@guid2.D4[0])^) and
	movq	%rax,%rcx
	addq	$8,%rdx
	movq	%rdx,%r8
	movl	(%rcx),%ecx
	cmpl	(%r8),%ecx
	jne	.Lj138
# [400] (PDWORD(@guid1.D4[4])^=PDWORD(@guid2.D4[4])^);
	addq	$4,%rax
	addq	$4,%rdx
	movl	(%rax),%eax
	cmpl	(%rdx),%eax
	jne	.Lj138
# Var $result located in register al
# [396] result:=
	movb	$1,%al
	ret
.Lj138:
	xorb	%al,%al
# [402] end;
	ret
.Lc74:

.section .text.n_system_$$_getinterfacebyentry$pointer$pinterfaceentry$formal$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
.Lc75:
.seh_proc SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
# [413] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc77:
.seh_stackalloc 48
.seh_endprologue
# Var $result located in register al
# Var Getter located at rsp+32, size=OS_128
	movq	%rcx,%rbx
# Var Instance located in register rbx
	movq	%rdx,%rsi
# Var IEntry located in register rsi
	movq	%r8,%rdi
# Var obj located in register rdi
# [414] Pointer(Obj) := nil;
	movq	$0,(%rdi)
# Var Instance located in register rbx
# [415] Getter.Data := Instance;
	movq	%rbx,40(%rsp)
# [416] if Assigned(IEntry) and Assigned(Instance) then case IEntry^.IType of
	testq	%rsi,%rsi
	je	.Lj146
	testq	%rbx,%rbx
	je	.Lj146
	movl	48(%rsi),%eax
	testl	%eax,%eax
	je	.Lj150
	subl	$1,%eax
	je	.Lj152
	subl	$1,%eax
	je	.Lj154
	subl	$1,%eax
	je	.Lj151
	subl	$1,%eax
	je	.Lj153
	subl	$1,%eax
	je	.Lj155
	subl	$1,%eax
	je	.Lj151
	jmp	.Lj149
	.balign 4,0x90
.Lj150:
# [418] Pointer(Obj) := pbyte(instance) + IEntry^.IOffset;
	movq	32(%rsi),%rax
	addq	%rbx,%rax
	movq	%rax,(%rdi)
	jmp	.Lj148
	.balign 4,0x90
.Lj151:
# [420] Pointer(obj) := PPointer(pbyte(Instance) + IEntry^.IOffset)^;
	movq	32(%rsi),%rax
	addq	%rbx,%rax
	movq	(%rax),%rax
	movq	%rax,(%rdi)
	jmp	.Lj148
	.balign 4,0x90
.Lj152:
# [423] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
	movq	32(%rsi),%rax
	movq	(%rbx),%rdx
	addq	%rdx,%rax
	movq	(%rax),%rax
	movq	%rax,32(%rsp)
# [424] TInterfaceGetter(Getter)(obj);
	movq	%rdi,%rdx
	movq	40(%rsp),%rcx
	call	*32(%rsp)
	jmp	.Lj148
	.balign 4,0x90
.Lj153:
# [428] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
	movq	32(%rsi),%rdx
	movq	(%rbx),%rax
	addq	%rdx,%rax
	movq	(%rax),%rax
	movq	%rax,32(%rsp)
# [429] TObject(obj) := TClassGetter(Getter)();
	movq	40(%rsp),%rcx
	call	*32(%rsp)
	movq	%rax,(%rdi)
	jmp	.Lj148
	.balign 4,0x90
.Lj154:
# [433] Getter.code := IEntry^.IOffsetAsCodePtr;
	movq	32(%rsi),%rax
	movq	%rax,32(%rsp)
# [434] TInterfaceGetter(Getter)(obj);
	movq	%rdi,%rdx
	movq	40(%rsp),%rcx
	call	*32(%rsp)
	jmp	.Lj148
	.balign 4,0x90
.Lj155:
# [438] Getter.code := IEntry^.IOffsetAsCodePtr;
	movq	32(%rsi),%rax
	movq	%rax,32(%rsp)
# [439] TObject(obj) := TClassGetter(Getter)();
	movq	40(%rsp),%rcx
	call	*32(%rsp)
	movq	%rax,(%rdi)
	.balign 4,0x90
.Lj149:
	.balign 4,0x90
.Lj148:
	.balign 4,0x90
.Lj146:
# [442] result := assigned(pointer(obj));
	cmpq	$0,(%rdi)
# Var $result located in register al
	setneb	%al
# [443] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc76:

.section .text.n_system_$$_getinterface_$tobject$tguid$formal$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN:
.Lc78:
.seh_proc SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
# [454] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-32(%rsp),%rsp
.Lc80:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register r12b
# Var IEntry located in register r13
# Var Instance located in register rax
	movq	%rcx,%rbx
# Var objclass located in register rbx
	movq	%rdx,%rsi
# Var iid located in register rsi
	movq	%r8,%rdi
# Var obj located in register rdi
# [455] if IsGUIDEqual(IObjectInstance, iid) then begin
	movq	%rsi,%rdx
	leaq	TC_$SYSTEM_$$_IOBJECTINSTANCE(%rip),%rcx
	call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	je	.Lj159
# [456] TObject(Obj) := objclass;
	movq	%rbx,(%rdi)
# [457] Result := true;
	movb	$1,%r12b
# [458] Exit;
	jmp	.Lj156
	.balign 4,0x90
.Lj159:
# Var Instance located in register rbx
# Var objclass located in register rbx
	.balign 8,0x90
.Lj160:
# [463] IEntry := Instance.GetInterfaceEntry(iid);
	movq	%rsi,%rdx
	movq	%rbx,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
	movq	%rax,%r13
# [464] result := GetInterfaceByEntry(Instance, IEntry, obj);
	movq	%rdi,%r8
	movq	%r13,%rdx
	movq	%rbx,%rcx
	call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,%r12b
# [466] if (not result) or
	testb	%al,%al
	je	.Lj162
# [467] (IEntry^.IType in [etStandard, etFieldValue,
	movl	48(%r13),%eax
	cmpl	$4,%eax
	jc	.Lj162
	.balign 4,0x90
# [471] Instance := TObject(obj);
	movq	(%rdi),%rbx
# [472] until false;
	jmp	.Lj160
.Lj162:
# [475] if result and (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._AddRef;
	testb	%r12b,%r12b
	je	.Lj168
	movl	48(%r13),%eax
	testl	%eax,%eax
	je	.Lj169
	cmpl	$3,%eax
	je	.Lj169
	jne	.Lj168
.Lj169:
	movq	(%rdi),%rcx
	movq	(%rdi),%rax
	movq	(%rax),%rax
	call	*8(%rax)
	.balign 4,0x90
.Lj168:
.Lj156:
# [476] end;
	movb	%r12b,%al
	nop
	leaq	32(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc79:

.section .text.n_system$_$tobject_$__$$_getinterface$tguid$formal$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN:
.Lc81:
.seh_proc SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
# [478] begin
	leaq	-40(%rsp),%rsp
.Lc83:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register al
# Var $self located in register rcx
# Var iid located in register rdx
# Var obj located in register r8
# Var $self located in register rcx
# [479] Exit(GetInterface_(self, iid, obj));
	call	SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
# Var $result located in register al
# [480] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc82:

.section .text.n_system_$$_getinterfaceweak_$tobject$tguid$formal$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN:
.Lc84:
.seh_proc SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
# [495] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-32(%rsp),%rsp
.Lc86:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register r12b
# Var IEntry located in register r13
# Var Instance located in register rax
	movq	%rcx,%rbx
# Var objclass located in register rbx
	movq	%rdx,%rsi
# Var iid located in register rsi
	movq	%r8,%rdi
# Var obj located in register rdi
# [496] if IsGUIDEqual(IObjectInstance, iid) then begin
	movq	%rsi,%rdx
	leaq	TC_$SYSTEM_$$_IOBJECTINSTANCE(%rip),%rcx
	call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	je	.Lj176
# [497] TObject(Obj) := objclass;
	movq	%rbx,(%rdi)
# [498] Result := true;
	movb	$1,%r12b
# [499] Exit;
	jmp	.Lj173
	.balign 4,0x90
.Lj176:
# Var Instance located in register rbx
# Var objclass located in register rbx
	.balign 8,0x90
.Lj177:
# [504] IEntry := Instance.GetInterfaceEntry(iid);
	movq	%rsi,%rdx
	movq	%rbx,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
	movq	%rax,%r13
# [505] result := GetInterfaceByEntry(Instance, IEntry, obj);
	movq	%rdi,%r8
	movq	%r13,%rdx
	movq	%rbx,%rcx
	call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,%r12b
# [507] if (not result) or
	testb	%al,%al
	je	.Lj179
# [508] (IEntry^.IType in [etStandard, etFieldValue,
	movl	48(%r13),%eax
	cmpl	$4,%eax
	jc	.Lj179
	.balign 4,0x90
# [512] Instance := TObject(obj);
	movq	(%rdi),%rbx
# [513] until false;
	jmp	.Lj177
.Lj179:
# [516] if result and not (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._Release;
	testb	%r12b,%r12b
	je	.Lj185
	movl	48(%r13),%eax
	testl	%eax,%eax
	je	.Lj185
	cmpl	$3,%eax
	je	.Lj185
	je	.Lj185
	movq	(%rdi),%rcx
	movq	(%rdi),%rax
	movq	(%rax),%rax
	call	*16(%rax)
	.balign 4,0x90
.Lj185:
.Lj173:
# [517] end;
	movb	%r12b,%al
	nop
	leaq	32(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc85:

.section .text.n_system$_$tobject_$__$$_getinterfaceweak$tguid$formal$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN:
.Lc87:
.seh_proc SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
# [519] begin
	leaq	-40(%rsp),%rsp
.Lc89:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register al
# Var $self located in register rcx
# Var iid located in register rdx
# Var obj located in register r8
# Var $self located in register rcx
# [520] Exit(GetInterfaceWeak_(self, iid, obj));
	call	SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
# Var $result located in register al
# [521] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc88:

.section .text.n_system_$$_getinterfaceentry_$tobject$tguid$$pinterfaceentry,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY:
.Lc90:
.seh_proc SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
# [537] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	leaq	-40(%rsp),%rsp
.Lc92:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register r12
# Var i located in register edi
# Var intftable located in register r14
# Var ovmt located in register rax
	movq	%rcx,%rbx
# Var objclass located in register rbx
	movq	%rdx,%rsi
# Var iid located in register rsi
# Var ovmt located in register rbx
# Var objclass located in register rbx
# [539] while Assigned(ovmt) and Assigned(ovmt^.vIntftable) do begin
	jmp	.Lj193
	.balign 8,0x90
.Lj192:
# [540] intftable := ovmt^.vIntfTable;
	movq	80(%rbx),%r14
# [541] for i := 0 to intftable^.EntryCount-1 do begin
	movq	(%r14),%rax
	leaq	-1(%rax),%r13
	testl	%r13d,%r13d
	jnge	.Lj196
	movl	$-1,%edi
	.balign 8,0x90
.Lj197:
	addl	$1,%edi
# [542] result := @intftable^.Entries[i];
	movl	%edi,%eax
	imulq	$56,%rax,%rax
	leaq	8(%r14,%rax),%r12
# [543] if assigned(Result^.iid) and IsGUIDEqual(Result^.iid^, iid) then Exit;
	cmpq	$0,16(%r12)
	je	.Lj201
	movq	16(%r12),%rcx
	movq	%rsi,%rdx
	call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	jne	.Lj190
	.balign 4,0x90
.Lj201:
	cmpl	%edi,%r13d
	jnle	.Lj197
	.balign 4,0x90
.Lj196:
# [545] ovmt := ovmt^.vParent;
	cmpq	$0,16(%rbx)
	je	.Lj204
	movq	16(%rbx),%rax
	movq	(%rax),%rax
	jmp	.Lj205
.Lj204:
	xorl	%eax,%eax
.Lj205:
	movq	%rax,%rbx
.Lj193:
	testq	%rbx,%rbx
	je	.Lj194
	cmpq	$0,80(%rbx)
	jne	.Lj192
.Lj194:
# [547] result := nil;
	xorq	%r12,%r12
.Lj190:
# [548] end;
	movq	%r12,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc91:

.section .text.n_system$_$tobject_$__$$_getinterfaceentry$tguid$$pinterfaceentry,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY:
.Lc93:
.seh_proc SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
# [550] begin
	leaq	-40(%rsp),%rsp
.Lc95:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var $self located in register rcx
# Var iid located in register rdx
# Var $self located in register rcx
# [551] Exit(GetInterfaceEntry_(self, iid));
	call	SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
# Var $result located in register rax
# [552] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc94:

.section .text.n_system$_$tinterfacedobject_$__$$_queryinterface$tguid$formal$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT:
.Lc96:
.seh_proc SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT
# [568] begin
	leaq	-40(%rsp),%rsp
.Lc98:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register eax
# Var $self located in register rcx
# Var iid located in register rdx
# Var obj located in register r8
# [569] if GetInterface(iid, obj) then result := S_OK else result := LongInt(E_NOINTERFACE);
	call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	.Lj214
	xorl	%eax,%eax
	jmp	.Lj215
.Lj214:
	movl	$-2147467262,%eax
.Lj215:
# [570] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc97:

.section .text.n_system$_$tinterfacedobject_$__$$__addref$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
.Lc99:
# Var $result located in register eax
# Var $self located in register rcx
# [573] begin
# [575] inc(FRefCount);
	addl	$1,8(%rcx)
# Var $result located in register eax
# [576] result := FRefCount;
	movl	8(%rcx),%eax
# [577] end;
	ret
.Lc100:

.section .text.n_system$_$tinterfacedobject_$__release$$longint_$$_fin$0000022c,"x"
	.balign 16,0x90
SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$0000022C:
.Lc101:
.seh_proc SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$0000022C
# [597] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc103:
.Lc104:
	movq	%rcx,%rbp
.Lc105:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [580] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc102:

.section .text.n_system$_$tinterfacedobject_$__$$__release$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
.Lc106:
# Temps allocated between rbp-536 and rbp+0
.seh_proc SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
	pushq	%rbp
.seh_pushreg %rbp
.Lc108:
.Lc109:
	movq	%rsp,%rbp
.Lc110:
	leaq	-576(%rsp),%rsp
.seh_stackalloc 576
	movq	%rbx,-536(%rbp)
	movq	%rsi,-528(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
# Var $result located in register esi
	movq	%rcx,%rbx
# Var $self located in register rbx
	movq	$0,-8(%rbp)
.Lj226:
	nop
.Lj222:
# [582] dec(FRefCount);
	subl	$1,8(%rbx)
# [583] result := FRefCount;
	movl	8(%rbx),%esi
# [584] if result = 0 then begin
	testl	%esi,%esi
	jne	.Lj228
# [586] inc(FDestroyCount);
	addl	$1,12(%rbx)
# [587] if FDestroyCount = 1 then begin
	cmpl	$1,12(%rbx)
	jne	.Lj230
# [588] if copy(ClassName, 1, 9) = '$Capturer' then begin
	movq	(%rbx),%rcx
	leaq	-520(%rbp),%rdx
	call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
	leaq	-520(%rbp),%rdx
	movl	$9,%r9d
	movl	$1,%r8d
	leaq	-264(%rbp),%rcx
	call	fpc_shortstr_copy
	leaq	-264(%rbp),%rdx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_shortstr_to_ansistr
	movq	-8(%rbp),%rcx
	leaq	.Ld2(%rip),%rdx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj224
	.balign 4,0x90
# [594] self.Destroy;
	movq	%rbx,%rcx
	movl	$1,%edx
	movq	(%rbx),%rax
	call	*96(%rax)
	.balign 4,0x90
.Lj230:
	.balign 4,0x90
.Lj228:
.Lj224:
	nop
.Lj223:
	movq	%rbp,%rcx
	call	SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$0000022C
	movl	%esi,%eax
	movq	-536(%rbp),%rbx
	movq	-528(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj222
	.rva	.Lj223
	.rva	SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$0000022C

.section .text.n_system$_$tinterfacedobject_$__$$__release$$longint,"x"
.seh_endproc
.Lc107:

.section .text.n_system$_$tinterfacedobject_$__$$_destroy,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY
SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY:
.Lc111:
.seh_proc SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY
# [600] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc113:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var $self located in register rbx
	movq	%rdx,%rsi
# Var $vmt located in register rsi
	testq	%rsi,%rsi
	jng	.Lj236
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
	.balign 4,0x90
.Lj236:
# [601] FRefCount := 0;
	movl	$0,8(%rbx)
# [602] FDestroyCount := 0;
	movl	$0,12(%rbx)
# Var $self located in register rbx
# [603] inherited Destroy;
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
# [604] end;
	testq	%rbx,%rbx
	je	.Lj238
	testq	%rsi,%rsi
	je	.Lj238
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*112(%rax)
	.balign 4,0x90
.Lj238:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc112:

.section .text.n_system$_$tinterfacedobject_$__$$_afterconstruction,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION:
.Lc114:
# [607] begin
	movq	%rcx,%rax
# Var $self located in register rax
# [610] dec(FRefCount);
	subl	$1,8(%rax)
# [611] end;
	ret
.Lc115:

.section .text.n_system$_$tinterfacedobject_$__$$_beforedestruction,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION:
.Lc116:
.seh_proc SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
# [614] begin
	leaq	-40(%rsp),%rsp
.Lc118:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var $self located in register rax
# [615] if FRefCount <> 0 then HandleError(204);
	cmpl	$0,8(%rax)
	je	.Lj245
	movl	$204,%ecx
	call	FPC_HANDLEERROR
	.balign 4,0x90
.Lj245:
# [616] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc117:

.section .text.n_system$_$tinterfacedobject_$__$$_newinstance$$tobject,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
.Lc119:
.seh_proc SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
# [619] begin
	leaq	-40(%rsp),%rsp
.Lc121:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var $self located in register rcx
# Var $self located in register rcx
# [620] result := inherited NewInstance;
	call	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
# Var $result located in register rax
# [621] if result <> nil then TInterfacedObject(result).FRefCount := 1;
	testq	%rax,%rax
	je	.Lj249
	movl	$1,8(%rax)
	.balign 4,0x90
.Lj249:
# [622] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc120:

.section .text.n_system$_$tmethod_$__$$_$equal$tmethod$tmethod$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN:
.Lc122:
# Var $result located in register al
# Var aLeft located in register rcx
# Var aRight located in register rdx
# [629] begin
# [630] result := (aLeft.Data = aRight.Data) and (aLeft.Code = aRight.Code);
	movq	8(%rcx),%rax
	cmpq	8(%rdx),%rax
	jne	.Lj253
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	jne	.Lj253
# Var $result located in register al
	movb	$1,%al
	ret
.Lj253:
	xorb	%al,%al
# [631] end;
	ret
.Lc123:

.section .text.n_system$_$tmethod_$__$$_$not_equal$tmethod$tmethod$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN:
.Lc124:
# Var $result located in register al
# Var aLeft located in register rcx
# Var aRight located in register rdx
# [634] begin
# [635] result := (aLeft.Data <> aRight.Data) or (aLeft.Code <> aRight.Code);
	movq	8(%rcx),%rax
	cmpq	8(%rdx),%rax
	jne	.Lj258
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	je	.Lj260
# Var $result located in register al
.Lj258:
	movb	$1,%al
	ret
.Lj260:
	xorb	%al,%al
# [636] end;
	ret
.Lc125:

.section .text.n_system$_$tmethod_$__$$_$greater$tmethod$tmethod$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN:
.Lc126:
# Var $result located in register al
# Var aLeft located in register rcx
# Var aRight located in register rdx
# [639] begin
	movq	8(%rcx),%r8
	movq	8(%rdx),%rax
# [640] result := (PtrUInt(aLeft.Data) > PtrUInt(aRight.Data)) or
	cmpq	%r8,%rax
	jb	.Lj264
# [641] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) > PtrUInt(aRight.Code)));
	cmpq	%r8,%rax
	jne	.Lj266
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	jna	.Lj266
# Var $result located in register al
.Lj264:
	movb	$1,%al
	ret
.Lj266:
	xorb	%al,%al
# [642] end;
	ret
.Lc127:

.section .text.n_system$_$tmethod_$__$$_$greater_or_equal$tmethod$tmethod$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
.Lc128:
# Var $result located in register al
# Var aLeft located in register rcx
# Var aRight located in register rdx
# [645] begin
	movq	8(%rcx),%rax
	movq	8(%rdx),%r8
# [646] result := (aLeft > aRight) or (aLeft = aRight);
	cmpq	%rax,%r8
	jb	.Lj273
	cmpq	%rax,%r8
	jne	.Lj275
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	jna	.Lj275
.Lj273:
	movb	$1,%al
	jmp	.Lj279
.Lj275:
	xorb	%al,%al
.Lj279:
	testb	%al,%al
	jne	.Lj280
	movq	8(%rcx),%rax
	cmpq	8(%rdx),%rax
	jne	.Lj284
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	jne	.Lj284
	movb	$1,%al
	jmp	.Lj286
.Lj284:
	xorb	%al,%al
.Lj286:
	testb	%al,%al
	je	.Lj282
# Var $result located in register al
.Lj280:
	movb	$1,%al
	ret
.Lj282:
	xorb	%al,%al
# [647] end;
	ret
.Lc129:

.section .text.n_system$_$tmethod_$__$$_$lower$tmethod$tmethod$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN:
.Lc130:
# Var $result located in register al
# Var aLeft located in register rcx
# Var aRight located in register rdx
# [650] begin
	movq	8(%rcx),%r8
	movq	8(%rdx),%rax
# [651] Result := (PtrUInt(aLeft.Data) < PtrUInt(aRight.Data)) or
	cmpq	%r8,%rax
	ja	.Lj290
# [652] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) < PtrUInt(aRight.Code)));
	cmpq	%r8,%rax
	jne	.Lj292
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	jnb	.Lj292
# Var $result located in register al
.Lj290:
	movb	$1,%al
	ret
.Lj292:
	xorb	%al,%al
# [653] end;
	ret
.Lc131:

.section .text.n_system$_$tmethod_$__$$_$lower_or_equal$tmethod$tmethod$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
.Lc132:
# Var $result located in register al
# Var aLeft located in register rcx
# Var aRight located in register rdx
# [656] begin
	movq	8(%rcx),%rax
	movq	8(%rdx),%r8
# [657] result := (aLeft < aRight) or (aLeft = aRight);
	cmpq	%rax,%r8
	ja	.Lj299
	cmpq	%rax,%r8
	jne	.Lj301
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	jnb	.Lj301
.Lj299:
	movb	$1,%al
	jmp	.Lj305
.Lj301:
	xorb	%al,%al
.Lj305:
	testb	%al,%al
	jne	.Lj306
	movq	8(%rcx),%rax
	cmpq	8(%rdx),%rax
	jne	.Lj310
	movq	(%rcx),%rax
	cmpq	(%rdx),%rax
	jne	.Lj310
	movb	$1,%al
	jmp	.Lj312
.Lj310:
	xorb	%al,%al
.Lj312:
	testb	%al,%al
	je	.Lj308
# Var $result located in register al
.Lj306:
	movb	$1,%al
	ret
.Lj308:
	xorb	%al,%al
# [658] end;
	ret
.Lc133:

.section .text.n_fpc_intf_assign,"x"
	.balign 16,0x90
.globl	fpc_intf_assign
fpc_intf_assign:
.globl	FPC_INTF_ASSIGN
FPC_INTF_ASSIGN:
.Lc134:
.seh_proc fpc_intf_assign
# [665] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc136:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var d located in register rbx
	movq	%rdx,%rsi
# Var s located in register rsi
# [666] if s <> nil then IUnknown(s)._AddRef;
	testq	%rdx,%rdx
	je	.Lj317
	movq	%rsi,%rcx
	movq	(%rsi),%rax
	call	*8(%rax)
	.balign 4,0x90
.Lj317:
# [667] if d <> nil then IUnknown(d)._Release;
	cmpq	$0,(%rbx)
	je	.Lj319
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	movq	(%rax),%rax
	call	*16(%rax)
	.balign 4,0x90
.Lj319:
# Var s located in register rsi
# [668] d := s;
	movq	%rsi,(%rbx)
# [669] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc135:

.section .text.n_system_$$_fpcclassasintf$pointer$tguid$$iunknown,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN
SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN:
.Lc137:
.seh_proc SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN
# [676] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc139:
.seh_stackalloc 48
.seh_endprologue
# Var tmpi located at rsp+32, size=OS_64
# Var tmpi2 located at rsp+40, size=OS_64
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var s located in register rsi
	movq	%r8,%rdi
# Var iid located in register rdi
# [677] if s = nil then exit(nil);
	testq	%rsi,%rsi
	jne	.Lj323
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_intf_assign
	jmp	.Lj320
	.balign 4,0x90
.Lj323:
# [678] tmpi := nil;
	movq	$0,32(%rsp)
# [679] tmpi2 := nil;
	movq	$0,40(%rsp)
# [680] if not ((TObject(s).GetInterfaceWeak(IUnknown, tmpi2) and (IUnknown(tmpi2).QueryInterface(iid, tmpi) = S_OK)) or TObject(s).GetInterface(iid, tmpi)) then
	leaq	_$SYSTEM$_Ld3(%rip),%rdx
	leaq	40(%rsp),%r8
	movq	%rsi,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	.Lj325
	movq	%rdi,%rdx
	leaq	32(%rsp),%r8
	movq	40(%rsp),%rcx
	movq	40(%rsp),%rax
	movq	(%rax),%rax
	call	*(%rax)
	testl	%eax,%eax
	je	.Lj326
.Lj325:
	movq	%rdi,%rdx
	leaq	32(%rsp),%r8
	movq	%rsi,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	.Lj326
# [681] HandleError(219);
	movl	$219,%ecx
	call	FPC_HANDLEERROR
	.balign 4,0x90
.Lj326:
# [682] result := nil;
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_intf_assign
# [683] pointer(result) := tmpi;
	movq	32(%rsp),%rax
	movq	%rax,(%rbx)
.Lj320:
# [684] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc138:

.section .text.n_fpc_class_as_intf,"x"
	.balign 16,0x90
.globl	fpc_class_as_intf
fpc_class_as_intf:
.Lc140:
# [686] begin
	movq	%rcx,%rax
# Var $result located in register rax
# Var s located in register rdx
# Var iid located in register r8
# [687] end;
	ret
.Lc141:

.section .text.n_system_$$_fpcintfasclass$pointer$tclass$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER:
.Lc142:
.seh_proc SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
# [701] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc144:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rsi
# Var tmpo located at rsp+32, size=OS_64
	movq	%rcx,%rax
# Var s located in register rax
	movq	%rdx,%rbx
# Var aclass located in register rbx
# [702] if s = nil then exit(nil);
	testq	%rax,%rax
	jne	.Lj333
	xorl	%esi,%esi
	jmp	.Lj330
	.balign 4,0x90
.Lj333:
# [703] if not ((IUnknown(s).QueryInterface(IObjectInstance, tmpo) = S_OK) and tmpo.InheritsFrom(aclass)) then
	leaq	32(%rsp),%r8
	leaq	TC_$SYSTEM_$$_IOBJECTINSTANCE(%rip),%rdx
	movq	%rax,%rcx
	movq	(%rax),%rax
	call	*(%rax)
	testl	%eax,%eax
	jne	.Lj335
	movq	32(%rsp),%rax
	movq	(%rax),%rcx
	movq	%rbx,%rdx
	call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	.Lj336
.Lj335:
# [704] HandleError(219);
	movl	$219,%ecx
	call	FPC_HANDLEERROR
	.balign 4,0x90
.Lj336:
# [705] result := tmpo;
	movq	32(%rsp),%rsi
.Lj330:
# [706] end;
	movq	%rsi,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc143:

.section .text.n_fpc_intf_as_class,"x"
	.balign 16,0x90
.globl	fpc_intf_as_class
fpc_intf_as_class:
.globl	FPC_INTF_AS_CLASS
FPC_INTF_AS_CLASS:
.Lc145:
.seh_proc fpc_intf_as_class
# [708] begin
	leaq	-40(%rsp),%rsp
.Lc147:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var s located in register rcx
# Var aclass located in register rdx
# Var aclass located in register rdx
# Var s located in register rcx
# [709] Exit(fpcintfasclass(s, aclass));
	call	SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
# Var $result located in register rax
# [710] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc146:

.section .text.n_fpc_intf_cast,"x"
	.balign 16,0x90
.globl	fpc_intf_cast
fpc_intf_cast:
.globl	FPC_INTF_CAST
FPC_INTF_CAST:
.Lc148:
.seh_proc fpc_intf_cast
# [721] begin
	leaq	-40(%rsp),%rsp
.Lc150:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var $result located in register rax
# Var s located in register rdx
# Var iid located in register r8
# [722] msgdebug('@@todo: fpc_intf_cast');
	leaq	.Ld4(%rip),%rcx
	call	SYSTEM_$$_MSGDEBUG$ANSISTRING
# [723] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc149:

.section .text.n_system_$$_fpcintfdecrref$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCINTFDECRREF$POINTER
SYSTEM_$$_FPCINTFDECRREF$POINTER:
.Lc151:
.seh_proc SYSTEM_$$_FPCINTFDECRREF$POINTER
# [727] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc153:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var i located in register rbx
# [728] if i <> nil then begin
	cmpq	$0,(%rbx)
	je	.Lj344
# [729] IUnknown(i)._Release;
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	movq	(%rax),%rax
	call	*16(%rax)
# [730] i := nil;
	movq	$0,(%rbx)
	.balign 4,0x90
.Lj344:
# [732] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc152:

.section .text.n_fpc_intf_decr_ref,"x"
	.balign 16,0x90
.globl	fpc_intf_decr_ref
fpc_intf_decr_ref:
.globl	FPC_INTF_DECR_REF
FPC_INTF_DECR_REF:
.Lc154:
.seh_proc fpc_intf_decr_ref
# [734] begin
	leaq	-40(%rsp),%rsp
.Lc156:
.seh_stackalloc 40
.seh_endprologue
# Var i located in register rax
# [735] fpcintfdecrref(i);
	call	SYSTEM_$$_FPCINTFDECRREF$POINTER
# [736] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc155:

.section .text.n_fpc_intf_incr_ref,"x"
	.balign 16,0x90
.globl	fpc_intf_incr_ref
fpc_intf_incr_ref:
.globl	FPC_INTF_INCR_REF
FPC_INTF_INCR_REF:
.Lc157:
.seh_proc fpc_intf_incr_ref
# [749] begin
	leaq	-40(%rsp),%rsp
.Lc159:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var i located in register rax
# [750] if i <> nil then IUnknown(i)._AddRef;
	testq	%rcx,%rcx
	je	.Lj350
	movq	%rax,%rcx
	movq	(%rax),%rax
	call	*8(%rax)
	.balign 4,0x90
.Lj350:
# [751] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc158:

.section .text.n_system_$$_filterexception$exception_record$qword$longword$longint$$pointer,"x"
	.balign 16,0x90
SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
.Lc160:
# Temps allocated between rsp+32 and rsp+40
.seh_proc SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
# [exceptions.inc]
# [166] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	leaq	-48(%rsp),%rsp
.Lc162:
.seh_stackalloc 48
.seh_endprologue
# Var $result located in register rax
# Var exclass located in register r14
# Var i located in register esi
# Var filter located in register rax
# Var p located in register rdi
# Var curfilt located in register rbx
# Var rec located in register rcx
	movq	%rdx,%r15
# Var imagebase located in register r15
	movl	%r8d,%ebx
# Var filterRva located in register ebx
	movl	%r9d,%esi
# Var errcode located in register esi
# Var $result located in register rax
# [167] result := nil;
	movq	$0,32(%rsp)
# [169] if rec.ExceptionCode = FPC_EXCEPTION_CODE then
	cmpl	$3762704451,(%rcx)
	jne	.Lj354
# [170] TObject(rec.ExceptionInformation[1]).ClassType
	movq	40(%rcx),%rax
	movq	(%rax),%rcx
	call	SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
	jmp	.Lj355
.Lj354:
# [171] else if ExceptClsProc <> nil then begin
	cmpq	$0,TC_$SYSTEM_$$_EXCEPTCLSPROC(%rip)
	je	.Lj351
# [172] exclass := TClass(TExceptClsProc(ExceptClsProc)(errcode));
	movl	%esi,%ecx
	call	*TC_$SYSTEM_$$_EXCEPTCLSPROC(%rip)
	movq	%rax,%r14
.Lj355:
# [177] filter := pointer(imagebase+filterRva);
	andl	%ebx,%ebx
	leaq	(%rbx,%r15),%r13
# Var filter located in register rax
# Var filter located in register r13
# [178] for i := 0 to PLongint(filter)^-1 do begin
	movl	(%r13),%eax
	subl	$1,%eax
	movl	%eax,%r12d
	testl	%r12d,%r12d
	jnge	.Lj360
	movl	$-1,%esi
	.balign 8,0x90
.Lj361:
	addl	$1,%esi
# [179] curfilt := @PFilterRec(filter+sizeof(LongInt))[i];
	leaq	4(%r13),%rdx
	movslq	%esi,%rax
	leaq	(%rdx,%rax,8),%rbx
# [181] p := pointer(imagebase+curfilt^.RvaHandler);
	movl	4(%rbx),%eax
	leaq	(%rax,%r15),%rdi
# [183] if curfilt^.RvaClass = $FFFFFFFF then exit(p);
	cmpl	$4294967295,(%rbx)
	jne	.Lj365
	movq	%rdi,32(%rsp)
	jmp	.Lj351
	.balign 4,0x90
.Lj365:
# [186] if exclass.InheritsFrom(TClass(imagebase+curfilt^.RvaClass)) then exit(p);
	movl	(%rbx),%eax
	leaq	(%rax,%r15),%rdx
	movq	%r14,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	je	.Lj367
	movq	%rdi,32(%rsp)
	jmp	.Lj351
	.balign 4,0x90
.Lj367:
	cmpl	%esi,%r12d
	jnle	.Lj361
	.balign 4,0x90
.Lj360:
.Lj351:
# [192] end;
	movq	32(%rsp),%rax
	nop
	leaq	48(%rsp),%rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc161:

.section .text.n_system_$$_runerrorcode$exception_record$$longint,"x"
	.balign 16,0x90
SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT:
.Lc163:
# Var $result located in register eax
# Var rec located in register rcx
# [195] begin
# [197] case rec.ExceptionCode of
	movl	(%rcx),%eax
	cmpl	$3221225477,%eax
	jb	.Lj371
	subl	$-1073741819,%eax
	je	.Lj381
	subl	$24,%eax
	je	.Lj380
	subl	$111,%eax
	je	.Lj374
	subl	$1,%eax
	je	.Lj377
	subl	$1,%eax
	je	.Lj373
	subl	$1,%eax
	jb	.Lj371
	subl	$1,%eax
	jbe	.Lj378
	subl	$1,%eax
	je	.Lj376
	subl	$1,%eax
	je	.Lj378
	subl	$1,%eax
	je	.Lj377
	subl	$1,%eax
	je	.Lj372
	subl	$1,%eax
	je	.Lj379
	subl	$1,%eax
	je	.Lj383
	subl	$103,%eax
	je	.Lj375
	subl	$61,%eax
	je	.Lj382
	subl	$378,%eax
	jb	.Lj371
	subl	$1,%eax
	jbe	.Lj384
	jmp	.Lj371
	.balign 4,0x90
.Lj372:
# [198] STATUS_INTEGER_DIVIDE_BY_ZERO:        result := 200;  // reDivByZero
	movl	$200,%eax
	ret
	.balign 4,0x90
.Lj373:
# [199] STATUS_FLOAT_DIVIDE_BY_ZERO:          result := -208; // !!reZeroDivide
	movl	$-208,%eax
	ret
	.balign 4,0x90
.Lj374:
# [200] STATUS_ARRAY_BOUNDS_EXCEEDED:         result := 201;  // reRangeError
	movl	$201,%eax
	ret
	.balign 4,0x90
.Lj375:
# [201] STATUS_STACK_OVERFLOW:                result := 202;  // reStackOverflow
	movl	$202,%eax
	ret
	.balign 4,0x90
.Lj376:
# [202] STATUS_FLOAT_OVERFLOW:                result := -205; // reOverflow
	movl	$-205,%eax
	ret
	.balign 4,0x90
.Lj377:
# [204] STATUS_FLOAT_UNDERFLOW:               result := -206; // reUnderflow
	movl	$-206,%eax
	ret
	.balign 4,0x90
.Lj378:
# [207] STATUS_FLOAT_STACK_CHECK:             result := -207; // reInvalidOp
	movl	$-207,%eax
	ret
	.balign 4,0x90
.Lj379:
# [208] STATUS_INTEGER_OVERFLOW:              result := 215;  // reIntOverflow
	movl	$215,%eax
	ret
	.balign 4,0x90
.Lj380:
# [209] STATUS_ILLEGAL_INSTRUCTION:           result := -216;
	movl	$-216,%eax
	ret
	.balign 4,0x90
.Lj381:
# [210] STATUS_ACCESS_VIOLATION:              result := 216;  // reAccessViolation
	movl	$216,%eax
	ret
	.balign 4,0x90
.Lj382:
# [211] STATUS_CONTROL_C_EXIT:                result := 217;  // reControlBreak
	movl	$217,%eax
	ret
	.balign 4,0x90
.Lj383:
# [212] STATUS_PRIVILEGED_INSTRUCTION:        result := 218;  // rePrivilegedInstruction
	movl	$218,%eax
	ret
	.balign 4,0x90
.Lj384:
# [214] STATUS_FLOAT_MULTIPLE_FAULTS:         result := -255; // indicate FPU reset
	movl	$-255,%eax
	ret
	.balign 4,0x90
.Lj371:
# [216] result := 255; // reExternalException
	movl	$255,%eax
	.balign 4,0x90
# [218] end;
	ret
.Lc164:

.section .text.n_system_$$_translatemxcsr$longword$longint,"x"
	.balign 16,0x90
SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT:
.Lc165:
# [221] begin
	movl	%ecx,%eax
# Var mxcsr located in register eax
# Var code located in register rdx
# [224] if (mxcsr and 1) <> 0 then code := -207
	andl	$1,%ecx
	je	.Lj388
	movl	$-207,(%rdx)
	ret
.Lj388:
# [226] else if (mxcsr and 2) <> 0 then code := -206
	movl	%eax,%ecx
	andl	$2,%ecx
	je	.Lj391
	movl	$-206,(%rdx)
	ret
.Lj391:
# [228] else if (mxcsr and 4) <> 0 then code := -208
	movl	%eax,%ecx
	andl	$4,%ecx
	je	.Lj394
	movl	$-208,(%rdx)
	ret
.Lj394:
# [230] else if (mxcsr and 8) <> 0 then code := -205
	movl	%eax,%ecx
	andl	$8,%ecx
	je	.Lj397
	movl	$-205,(%rdx)
	ret
.Lj397:
# [232] else if (mxcsr and 16) <> 0 then code := -206
	movl	%eax,%ecx
	andl	$16,%ecx
	je	.Lj400
	movl	$-206,(%rdx)
	ret
.Lj400:
# [234] else if (mxcsr and 32) <> 0 then code := -207
	andl	$32,%eax
	je	.Lj403
	movl	$-207,(%rdx)
	ret
.Lj403:
# [236] code := -255;
	movl	$-255,(%rdx)
# [237] end;
	ret
.Lc166:

.section .text.n_system_$$_jumptohandlesignal,"x"
	.balign 16,0x90
SYSTEM_$$_JUMPTOHANDLESIGNAL:
.Lc167:
.seh_proc SYSTEM_$$_JUMPTOHANDLESIGNAL
# [exceptions64.inc]
# [185] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc169:
.seh_stackalloc 32
.seh_endprologue
# [186] writeln('JumpToHandleSignal');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld5(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [237] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc168:

.section .text.n_system_$$_signals_exception_handler$pexception_record$pexception_frame$pcontext$pointer$$longint,"x"
	.balign 16,0x90
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
.Lc170:
.seh_proc SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
# [253] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc172:
.seh_stackalloc 56
.seh_endprologue
# Var exrec located at rsp+32, size=OS_64
# Var excontext located at rsp+40, size=OS_64
# Var $result located in register eax
# Var frame located in register eax
# Var ret located in register eax
	movq	%rcx,32(%rsp)
# Var exframe located in register rdx
	movq	%r8,40(%rsp)
# Var dispatch located in register r9
# [254] writeln('signals_exception_handler');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld6(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [256] frame := excontext^.rbp;
	movq	40(%rsp),%rax
# Var frame located in register esi
	movl	160(%rax),%esi
# Var ret located in register eax
# [258] ret := 1;
	movl	$1,%eax
# [260] writeln('exrec^.ExceptionCode = ', exrec^.ExceptionCode);
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld7(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	32(%rsp),%rax
	movl	(%rax),%r8d
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_uint
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [266] ret := CallSignal(SIGSEGV, frame, false);
	movl	%esi,%r8d
# Var frame located in register r8d
	xorb	%r9b,%r9b
	movl	$291,%edx
	movq	%rsp,%rcx
	call	SYSTEM$_$SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B
# Var ret located in register eax
# Var $result located in register eax
# Var ret located in register eax
# [269] end;
	nop
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc171:

.section .text.n_system$_$signals_exception_handler$pexception_record$pexception_frame$pcontext$pointer$$longint_$$_callsignal$crcc6efd60b,"x"
	.balign 16,0x90
SYSTEM$_$SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B:
.Lc173:
.seh_proc SYSTEM$_$SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B
# [241] begin
	leaq	-8(%rsp),%rsp
.Lc175:
.seh_stackalloc 8
.seh_endprologue
# Var $parentfp located at rsp+0, size=OS_64
# Var $result located in register eax
	movq	%rcx,(%rsp)
# Var sigtype located in register edx
# Var frame located in register r8d
# Var must_reset_fpu located in register r9b
# [242] if ex_level >= ex_max_level then exit;
	cmpb	$16,TC_$SYSTEM_$$_EX_LEVEL(%rip)
	jae	.Lj409
	.balign 4,0x90
# [243] ex_rip[ex_level] := excontext^.Rip;
	movq	(%rsp),%rax
	movq	40(%rax),%rax
	movzbl	TC_$SYSTEM_$$_EX_LEVEL(%rip),%r8d
	leaq	U_$SYSTEM_$$_EX_RIP(%rip),%rcx
	movq	248(%rax),%rax
	movq	%rax,(%rcx,%r8,8)
# [244] except_signal[ex_level] := sigtype;
	movzbl	TC_$SYSTEM_$$_EX_LEVEL(%rip),%ecx
	movslq	%edx,%rdx
	leaq	U_$SYSTEM_$$_EXCEPT_SIGNAL(%rip),%rax
	movq	%rdx,(%rax,%rcx,8)
# [245] reset_fpu[ex_level] := must_reset_fpu;
	movzbl	TC_$SYSTEM_$$_EX_LEVEL(%rip),%edx
# Var must_reset_fpu located in register r9b
	leaq	U_$SYSTEM_$$_RESET_FPU(%rip),%rax
	movb	%r9b,(%rax,%rdx,1)
# [246] inc(ex_level);
	addb	$1,TC_$SYSTEM_$$_EX_LEVEL(%rip)
# [247] excontext^.rip := ptruint(@JumpToHandleSignal);
	movq	(%rsp),%rax
	movq	40(%rax),%rax
	leaq	SYSTEM_$$_JUMPTOHANDLESIGNAL(%rip),%rdx
	movq	%rdx,248(%rax)
# [248] exrec^.ExceptionCode := 0;
	movq	(%rsp),%rax
	movq	32(%rax),%rax
	movl	$0,(%rax)
# [249] result := 0;
	xorl	%eax,%eax
.Lj409:
# [250] end;
	leaq	8(%rsp),%rsp
	ret
.seh_endproc
.Lc174:

.section .text.n_system_$$_syswin_x64_exception_handler$pexception_pointers$$longint,"x"
	.balign 16,0x90
SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT:
.Lc176:
.seh_proc SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT
# [272] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc178:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register eax
	movq	%rcx,%rbx
# Var ex located in register rbx
# [273] writeln('syswin_x64_exception_handler');
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$SYSTEM$_Ld8(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rsi,%rcx
	call	fpc_writeln_end
# [275] result := signals_exception_handler(@ex^.ExceptionRecord, nil, @ex^.ContextRecord, nil);
	movq	%rbx,%rcx
# Var ex located in register rcx
	leaq	8(%rcx),%r8
# Var ex located in register rcx
	xorq	%r9,%r9
	xorl	%edx,%edx
	call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
	movl	%eax,%ebx
# Var $result located in register ebx
# [277] wait_for_enter;
	call	SYSTEM_$$_WAIT_FOR_ENTER
# [278] end;
	movl	%ebx,%eax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc177:

.section .text.n_system_$$_install_exception_handlers,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS:
.Lc179:
.seh_proc SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
# [284] begin
	leaq	-40(%rsp),%rsp
.Lc181:
.seh_stackalloc 40
.seh_endprologue
# [287] vectored_exception_handler := AddVectoredExceptionHandler(1{1 = higher priotity}, @syswin_x64_exception_handler);
	leaq	SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT(%rip),%rdx
	movl	$1,%ecx
	call	_$dll$kernel32$AddVectoredExceptionHandler
	movq	%rax,TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER(%rip)
# [288] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc180:

.section .text.n_system_$$_remove_exception_handlers,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS
SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS:
.Lc182:
.seh_proc SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS
# [291] begin
	leaq	-40(%rsp),%rsp
.Lc184:
.seh_stackalloc 40
.seh_endprologue
# [293] if vectored_exception_handler <> nil then
	cmpq	$0,TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER(%rip)
	je	.Lj420
# [294] if RemoveVectoredExceptionHandler(vectored_exception_handler) then
	movq	TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER(%rip),%rcx
	call	_$dll$kernel32$RemoveVectoredExceptionHandler
	testl	%eax,%eax
	je	.Lj422
# [295] vectored_exception_handler := nil;
	movq	$0,TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER(%rip)
	.balign 4,0x90
.Lj422:
	.balign 4,0x90
.Lj420:
# [296] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc183:

.section .text.n_system_$$_runerrorcodeseh$exception_record$tcontext$$longint,"x"
	.balign 16,0x90
SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT:
.Lc185:
.seh_proc SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
# [300] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc187:
.seh_stackalloc 48
.seh_endprologue
# Var $result located at rsp+32, size=OS_S32
	movq	%rcx,%rax
# Var rec located in register rax
	movq	%rdx,%rbx
# Var context located in register rbx
# [301] result := RunErrorCode(rec);
	movq	%rax,%rcx
	call	SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT
	movl	%eax,32(%rsp)
# [302] if (result = -255) then TranslateMxcsr(context.MxCsr, result);
	cmpl	$-255,%eax
	jne	.Lj426
	movl	52(%rbx),%ecx
	leaq	32(%rsp),%rdx
	call	SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT
	.balign 4,0x90
.Lj426:
# [303] end;
	movl	32(%rsp),%eax
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc186:

.section .text.n_system_$$_sysresetfpu,"x"
	.balign 16,0x90
SYSTEM_$$_SYSRESETFPU:
.Lc188:
.seh_proc SYSTEM_$$_SYSRESETFPU
# [309] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc190:
.Lc191:
	movq	%rsp,%rbp
.Lc192:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var localmxcsr located at rbp-4, size=OS_32
# Var localfpucw located at rbp-8, size=OS_16
# [310] localfpucw := Default8087CW;
	movw	TC_$SYSTEM_$$_DEFAULT8087CW(%rip),%ax
	movw	%ax,-8(%rbp)
# [311] localmxcsr := DefaultMXCSR;
	movl	TC_$SYSTEM_$$_DEFAULTMXCSR(%rip),%eax
	movl	%eax,-4(%rbp)
#  CPU ATHLON64
# [313] fninit
	fninit
# [314] fwait
	fwait
# [315] fldcw   localfpucw
	fldcw	-8(%rbp)
# [316] ldmxcsr localmxcsr
	ldmxcsr	-4(%rbp)
#  CPU ATHLON64
# [318] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc189:

.section .text.n_system_$$_getbacktrace$tcontext$pointer$ppointer$$longint,"x"
	.balign 16,0x90
SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT:
.Lc193:
# Temps allocated between rsp+304 and rsp+1440
.seh_proc SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT
# [329] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-1440(%rsp),%rsp
.Lc195:
.seh_stackalloc 1440
.seh_endprologue
# Var $result located in register eax
# Var UnwindHistory located at rsp+64, size=OS_NO
# Var RuntimeFunction located in register rdi
# Var HandlerData located at rsp+280, size=OS_64
# Var EstablisherFrame located at rsp+288, size=OS_64
# Var ImageBase located at rsp+296, size=OS_64
# Var FrameCount located in register eax
# Var FrameBufSize located in register eax
	movq	%rcx,%rsi
# Var Context located in register rsi
	movq	%rdx,%rbx
# Var StartingFrame located in register rbx
	movq	%r8,%r12
# Var Frames located in register r12
	leaq	304(%rsp),%rdi
	movl	$142,%ecx
	rep
	movsq
# [330] FillChar(UnwindHistory, sizeof(UNWIND_HISTORY_TABLE), 0);
	leaq	64(%rsp),%rcx
	xorl	%r8d,%r8d
	movl	$216,%edx
	call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
# [331] UnwindHistory.Unwind := 1;
	movb	$1,70(%rsp)
# Var FrameCount located in register r13d
# [333] FrameCount := 0;
	xorl	%r13d,%r13d
# Var FrameBufSize located in register esi
# [334] FrameBufSize := 0;
	xorl	%esi,%esi
# [335] Frames := nil;
	movq	$0,(%r12)
	.balign 8,0x90
.Lj431:
# [337] RuntimeFunction := RtlLookupFunctionEntry(context.Rip, ImageBase, @UnwindHistory);
	leaq	64(%rsp),%r8
	movq	552(%rsp),%rcx
	leaq	296(%rsp),%rdx
	call	_$dll$kernel32$RtlLookupFunctionEntry
	movq	%rax,%rdi
# [339] if Assigned(RuntimeFunction) then RtlVirtualUnwind(UNW_FLAG_NHANDLER, ImageBase, context.Rip,
	testq	%rax,%rax
	je	.Lj435
	movq	$0,56(%rsp)
	leaq	304(%rsp),%rax
	movq	%rax,32(%rsp)
# [340] RuntimeFunction, Context, @HandlerData, @EstablisherFrame, nil)
	leaq	288(%rsp),%rax
	movq	%rax,48(%rsp)
	leaq	280(%rsp),%rax
	movq	%rax,40(%rsp)
	movq	552(%rsp),%r8
	movq	%rdi,%r9
	movq	296(%rsp),%rdx
	xorl	%ecx,%ecx
	call	_$dll$kernel32$RtlVirtualUnwind
	jmp	.Lj436
.Lj435:
# [342] Context.Rip := PQWord(Context.Rsp)^;
	movq	456(%rsp),%rax
	movq	(%rax),%rax
	movq	%rax,552(%rsp)
# [343] Inc(Context.Rsp, sizeof(Pointer));
	addq	$8,456(%rsp)
.Lj436:
# [346] if (context.Rip = 0) or (FrameCount >= RaiseMaxFrameCount) then break;
	cmpq	$0,552(%rsp)
	je	.Lj433
	cmpl	TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT(%rip),%r13d
	jge	.Lj433
	.balign 4,0x90
# [348] if (Pointer(context.Rbp) > StartingFrame) or (FrameCount > 0) then begin
	cmpq	464(%rsp),%rbx
	jb	.Lj440
	testl	%r13d,%r13d
	jng	.Lj431
.Lj440:
# [349] if (FrameCount >= FrameBufSize) then begin
	cmpl	%r13d,%esi
	jnle	.Lj444
# [350] Inc(FrameBufSize, 16);
	addl	$16,%esi
# [351] ReallocMem(Frames, FrameBufSize * sizeof(Pointer));
	movslq	%esi,%rdx
	shlq	$3,%rdx
	movq	%r12,%rcx
	call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
	.balign 4,0x90
.Lj444:
# [353] Frames[FrameCount] := Pointer(context.Rip);
	movq	(%r12),%rdx
	movslq	%r13d,%rax
	movq	552(%rsp),%rcx
	movq	%rcx,(%rdx,%rax,8)
# [354] Inc(FrameCount);
	addl	$1,%r13d
	.balign 4,0x90
# [356] until false;
	jmp	.Lj431
.Lj433:
# Var $result located in register eax
# [357] Result := FrameCount;
	movl	%r13d,%eax
# Var FrameCount located in register eax
# [358] end;
	nop
	leaq	1440(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc194:

.section .text.n_system_$$_pushexception$exception_record$tcontext$tobject$boolean$$boolean,"x"
	.balign 16,0x90
SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
.Lc196:
# Temps allocated between rsp+40 and rsp+48
.seh_proc SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
# [367] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	leaq	-48(%rsp),%rsp
.Lc198:
.seh_stackalloc 48
.seh_endprologue
# Var $result located in register al
# Var adr located in register rax
# Var exc located in register rax
# Var Frames located at rsp+32, size=OS_64
# Var FrameCount located in register eax
# Var code located in register ebx
	movq	%rcx,%rsi
# Var rec located in register rsi
	movq	%rdx,%r12
# Var context located in register r12
	movq	%r8,%r13
# Var obj located in register r13
	movb	%r9b,%dil
# Var AcceptNull located in register dil
# Var adr located in register r14
# [368] Adr := Pointer(rec.ExceptionInformation[0]);
	movq	32(%rsi),%r14
# [369] Obj := TObject(rec.ExceptionInformation[1]);
	movq	40(%rsi),%rax
	movq	%rax,(%r13)
# Var FrameCount located in register r15d
# [370] Framecount := longint(PtrUInt(rec.ExceptionInformation[2]));
	movl	48(%rsi),%r15d
# [371] Frames := Pointer(rec.ExceptionInformation[3]);
	movq	56(%rsi),%rax
	movq	%rax,32(%rsp)
# [373] if rec.ExceptionCode <> FPC_EXCEPTION_CODE then begin
	cmpl	$3762704451,(%rsi)
	je	.Lj448
# [374] Obj := nil;
	movq	$0,(%r13)
# [375] Result := false;
	movb	$0,40(%rsp)
# [376] code := RunErrorCodeSEH(rec, context);
	movq	%r12,%rdx
	movq	%rsi,%rcx
	call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
	movl	%eax,%ebx
# [377] if Assigned(ExceptObjProc) then Obj := TObject(TExceptObjProc(ExceptObjProc)(abs(code), rec));
	cmpq	$0,TC_$SYSTEM_$$_EXCEPTOBJPROC(%rip)
	je	.Lj450
	movl	%ebx,%eax
	movl	%ebx,%ecx
	negl	%eax
	cmovnsl	%eax,%ecx
	movq	%rsi,%rdx
	call	*TC_$SYSTEM_$$_EXCEPTOBJPROC(%rip)
	movq	%rax,(%r13)
	.balign 4,0x90
.Lj450:
# [378] if (Obj = nil) and (not AcceptNull) then Exit;
	cmpq	$0,(%r13)
	jne	.Lj452
	testb	%dil,%dil
	je	.Lj445
	.balign 4,0x90
.Lj452:
# [379] adr := rec.ExceptionAddress;
	movq	16(%rsi),%r14
# [380] FrameCount := GetBacktrace(context, nil, Frames);
	movq	%r12,%rcx
	leaq	32(%rsp),%r8
	xorl	%edx,%edx
	call	SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT
	movl	%eax,%r15d
# [381] if code < 0 then SysResetFPU;
	testl	%ebx,%ebx
	jnl	.Lj455
	call	SYSTEM_$$_SYSRESETFPU
	.balign 4,0x90
.Lj455:
	.balign 4,0x90
.Lj448:
# [384] New(exc);
	movl	$40,%ecx
	call	fpc_getmem
# Var exc located in register rax
# Var exc located in register rax
# [385] exc^.FObject := Obj;
	movq	(%r13),%rdx
	movq	%rdx,(%rax)
# Var exc located in register rax
# [386] exc^.Addr := adr;
	movq	%r14,8(%rax)
# Var adr located in register rdx
# Var exc located in register rax
# [387] exc^.Frames := Frames;
	movq	32(%rsp),%rdx
	movq	%rdx,32(%rax)
# Var exc located in register rax
# [388] exc^.FrameCount := FrameCount;
	movl	%r15d,28(%rax)
# Var FrameCount located in register edx
# Var exc located in register rax
# [389] exc^.Refcount := 0;
	movl	$0,24(%rax)
# Var exc located in register rax
# [390] exc^.Next := ExceptObjectStack;
	movq	U_$SYSTEM_$$_EXCEPTOBJECTSTACK(%rip),%rdx
	movq	%rdx,16(%rax)
# Var exc located in register rax
# [391] ExceptObjectStack := exc;
	movq	%rax,U_$SYSTEM_$$_EXCEPTOBJECTSTACK(%rip)
# [392] Result := true;
	movb	$1,40(%rsp)
.Lj445:
# [393] end;
	movb	40(%rsp),%al
	nop
	leaq	48(%rsp),%rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc197:

.section .text.n_fpc_popobjectstack,"x"
	.balign 16,0x90
.globl	fpc_popobjectstack
fpc_popobjectstack:
.globl	FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
.Lc199:
.seh_proc fpc_popobjectstack
# [399] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc201:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rsi
# Var hp located in register rax
# Var hp located in register rbx
# [400] hp := ExceptObjectStack;
	movq	U_$SYSTEM_$$_EXCEPTOBJECTSTACK(%rip),%rbx
# [401] if hp = nil then
	testq	%rbx,%rbx
	jne	.Lj459
# [402] halt(1)
	movl	$1,%ecx
	call	SYSTEM_$$_HALT$LONGINT
	jmp	.Lj460
.Lj459:
# [404] if hp^.refcount = 0 then result := hp^.FObject else result := nil;
	cmpl	$0,24(%rbx)
	jne	.Lj462
	movq	(%rbx),%rsi
	jmp	.Lj463
.Lj462:
	xorl	%esi,%esi
.Lj463:
# [405] ExceptObjectStack := hp^.next;
	movq	16(%rbx),%rax
	movq	%rax,U_$SYSTEM_$$_EXCEPTOBJECTSTACK(%rip)
# [406] if assigned(hp^.frames) then freemem(hp^.frames);
	cmpq	$0,32(%rbx)
	je	.Lj465
	movq	32(%rbx),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
	.balign 4,0x90
.Lj465:
# [407] dispose(hp);
	movq	%rbx,%rcx
	call	fpc_freemem
# [408] erroraddr := nil;
	movq	$0,TC_$SYSTEM_$$_ERRORADDR(%rip)
.Lj460:
# [410] end;
	movq	%rsi,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc200:

.section .text.n_system_$$___fpc_specific_handler$crc71b92073,"x"
	.balign 16,0x90
.globl	SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073:
.globl	__FPC_specific_handler
__FPC_specific_handler:
.Lc202:
# Temps allocated between rsp+56 and rsp+72
.seh_proc SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
# [427] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	leaq	-80(%rsp),%rsp
.Lc204:
.seh_stackalloc 80
.seh_endprologue
# Var $result located in register eax
# Var TargetRva located in register ebx
# Var ControlRva located in register eax
# Var scope located in register rdi
# Var scopeIdx located in register eax
# Var TargetAddr located in register rbx
# Var obj located at rsp+48, size=OS_64
	movq	%rcx,64(%rsp)
# Var rec located in register rax
	movq	%rdx,%rsi
# Var frame located in register rsi
	movq	%r8,56(%rsp)
# Var context located in register rax
	movq	%r9,%r15
# Var dispatch located in register r15
# [428] writeln('__FPC_specific_handler');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld9(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# Var $result located in register r14d
# [429] result := ExceptionContinueSearch;
	movl	$1,%r14d
	movq	%r15,%rax
# [430] ControlRva := dispatch.ControlPc - dispatch.ImageBase;
	movq	(%rax),%rdx
	movq	8(%rax),%rax
	subq	%rax,%rdx
# Var ControlRva located in register r13d
	movl	%edx,%r13d
# Var scopeIdx located in register r12d
# [431] ScopeIdx := dispatch.ScopeIndex;
	movl	72(%r15),%r12d
# [432] if (rec.ExceptionFlags and EXCEPTION_UNWIND) = 0 then begin
	movq	64(%rsp),%rdx
	movl	4(%rdx),%eax
	andl	$6,%eax
	jne	.Lj469
# [433] while ScopeIdx < PDWord(dispatch.HandlerData)^ do begin
	jmp	.Lj471
	.balign 8,0x90
.Lj470:
# [434] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
	movq	56(%r15),%rax
	leaq	4(%rax),%rdx
	movl	%r12d,%eax
	shlq	$4,%rax
	leaq	(%rdx,%rax),%rdi
# [437] if (ControlRva >= scope^.RvaEnd) and (ControlRva < scope^.RvaHandler) and ((scope^.Typ = SCOPE_CATCHALL) or (scope^.Typ > SCOPE_IMPLICIT)) then
	cmpl	8(%rdi),%r13d
	jnae	.Lj474
	cmpl	12(%rdi),%r13d
	jnb	.Lj474
	movl	(%rdi),%eax
	cmpl	$1,%eax
	je	.Lj476
	cmpl	$2,%eax
	jna	.Lj474
.Lj476:
# [438] internal_popobjectstack.Free
	call	FPC_POPOBJECTSTACK
	movq	%rax,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_FREE
	jmp	.Lj480
.Lj474:
# [439] else if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and (scope^.Typ <> SCOPE_FINALLY) then begin
	cmpl	4(%rdi),%r13d
	jnae	.Lj482
	cmpl	8(%rdi),%r13d
	jnb	.Lj482
	cmpl	$0,(%rdi)
	je	.Lj482
# [440] if scope^.Typ > SCOPE_IMPLICIT then begin
	cmpl	$2,(%rdi)
	jna	.Lj486
# [441] TargetAddr := FilterException(rec, dispatch.ImageBase, scope^.Typ, abs(RunErrorCodeSEH(rec, context)));
	movq	56(%rsp),%rdx
	movq	64(%rsp),%rcx
	call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
	movl	%eax,%edx
	negl	%edx
	cmovnsl	%edx,%eax
	movl	(%rdi),%r8d
	movq	8(%r15),%rdx
	movq	64(%rsp),%rcx
	movl	%eax,%r9d
	call	SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
	movq	%rax,%rbx
# [442] if TargetAddr = nil then begin
	testq	%rax,%rax
	jne	.Lj489
# [443] inc(ScopeIdx);
	addl	$1,%r12d
# [444] continue;
	jmp	.Lj471
	.balign 4,0x90
	jmp	.Lj489
.Lj486:
# [447] TargetAddr := Pointer(scope^.RvaEnd + dispatch.ImageBase);
	movl	8(%rdi),%eax
	addq	8(%r15),%rax
	movq	%rax,%rbx
.Lj489:
# [449] if not PushException(rec, context, obj, Scope^.Typ = SCOPE_IMPLICIT) then exit;
	cmpl	$2,(%rdi)
	seteb	%r9b
	movq	56(%rsp),%rdx
	movq	64(%rsp),%rcx
	leaq	48(%rsp),%r8
	call	SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	je	.Lj466
	.balign 4,0x90
# [453] RtlUnwindEx(@frame, TargetAddr, @rec, obj, dispatch.ContextRecord, dispatch.HistoryTable);
	movq	64(%r15),%rax
	movq	%rax,40(%rsp)
	movq	40(%r15),%rax
	movq	%rax,32(%rsp)
	movq	64(%rsp),%r8
	movq	%rsi,%rcx
	movq	48(%rsp),%r9
	movq	%rbx,%rdx
	call	_$dll$kernel32$RtlUnwindEx
	.balign 4,0x90
.Lj482:
.Lj480:
# [455] inc(ScopeIdx);
	addl	$1,%r12d
.Lj471:
	movq	56(%r15),%rax
	cmpl	(%rax),%r12d
	jb	.Lj470
	jmp	.Lj492
.Lj469:
	movq	%r15,%rax
# [458] TargetRva := dispatch.TargetIp - dispatch.ImageBase;
	movq	32(%rax),%rdx
	movq	8(%rax),%rax
	subq	%rax,%rdx
	movl	%edx,%ebx
# [460] while ScopeIdx < PDword(dispatch.HandlerData)^ do begin
	jmp	.Lj494
	.balign 8,0x90
.Lj493:
# [461] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
	movq	56(%r15),%rax
	leaq	4(%rax),%rdx
	movl	%r12d,%eax
	shlq	$4,%rax
	leaq	(%rdx,%rax),%rdi
# [462] if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and ((scope^.Typ = SCOPE_FINALLY) or (scope^.Typ = SCOPE_IMPLICIT)) then begin
	cmpl	4(%rdi),%r13d
	jnae	.Lj497
	cmpl	8(%rdi),%r13d
	jnb	.Lj497
	movl	(%rdi),%eax
	testl	%eax,%eax
	je	.Lj499
	cmpl	$2,%eax
	jne	.Lj497
.Lj499:
# [463] if (TargetRva >= scope^.RvaStart) and (TargetRva < scope^.RvaEnd) and ((rec.ExceptionFlags and EXCEPTION_TARGET_UNWIND) <> 0) then exit;
	cmpl	4(%rdi),%ebx
	jnae	.Lj504
	cmpl	8(%rdi),%ebx
	jnb	.Lj504
	movq	64(%rsp),%rdx
	movl	4(%rdx),%eax
	andl	$32,%eax
	jne	.Lj466
	.balign 4,0x90
.Lj504:
# [465] dispatch.ScopeIndex := ScopeIdx + 1;
	leal	1(%r12d),%eax
	movl	%eax,72(%r15)
# [467] TUnwindProc(dispatch.ImageBase + scope^.RvaHandler)(context.Rbp);
	movq	56(%rsp),%rax
	movq	160(%rax),%rcx
	movl	12(%rdi),%eax
	addq	8(%r15),%rax
	call	*%rax
	.balign 4,0x90
.Lj497:
# [469] inc(ScopeIdx);
	addl	$1,%r12d
.Lj494:
	movq	56(%r15),%rax
	cmpl	(%rax),%r12d
	jb	.Lj493
.Lj492:
.Lj466:
# [472] end;
	movl	%r14d,%eax
	nop
	leaq	80(%rsp),%rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc203:

.section .text.n_fpc_doneexception,"x"
	.balign 16,0x90
.globl	fpc_doneexception
fpc_doneexception:
.globl	FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
.Lc205:
.seh_proc fpc_doneexception
# [476] begin
	leaq	-40(%rsp),%rsp
.Lc207:
.seh_stackalloc 40
.seh_endprologue
# [477] internal_popobjectstack.Free;
	call	FPC_POPOBJECTSTACK
	movq	%rax,%rcx
	call	SYSTEM$_$TOBJECT_$__$$_FREE
# [478] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc206:

.section .text.n_fpc_reraise,"x"
	.balign 16,0x90
.globl	fpc_reraise
fpc_reraise:
.globl	FPC_RERAISE
FPC_RERAISE:
.Lc208:
# [481] begin
# [482] end;
	ret
.Lc209:

.section .text.n_fpc_raise_nested,"x"
	.balign 16,0x90
.globl	fpc_raise_nested
fpc_raise_nested:
.globl	FPC_RAISE_NESTED
FPC_RAISE_NESTED:
.Lc210:
# [485] begin
# [486] end;
	ret
.Lc211:

.section .text.n_fpc_raiseexception,"x"
	.balign 16,0x90
.globl	fpc_raiseexception
fpc_raiseexception:
.globl	FPC_RAISEEXCEPTION
FPC_RAISEEXCEPTION:
.Lc212:
.seh_proc fpc_raiseexception
# [489] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc214:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var obj located in register rbx
	movq	%rdx,%rsi
# Var anaddr located in register rsi
	movq	%r8,%rdi
# Var aframe located in register rdi
# [490] writeln('fpc_raiseexception');
	call	fpc_get_output
	movq	%rax,%r12
	leaq	_$SYSTEM$_Ld10(%rip),%r8
	movq	%r12,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%r12,%rcx
	call	fpc_writeln_end
# [492] if obj = nil then writeln('obj nil');
	testq	%rbx,%rbx
	jne	.Lj516
	call	fpc_get_output
	movq	%rax,%r12
	leaq	_$SYSTEM$_Ld11(%rip),%r8
	movq	%r12,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%r12,%rcx
	call	fpc_writeln_end
	.balign 4,0x90
.Lj516:
# [493] if anaddr = nil then writeln('anaddr nil');
	testq	%rsi,%rsi
	jne	.Lj518
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$SYSTEM$_Ld12(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rsi,%rcx
	call	fpc_writeln_end
	.balign 4,0x90
.Lj518:
# [494] if aframe = nil then writeln('aframe nil');
	testq	%rdi,%rdi
	jne	.Lj520
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$SYSTEM$_Ld13(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rsi,%rcx
	call	fpc_writeln_end
	.balign 4,0x90
.Lj520:
# [496] if obj <> nil then begin
	testq	%rbx,%rbx
	je	.Lj522
# [497] writeln('exception message = ', TTestException(obj).test);
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$SYSTEM$_Ld14(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	8(%rbx),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_ansistr
	movq	%rsi,%rcx
	call	fpc_writeln_end
	.balign 4,0x90
.Lj522:
# [499] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc213:

.section .text.n_fpc_initialize,"x"
	.balign 16,0x90
.globl	fpc_initialize
fpc_initialize:
.globl	FPC_INITIALIZE
FPC_INITIALIZE:
.Lc215:
.seh_proc fpc_initialize
# [rtti.inc]
# [35] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc217:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var data located in register rax
# Var typeinfo located in register rdx
# [36] writeln('fpc_initialize');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld15(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [37] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc216:

.section .text.n_fpc_finalize,"x"
	.balign 16,0x90
.globl	fpc_finalize
fpc_finalize:
.globl	FPC_FINALIZE
FPC_FINALIZE:
.Lc218:
.seh_proc fpc_finalize
# [40] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc220:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var data located in register rax
	movq	%rdx,%rbx
# Var typeinfo located in register rbx
# [41] writeln('fpc_finalize');
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$SYSTEM$_Ld16(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rsi,%rcx
	call	fpc_writeln_end
# [43] case PTypeKind(typeinfo)^ of
	movl	(%rbx),%eax
	cmpl	$14,%eax
	jb	.Lj528
	subl	$14,%eax
	jne	.Lj528
	.balign 4,0x90
# [44] tkInterface: writeln('decrease refcount of interfaced object');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld17(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
	.balign 4,0x90
.Lj528:
	.balign 4,0x90
# [46] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc219:

.section .text.n_fpc_addref,"x"
	.balign 16,0x90
.globl	fpc_addref
fpc_addref:
.globl	FPC_ADDREF
FPC_ADDREF:
.Lc221:
.seh_proc fpc_addref
# [49] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc223:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var data located in register rax
# Var typeinfo located in register rdx
# [50] writeln('fpc_addref');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld18(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [51] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc222:

.section .text.n_fpc_decref,"x"
	.balign 16,0x90
.globl	fpc_decref
fpc_decref:
.globl	FPC_DECREF
FPC_DECREF:
.Lc224:
.seh_proc fpc_decref
# [54] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc226:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var data located in register rax
# Var typeinfo located in register rdx
# [55] writeln('fpc_decref');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld19(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [56] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc225:

.section .text.n_fpc_get_input,"x"
	.balign 16,0x90
.globl	fpc_get_input
fpc_get_input:
.Lc227:
# Var $result located in register rax
# [io.inc]
# [85] begin
# Var $result located in register rax
# [86] result := nil;
	xorl	%eax,%eax
# [87] end;
	ret
.Lc228:

.section .text.n_fpc_get_output,"x"
	.balign 16,0x90
.globl	fpc_get_output
fpc_get_output:
.Lc229:
# Var $result located in register rax
# [90] begin
# Var $result located in register rax
# [91] result := nil;
	xorl	%eax,%eax
# [92] end;
	ret
.Lc230:

.section .text.n_fpc_write_end,"x"
	.balign 16,0x90
.globl	fpc_write_end
fpc_write_end:
.Lc231:
# [95] begin
	movq	%rcx,%rax
# Var f located in register rax
# [96] end;
	ret
.Lc232:

.section .text.n_system$_$fpc_writeln_end$text_$$_fin$0000024d,"x"
	.balign 16,0x90
SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$0000024D:
.Lc233:
.seh_proc SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$0000024D
# [104] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc235:
.Lc236:
	movq	%rcx,%rbp
.Lc237:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [101] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc234:

.section .text.n_fpc_writeln_end,"x"
	.balign 16,0x90
.globl	fpc_writeln_end
fpc_writeln_end:
.Lc238:
.seh_proc fpc_writeln_end
	pushq	%rbp
.seh_pushreg %rbp
.Lc240:
.Lc241:
	movq	%rsp,%rbp
.Lc242:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movq	%rcx,%rax
# Var f located in register rax
	movq	$0,-8(%rbp)
.Lj548:
	nop
.Lj544:
# [102] s := LineEnding;
	leaq	-8(%rbp),%rcx
	leaq	.Ld20(%rip),%rdx
	call	fpc_ansistr_assign
# [103] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	-8(%rbp),%r8
	testq	%r8,%r8
	je	.Lj549
	movq	-8(%r8),%r8
.Lj549:
	movq	-8(%rbp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleA
.Lj546:
	nop
.Lj545:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$0000024D
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj544
	.rva	.Lj545
	.rva	SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$0000024D

.section .text.n_fpc_writeln_end,"x"
.seh_endproc
.Lc239:

.section .text.n_fpc_write_text_char,"x"
	.balign 16,0x90
.globl	fpc_write_text_char
fpc_write_text_char:
.globl	FPC_WRITE_TEXT_CHAR
FPC_WRITE_TEXT_CHAR:
.Lc243:
.seh_proc fpc_write_text_char
# [107] begin
	leaq	-56(%rsp),%rsp
.Lc245:
.seh_stackalloc 56
.seh_endprologue
# Var c located at rsp+40, size=OS_8
	movl	%ecx,%eax
# Var len located in register eax
# Var t located in register rdx
	movb	%r8b,40(%rsp)
# [108] WriteConsoleA(StdOut, @c, 1, nil, nil);
	movq	$0,32(%rsp)
	leaq	40(%rsp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	movl	$1,%r8d
	call	_$dll$kernel32$WriteConsoleA
# [109] end;
	nop
	leaq	56(%rsp),%rsp
	ret
.seh_endproc
.Lc244:

.section .text.n_fpc_write_text_widechar,"x"
	.balign 16,0x90
.globl	fpc_write_text_widechar
fpc_write_text_widechar:
.Lc246:
.seh_proc fpc_write_text_widechar
# [112] begin
	leaq	-56(%rsp),%rsp
.Lc248:
.seh_stackalloc 56
.seh_endprologue
# Var c located at rsp+40, size=OS_16
	movl	%ecx,%eax
# Var len located in register eax
# Var t located in register rdx
	movw	%r8w,40(%rsp)
# [113] WriteConsoleW(StdOut, @c, 1, nil, nil);
	movq	$0,32(%rsp)
	leaq	40(%rsp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	movl	$1,%r8d
	call	_$dll$kernel32$WriteConsoleW
# [114] end;
	nop
	leaq	56(%rsp),%rsp
	ret
.seh_endproc
.Lc247:

.section .text.n_fpc_write_text_shortstr,"x"
	.balign 16,0x90
.globl	fpc_write_text_shortstr
fpc_write_text_shortstr:
.globl	FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
.Lc249:
.seh_proc fpc_write_text_shortstr
# [117] begin
	leaq	-40(%rsp),%rsp
.Lc251:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%eax
# Var len located in register eax
# Var f located in register rdx
	movq	%r8,%rax
# Var s located in register rax
# [118] WriteConsoleA(StdOut, @s[1], ord(s[0]), nil, nil);
	movq	$0,32(%rsp)
	movzbl	(%rax),%r8d
	leaq	1(%rax),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleA
# [119] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc250:

.section .text.n_fpc_write_text_ansistr,"x"
	.balign 16,0x90
.globl	fpc_write_text_ansistr
fpc_write_text_ansistr:
.globl	FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
.Lc252:
.seh_proc fpc_write_text_ansistr
# [127] begin
	leaq	-40(%rsp),%rsp
.Lc254:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%eax
# Var len located in register eax
# Var f located in register rdx
	movq	%r8,%rdx
# Var s located in register rdx
# [128] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	%rdx,%r8
	testq	%rdx,%rdx
	je	.Lj558
	movq	-8(%r8),%r8
.Lj558:
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleA
# [129] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc253:

.section .text.n_fpc_write_text_widestr,"x"
	.balign 16,0x90
.globl	fpc_write_text_widestr
fpc_write_text_widestr:
.Lc255:
.seh_proc fpc_write_text_widestr
# [132] begin
	leaq	-40(%rsp),%rsp
.Lc257:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%eax
# Var len located in register eax
# Var f located in register rdx
	movq	%r8,%rdx
# Var s located in register rdx
# [133] if pointer(s) = nil then exit;
	testq	%r8,%r8
	je	.Lj559
	.balign 4,0x90
# [134] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	%rdx,%r8
	testq	%rdx,%rdx
	je	.Lj563
	movl	-4(%r8),%r8d
	shrq	$1,%r8
.Lj563:
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleW
.Lj559:
# [135] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc256:

.section .text.n_fpc_write_text_unicodestr,"x"
	.balign 16,0x90
.globl	fpc_write_text_unicodestr
fpc_write_text_unicodestr:
.Lc258:
.seh_proc fpc_write_text_unicodestr
# [138] begin
	leaq	-40(%rsp),%rsp
.Lc260:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%eax
# Var len located in register eax
# Var f located in register rdx
	movq	%r8,%rdx
# Var s located in register rdx
# [139] if pointer(s) = nil then exit;
	testq	%r8,%r8
	je	.Lj564
	.balign 4,0x90
# [140] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	%rdx,%r8
	testq	%rdx,%rdx
	je	.Lj568
	movq	-8(%r8),%r8
.Lj568:
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleW
.Lj564:
# [141] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc259:

.section .text.n_fpc_read_end,"x"
	.balign 16,0x90
.globl	fpc_read_end
fpc_read_end:
.globl	FPC_READ_END
FPC_READ_END:
.Lc261:
# [144] begin
	movq	%rcx,%rax
# Var f located in register rax
# [145] end;
	ret
.Lc262:

.section .text.n_system$_$int_write_to_console$ansistring_$$_fin$0000024e,"x"
	.balign 16,0x90
SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$0000024E:
.Lc263:
.seh_proc SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$0000024E
# [152] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc265:
.Lc266:
	movq	%rcx,%rbp
.Lc267:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [150] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc264:

.section .text.n_system_$$_int_write_to_console$ansistring,"x"
	.balign 16,0x90
SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING:
.Lc268:
.seh_proc SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc270:
.Lc271:
	movq	%rsp,%rbp
.Lc272:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var s located at rbp-8, size=OS_64
# Var d located at rbp-12, size=OS_32
	movq	%rcx,-8(%rbp)
	call	fpc_ansistr_incr_ref
.Lj579:
	nop
.Lj575:
# [151] WriteConsoleA(StdOut, @s[1], length(s), @d, nil);
	movq	$0,32(%rsp)
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj580
	movq	-8(%rax),%rax
.Lj580:
	movl	%eax,%r8d
	leaq	-12(%rbp),%r9
	movq	-8(%rbp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	call	_$dll$kernel32$WriteConsoleA
.Lj577:
	nop
.Lj576:
	movq	%rbp,%rcx
	call	SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$0000024E
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj575
	.rva	.Lj576
	.rva	SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$0000024E

.section .text.n_system_$$_int_write_to_console$ansistring,"x"
.seh_endproc
.Lc269:

.section .text.n_system$_$int_read_from_console$ansistring_$$_fin$00000250,"x"
	.balign 16,0x90
SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000250:
.Lc273:
.seh_proc SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000250
# [171] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc275:
.Lc276:
	movq	%rcx,%rbp
.Lc277:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [159] begin
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc274:

.section .text.n_system_$$_int_read_from_console$ansistring,"x"
	.balign 16,0x90
SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING:
.Lc278:
# Temps allocated between rbp-32 and rbp-16
.seh_proc SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc280:
.Lc281:
	movq	%rsp,%rbp
.Lc282:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
	movq	%rbx,-32(%rbp)
.seh_savereg %rbx, 48
.seh_endprologue
# Var c located at rbp-4, size=OS_8
# Var d located at rbp-8, size=OS_32
# Var s located at rbp-16, size=OS_64
	movq	%rcx,%rbx
# Var r located in register rbx
	movq	$0,(%rbx)
	movq	$0,-16(%rbp)
	movq	$0,-24(%rbp)
.Lj589:
	nop
.Lj585:
# [160] s := '';
	leaq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
	.balign 8,0x90
.Lj590:
# [162] ReadConsoleA(StdIn, @c, 1, @d, nil);
	movq	$0,32(%rsp)
	leaq	-8(%rbp),%r9
	leaq	-4(%rbp),%rdx
	movq	U_$SYSTEM_$$_STDIN(%rip),%rcx
	movl	$1,%r8d
	call	_$dll$kernel32$ReadConsoleA
# [163] if c = #13 then begin
	cmpb	$13,-4(%rbp)
	je	.Lj592
	.balign 4,0x90
# [167] s := s + c;
	movzbl	-4(%rbp),%edx
	xorl	%r8d,%r8d
	leaq	-24(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-24(%rbp),%r8
	movq	-16(%rbp),%rdx
	leaq	-16(%rbp),%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [161] while true do begin
	jmp	.Lj590
.Lj592:
# [169] r := s;
	movq	%rbx,%rcx
	movq	-16(%rbp),%rdx
	call	fpc_ansistr_assign
# [170] int_write_to_console(#13#10);
	leaq	.Ld20(%rip),%rcx
	call	SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING
.Lj587:
	nop
.Lj586:
	movq	%rbp,%rcx
	call	SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000250
	movq	-32(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj585
	.rva	.Lj586
	.rva	SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000250

.section .text.n_system_$$_int_read_from_console$ansistring,"x"
.seh_endproc
.Lc279:

.section .text.n_fpc_readln_end,"x"
	.balign 16,0x90
.globl	fpc_readln_end
fpc_readln_end:
.globl	FPC_READLN_END
FPC_READLN_END:
.Lc283:
# [174] begin
	movq	%rcx,%rax
# Var f located in register rax
# [181] end;
	ret
.Lc284:

.section .text.n_system$_$fpc_read_text_shortstr$text$shortstring$longword_$$_fin$00000254,"x"
	.balign 16,0x90
SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000254:
.Lc285:
.seh_proc SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000254
# [189] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc287:
.Lc288:
	movq	%rcx,%rbp
.Lc289:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [186] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc286:

.section .text.n_fpc_read_text_shortstr,"x"
	.balign 16,0x90
.globl	fpc_read_text_shortstr
fpc_read_text_shortstr:
.globl	FPC_READ_TEXT_SHORTSTR
FPC_READ_TEXT_SHORTSTR:
.Lc290:
# Temps allocated between rbp-24 and rbp-8
.seh_proc fpc_read_text_shortstr
	pushq	%rbp
.seh_pushreg %rbp
.Lc292:
.Lc293:
	movq	%rsp,%rbp
.Lc294:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
# Var t located at rbp-8, size=OS_64
	movq	%rcx,%rax
# Var f located in register rax
	movq	%rdx,%rbx
# Var s located in register rbx
# Var cp located in register r8d
	movq	$0,-8(%rbp)
.Lj605:
	nop
.Lj601:
# [187] int_read_from_console(t);
	leaq	-8(%rbp),%rsi
	movq	%rsi,%rcx
	call	fpc_ansistr_decr_ref
	movq	%rsi,%rcx
	call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
# [188] s := t;
	movq	%rbx,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_to_shortstr
.Lj603:
	nop
.Lj602:
	movq	%rbp,%rcx
	call	SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000254
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj601
	.rva	.Lj602
	.rva	SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000254

.section .text.n_fpc_read_text_shortstr,"x"
.seh_endproc
.Lc291:

.section .text.n_system$_$fpc_read_text_ansistr$text$rawbytestring$longword_$$_fin$00000256,"x"
	.balign 16,0x90
SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$00000256:
.Lc295:
.seh_proc SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$00000256
# [197] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc297:
.Lc298:
	movq	%rcx,%rbp
.Lc299:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [194] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc296:

.section .text.n_fpc_read_text_ansistr,"x"
	.balign 16,0x90
.globl	fpc_read_text_ansistr
fpc_read_text_ansistr:
.globl	FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
.Lc300:
# Temps allocated between rbp-24 and rbp-8
.seh_proc fpc_read_text_ansistr
	pushq	%rbp
.seh_pushreg %rbp
.Lc302:
.Lc303:
	movq	%rsp,%rbp
.Lc304:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
# Var t located at rbp-8, size=OS_64
	movq	%rcx,%rax
# Var f located in register rax
	movq	%rdx,%rbx
# Var s located in register rbx
# Var cp located in register r8d
	movq	$0,(%rbx)
	movq	$0,-8(%rbp)
.Lj614:
	nop
.Lj610:
# [195] int_read_from_console(t);
	leaq	-8(%rbp),%rsi
	movq	%rsi,%rcx
	call	fpc_ansistr_decr_ref
	movq	%rsi,%rcx
	call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
# [196] s := t;
	movq	%rbx,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_assign
.Lj612:
	nop
.Lj611:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$00000256
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj610
	.rva	.Lj611
	.rva	SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$00000256

.section .text.n_fpc_read_text_ansistr,"x"
.seh_endproc
.Lc301:

.section .text.n_system$_$fpc_write_text_sint$longint$text$int64_$$_fin$00000257,"x"
	.balign 16,0x90
SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$00000257:
.Lc305:
.seh_proc SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$00000257
# [205] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc307:
.Lc308:
	movq	%rcx,%rbp
.Lc309:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [202] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc306:

.section .text.n_fpc_write_text_sint,"x"
	.balign 16,0x90
.globl	fpc_write_text_sint
fpc_write_text_sint:
.Lc310:
.seh_proc fpc_write_text_sint
	pushq	%rbp
.seh_pushreg %rbp
.Lc312:
.Lc313:
	movq	%rsp,%rbp
.Lc314:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movl	%ecx,%eax
# Var len located in register eax
# Var t located in register rdx
	movq	%r8,%rcx
# Var l located in register rcx
	movq	$0,-8(%rbp)
.Lj623:
	nop
.Lj619:
# [203] s := itoa(l);
	movl	$10,%edx
	call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
	movq	%rax,%rdx
	leaq	-8(%rbp),%rcx
	xorl	%r8d,%r8d
	call	fpc_pchar_to_ansistr
# [204] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	-8(%rbp),%r8
	testq	%r8,%r8
	je	.Lj624
	movq	-8(%r8),%r8
.Lj624:
	movq	-8(%rbp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleA
.Lj621:
	nop
.Lj620:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$00000257
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj619
	.rva	.Lj620
	.rva	SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$00000257

.section .text.n_fpc_write_text_sint,"x"
.seh_endproc
.Lc311:

.section .text.n_system$_$fpc_write_text_uint$longint$text$qword_$$_fin$00000258,"x"
	.balign 16,0x90
SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$00000258:
.Lc315:
.seh_proc SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$00000258
# [213] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc317:
.Lc318:
	movq	%rcx,%rbp
.Lc319:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [210] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc316:

.section .text.n_fpc_write_text_uint,"x"
	.balign 16,0x90
.globl	fpc_write_text_uint
fpc_write_text_uint:
.Lc320:
.seh_proc fpc_write_text_uint
	pushq	%rbp
.seh_pushreg %rbp
.Lc322:
.Lc323:
	movq	%rsp,%rbp
.Lc324:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movl	%ecx,%eax
# Var len located in register eax
# Var t located in register rdx
	movq	%r8,%rcx
# Var l located in register rcx
	movq	$0,-8(%rbp)
.Lj633:
	nop
.Lj629:
# [211] s := itoa(l);
	movl	$10,%edx
	call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
	movq	%rax,%rdx
	leaq	-8(%rbp),%rcx
	xorl	%r8d,%r8d
	call	fpc_pchar_to_ansistr
# [212] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	-8(%rbp),%r8
	testq	%r8,%r8
	je	.Lj634
	movq	-8(%r8),%r8
.Lj634:
	movq	-8(%rbp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleA
.Lj631:
	nop
.Lj630:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$00000258
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj629
	.rva	.Lj630
	.rva	SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$00000258

.section .text.n_fpc_write_text_uint,"x"
.seh_endproc
.Lc321:

.section .text.n_system$_$fpc_write_text_qword$longint$text$qword_$$_fin$00000259,"x"
	.balign 16,0x90
SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$00000259:
.Lc325:
.seh_proc SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$00000259
# [223] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc327:
.Lc328:
	movq	%rcx,%rbp
.Lc329:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [220] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc326:

.section .text.n_fpc_write_text_qword,"x"
	.balign 16,0x90
.globl	fpc_write_text_qword
fpc_write_text_qword:
.Lc330:
.seh_proc fpc_write_text_qword
	pushq	%rbp
.seh_pushreg %rbp
.Lc332:
.Lc333:
	movq	%rsp,%rbp
.Lc334:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movl	%ecx,%eax
# Var len located in register eax
# Var t located in register rdx
	movq	%r8,%rcx
# Var q located in register rcx
	movq	$0,-8(%rbp)
.Lj643:
	nop
.Lj639:
# [221] s := itoa(q); // @@todo: itoa64 / signed / unsigned
	movl	$10,%edx
	call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
	movq	%rax,%rdx
	leaq	-8(%rbp),%rcx
	xorl	%r8d,%r8d
	call	fpc_pchar_to_ansistr
# [222] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	-8(%rbp),%r8
	testq	%r8,%r8
	je	.Lj644
	movq	-8(%r8),%r8
.Lj644:
	movq	-8(%rbp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleA
.Lj641:
	nop
.Lj640:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$00000259
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj639
	.rva	.Lj640
	.rva	SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$00000259

.section .text.n_fpc_write_text_qword,"x"
.seh_endproc
.Lc331:

.section .text.n_system$_$fpc_write_text_boolean$longint$text$boolean_$$_fin$0000025a,"x"
	.balign 16,0x90
SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000025A:
.Lc335:
.seh_proc SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000025A
# [232] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc337:
.Lc338:
	movq	%rcx,%rbp
.Lc339:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [228] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc336:

.section .text.n_fpc_write_text_boolean,"x"
	.balign 16,0x90
.globl	fpc_write_text_boolean
fpc_write_text_boolean:
.Lc340:
.seh_proc fpc_write_text_boolean
	pushq	%rbp
.seh_pushreg %rbp
.Lc342:
.Lc343:
	movq	%rsp,%rbp
.Lc344:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movl	%ecx,%eax
# Var len located in register eax
# Var t located in register rdx
# Var b located in register r8b
	movq	$0,-8(%rbp)
.Lj653:
	nop
.Lj649:
# [230] if b then s := 'TRUE' else s := 'FALSE';
	testb	%r8b,%r8b
	je	.Lj655
	leaq	-8(%rbp),%rcx
	leaq	.Ld21(%rip),%rdx
	call	fpc_ansistr_assign
	jmp	.Lj656
.Lj655:
	leaq	-8(%rbp),%rcx
	leaq	.Ld22(%rip),%rdx
	call	fpc_ansistr_assign
.Lj656:
# [231] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
	movq	$0,32(%rsp)
	movq	-8(%rbp),%r8
	testq	%r8,%r8
	je	.Lj657
	movq	-8(%r8),%r8
.Lj657:
	movq	-8(%rbp),%rdx
	movq	U_$SYSTEM_$$_STDOUT(%rip),%rcx
	xorq	%r9,%r9
	call	_$dll$kernel32$WriteConsoleA
.Lj651:
	nop
.Lj650:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000025A
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj649
	.rva	.Lj650
	.rva	SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000025A

.section .text.n_fpc_write_text_boolean,"x"
.seh_endproc
.Lc341:

.section .text.n_fpc_shortstr_setlength,"x"
	.balign 16,0x90
.globl	fpc_shortstr_setlength
fpc_shortstr_setlength:
.globl	FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
.Lc345:
# [strings.inc]
# [102] begin
	movq	%rcx,%rax
# Var s located in register rax
# Var len located in register rdx
# [103] if len > 255 then len := 255;
	cmpq	$255,%rdx
	jng	.Lj661
	movl	$255,%edx
	.balign 4,0x90
.Lj661:
# [104] s[0] := chr(len);
	movb	%dl,(%rax)
# [105] end;
	ret
.Lc346:

.section .text.n_system_$$_fpcshortstrtoansistr$shortstring$longword$$rawbytestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING:
.Lc347:
.seh_proc SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
# [111] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc349:
.seh_stackalloc 32
.seh_endprologue
# Var len located in register eax
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var s2 located in register rsi
# Var cp located in register r8d
# [112] len := length(s2);
	movzbl	(%rsi),%edi
# Var len located in register edi
# [113] setlength(result, len);
	movslq	%edi,%rdx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_ansistr_setlength
# [114] move(s2[1], result[1], len);
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	movq	%rax,%rdx
	movslq	%edi,%r8
	leaq	1(%rsi),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [115] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc348:

.section .text.n_fpc_shortstr_to_ansistr,"x"
	.balign 16,0x90
.globl	fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
.Lc350:
.seh_proc fpc_shortstr_to_ansistr
# [117] begin
	leaq	-40(%rsp),%rsp
.Lc352:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var s2 located in register rdx
# Var cp located in register r8d
# Var cp located in register r8d
# [118] result := fpcshortstrtoansistr(s2,cp);
	call	SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
# [119] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc351:

.section .text.n_system_$$_fpc_shortstr_toshortstr$shortstring$shortstring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING:
.Lc353:
.seh_proc SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
# [133] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc355:
.seh_stackalloc 32
.seh_endprologue
# Var l located in register eax
	movq	%rcx,%rbx
# Var res located in register rbx
	movq	%rdx,%rsi
# Var sstr located in register rsi
# [134] l := pbyte(@sstr[0])^;
	movq	%rsi,%rax
	movzbl	(%rax),%edi
# Var l located in register edi
# [135] setlength(res, l);
	movl	%edi,%edx
	movq	%rbx,%rcx
	call	fpc_shortstr_setlength
# [136] move(sstr[1], res[1], l);
	movl	%edi,%r8d
	leaq	1(%rbx),%rdx
	leaq	1(%rsi),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [137] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc354:

.section .text.n_fpc_shortstr_to_shortstr,"x"
	.balign 16,0x90
.globl	fpc_shortstr_to_shortstr
fpc_shortstr_to_shortstr:
.globl	FPC_SHORTSTR_TO_SHORTSTR
FPC_SHORTSTR_TO_SHORTSTR:
.Lc356:
.seh_proc fpc_shortstr_to_shortstr
# [139] begin
	leaq	-40(%rsp),%rsp
.Lc358:
.seh_stackalloc 40
.seh_endprologue
# Var res located in register rax
# Var sstr located in register rdx
# [140] fpc_shortstr_toshortstr(res, sstr);
	call	SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
# [141] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc357:

.section .text.n_fpc_val_sint_shortstr,"x"
	.balign 16,0x90
.globl	fpc_val_sint_shortstr
fpc_val_sint_shortstr:
.globl	FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
.Lc359:
.seh_proc fpc_val_sint_shortstr
# [152] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc361:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var destsize located in register rcx
# Var s located in register rdx
# Var code located in register r8
# [153] writeln('fpc_val_sint_shortstr');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld23(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [154] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc360:

.section .text.n_fpc_shortstr_sint,"x"
	.balign 16,0x90
.globl	fpc_shortstr_sint
fpc_shortstr_sint:
.globl	FPC_SHORTSTR_SINT
FPC_SHORTSTR_SINT:
.Lc362:
.seh_proc fpc_shortstr_sint
# [157] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc364:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var v located in register rax
# Var len located in register rdx
# Var s located in register r8
# [158] writeln('fpc_shortstr_sint');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld24(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [159] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc363:

.section .text.n_fpc_ansistr_to_shortstr,"x"
	.balign 16,0x90
.globl	fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
.globl	FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
.Lc365:
.seh_proc fpc_ansistr_to_shortstr
# [162] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc367:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var res located in register rbx
	movq	%rdx,%rsi
# Var s2 located in register rsi
# [163] setlength(res, length(s2));
	testq	%rdx,%rdx
	je	.Lj676
	movq	-8(%rdx),%rdx
.Lj676:
	movq	%rbx,%rcx
	call	fpc_shortstr_setlength
# [164] move(s2[1], res[1], length(s2));
	movq	%rsi,%r8
	testq	%rsi,%rsi
	je	.Lj677
	movq	-8(%r8),%r8
.Lj677:
	leaq	1(%rbx),%rdx
	movq	%rsi,%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [165] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc366:

.section .text.n_system_$$_fpcshortstrconcat$shortstring$shortstring$shortstring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING:
.Lc368:
.seh_proc SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
# [171] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	leaq	-40(%rsp),%rsp
.Lc370:
.seh_stackalloc 40
.seh_endprologue
# Var len located in register eax
# Var cap located in register eax
# Var m located in register r14d
	movq	%rcx,%rbx
# Var dests located in register rbx
	movq	%rdx,%rsi
# Var s1 located in register rsi
	movq	%r8,%rdi
# Var s2 located in register rdi
# Var len located in register eax
# [172] len := 0;
	xorl	%eax,%eax
# Var cap located in register r12d
# [173] cap := 255;
	movl	$255,%r12d
# [175] move(s1[1], dests[1], length(s1));
	movzbl	(%rsi),%r8d
	leaq	1(%rbx),%rdx
	leaq	1(%rsi),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [176] len := length(s1);
	movzbl	(%rsi),%r13d
# Var len located in register r13d
# [178] dec(cap, length(s1));
	movzbl	(%rsi),%eax
	subl	%eax,%r12d
# [179] if cap > 0 then begin
	testl	%r12d,%r12d
	jng	.Lj681
# [181] m := length(s2);
	movzbl	(%rdi),%r14d
# [182] if m > cap then m := cap;
	cmpl	%r14d,%r12d
	cmovll	%r12d,%r14d
# [183] move(s2[1], dests[length(s1)+1], m);
	movzbl	(%rsi),%eax
	addl	$1,%eax
	andl	$255,%eax
	leaq	(%rbx,%rax,1),%rdx
	movslq	%r14d,%r8
	leaq	1(%rdi),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [184] inc(len, m);
	addl	%r14d,%r13d
	.balign 4,0x90
.Lj681:
# [187] dests[0] := chr(len);
	movb	%r13b,(%rbx)
# [188] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc369:

.section .text.n_fpc_shortstr_concat,"x"
	.balign 16,0x90
.globl	fpc_shortstr_concat
fpc_shortstr_concat:
.Lc371:
.seh_proc fpc_shortstr_concat
# [190] begin
	leaq	-40(%rsp),%rsp
.Lc373:
.seh_stackalloc 40
.seh_endprologue
# Var dests located in register rax
# Var s1 located in register rdx
# Var s2 located in register r8
# [191] fpcshortstrconcat(dests, s1, s2);
	call	SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
# [192] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc372:

.section .text.n_system_$$_fpcshortstrcopy$shortstring$int64$int64$$shortstring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING:
.Lc374:
.seh_proc SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
# [204] begin
	leaq	-40(%rsp),%rsp
.Lc376:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var $result located in register rax
# Var s located in register rdx
	movq	%r8,%rcx
# Var index located in register rcx
	movq	%r9,%r8
# Var count located in register r8
# [205] if count < 0 then count := 0;
	testq	%r8,%r8
	jnl	.Lj689
	xorq	%r8,%r8
	.balign 4,0x90
.Lj689:
# [206] if index > 1 then dec(index) else index := 0;
	cmpq	$1,%rcx
	jng	.Lj691
	subq	$1,%rcx
	jmp	.Lj692
.Lj691:
	xorl	%ecx,%ecx
.Lj692:
# [207] if index > length(s) then
	movzbl	(%rdx),%r9d
	cmpq	%rcx,%r9
	jnl	.Lj694
# [208] count := 0
	xorq	%r8,%r8
	jmp	.Lj695
.Lj694:
# [209] else if count > length(s)-index then
	movzbl	(%rdx),%r9d
	subq	%rcx,%r9
	cmpq	%r8,%r9
	jnl	.Lj697
# [210] count := length(s)-index;
	movzbl	(%rdx),%r9d
	subq	%rcx,%r9
	movq	%r9,%r8
	.balign 4,0x90
.Lj697:
.Lj695:
# [211] result[0] := chr(count);
	movb	%r8b,(%rax)
# [212] move(s[index+1], result[1], count);
	addq	$1,%rcx
	andl	$255,%ecx
	addq	%rdx,%rcx
	leaq	1(%rax),%rdx
# Var count located in register r8
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [213] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc375:

.section .text.n_fpc_shortstr_copy,"x"
	.balign 16,0x90
.globl	fpc_shortstr_copy
fpc_shortstr_copy:
.Lc377:
.seh_proc fpc_shortstr_copy
# [215] begin
	leaq	-40(%rsp),%rsp
.Lc379:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var s located in register rdx
# Var index located in register r8
# Var count located in register r9
# Var count located in register r9
# Var index located in register r8
# [216] result := fpcshortstrcopy(s, index, count);
	call	SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
# [217] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc378:

.section .text.n_system_$$_fpcansistrassign$pointer$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER:
.Lc380:
.seh_proc SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
# [229] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc382:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var dests located in register rbx
	movq	%rdx,%rsi
# Var s2 located in register rsi
# [230] if dests = s2 then exit;
	cmpq	(%rbx),%rsi
	je	.Lj700
	.balign 4,0x90
# [231] if s2 <> nil then
	testq	%rsi,%rsi
	je	.Lj705
# [232] if PAnsiRec(s2-AnsiFirstOff)^.Ref > 0 then
	cmpq	$0,-16(%rsi)
	jng	.Lj707
# [234] inc(PAnsiRec(s2-AnsiFirstOff)^.Ref);
	addq	$1,-16(%rsi)
	.balign 4,0x90
.Lj707:
	.balign 4,0x90
.Lj705:
# [236] fpc_ansistr_decr_ref(dests);
	movq	%rbx,%rcx
	call	fpc_ansistr_decr_ref
# Var s2 located in register rsi
# [238] dests := s2;
	movq	%rsi,(%rbx)
.Lj700:
# [239] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc381:

.section .text.n_fpc_ansistr_assign,"x"
	.balign 16,0x90
.globl	fpc_ansistr_assign
fpc_ansistr_assign:
.globl	FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
.Lc383:
.seh_proc fpc_ansistr_assign
# [241] begin
	leaq	-40(%rsp),%rsp
.Lc385:
.seh_stackalloc 40
.seh_endprologue
# Var dests located in register rax
# Var s2 located in register rdx
# Var s2 located in register rdx
# [242] fpcansistrassign(dests, s2);
	call	SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
# [243] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc384:

.section .text.n_system_$$_fpcansistrsetlength$rawbytestring$int64$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD:
.Lc386:
.seh_proc SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
# [258] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc388:
.seh_stackalloc 48
.seh_endprologue
# Var Temp located at rsp+32, size=OS_64
# Var lens located in register rdi
# Var lena located in register rax
	movq	%rcx,%rbx
# Var S located in register rbx
	movq	%rdx,%rsi
# Var l located in register rsi
	movl	%r8d,%edi
# Var cp located in register edi
# [259] if (l > 0) then begin
	testq	%rsi,%rsi
	jng	.Lj713
# [260] if Pointer(S) = nil then begin
	cmpq	$0,(%rbx)
	jne	.Lj715
# [261] Pointer(S) := new_ansistring(L);
	movq	%rsi,%rcx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,(%rbx)
# [263] cp := 0;
	xorl	%edi,%edi
# [264] PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage := cp;
	movq	(%rbx),%rax
	movl	%edi,-32(%rax)
	jmp	.Lj716
.Lj715:
# [265] end else if PAnsiRec(Pointer(S) - AnsiFirstOff)^.Ref = 1 then begin
	movq	(%rbx),%rax
	cmpq	$1,-16(%rax)
	jne	.Lj718
# [266] Temp := Pointer(s) - AnsiFirstOff;
	movq	(%rbx),%rax
	subq	$32,%rax
	movq	%rax,32(%rsp)
# [268] lens := 4;
	movl	$4,%edi
# [269] lena := AnsiFirstOff + L + sizeof(ansichar);
	leaq	32(%rsi),%rax
	addq	$1,%rax
# [271] if (lena > lens) or ((lens > 32) and (lena <= SizeInt(SizeUint(lens) div 2))) then pointer(s) := xreallocmem(temp, 4) + AnsiFirstOff;
	cmpq	%rax,%rdi
	jl	.Lj719
	cmpq	$32,%rdi
	jng	.Lj725
	movq	%rdi,%rdx
	shrq	$1,%rdx
	cmpq	%rax,%rdx
	jnge	.Lj725
.Lj719:
	leaq	32(%rsp),%rcx
	movl	$4,%edx
	call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
	addq	$32,%rax
	movq	%rax,(%rbx)
	.balign 4,0x90
	jmp	.Lj725
.Lj718:
# [274] Temp := new_ansistring(4);
	movl	$4,%ecx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,32(%rsp)
# [275] PAnsiRec(Pointer(Temp) - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
	movq	(%rbx),%rax
	movq	32(%rsp),%rdx
	movl	-32(%rax),%eax
	movl	%eax,-32(%rdx)
# [278] lens := PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len + 1;
	movq	(%rbx),%rax
	movq	-8(%rax),%rax
	addq	$1,%rax
	movq	%rax,%rdi
# [279] if l < lens then lens := l;
	cmpq	%rsi,%rdi
	cmovgq	%rsi,%rdi
# [280] Move(Pointer(S)^, Temp^, lens);
	movq	(%rbx),%rcx
	movq	32(%rsp),%rdx
	movq	%rdi,%r8
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [281] fpc_ansistr_decr_ref(Pointer(s));
	movq	%rbx,%rcx
	call	fpc_ansistr_decr_ref
# [282] Pointer(S) := Temp;
	movq	32(%rsp),%rax
	movq	%rax,(%rbx)
.Lj725:
.Lj716:
# [285] pbyte(Pointer(S) + l)^ := 0;
	movq	(%rbx),%rax
	addq	%rsi,%rax
	movb	$0,(%rax)
# [286] PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len := l;
	movq	(%rbx),%rax
	movq	%rsi,-8(%rax)
	jmp	.Lj728
.Lj713:
# [288] fpc_ansistr_decr_ref(Pointer(S));
	movq	%rbx,%rcx
	call	fpc_ansistr_decr_ref
.Lj728:
# [289] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc387:

.section .text.n_fpc_ansistr_setlength,"x"
	.balign 16,0x90
.globl	fpc_ansistr_setlength
fpc_ansistr_setlength:
.globl	FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
.Lc389:
.seh_proc fpc_ansistr_setlength
# [291] begin
	leaq	-40(%rsp),%rsp
.Lc391:
.seh_stackalloc 40
.seh_endprologue
# Var s located in register rax
# Var l located in register rdx
# Var cp located in register r8d
# Var cp located in register r8d
# Var l located in register rdx
# [292] fpcansistrsetlength(S, l, cp);
	call	SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
# [293] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc390:

.section .text.n_system_$$_fpcansistrdecrref$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCANSISTRDECRREF$POINTER
SYSTEM_$$_FPCANSISTRDECRREF$POINTER:
.Lc392:
.seh_proc SYSTEM_$$_FPCANSISTRDECRREF$POINTER
# [307] begin
	leaq	-40(%rsp),%rsp
.Lc394:
.seh_stackalloc 40
.seh_endprologue
# Var p located in register rax
	movq	%rcx,%rax
# Var s located in register rax
# [308] if s = nil then exit;
	cmpq	$0,(%rax)
	je	.Lj731
	.balign 4,0x90
# [309] p := PAnsiRec(s-AnsiFirstOff);
	movq	(%rax),%rdx
	leaq	-32(%rdx),%rcx
# Var p located in register rcx
# [310] s := nil;
	movq	$0,(%rax)
# [311] if p^.ref < 0 then exit;
	cmpq	$0,16(%rcx)
	jl	.Lj731
	.balign 4,0x90
# Var p located in register rcx
# [315] dec(p^.Ref);
	subq	$1,16(%rcx)
# [316] if p^.Ref <= 0 then FreeMem(p);
	cmpq	$0,16(%rcx)
	jnle	.Lj738
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
	.balign 4,0x90
.Lj738:
.Lj731:
# [317] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc393:

.section .text.n_fpc_ansistr_decr_ref,"x"
	.balign 16,0x90
.globl	fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
.globl	FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
.Lc395:
.seh_proc fpc_ansistr_decr_ref
# [319] begin
	leaq	-40(%rsp),%rsp
.Lc397:
.seh_stackalloc 40
.seh_endprologue
# Var s located in register rax
# [320] fpcansistrdecrref(s);
	call	SYSTEM_$$_FPCANSISTRDECRREF$POINTER
# [321] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc396:

.section .text.n_system_$$_fpcansistrincrref$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCANSISTRINCRREF$POINTER
SYSTEM_$$_FPCANSISTRINCRREF$POINTER:
.Lc398:
# [336] begin
	movq	%rcx,%rax
# Var s located in register rax
# [337] if s = nil then exit;
	testq	%rcx,%rcx
	je	.Lj741
	.balign 4,0x90
# [338] if PAnsiRec(s-AnsiFirstOff)^.Ref < 0 then exit;
	cmpq	$0,-16(%rax)
	jl	.Lj741
	.balign 4,0x90
# Var s located in register rax
# [340] inc(PAnsiRec(s-AnsiFirstOff)^.Ref);
	addq	$1,-16(%rax)
.Lj741:
# [342] end;
	ret
.Lc399:

.section .text.n_fpc_ansistr_incr_ref,"x"
	.balign 16,0x90
.globl	fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
.globl	FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
.Lc400:
.seh_proc fpc_ansistr_incr_ref
# [344] begin
	leaq	-40(%rsp),%rsp
.Lc402:
.seh_stackalloc 40
.seh_endprologue
# Var s located in register rax
# Var s located in register rcx
# [345] fpcansistrincrref(s);
	call	SYSTEM_$$_FPCANSISTRINCRREF$POINTER
# [346] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc401:

.section .text.n_system_$$_fpcansistrconcat$rawbytestring$rawbytestring$rawbytestring$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD:
.Lc403:
.seh_proc SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
# [358] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc405:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var dests located in register rbx
	movq	%rdx,%rsi
# Var s1 located in register rsi
	movq	%r8,%rdi
# Var s2 located in register rdi
# Var cp located in register r9d
# [359] pointer(dests) := new_ansistring(length(s1)+length(s2));
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj751
	movq	-8(%rax),%rax
.Lj751:
	movq	%rdi,%rdx
	testq	%rdi,%rdi
	je	.Lj752
	movq	-8(%rdx),%rdx
.Lj752:
	leaq	(%rax,%rdx),%rcx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,(%rbx)
# [360] move(s1[1], dests[1], length(s1));
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	movq	%rax,%rdx
	movq	%rsi,%r8
	testq	%rsi,%rsi
	je	.Lj753
	movq	-8(%r8),%r8
.Lj753:
	movq	%rsi,%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [361] move(s2[1], dests[length(s1)+1], length(s2));
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	testq	%rsi,%rsi
	je	.Lj754
	movq	-8(%rsi),%rsi
.Lj754:
	leaq	1(%rsi),%rdx
	leaq	-1(%rax,%rdx,1),%rdx
	movq	%rdi,%r8
	testq	%rdi,%rdi
	je	.Lj755
	movq	-8(%r8),%r8
.Lj755:
	movq	%rdi,%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [362] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc404:

.section .text.n_fpc_ansistr_concat,"x"
	.balign 16,0x90
.globl	fpc_ansistr_concat
fpc_ansistr_concat:
.Lc406:
.seh_proc fpc_ansistr_concat
# [364] begin
	leaq	-40(%rsp),%rsp
.Lc408:
.seh_stackalloc 40
.seh_endprologue
# Var dests located in register rax
# Var s1 located in register rdx
# Var s2 located in register r8
# Var cp located in register r9d
# Var cp located in register r9d
# Var s2 located in register r8
# Var s1 located in register rdx
# [365] fpcansistrconcat(dests, s1, s2, cp);
	call	SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
# [366] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc407:

.section .text.n_fpc_ansistr_concat_multi,"x"
	.balign 16,0x90
.globl	fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
.Lc409:
# Temps allocated between rbp-8 and rbp+0
.seh_proc fpc_ansistr_concat_multi
# [377] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc411:
.Lc412:
	movq	%rsp,%rbp
.Lc413:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
	movq	%rbx,-8(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
	movq	%rcx,%rax
# Var dests located in register rax
# Var sarr located in register rdx
# Var $highSARR located in register r8
# Var cp located in register r9d
# [378] writeln('fpc_ansistr_concat_multi');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld25(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [379] end;
	movq	-8(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc410:

.section .text.n_system_$$_fpctruelyansistrunique$pointer$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER:
.Lc414:
.seh_proc SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
# [386] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc416:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var SNew located in register rax
# Var L located in register rax
	movq	%rcx,%rbx
# Var S located in register rbx
# [387] L := PAnsiRec(Pointer(S) - AnsiFirstOff)^.len;
	movq	(%rbx),%rax
# Var L located in register rsi
	movq	-8(%rax),%rsi
# Var L located in register rsi
# [388] SNew := new_ansistring(L);
	movq	%rsi,%rcx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,%rdi
# Var SNew located in register rdi
# [389] Move(Pointer(S)^, SNew^, L + 1);
	movq	(%rbx),%rcx
	leaq	1(%rsi),%r8
# Var SNew located in register rdi
	movq	%rdi,%rdx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [390] PAnsiRec(SNew - AnsiFirstOff)^.len := L;
	movq	%rdi,%rax
# Var SNew located in register rax
# Var L located in register rsi
	movq	%rsi,-8(%rax)
# [391] PAnsiRec(SNew - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
	movq	(%rbx),%rdx
# Var SNew located in register rax
	movl	-32(%rdx),%edx
	movl	%edx,-32(%rax)
# Var SNew located in register rax
# [393] pointer(S) := SNew;
	movq	%rax,(%rbx)
# Var $result located in register rax
# Var SNew located in register rax
# [395] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc415:

.section .text.n_system_$$_fpc_truely_ansistr_unique$pointer$$pointer,"x"
	.balign 16,0x90
SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
.Lc417:
.seh_proc SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
# [397] begin
	leaq	-40(%rsp),%rsp
.Lc419:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var S located in register rcx
# [398] result := fpctruelyansistrunique(s);
	call	SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
# Var $result located in register rax
# [399] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc418:

.section .text.n_fpc_ansistr_unique,"x"
	.balign 16,0x90
.globl	fpc_ansistr_unique
fpc_ansistr_unique:
.globl	FPC_ANSISTR_UNIQUE
FPC_ANSISTR_UNIQUE:
.Lc420:
.seh_proc fpc_ansistr_unique
# [410] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc422:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var s located in register rcx
# Var $result located in register rbx
# [411] pointer(result) := pointer(s);
	movq	(%rcx),%rbx
# [412] if (result <> nil) and (PAnsiRec(result - AnsiFirstOff)^.Ref <> 1) then result := fpc_truely_ansistr_unique(s);
	testq	%rbx,%rbx
	je	.Lj767
	cmpq	$1,-16(%rbx)
	je	.Lj767
	call	SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
	movq	%rax,%rbx
	.balign 4,0x90
.Lj767:
# [413] end;
	movq	%rbx,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc421:

.section .text.n_fpc_ansistr_sint,"x"
	.balign 16,0x90
.globl	fpc_ansistr_sint
fpc_ansistr_sint:
.globl	FPC_ANSISTR_VALSINT
FPC_ANSISTR_VALSINT:
.Lc423:
.seh_proc fpc_ansistr_sint
# [416] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc425:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var v located in register rax
# Var len located in register rdx
# Var s located in register r8
# Var cp located in register r9d
	movq	$0,(%r8)
# [417] writeln('fpc_ansistr_sint');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld26(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [418] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc424:

.section .text.n_system_$$_fpcchartoansistr$char$longword$$rawbytestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING:
.Lc426:
.seh_proc SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
# [422] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc428:
.seh_stackalloc 48
.seh_endprologue
# Var c located at rsp+32, size=OS_8
	movq	%rcx,%rbx
# Var $result located in register rbx
	movb	%dl,32(%rsp)
# Var cp located in register r8d
# [423] pointer(result) := new_ansistring(1);
	movl	$1,%ecx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,(%rbx)
# [424] move(c, result[1], 1);
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	movq	%rax,%rdx
	leaq	32(%rsp),%rcx
	movl	$1,%r8d
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [425] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc427:

.section .text.n_fpc_char_to_ansistr,"x"
	.balign 16,0x90
.globl	fpc_char_to_ansistr
fpc_char_to_ansistr:
.Lc429:
.seh_proc fpc_char_to_ansistr
# [427] begin
	leaq	-40(%rsp),%rsp
.Lc431:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var c located in register dl
# Var cp located in register r8d
# Var cp located in register r8d
# Var c located in register dl
# [428] Exit(fpcchartoansistr(c, cp));
	andl	$255,%edx
	call	SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
# [429] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc430:

.section .text.n_system_$$_fpcansistrcompareequal$rawbytestring$rawbytestring$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64:
.Lc432:
.seh_proc SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
# [442] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc434:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rbx
# Var s1 located in register rcx
# Var s2 located in register rdx
# [443] if pointer(s1) = pointer(s2) then exit(0);
	cmpq	%rcx,%rdx
	jne	.Lj778
	xorl	%ebx,%ebx
	jmp	.Lj775
	.balign 4,0x90
.Lj778:
# [444] if (pointer(s1) = nil) or (pointer(s2) = nil) then exit(-1);
	testq	%rcx,%rcx
	je	.Lj779
	testq	%rdx,%rdx
	jne	.Lj781
.Lj779:
	movq	$-1,%rbx
	jmp	.Lj775
	.balign 4,0x90
.Lj781:
# [445] if length(s1) <> length(s2) then exit(-1);
	movq	%rcx,%rax
	testq	%rcx,%rcx
	je	.Lj782
	movq	-8(%rax),%rax
.Lj782:
	movq	%rdx,%r8
	testq	%rdx,%rdx
	je	.Lj783
	movq	-8(%r8),%r8
.Lj783:
	cmpq	%r8,%rax
	je	.Lj785
	movq	$-1,%rbx
	jmp	.Lj775
	.balign 4,0x90
.Lj785:
# [446] result := CompareByte(s1[1], s2[1], length(s1));
	movq	%rcx,%r8
	testq	%rcx,%rcx
	je	.Lj786
	movq	-8(%r8),%r8
.Lj786:
	call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
	movq	%rax,%rbx
.Lj775:
# [447] end;
	movq	%rbx,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc433:

.section .text.n_fpc_ansistr_compare_equal,"x"
	.balign 16,0x90
.globl	fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
.globl	FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
.Lc435:
.seh_proc fpc_ansistr_compare_equal
# [449] begin
	leaq	-40(%rsp),%rsp
.Lc437:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var s1 located in register rcx
# Var s2 located in register rdx
# Var s2 located in register rdx
# Var s1 located in register rcx
# [450] result := fpcansistrcompareequal(s1, s2);
	call	SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
# Var $result located in register rax
# [451] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc436:

.section .text.n_system_$$_fpcansistrcopy$rawbytestring$int64$int64$$rawbytestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING:
.Lc438:
.seh_proc SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
# [465] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-32(%rsp),%rsp
.Lc440:
.seh_stackalloc 32
.seh_endprologue
# Var ResultAddress located in register rax
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var s located in register rsi
	movq	%r8,%rdi
# Var index located in register rdi
	movq	%r9,%r12
# Var size located in register r12
# Var ResultAddress located in register r13
# [466] ResultAddress:=Nil;
	xorq	%r13,%r13
# [467] dec(index);
	subq	$1,%rdi
# [468] if Index < 0 then
	testq	%rdi,%rdi
	jnl	.Lj792
# [469] Index := 0;
	xorl	%edi,%edi
	.balign 4,0x90
.Lj792:
# [472] if (Size>Length(S)) or
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj793
	movq	-8(%rax),%rax
.Lj793:
	cmpq	%r12,%rax
	jl	.Lj794
# [473] (Index+Size>Length(S)) then
	leaq	(%rdi,%r12),%rdx
	cmpq	%rax,%rdx
	jng	.Lj796
.Lj794:
# [474] Size:=Length(S)-Index;
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj797
	movq	-8(%rax),%rax
.Lj797:
	subq	%rdi,%rax
	movq	%rax,%r12
	.balign 4,0x90
.Lj796:
# [475] If Size>0 then
	testq	%r12,%r12
	jng	.Lj799
# [477] ResultAddress:=new_ansistring(size);
	movq	%r12,%rcx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,%r13
# [478] if ResultAddress<>Nil then
	testq	%rax,%rax
	je	.Lj801
# [480] Move(Pointer(Pointer(S)+index)^,ResultAddress^,Size);
	leaq	(%rsi,%rdi),%rcx
	movq	%r13,%rdx
	movq	%r12,%r8
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [481] PByte(ResultAddress+Size)^:=0;
	leaq	(%r12,%r13),%rax
	movb	$0,(%rax)
# [482] PAnsiRec(ResultAddress-AnsiFirstOff)^.Len:=Size;
	movq	%r12,-8(%r13)
# [483] PAnsiRec(ResultAddress-AnsiFirstOff)^.CodePage:=PAnsiRec(Pointer(S)-AnsiFirstOff)^.CodePage;
	movl	-32(%rsi),%eax
	movl	%eax,-32(%r13)
	.balign 4,0x90
.Lj801:
	.balign 4,0x90
.Lj799:
# [486] fpc_ansistr_decr_ref(Pointer(fpcansistrcopy));
	movq	%rbx,%rcx
	call	FPC_ANSISTR_DECR_REF
# Var ResultAddress located in register r13
# [487] Pointer(fpcansistrCopy):=ResultAddress;
	movq	%r13,(%rbx)
# [488] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc439:

.section .text.n_fpc_ansistr_copy,"x"
	.balign 16,0x90
.globl	fpc_ansistr_copy
fpc_ansistr_copy:
.Lc441:
.seh_proc fpc_ansistr_copy
# [498] begin
	leaq	-40(%rsp),%rsp
.Lc443:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var s located in register rdx
# Var index located in register r8
# Var size located in register r9
# Var size located in register r9
# Var index located in register r8
# Var s located in register rdx
# [499] result := fpcansistrcopy(s, index, size);
	call	SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
# [500] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc442:

.section .text.n_system_$$_fpcwidestrassign$pointer$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER:
.Lc444:
.seh_proc SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
# [512] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc446:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var s1 located in register rbx
	movq	%rdx,%rsi
# Var s2 located in register rsi
# [513] if s1 = s2 then exit;
	cmpq	(%rbx),%rsi
	je	.Lj804
	.balign 4,0x90
# [514] if s2 <> nil then begin
	testq	%rsi,%rsi
	je	.Lj809
# [515] setlength(widestring(s1), length(widestring(s2)));
	movq	%rsi,%rdx
	testq	%rsi,%rsi
	je	.Lj810
	movl	-4(%rdx),%edx
	shrq	$1,%rdx
.Lj810:
	movq	%rbx,%rcx
	call	fpc_widestr_setlength
# [516] move(s2^, s1^, length(widestring(s1))+1*sizeof(WideChar));
	movq	(%rbx),%rax
	testq	%rax,%rax
	je	.Lj811
	movl	-4(%rax),%eax
	shrq	$1,%rax
.Lj811:
	leaq	2(%rax),%r8
	movq	(%rbx),%rdx
	movq	%rsi,%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
	jmp	.Lj812
.Lj809:
# [518] fpc_widestr_decr_ref(s1); // will set s1 to nil
	movq	%rbx,%rcx
	call	fpc_widestr_decr_ref
.Lj812:
.Lj804:
# [519] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc445:

.section .text.n_fpc_widestr_assign,"x"
	.balign 16,0x90
.globl	fpc_widestr_assign
fpc_widestr_assign:
.globl	FPC_WIDESTR_ASSIGN
FPC_WIDESTR_ASSIGN:
.Lc447:
.seh_proc fpc_widestr_assign
# [521] begin
	leaq	-40(%rsp),%rsp
.Lc449:
.seh_stackalloc 40
.seh_endprologue
# Var s1 located in register rax
# Var s2 located in register rdx
# Var s2 located in register rdx
# [522] fpcwidestrassign(s1, s2);
	call	SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
# [523] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc448:

.section .text.n_fpc_widestr_setlength,"x"
	.balign 16,0x90
.globl	fpc_widestr_setlength
fpc_widestr_setlength:
.globl	FPC_WIDESTR_SETLENGTH
FPC_WIDESTR_SETLENGTH:
.Lc450:
.seh_proc fpc_widestr_setlength
# [534] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc452:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var s located in register rbx
	movq	%rdx,%rcx
# Var l located in register rcx
# Var l located in register rcx
# [535] pointer(s) := new_widestring(l);
	call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
	movq	%rax,(%rbx)
# [536] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc451:

.section .text.n_system_$$_fpcwidestrdecrref$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
SYSTEM_$$_FPCWIDESTRDECRREF$POINTER:
.Lc453:
.seh_proc SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
# [540] Begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc455:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var s located in register rbx
# [541] if s = nil then exit;
	cmpq	$0,(%rbx)
	je	.Lj817
	.balign 4,0x90
# [542] dec(s, WideFirstOff);
	subq	$4,(%rbx)
# [543] xfreemem(s);
	movq	(%rbx),%rcx
	call	_$dll$rtllib$xfreemem
# [544] s := nil;
	movq	$0,(%rbx)
.Lj817:
# [545] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc454:

.section .text.n_fpc_widestr_decr_ref,"x"
	.balign 16,0x90
.globl	fpc_widestr_decr_ref
fpc_widestr_decr_ref:
.globl	FPC_WIDESTR_DECR_REF
FPC_WIDESTR_DECR_REF:
.Lc456:
.seh_proc fpc_widestr_decr_ref
# [547] begin
	leaq	-40(%rsp),%rsp
.Lc458:
.seh_stackalloc 40
.seh_endprologue
# Var s located in register rax
# [548] fpcwidestrdecrref(s);
	call	SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
# [549] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc457:

.section .text.n_system_$$_fpcwidestrincrref$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
SYSTEM_$$_FPCWIDESTRINCRREF$POINTER:
.Lc459:
.seh_proc SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
# [566] Begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc461:
.seh_stackalloc 40
.seh_endprologue
# Var p located in register rax
	movq	%rcx,%rbx
# Var s located in register rbx
# [567] if s = nil then exit;
	cmpq	$0,(%rbx)
	je	.Lj823
	.balign 4,0x90
# [568] p := new_widestring(length(WideString(s)));
	movq	(%rbx),%rcx
	testq	%rcx,%rcx
	je	.Lj827
	movl	-4(%rcx),%ecx
	shrq	$1,%rcx
.Lj827:
	call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
	movq	%rax,%rsi
# Var p located in register rsi
# [569] move(s^, p^, (length(WideString(s))+1)*sizeof(widechar));
	movq	(%rbx),%rax
	testq	%rax,%rax
	je	.Lj828
	movl	-4(%rax),%eax
	shrq	$1,%rax
.Lj828:
	leaq	1(%rax),%r8
	shlq	$1,%r8
	movq	(%rbx),%rcx
# Var p located in register rsi
	movq	%rsi,%rdx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# Var p located in register rsi
# [570] s := p;
	movq	%rsi,(%rbx)
.Lj823:
# [571] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc460:

.section .text.n_fpc_widestr_incr_ref,"x"
	.balign 16,0x90
.globl	fpc_widestr_incr_ref
fpc_widestr_incr_ref:
.globl	FPC_WIDESTR_INCR_REF
FPC_WIDESTR_INCR_REF:
.Lc462:
.seh_proc fpc_widestr_incr_ref
# [573] begin
	leaq	-40(%rsp),%rsp
.Lc464:
.seh_stackalloc 40
.seh_endprologue
# Var s located in register rax
# [574] fpcwidestrincrref(s);
	call	SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
# [575] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc463:

.section .text.n_fpc_pchar_to_shortstr,"x"
	.balign 16,0x90
.globl	fpc_pchar_to_shortstr
fpc_pchar_to_shortstr:
.globl	FPC_PCHAR_TO_SHORTSTR
FPC_PCHAR_TO_SHORTSTR:
.Lc465:
.seh_proc fpc_pchar_to_shortstr
# [593] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc467:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var res located in register rax
# Var p located in register rdx
# [594] writeln('fpc_pchar_to_shortstr');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld27(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [595] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc466:

.section .text.n_system_$$_fpcpchartoansistr$pansichar$longword$$rawbytestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING:
.Lc468:
.seh_proc SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
# [601] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc470:
.seh_stackalloc 32
.seh_endprologue
# Var l located in register eax
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var p located in register rsi
# Var cp located in register r8d
# Var p located in register rsi
# [602] l := strlen(p);
	movq	%rsi,%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
	movl	%eax,%edi
# Var l located in register edi
# [603] pointer(result) := new_ansistring(l);
	movl	%edi,%ecx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,(%rbx)
# [604] move(p^, result[1], l);
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	movq	%rax,%rdx
	movl	%edi,%r8d
	movq	%rsi,%rcx
# Var p located in register rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [605] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc469:

.section .text.n_fpc_pchar_to_ansistr,"x"
	.balign 16,0x90
.globl	fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
.Lc471:
.seh_proc fpc_pchar_to_ansistr
# [607] begin
	leaq	-40(%rsp),%rsp
.Lc473:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rdx
# Var cp located in register r8d
# Var cp located in register r8d
# Var p located in register rdx
# [608] result := fpcpchartoansistr(p, cp);
	call	SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
# [609] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc472:

.section .text.n_system_$$_fpcpwidechartowidestr$pwidechar$$widestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING:
.Lc474:
.seh_proc SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
# [627] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc476:
.seh_stackalloc 32
.seh_endprologue
# Var len located in register rax
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var p located in register rsi
# [628] result := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_widestr_assign
# [629] if p = nil then exit;
	testq	%rsi,%rsi
	je	.Lj837
	.balign 4,0x90
# Var p located in register rsi
# [630] len := IndexWord(p^, -1, 0);
	movq	%rsi,%rcx
	xorl	%r8d,%r8d
	movq	$-1,%rdx
	call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
	movq	%rax,%rdi
# Var len located in register rdi
# [631] setlength(result, len);
	movq	%rbx,%rcx
# Var len located in register rdi
	movq	%rdi,%rdx
	call	fpc_widestr_setlength
# [632] if len > 0 then move(p^, result[1], len*2);
	testq	%rdi,%rdi
	jng	.Lj842
	movq	%rdi,%r8
	shlq	$1,%r8
	movq	(%rbx),%rdx
	movq	%rsi,%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
	.balign 4,0x90
.Lj842:
.Lj837:
# [633] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc475:

.section .text.n_fpc_pwidechar_to_widestr,"x"
	.balign 16,0x90
.globl	fpc_pwidechar_to_widestr
fpc_pwidechar_to_widestr:
.Lc477:
.seh_proc fpc_pwidechar_to_widestr
# [635] begin
	leaq	-40(%rsp),%rsp
.Lc479:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rdx
# Var p located in register rdx
# [636] result := fpcpwidechartowidestr(p);
	call	SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
# [637] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc478:

.section .text.n_system_$$_fpcpwidechartoansistr$pwidechar$longword$$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING:
.Lc480:
.seh_proc SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
# [651] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc482:
.seh_stackalloc 40
.seh_endprologue
# Var len located in register rax
# Var i located in register r12
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var p located in register rsi
# Var cp located in register r8d
# [652] result := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
# [653] if p = nil then exit;
	testq	%rsi,%rsi
	je	.Lj845
	.balign 4,0x90
# Var p located in register rsi
# [654] len := IndexWord(p^, -1, 0);
	movq	%rsi,%rcx
	xorl	%r8d,%r8d
	movq	$-1,%rdx
	call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
	movq	%rax,%rdi
# Var len located in register rdi
# [655] setlength(result, len);
	movq	%rbx,%rcx
# Var len located in register rdi
	movq	%rdi,%rdx
	xorl	%r8d,%r8d
	call	fpc_ansistr_setlength
# [656] if len > 0 then begin
	testq	%rdi,%rdi
	jng	.Lj850
# [657] for i := 0 to len-1 do begin
	subq	$1,%rdi
	testq	%rdi,%rdi
	jnge	.Lj852
	movq	$-1,%r12
	.balign 8,0x90
.Lj853:
	addq	$1,%r12
# [659] result[1+i] := PAnsiChar(p+i)^;
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	leaq	1(%r12),%rcx
	movq	%r12,%rdx
	shlq	$1,%rdx
	addq	%rsi,%rdx
	movb	(%rdx),%dl
	movb	%dl,-1(%rax,%rcx,1)
	cmpq	%r12,%rdi
	jnle	.Lj853
	.balign 4,0x90
.Lj852:
	.balign 4,0x90
.Lj850:
.Lj845:
# [662] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc481:

.section .text.n_fpc_pwidechar_to_ansistr,"x"
	.balign 16,0x90
.globl	fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
.Lc483:
.seh_proc fpc_pwidechar_to_ansistr
# [664] begin
	leaq	-40(%rsp),%rsp
.Lc485:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rdx
# Var cp located in register r8d
# Var cp located in register r8d
# Var p located in register rdx
# [665] result := fpcpwidechartoansistr(p, cp);
	call	SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
# [666] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc484:

.section .text.n_fpc_uchar_to_ansistr,"x"
	.balign 16,0x90
.globl	fpc_uchar_to_ansistr
fpc_uchar_to_ansistr:
.Lc486:
.seh_proc fpc_uchar_to_ansistr
# [681] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc488:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var $result located in register rax
# Var c located in register dx
# Var cp located in register r8d
# [682] writeln('fpc_uchar_to_ansistr');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld28(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [683] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc487:

.section .text.n_system_$$_strlen_$pchar$$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD:
.Lc489:
# Var $result located in register eax
# Var p located in register rcx
# [691] begin
# Var $result located in register eax
# [692] result := 0;
	movl	$0,%eax
# [693] if p = nil then exit;
	testq	%rcx,%rcx
	jne	.Lj865
	ret
	.balign 4,0x90
# [694] while (p+result)^ <> #0 do inc(result);
	jmp	.Lj865
	.balign 8,0x90
.Lj864:
	addl	$1,%eax
.Lj865:
	movl	%eax,%edx
	addq	%rcx,%rdx
	cmpb	$0,(%rdx)
	jne	.Lj864
# [695] end;
	ret
.Lc490:

.section .text.n_system_$$_strlen$pchar$$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN$PCHAR$$LONGWORD:
.Lc491:
.seh_proc SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
# [697] begin
	leaq	-40(%rsp),%rsp
.Lc493:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register eax
# Var p located in register rcx
# Var p located in register rcx
# [698] Exit(strlen_(p));
	call	SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
# Var $result located in register eax
# [699] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc492:

.section .text.n_system$_$strlen$ansistring$$longword_$$_fin$00000264,"x"
	.balign 16,0x90
SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000264:
.Lc494:
.seh_proc SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000264
# [719] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc496:
.Lc497:
	movq	%rcx,%rbp
.Lc498:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [717] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc495:

.section .text.n_system_$$_strlen$ansistring$$longword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD
SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD:
.Lc499:
# Temps allocated between rbp-16 and rbp-8
.seh_proc SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD
	pushq	%rbp
.seh_pushreg %rbp
.Lc501:
.Lc502:
	movq	%rsp,%rbp
.Lc503:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
	movq	%rbx,-16(%rbp)
.seh_savereg %rbx, 32
.seh_endprologue
# Var s located at rbp-8, size=OS_64
# Var $result located in register ebx
	movq	%rcx,-8(%rbp)
	call	fpc_ansistr_incr_ref
.Lj877:
	nop
.Lj873:
# [718] result := length(s);
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj878
	movq	-8(%rax),%rax
.Lj878:
	movl	%eax,%ebx
.Lj875:
	nop
.Lj874:
	movq	%rbp,%rcx
	call	SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000264
	movl	%ebx,%eax
	movq	-16(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj873
	.rva	.Lj874
	.rva	SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000264

.section .text.n_system_$$_strlen$ansistring$$longword,"x"
.seh_endproc
.Lc500:

.section .text.n_system_$$_newansistring$int64$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
SYSTEM_$$_NEWANSISTRING$INT64$$POINTER:
.Lc504:
.seh_proc SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
# [724] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc506:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rbx
# Var len located in register rbx
# [725] result := GetMem(len+(AnsiFirstOff+SizeOf(AnsiChar)));
	leaq	33(%rbx),%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
# Var $result located in register rax
# [726] if result = nil then exit;
	testq	%rax,%rax
	je	.Lj879
	.balign 4,0x90
# Var len located in register rbx
# [727] PAnsiRec(result)^.len := len;
	movq	%rbx,24(%rax)
# [728] PAnsiRec(result)^.ref := 1;
	movq	$1,16(%rax)
# [729] PAnsiRec(result)^.codepage := DefaultSystemCodePage;
	movl	$1250,(%rax)
# [730] PAnsiRec(result)^.elementsize := SizeOf(AnsiChar);
	movw	$1,4(%rax)
# [731] inc(result, AnsiFirstOff);
	addq	$32,%rax
# [732] PAnsiChar(result)^ := #0; // null terminated
	movb	$0,(%rax)
.Lj879:
# [733] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc505:

.section .text.n_system_$$_new_ansistring$int64$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER:
.Lc507:
.seh_proc SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
# [735] begin
	leaq	-40(%rsp),%rsp
.Lc509:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var len located in register rcx
# Var len located in register rcx
# [736] result := newansistring(len);
	call	SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
# Var $result located in register rax
# [737] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc508:

.section .text.n_system_$$_newwidestring$int64$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER:
.Lc510:
.seh_proc SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
# [750] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc512:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rbx
# Var len located in register rbx
# [751] result := GetMem(len * sizeof(widechar) + WideRecLen);
	movq	%rbx,%rax
	shlq	$1,%rax
	leaq	6(%rax),%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
# Var $result located in register rax
# [752] if result = nil then exit;
	testq	%rax,%rax
	je	.Lj885
	.balign 4,0x90
# [753] PWideRec(result)^.Len := len * 2;
	shlq	$1,%rbx
	movl	%ebx,(%rax)
# [754] PWideRec(result)^.First := #0;
	movw	$0,4(%rax)
# [755] inc(result, WideFirstOff);
	addq	$4,%rax
.Lj885:
# [756] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc511:

.section .text.n_system_$$_new_widestring$int64$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER:
.Lc513:
.seh_proc SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
# [758] begin
	leaq	-40(%rsp),%rsp
.Lc515:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var len located in register rcx
# Var len located in register rcx
# [759] result := newwidestring(len);
	call	SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
# Var $result located in register rax
# [760] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc514:

.section .text.n_system$_$makeuniqueansistring$ansistring$$ansistring_$$_fin$00000265,"x"
	.balign 16,0x90
SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000265:
.Lc516:
.seh_proc SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000265
# [776] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc518:
.Lc519:
	movq	%rcx,%rbp
.Lc520:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [772] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc517:

.section .text.n_system_$$_makeuniqueansistring$ansistring$$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING:
.Lc521:
# Temps allocated between rbp-16 and rbp-8
.seh_proc SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc523:
.Lc524:
	movq	%rsp,%rbp
.Lc525:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
	movq	%rbx,-16(%rbp)
.seh_savereg %rbx, 32
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,-8(%rbp)
	movq	%rdx,%rcx
	call	fpc_ansistr_incr_ref
.Lj899:
	nop
.Lj895:
# [773] pointer(result) := new_ansistring(length(s));
	movq	-8(%rbp),%rcx
	testq	%rcx,%rcx
	je	.Lj900
	movq	-8(%rcx),%rcx
.Lj900:
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,(%rbx)
# [774] setlength(result, length(s));
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	je	.Lj901
	movq	-8(%rdx),%rdx
.Lj901:
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_ansistr_setlength
# [775] move(s[1], result[1], length(s));
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	movq	%rax,%rdx
	movq	-8(%rbp),%r8
	testq	%r8,%r8
	je	.Lj902
	movq	-8(%r8),%r8
.Lj902:
	movq	-8(%rbp),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
.Lj897:
	nop
.Lj896:
	movq	%rbp,%rcx
	call	SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000265
	movq	-16(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj895
	.rva	.Lj896
	.rva	SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000265

.section .text.n_system_$$_makeuniqueansistring$ansistring$$ansistring,"x"
.seh_endproc
.Lc522:

.section .text.n_system$_$make_unique_ansistring$ansistring$$ansistring_$$_fin$00000267,"x"
	.balign 16,0x90
SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000267:
.Lc526:
.seh_proc SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000267
# [780] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc528:
.Lc529:
	movq	%rcx,%rbp
.Lc530:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [778] begin
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc527:

.section .text.n_system_$$_make_unique_ansistring$ansistring$$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING:
.Lc531:
# Temps allocated between rbp-16 and rbp-8
.seh_proc SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc533:
.Lc534:
	movq	%rsp,%rbp
.Lc535:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movq	%rcx,%rax
# Var $result located in register rax
	movq	%rdx,-8(%rbp)
	movq	%rdx,%rcx
	call	fpc_ansistr_incr_ref
	movq	$0,-16(%rbp)
.Lj911:
	nop
.Lj907:
# [779] makeuniqueansistring(s);
	movq	-8(%rbp),%rdx
	leaq	-16(%rbp),%rcx
	call	SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
.Lj909:
	nop
.Lj908:
	movq	%rbp,%rcx
	call	SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000267
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj907
	.rva	.Lj908
	.rva	SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000267

.section .text.n_system_$$_make_unique_ansistring$ansistring$$ansistring,"x"
.seh_endproc
.Lc532:

.section .text.n_system$_$makeuniqueansistring$pointer$$pointer_$$_fin$00000268,"x"
	.balign 16,0x90
SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$00000268:
.Lc536:
.seh_proc SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$00000268
# [800] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc538:
.Lc539:
	movq	%rcx,%rbp
.Lc540:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [795] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc537:

.section .text.n_system_$$_makeuniqueansistring$pointer$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER:
.Lc541:
# Temps allocated between rbp-24 and rbp-16
.seh_proc SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
	pushq	%rbp
.seh_pushreg %rbp
.Lc543:
.Lc544:
	movq	%rsp,%rbp
.Lc545:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
# Var $result located in register rbx
# Var a located at rbp-8, size=OS_64
# Var s located at rbp-16, size=OS_64
# Var p located in register rcx
	movq	$0,-16(%rbp)
.Lj920:
	nop
.Lj916:
# [796] a := PAnsiRec(p-AnsiFirstOff);
	leaq	-32(%rcx),%rax
	movq	%rax,-8(%rbp)
# [797] pointer(s) := new_ansistring(a^.len);
	movq	24(%rax),%rcx
	call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
	movq	%rax,-16(%rbp)
# [798] move(a, s[1], a^.len);
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_unique
	movq	%rax,%rdx
	movq	-8(%rbp),%rax
	movq	24(%rax),%r8
	leaq	-8(%rbp),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [799] pointer(result) := pointer(a+AnsiFirstOff);
	movq	-8(%rbp),%rax
	addq	$1024,%rax
	movq	%rax,%rbx
.Lj918:
	nop
.Lj917:
	movq	%rbp,%rcx
	call	SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$00000268
	movq	%rbx,%rax
	movq	-24(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj916
	.rva	.Lj917
	.rva	SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$00000268

.section .text.n_system_$$_makeuniqueansistring$pointer$$pointer,"x"
.seh_endproc
.Lc542:

.section .text.n_system_$$_make_unique_ansistring$pointer$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER:
.Lc546:
.seh_proc SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER
# [802] begin
	leaq	-40(%rsp),%rsp
.Lc548:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
# Var p located in register rcx
# [803] result := makeuniqueansistring(p);
	call	SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
# Var $result located in register rax
# [804] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc547:

.section .text.n_system_$$_atoi_exp$pansichar$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT:
.Lc549:
# Var $result located in register eax
# Var i located in register eax
# Var c located in register r9b
# Var str located in register rcx
# [820] begin
# Var $result located in register eax
# [821] result := 0;
	xorl	%eax,%eax
# Var i located in register r8d
# [822] i := 0;
	xorl	%r8d,%r8d
	.balign 8,0x90
.Lj925:
# [824] c := (str+i)^;
	movslq	%r8d,%rdx
	addq	%rcx,%rdx
	movb	(%rdx),%r9b
# [825] if c = #0 then break;
	testb	%r9b,%r9b
	je	.Lj927
	.balign 4,0x90
# [826] inc(i);
	addl	$1,%r8d
# [827] result := result*10 + ord(c)-ord('0');
	imull	$10,%eax,%r10d
	movzbl	%r9b,%edx
	addl	%r10d,%edx
	subl	$48,%edx
	movl	%edx,%eax
# [823] while true do begin
	jmp	.Lj925
.Lj927:
# [829] end;
	ret
.Lc550:

.section .text.n_system_$$_atoi$pansichar$$longint,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ATOI$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI$PANSICHAR$$LONGINT:
.Lc551:
.seh_proc SYSTEM_$$_ATOI$PANSICHAR$$LONGINT
# [831] begin
	leaq	-40(%rsp),%rsp
.Lc553:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register eax
# Var str located in register rcx
# Var str located in register rcx
# [832] result := atoi_exp(str);
	call	SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
# Var $result located in register eax
# [833] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc552:

.section .text.n_system_$$_itoa_exp$longint$longint$$pansichar,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR:
.Lc554:
.seh_proc SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
# [865] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc556:
.seh_stackalloc 40
.seh_endprologue
# Var $result located at rsp+32, size=OS_64
# Var i located in register eax
# Var rem located in register r8d
# Var neg located in register al
	movl	%ecx,%ebx
# Var num located in register ebx
	movl	%edx,%esi
# Var base located in register esi
# Var neg located in register dil
# [847] procedure reverse(str: pansichar; len: integer);
	movb	TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg(%rip),%dil
# [866] result := '0';
	leaq	.Ld29(%rip),%rax
	movq	%rax,32(%rsp)
# [868] if num = 0 then exit;
	testl	%ebx,%ebx
	je	.Lj932
	.balign 4,0x90
# [870] if num < 0 then begin
	testl	%ebx,%ebx
	jnl	.Lj939
# [872] if base <> 10 then exit;
	cmpl	$10,%esi
	jne	.Lj932
	.balign 4,0x90
# [873] neg := true;
	movb	$1,%dil
# [874] num := -num;
	movslq	%ebx,%rax
	negq	%rax
	movl	%eax,%ebx
	.balign 4,0x90
.Lj939:
# [877] result := AllocMem(32);
	movl	$32,%ecx
	call	SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
	movq	%rax,32(%rsp)
# Var i located in register r12d
# [879] i := 0;
	xorl	%r12d,%r12d
# [880] while num <> 0 do begin
	jmp	.Lj943
	.balign 8,0x90
.Lj942:
# [881] rem := num mod base;
	movslq	%ebx,%rax
	movslq	%esi,%rcx
	cqto
	idivq	%rcx
	movl	%edx,%r8d
# [882] if rem > 9 then result[i] := chr((rem-10)+ord('a')) else result[i] := chr(rem+ord('0'));
	cmpl	$9,%r8d
	jng	.Lj946
	movq	32(%rsp),%rcx
	movslq	%r12d,%rax
	leal	-10(%r8d),%edx
	addl	$97,%edx
	movb	%dl,(%rcx,%rax,1)
	jmp	.Lj947
.Lj946:
	movq	32(%rsp),%rcx
	movslq	%r12d,%rax
	leal	48(%r8d),%edx
	movb	%dl,(%rcx,%rax,1)
.Lj947:
# [883] inc(i);
	addl	$1,%r12d
# [884] num := num div base;
	movslq	%ebx,%rax
	movslq	%esi,%rcx
	cqto
	idivq	%rcx
	movl	%eax,%ebx
.Lj943:
	testl	%ebx,%ebx
	jne	.Lj942
# [887] if neg then begin
	testb	%dil,%dil
	je	.Lj949
# [888] result[i] := '-';
	movq	32(%rsp),%rdx
	movslq	%r12d,%rax
	movb	$45,(%rdx,%rax,1)
# [889] inc(i);
	addl	$1,%r12d
	.balign 4,0x90
.Lj949:
# [892] result[i] := #0;
	movq	32(%rsp),%rdx
	movslq	%r12d,%rax
	movb	$0,(%rdx,%rax,1)
# [894] ReAllocMem(result, 32);
	leaq	32(%rsp),%rcx
	movl	$32,%edx
	call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
# [896] reverse(result, i);
	movl	%r12d,%r8d
# Var i located in register r8d
	movq	32(%rsp),%rdx
	movq	%rsp,%rcx
	call	SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT
.Lj932:
# [897] end;
	movq	32(%rsp),%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc555:

.section .text.n_system$_$itoa_exp$longint$longint$$pansichar_$$_reverse$pansichar$longint,"x"
	.balign 16,0x90
SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT:
.Lc557:
.seh_proc SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT
# [851] begin
	leaq	-8(%rsp),%rsp
.Lc559:
.seh_stackalloc 8
.seh_endprologue
# Var $parentfp located at rsp+0, size=OS_64
# Var st located in register eax
# Var en located in register eax
# Var tmp located in register r11b
	movq	%rcx,(%rsp)
# Var str located in register rdx
# Var len located in register r8d
# Var st located in register r9d
# [852] st := 0;
	xorl	%r9d,%r9d
# [853] en := len-1;
	leal	-1(%r8d),%eax
# Var en located in register eax
# [854] while st < en do begin
	jmp	.Lj951
	.balign 8,0x90
.Lj950:
# [855] tmp := str[st];
	movslq	%r9d,%rcx
	movb	(%rdx,%rcx,1),%r11b
	movq	%rdx,%rcx
# [856] str[st] := str[en];
	movslq	%r9d,%r8
	movslq	%eax,%r10
	movb	(%rcx,%r10,1),%r10b
	movb	%r10b,(%rcx,%r8,1)
# [857] str[en] := tmp;
	movslq	%eax,%rcx
	movb	%r11b,(%rdx,%rcx,1)
# [858] inc(st);
	addl	$1,%r9d
# [859] dec(en);
	subl	$1,%eax
.Lj951:
	cmpl	%r9d,%eax
	jg	.Lj950
# [861] end;
	leaq	8(%rsp),%rsp
	ret
.seh_endproc
.Lc558:

.section .text.n_system_$$_itoa$longint$longint$$pansichar,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR:
.Lc560:
.seh_proc SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
# [899] begin
	leaq	-40(%rsp),%rsp
.Lc562:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var num located in register ecx
# Var base located in register edx
# Var base located in register edx
# Var num located in register ecx
# [900] result := itoa_exp(num, base);
	call	SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
# Var $result located in register rax
# [901] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc561:

.section .text.n_system_$$_utf8decode$pansichar$pansichar$longword$byte$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN:
.Lc563:
.seh_proc SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN
# [unicode.inc]
# [39] begin
	pushq	%rbx
.seh_pushreg %rbx
.seh_endprologue
# Var $result located in register al
# Var cur located in register rcx
# Var curend located in register rdx
# Var codepoint located in register r8
# Var size located in register r9
# [40] if (curend <> nil) and not (cur < curend) then exit(false);
	testq	%rdx,%rdx
	je	.Lj958
	cmpq	(%rcx),%rdx
	jnbe	.Lj958
	xorb	%al,%al
	jmp	.Lj955
	.balign 4,0x90
.Lj958:
# [41] if cur^ = #0 then exit(false);
	movq	(%rcx),%r10
	cmpb	$0,(%r10)
	jne	.Lj961
	xorb	%al,%al
	jmp	.Lj955
	.balign 4,0x90
.Lj961:
# [42] if (byte(cur^) and $f0 = $f0) then begin
	movq	(%rcx),%r10
	movb	(%r10),%r10b
	andb	$240,%r10b
	cmpb	$240,%r10b
	jne	.Lj963
# [44] if (curend <> nil) and (cur+4 > curend) then exit(false);
	testq	%rdx,%rdx
	je	.Lj965
	movq	(%rcx),%r10
	addq	$4,%r10
	cmpq	%rdx,%r10
	jna	.Lj965
	xorb	%al,%al
	jmp	.Lj955
	.balign 4,0x90
.Lj965:
	movq	(%rcx),%rbx
# [46] or ((byte((cur+1)^) and $3f) shl 12)
	movw	1(%rbx),%r10w
	andw	$63,%r10w
	movswl	%r10w,%r10d
	shll	$12,%r10d
# [45] codepoint := ((byte(cur^) and $07) shl 18)
	movw	(%rbx),%r11w
	andw	$7,%r11w
	movswl	%r11w,%r11d
	shll	$18,%r11d
	orl	%r11d,%r10d
# [47] or ((byte((cur+2)^) and $3f) shl 6)
	movw	2(%rbx),%r11w
	andw	$63,%r11w
	movswl	%r11w,%r11d
	shll	$6,%r11d
	orl	%r11d,%r10d
# [48] or ((byte((cur+3)^) and $3f));
	movw	3(%rbx),%r11w
	andw	$63,%r11w
	movswl	%r11w,%r11d
	orl	%r11d,%r10d
	movl	%r10d,(%r8)
# [49] size := 4;
	movb	$4,(%r9)
	jmp	.Lj967
.Lj963:
# [51] else if (byte(cur^) and $e0 = $e0) then begin
	movq	(%rcx),%r10
	movb	(%r10),%r10b
	andb	$224,%r10b
	cmpb	$224,%r10b
	jne	.Lj969
# [53] if (curend <> nil) and (cur+3 > curend) then exit(false);
	testq	%rdx,%rdx
	je	.Lj971
	movq	(%rcx),%r10
	addq	$3,%r10
	cmpq	%rdx,%r10
	jna	.Lj971
	xorb	%al,%al
	jmp	.Lj955
	.balign 4,0x90
.Lj971:
	movq	(%rcx),%rbx
# [55] or ((byte((cur+1)^) and $3f) shl 6)
	movw	1(%rbx),%r10w
	andw	$63,%r10w
	movswl	%r10w,%r10d
	shll	$6,%r10d
# [54] codepoint := ((byte(cur^) and $0f) shl 12)
	movw	(%rbx),%r11w
	andw	$15,%r11w
	movswl	%r11w,%r11d
	shll	$12,%r11d
	orl	%r11d,%r10d
# [56] or ((byte((cur+2)^) and $3f));
	movw	2(%rbx),%r11w
	andw	$63,%r11w
	movswl	%r11w,%r11d
	orl	%r11d,%r10d
	movl	%r10d,(%r8)
# [57] size := 3;
	movb	$3,(%r9)
	jmp	.Lj973
.Lj969:
# [59] else if (byte(cur^) and $c0 = $c0) then begin
	movq	(%rcx),%r10
	movb	(%r10),%r10b
	andb	$192,%r10b
	cmpb	$192,%r10b
	jne	.Lj975
# [61] if (curend <> nil) and (cur+2 > curend) then exit(false);
	testq	%rdx,%rdx
	je	.Lj977
	movq	(%rcx),%r10
	addq	$2,%r10
	cmpq	%rdx,%r10
	jna	.Lj977
	xorb	%al,%al
	jmp	.Lj955
	.balign 4,0x90
.Lj977:
	movq	(%rcx),%r10
# [63] or ((byte((cur+1)^) and $3f));
	movw	1(%r10),%dx
	andw	$63,%dx
	movswl	%dx,%edx
# [62] codepoint := ((byte(cur^) and $1f) shl 6)
	movw	(%r10),%r10w
	andw	$31,%r10w
	movswl	%r10w,%r10d
	shll	$6,%r10d
	orl	%r10d,%edx
	movl	%edx,(%r8)
# [64] size := 2;
	movb	$2,(%r9)
	jmp	.Lj979
.Lj975:
# [68] codepoint := byte(cur^);
	movq	(%rcx),%rdx
	movzbl	(%rdx),%edx
	movl	%edx,(%r8)
# [69] size := 1;
	movb	$1,(%r9)
.Lj979:
.Lj973:
.Lj967:
# [71] inc(cur, size);
	movzbl	(%r9),%edx
	addq	%rdx,(%rcx)
# [72] result := true;
	movb	$1,%al
.Lj955:
# [73] end;
	popq	%rbx
	ret
.seh_endproc
.Lc564:

.section .text.n_system$_$utf8encode$longword$$ansistring_$$_fin$0000026e,"x"
	.balign 16,0x90
SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$0000026E:
.Lc565:
.seh_proc SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$0000026E
# [94] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc567:
.Lc568:
	movq	%rcx,%rbp
.Lc569:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [76] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc566:

.section .text.n_system_$$_utf8encode$longword$$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING
SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING:
.Lc570:
# Temps allocated between rbp-24 and rbp+0
.seh_proc SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc572:
.Lc573:
	movq	%rsp,%rbp
.Lc574:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
	movq	%rcx,%rbx
# Var $result located in register rbx
	movl	%edx,%esi
# Var codepoint located in register esi
	movq	$0,-8(%rbp)
.Lj988:
	nop
.Lj984:
# [77] if codepoint <= $7F then
	cmpl	$127,%esi
	jnbe	.Lj990
# [78] result := ansichar(codepoint)
	movzbl	%sil,%edx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_char_to_ansistr
	jmp	.Lj991
.Lj990:
# [79] else if codepoint <= $7ff then begin
	cmpl	$2047,%esi
	jnbe	.Lj993
# [80] result := ansichar($c0 or (codepoint shr 6));
	movl	%esi,%edx
	shrl	$6,%edx
	orl	$192,%edx
	andl	$255,%edx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_char_to_ansistr
# [81] result := result + ansichar($80 or (codepoint and $3f));
	movl	%esi,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
	jmp	.Lj994
.Lj993:
# [83] else if codepoint <= $ffff then begin
	cmpl	$65535,%esi
	jnbe	.Lj996
# [84] result := ansichar($e0 or (codepoint shr 12));
	movl	%esi,%edx
	shrl	$12,%edx
	orl	$224,%edx
	andl	$255,%edx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_char_to_ansistr
# [85] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
	movl	%esi,%edx
	shrl	$6,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [86] result := result + ansichar($80 or (codepoint and $3f));
	movl	%esi,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
	jmp	.Lj997
.Lj996:
# [89] result := ansichar($f0 or (codepoint shr 18));
	movl	%esi,%edx
	shrl	$18,%edx
	orl	$240,%edx
	andl	$255,%edx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_char_to_ansistr
# [90] result := result + ansichar($80 or ((codepoint shr 12) and $3f));
	movl	%esi,%edx
	shrl	$12,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [91] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
	movl	%esi,%edx
	shrl	$6,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [92] result := result + ansichar($80 or (codepoint and $3f));
	movl	%esi,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
.Lj997:
.Lj994:
.Lj991:
.Lj986:
	nop
.Lj985:
	movq	%rbp,%rcx
	call	SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$0000026E
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj984
	.rva	.Lj985
	.rva	SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$0000026E

.section .text.n_system_$$_utf8encode$longword$$ansistring,"x"
.seh_endproc
.Lc571:

.section .text.n_system_$$_utf16decode$pwidechar$pwidechar$longword$byte$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN:
.Lc575:
# Var $result located in register al
# Var cur located in register rcx
# Var curend located in register rdx
# Var codepoint located in register r8
# Var size located in register r9
# [97] begin
# [98] if (curend <> nil) and not (cur < curend) then exit(false);
	testq	%rdx,%rdx
	je	.Lj1001
	cmpq	(%rcx),%rdx
	jnbe	.Lj1001
	xorb	%al,%al
	ret
	.balign 4,0x90
.Lj1001:
# [99] if cur^ = #0 then exit(false);
	movq	(%rcx),%r10
	cmpw	$0,(%r10)
	jne	.Lj1004
	xorb	%al,%al
	ret
	.balign 4,0x90
.Lj1004:
# [100] codepoint := dword(cur^);
	movq	(%rcx),%r10
	movzwl	(%r10),%r10d
	movl	%r10d,(%r8)
# [101] size := 1;
	movb	$1,(%r9)
	movl	(%r8),%r10d
# [103] if (codepoint >= $d800) and (codepoint <= $dbff) then begin
	cmpl	$55296,%r10d
	jnae	.Lj1006
	cmpl	$56319,%r10d
	jnbe	.Lj1006
# [104] if (curend = nil) or ((cur+1 <= curend) and (dword((cur+1)^) >= $dc00) and (dword((cur+1)^) <= $dfff)) then begin
	testq	%rdx,%rdx
	je	.Lj1008
	movq	(%rcx),%r10
	addq	$2,%r10
	cmpq	%r10,%rdx
	jnae	.Lj1010
	movzwl	(%r10),%edx
	cmpl	$56320,%edx
	jnae	.Lj1010
	cmpl	$57343,%edx
	jnbe	.Lj1010
.Lj1008:
# [105] codepoint := ((codepoint-$d800) shl 10)+(dword((cur+1)^)-$dc00)+$10000;
	movq	(%rcx),%rdx
	movl	2(%rdx),%edx
	andl	$65535,%edx
	subq	$56320,%rdx
	movl	(%r8),%r10d
	subq	$55296,%r10
	shlq	$10,%r10
	addq	%r10,%rdx
	addq	$65536,%rdx
	movl	%edx,(%r8)
# [106] size := 2;
	movb	$2,(%r9)
	.balign 4,0x90
.Lj1010:
	.balign 4,0x90
.Lj1006:
# [109] inc(cur, size);
	movzbl	(%r9),%edx
	shlq	$1,%rdx
	addq	%rdx,(%rcx)
# [110] result := true;
	movb	$1,%al
# [111] end;
	ret
.Lc576:

.section .text.n_system$_$utf16encode$longword$$unicodestring_$$_fin$0000026f,"x"
	.balign 16,0x90
SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$0000026F:
.Lc577:
.seh_proc SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$0000026F
# [120] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc579:
.Lc580:
	movq	%rcx,%rbp
.Lc581:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [114] begin
	leaq	-8(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc578:

.section .text.n_system_$$_utf16encode$longword$$unicodestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING
SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING:
.Lc582:
# Temps allocated between rbp-24 and rbp+0
.seh_proc SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc584:
.Lc585:
	movq	%rsp,%rbp
.Lc586:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
	movq	%rcx,%rbx
# Var $result located in register rbx
	movl	%edx,%esi
# Var codepoint located in register esi
	movq	$0,-8(%rbp)
.Lj1023:
	nop
.Lj1019:
# [115] if codepoint > $ffff then begin
	cmpl	$65535,%esi
	jna	.Lj1025
# [116] result := widechar($d800+((codepoint-$10000) shr 10));
	movl	%esi,%eax
	subq	$65536,%rax
	shrq	$10,%rax
	leaq	55296(%rax),%rdx
	andl	$65535,%edx
	movq	%rbx,%rcx
	call	fpc_uchar_to_unicodestr
# [117] result := result + widechar($dc00+((codepoint-$10000) and $3ff));
	movl	%esi,%eax
	subl	$65536,%eax
	andl	$1023,%eax
	leal	56320(%eax),%edx
	andl	$65535,%edx
	leaq	-8(%rbp),%rcx
	call	fpc_uchar_to_unicodestr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	call	fpc_unicodestr_concat
	jmp	.Lj1026
.Lj1025:
# [119] result := widechar(codepoint);
	movzwl	%si,%edx
	movq	%rbx,%rcx
	call	fpc_uchar_to_unicodestr
.Lj1026:
.Lj1021:
	nop
.Lj1020:
	movq	%rbp,%rcx
	call	SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$0000026F
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1019
	.rva	.Lj1020
	.rva	SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$0000026F

.section .text.n_system_$$_utf16encode$longword$$unicodestring,"x"
.seh_endproc
.Lc583:

.section .text.n_system$_$utf8toutf16$ansistring$$unicodestring_$$_fin$00000270,"x"
	.balign 16,0x90
SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000270:
.Lc587:
.seh_proc SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000270
# [144] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc589:
.Lc590:
	movq	%rcx,%rbp
.Lc591:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [128] begin
	leaq	-48(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	leaq	-40(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc588:

.section .text.n_system_$$_utf8toutf16$ansistring$$unicodestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING:
.Lc592:
# Temps allocated between rbp-80 and rbp-24
.seh_proc SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc594:
.Lc595:
	movq	%rsp,%rbp
.Lc596:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
	movq	%rbx,-80(%rbp)
	movq	%rdi,-72(%rbp)
	movq	%rsi,-64(%rbp)
	movq	%r12,-56(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rdi, 40
.seh_savereg %rsi, 48
.seh_savereg %r12, 56
.seh_endprologue
# Var utf8 located at rbp-8, size=OS_64
# Var i located in register edi
# Var cur located at rbp-16, size=OS_64
# Var curend located in register rsi
# Var codepoint located at rbp-20, size=OS_32
# Var size located at rbp-24, size=OS_8
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,-8(%rbp)
	movq	%rdx,%rcx
	call	fpc_ansistr_incr_ref
	movq	$0,-48(%rbp)
	movq	$0,-40(%rbp)
.Lj1035:
	nop
.Lj1031:
	movq	-8(%rbp),%rax
	movq	%rax,-32(%rbp)
# [129] curend := @utf8[1]+length(utf8);
	movq	%rax,%rdx
	testq	%rax,%rax
	je	.Lj1036
	movq	-8(%rdx),%rdx
.Lj1036:
	leaq	(%rax,%rdx),%rsi
# [130] result := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_unicodestr_assign
# [131] i := 1;
	movl	$1,%edi
# [132] while i <= length(utf8) do begin
	jmp	.Lj1038
	.balign 8,0x90
.Lj1037:
# [133] cur := @utf8[i];
	movq	-8(%rbp),%rdx
	movslq	%edi,%rax
	leaq	-1(%rdx,%rax,1),%rax
	movq	%rax,-16(%rbp)
# [134] if utf8decode(cur, curend, codepoint, size) then begin
	testq	%rsi,%rsi
	je	.Lj1042
	cmpq	-16(%rbp),%rsi
	jnbe	.Lj1042
	xorb	%cl,%cl
	jmp	.Lj1040
	.balign 4,0x90
.Lj1042:
	movq	-16(%rbp),%rax
	cmpb	$0,(%rax)
	jne	.Lj1045
	xorb	%cl,%cl
	jmp	.Lj1040
	.balign 4,0x90
.Lj1045:
	movq	-16(%rbp),%rax
	movb	(%rax),%al
	andb	$240,%al
	cmpb	$240,%al
	jne	.Lj1047
	testq	%rsi,%rsi
	je	.Lj1049
	movq	-16(%rbp),%rax
	addq	$4,%rax
	cmpq	%rsi,%rax
	jna	.Lj1049
	xorb	%cl,%cl
	jmp	.Lj1040
	.balign 4,0x90
.Lj1049:
	movq	-16(%rbp),%rax
	movw	1(%rax),%ax
	andw	$63,%ax
	movswl	%ax,%eax
	shll	$12,%eax
	movq	-16(%rbp),%rdx
	movw	(%rdx),%dx
	andw	$7,%dx
	movswl	%dx,%edx
	shll	$18,%edx
	orl	%edx,%eax
	movq	-16(%rbp),%rdx
	movw	2(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	shll	$6,%edx
	orl	%edx,%eax
	movq	-16(%rbp),%rdx
	movw	3(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	orl	%edx,%eax
	movl	%eax,-20(%rbp)
	movb	$4,-24(%rbp)
	jmp	.Lj1051
.Lj1047:
	movq	-16(%rbp),%rax
	movb	(%rax),%al
	andb	$224,%al
	cmpb	$224,%al
	jne	.Lj1053
	testq	%rsi,%rsi
	je	.Lj1055
	movq	-16(%rbp),%rax
	addq	$3,%rax
	cmpq	%rsi,%rax
	jna	.Lj1055
	xorb	%cl,%cl
	jmp	.Lj1040
	.balign 4,0x90
.Lj1055:
	movq	-16(%rbp),%rax
	movw	1(%rax),%ax
	andw	$63,%ax
	movswl	%ax,%eax
	shll	$6,%eax
	movq	-16(%rbp),%rdx
	movw	(%rdx),%dx
	andw	$15,%dx
	movswl	%dx,%edx
	shll	$12,%edx
	orl	%edx,%eax
	movq	-16(%rbp),%rdx
	movw	2(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	orl	%edx,%eax
	movl	%eax,-20(%rbp)
	movb	$3,-24(%rbp)
	jmp	.Lj1057
.Lj1053:
	movq	-16(%rbp),%rax
	movb	(%rax),%al
	andb	$192,%al
	cmpb	$192,%al
	jne	.Lj1059
	testq	%rsi,%rsi
	je	.Lj1061
	movq	-16(%rbp),%rax
	addq	$2,%rax
	cmpq	%rsi,%rax
	jna	.Lj1061
	xorb	%cl,%cl
	jmp	.Lj1040
	.balign 4,0x90
.Lj1061:
	movq	-16(%rbp),%rax
	movw	(%rax),%ax
	andw	$31,%ax
	movswl	%ax,%eax
	shll	$6,%eax
	movq	-16(%rbp),%rdx
	movw	1(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	orl	%edx,%eax
	movl	%eax,-20(%rbp)
	movb	$2,-24(%rbp)
	jmp	.Lj1063
.Lj1059:
	movq	-16(%rbp),%rax
	movzbl	(%rax),%eax
	movl	%eax,-20(%rbp)
	movb	$1,-24(%rbp)
.Lj1063:
.Lj1057:
.Lj1051:
	movzbl	-24(%rbp),%eax
	addq	%rax,-16(%rbp)
	movb	$1,%cl
.Lj1040:
	testb	%cl,%cl
	je	.Lj1065
# [136] result := result + utf16encode(codepoint);
	movl	-20(%rbp),%r12d
	cmpl	$65535,%r12d
	jna	.Lj1067
	movl	%r12d,%eax
	subq	$65536,%rax
	shrq	$10,%rax
	leaq	55296(%rax),%rdx
	andl	$65535,%edx
	leaq	-40(%rbp),%rcx
	call	fpc_uchar_to_unicodestr
	movl	%r12d,%eax
	subl	$65536,%eax
	andl	$1023,%eax
	leal	56320(%eax),%edx
	andl	$65535,%edx
	leaq	-48(%rbp),%rcx
	call	fpc_uchar_to_unicodestr
	movq	-48(%rbp),%r8
	movq	-40(%rbp),%rdx
	leaq	-40(%rbp),%rcx
	call	fpc_unicodestr_concat
	jmp	.Lj1068
.Lj1067:
	movzwl	%r12w,%edx
	leaq	-40(%rbp),%rcx
	call	fpc_uchar_to_unicodestr
.Lj1068:
	movq	-40(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	call	fpc_unicodestr_concat
# [137] inc(i, size);
	movzbl	-24(%rbp),%eax
	addl	%eax,%edi
	jmp	.Lj1069
.Lj1065:
# [139] result := result + '?';
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	leaq	.Ld30(%rip),%r8
	call	fpc_unicodestr_concat
# [140] inc(cur);
	addq	$1,-16(%rbp)
# [141] inc(i);
	addl	$1,%edi
.Lj1069:
.Lj1038:
	movslq	%edi,%rax
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	je	.Lj1070
	movq	-8(%rdx),%rdx
.Lj1070:
	cmpq	%rdx,%rax
	jle	.Lj1037
.Lj1033:
	nop
.Lj1032:
	movq	%rbp,%rcx
	call	SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000270
	movq	-80(%rbp),%rbx
	movq	-72(%rbp),%rdi
	movq	-64(%rbp),%rsi
	movq	-56(%rbp),%r12
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1031
	.rva	.Lj1032
	.rva	SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000270

.section .text.n_system_$$_utf8toutf16$ansistring$$unicodestring,"x"
.seh_endproc
.Lc593:

.section .text.n_system$_$utf8toutf16$pansichar$$unicodestring_$$_fin$00000271,"x"
	.balign 16,0x90
SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000271:
.Lc597:
.seh_proc SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000271
# [161] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc599:
.Lc600:
	movq	%rcx,%rbp
.Lc601:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [152] begin
	leaq	-32(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	leaq	-24(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc598:

.section .text.n_system_$$_utf8toutf16$pansichar$$unicodestring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING:
.Lc602:
# Temps allocated between rbp-56 and rbp-16
.seh_proc SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc604:
.Lc605:
	movq	%rsp,%rbp
.Lc606:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
	movq	%rbx,-56(%rbp)
	movq	%rdi,-48(%rbp)
	movq	%rsi,-40(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_endprologue
# Var i located in register edi
# Var cur located at rbp-8, size=OS_64
# Var codepoint located at rbp-12, size=OS_32
# Var size located at rbp-16, size=OS_8
	movq	%rcx,%rbx
# Var $result located in register rbx
# Var utf8 located in register rdx
	movq	$0,-32(%rbp)
	movq	$0,-24(%rbp)
.Lj1079:
	nop
.Lj1075:
# [153] cur := utf8;
	movq	%rdx,-8(%rbp)
# [154] result := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_unicodestr_assign
# [155] i := 1;
	movl	$1,%edi
# [156] while utf8decode(cur, nil, codepoint, size) do begin
	jmp	.Lj1081
	.balign 8,0x90
.Lj1080:
# [158] result := result + utf16encode(codepoint);
	movl	-12(%rbp),%esi
	cmpl	$65535,%esi
	jna	.Lj1084
	movl	%esi,%eax
	subq	$65536,%rax
	shrq	$10,%rax
	leaq	55296(%rax),%rdx
	andl	$65535,%edx
	leaq	-24(%rbp),%rcx
	call	fpc_uchar_to_unicodestr
	movl	%esi,%eax
	subl	$65536,%eax
	andl	$1023,%eax
	leal	56320(%eax),%edx
	andl	$65535,%edx
	leaq	-32(%rbp),%rcx
	call	fpc_uchar_to_unicodestr
	movq	-32(%rbp),%r8
	movq	-24(%rbp),%rdx
	leaq	-24(%rbp),%rcx
	call	fpc_unicodestr_concat
	jmp	.Lj1085
.Lj1084:
	movzwl	%si,%edx
	leaq	-24(%rbp),%rcx
	call	fpc_uchar_to_unicodestr
.Lj1085:
	movq	-24(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	call	fpc_unicodestr_concat
# [159] inc(i, size);
	movzbl	-16(%rbp),%eax
	addl	%eax,%edi
.Lj1081:
	movq	-8(%rbp),%rax
	cmpb	$0,(%rax)
	jne	.Lj1088
	xorb	%cl,%cl
	jmp	.Lj1086
	.balign 4,0x90
.Lj1088:
	movq	-8(%rbp),%rax
	movb	(%rax),%al
	andb	$240,%al
	cmpb	$240,%al
	jne	.Lj1090
	movq	-8(%rbp),%rax
	movw	1(%rax),%ax
	andw	$63,%ax
	movswl	%ax,%eax
	shll	$12,%eax
	movq	-8(%rbp),%rdx
	movw	(%rdx),%dx
	andw	$7,%dx
	movswl	%dx,%edx
	shll	$18,%edx
	orl	%edx,%eax
	movq	-8(%rbp),%rdx
	movw	2(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	shll	$6,%edx
	orl	%edx,%eax
	movq	-8(%rbp),%rdx
	movw	3(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	orl	%edx,%eax
	movl	%eax,-12(%rbp)
	movb	$4,-16(%rbp)
	jmp	.Lj1091
.Lj1090:
	movq	-8(%rbp),%rax
	movb	(%rax),%al
	andb	$224,%al
	cmpb	$224,%al
	jne	.Lj1093
	movq	-8(%rbp),%rax
	movw	1(%rax),%ax
	andw	$63,%ax
	movswl	%ax,%eax
	shll	$6,%eax
	movq	-8(%rbp),%rdx
	movw	(%rdx),%dx
	andw	$15,%dx
	movswl	%dx,%edx
	shll	$12,%edx
	orl	%edx,%eax
	movq	-8(%rbp),%rdx
	movw	2(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	orl	%edx,%eax
	movl	%eax,-12(%rbp)
	movb	$3,-16(%rbp)
	jmp	.Lj1094
.Lj1093:
	movq	-8(%rbp),%rax
	movb	(%rax),%al
	andb	$192,%al
	cmpb	$192,%al
	jne	.Lj1096
	movq	-8(%rbp),%rax
	movw	(%rax),%ax
	andw	$31,%ax
	movswl	%ax,%eax
	shll	$6,%eax
	movq	-8(%rbp),%rdx
	movw	1(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	orl	%edx,%eax
	movl	%eax,-12(%rbp)
	movb	$2,-16(%rbp)
	jmp	.Lj1097
.Lj1096:
	movq	-8(%rbp),%rax
	movzbl	(%rax),%eax
	movl	%eax,-12(%rbp)
	movb	$1,-16(%rbp)
.Lj1097:
.Lj1094:
.Lj1091:
	movzbl	-16(%rbp),%eax
	addq	%rax,-8(%rbp)
	movb	$1,%cl
.Lj1086:
	testb	%cl,%cl
	jne	.Lj1080
.Lj1077:
	nop
.Lj1076:
	movq	%rbp,%rcx
	call	SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000271
	movq	-56(%rbp),%rbx
	movq	-48(%rbp),%rdi
	movq	-40(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1075
	.rva	.Lj1076
	.rva	SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000271

.section .text.n_system_$$_utf8toutf16$pansichar$$unicodestring,"x"
.seh_endproc
.Lc603:

.section .text.n_system$_$utf16toutf8$unicodestring$$ansistring_$$_fin$00000272,"x"
	.balign 16,0x90
SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000272:
.Lc607:
.seh_proc SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000272
# [185] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc609:
.Lc610:
	movq	%rcx,%rbp
.Lc611:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [169] begin
	leaq	-48(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-8(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc608:

.section .text.n_system_$$_utf16toutf8$unicodestring$$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING:
.Lc612:
# Temps allocated between rbp-80 and rbp-24
.seh_proc SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc614:
.Lc615:
	movq	%rsp,%rbp
.Lc616:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
	movq	%rbx,-80(%rbp)
	movq	%rdi,-72(%rbp)
	movq	%rsi,-64(%rbp)
	movq	%r12,-56(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rdi, 40
.seh_savereg %rsi, 48
.seh_savereg %r12, 56
.seh_endprologue
# Var utf16 located at rbp-8, size=OS_64
# Var i located in register edi
# Var cur located at rbp-16, size=OS_64
# Var curend located in register rsi
# Var codepoint located at rbp-20, size=OS_32
# Var size located at rbp-24, size=OS_8
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,-8(%rbp)
	movq	%rdx,%rcx
	call	fpc_unicodestr_incr_ref
	movq	$0,-48(%rbp)
	movq	$0,-40(%rbp)
.Lj1106:
	nop
.Lj1102:
	movq	-8(%rbp),%rax
	movq	%rax,-32(%rbp)
# [170] curend := @utf16[1]+(length(utf16)*2);
	movq	%rax,%rdx
	testq	%rax,%rax
	je	.Lj1107
	movq	-8(%rdx),%rdx
.Lj1107:
	shlq	$1,%rdx
	leaq	(%rax,%rdx),%rsi
# [171] result := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
# [172] i := 1;
	movl	$1,%edi
# [173] while i <= length(utf16) do begin
	jmp	.Lj1109
	.balign 8,0x90
.Lj1108:
# [174] cur := @utf16[i];
	movq	-8(%rbp),%rdx
	movslq	%edi,%rax
	leaq	-2(%rdx,%rax,2),%rax
	movq	%rax,-16(%rbp)
# [175] if utf16decode(cur, curend, codepoint, size) then begin
	testq	%rsi,%rsi
	je	.Lj1113
	cmpq	-16(%rbp),%rsi
	jnbe	.Lj1113
	xorb	%cl,%cl
	jmp	.Lj1111
	.balign 4,0x90
.Lj1113:
	movq	-16(%rbp),%rax
	cmpw	$0,(%rax)
	jne	.Lj1116
	xorb	%cl,%cl
	jmp	.Lj1111
	.balign 4,0x90
.Lj1116:
	movq	-16(%rbp),%rax
	movzwl	(%rax),%eax
	movl	%eax,-20(%rbp)
	movb	$1,-24(%rbp)
	cmpl	$55296,-20(%rbp)
	jnae	.Lj1118
	cmpl	$56319,-20(%rbp)
	jnbe	.Lj1118
	testq	%rsi,%rsi
	je	.Lj1120
	movq	-16(%rbp),%rax
	addq	$2,%rax
	cmpq	%rax,%rsi
	jnae	.Lj1122
	movzwl	(%rax),%eax
	cmpl	$56320,%eax
	jnae	.Lj1122
	cmpl	$57343,%eax
	jnbe	.Lj1122
.Lj1120:
	movq	-16(%rbp),%rax
	movl	2(%rax),%eax
	andl	$65535,%eax
	subq	$56320,%rax
	movl	-20(%rbp),%edx
	subq	$55296,%rdx
	shlq	$10,%rdx
	addq	%rdx,%rax
	addq	$65536,%rax
	movl	%eax,-20(%rbp)
	movb	$2,-24(%rbp)
	.balign 4,0x90
.Lj1122:
	.balign 4,0x90
.Lj1118:
	movzbl	-24(%rbp),%eax
	shlq	$1,%rax
	addq	%rax,-16(%rbp)
	movb	$1,%cl
.Lj1111:
	testb	%cl,%cl
	je	.Lj1128
# [177] result := result + utf8encode(codepoint);
	movl	-20(%rbp),%r12d
	cmpl	$127,%r12d
	jnbe	.Lj1130
	xorl	%r8d,%r8d
	movzbl	%r12b,%edx
	leaq	-40(%rbp),%rcx
	call	fpc_char_to_ansistr
	jmp	.Lj1131
.Lj1130:
	cmpl	$2047,%r12d
	jnbe	.Lj1133
	movl	%r12d,%edx
	shrl	$6,%edx
	orl	$192,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-40(%rbp),%rcx
	call	fpc_char_to_ansistr
	movl	%r12d,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-48(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-48(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-40(%rbp),%rdx
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_concat
	jmp	.Lj1134
.Lj1133:
	cmpl	$65535,%r12d
	jnbe	.Lj1136
	movl	%r12d,%edx
	shrl	$12,%edx
	orl	$224,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-40(%rbp),%rcx
	call	fpc_char_to_ansistr
	movl	%r12d,%edx
	shrl	$6,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-48(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-48(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-40(%rbp),%rdx
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_concat
	movl	%r12d,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-48(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-48(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-40(%rbp),%rdx
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_concat
	jmp	.Lj1137
.Lj1136:
	movl	%r12d,%edx
	shrl	$18,%edx
	orl	$240,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-40(%rbp),%rcx
	call	fpc_char_to_ansistr
	movl	%r12d,%edx
	shrl	$12,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-48(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-48(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-40(%rbp),%rdx
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_concat
	movl	%r12d,%edx
	shrl	$6,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-48(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-48(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-40(%rbp),%rdx
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_concat
	movl	%r12d,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-48(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-48(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-40(%rbp),%rdx
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_concat
.Lj1137:
.Lj1134:
.Lj1131:
	movq	-40(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [178] inc(i, size);
	movzbl	-24(%rbp),%eax
	addl	%eax,%edi
	jmp	.Lj1138
.Lj1128:
# [180] result := result + '?';
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	leaq	.Ld31(%rip),%r8
	call	fpc_ansistr_concat
# [181] inc(cur);
	addq	$2,-16(%rbp)
# [182] inc(i);
	addl	$1,%edi
.Lj1138:
.Lj1109:
	movslq	%edi,%rax
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	je	.Lj1139
	movq	-8(%rdx),%rdx
.Lj1139:
	cmpq	%rdx,%rax
	jle	.Lj1108
.Lj1104:
	nop
.Lj1103:
	movq	%rbp,%rcx
	call	SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000272
	movq	-80(%rbp),%rbx
	movq	-72(%rbp),%rdi
	movq	-64(%rbp),%rsi
	movq	-56(%rbp),%r12
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1102
	.rva	.Lj1103
	.rva	SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000272

.section .text.n_system_$$_utf16toutf8$unicodestring$$ansistring,"x"
.seh_endproc
.Lc613:

.section .text.n_system$_$utf16toutf8$pwidechar$$ansistring_$$_fin$00000273,"x"
	.balign 16,0x90
SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000273:
.Lc617:
.seh_proc SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000273
# [202] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc619:
.Lc620:
	movq	%rcx,%rbp
.Lc621:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [193] begin
	leaq	-32(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc618:

.section .text.n_system_$$_utf16toutf8$pwidechar$$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING:
.Lc622:
# Temps allocated between rbp-56 and rbp-16
.seh_proc SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc624:
.Lc625:
	movq	%rsp,%rbp
.Lc626:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
	movq	%rbx,-56(%rbp)
	movq	%rdi,-48(%rbp)
	movq	%rsi,-40(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_endprologue
# Var i located in register edi
# Var cur located at rbp-8, size=OS_64
# Var codepoint located at rbp-12, size=OS_32
# Var size located at rbp-16, size=OS_8
	movq	%rcx,%rbx
# Var $result located in register rbx
# Var utf16 located in register rdx
	movq	$0,-32(%rbp)
	movq	$0,-24(%rbp)
.Lj1148:
	nop
.Lj1144:
# [194] cur := utf16;
	movq	%rdx,-8(%rbp)
# [195] result := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
# [196] i := 1;
	movl	$1,%edi
# [197] while utf16decode(cur, nil, codepoint, size) do begin
	jmp	.Lj1150
	.balign 8,0x90
.Lj1149:
# [199] result := result + utf8encode(codepoint);
	movl	-12(%rbp),%esi
	cmpl	$127,%esi
	jnbe	.Lj1153
	xorl	%r8d,%r8d
	movzbl	%sil,%edx
	leaq	-24(%rbp),%rcx
	call	fpc_char_to_ansistr
	jmp	.Lj1154
.Lj1153:
	cmpl	$2047,%esi
	jnbe	.Lj1156
	movl	%esi,%edx
	shrl	$6,%edx
	orl	$192,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-24(%rbp),%rcx
	call	fpc_char_to_ansistr
	movl	%esi,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-32(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-32(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-24(%rbp),%rdx
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_concat
	jmp	.Lj1157
.Lj1156:
	cmpl	$65535,%esi
	jnbe	.Lj1159
	movl	%esi,%edx
	shrl	$12,%edx
	orl	$224,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-24(%rbp),%rcx
	call	fpc_char_to_ansistr
	movl	%esi,%edx
	shrl	$6,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-32(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-32(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-24(%rbp),%rdx
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_concat
	movl	%esi,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-32(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-32(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-24(%rbp),%rdx
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_concat
	jmp	.Lj1160
.Lj1159:
	movl	%esi,%edx
	shrl	$18,%edx
	orl	$240,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-24(%rbp),%rcx
	call	fpc_char_to_ansistr
	movl	%esi,%edx
	shrl	$12,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-32(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-32(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-24(%rbp),%rdx
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_concat
	movl	%esi,%edx
	shrl	$6,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-32(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-32(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-24(%rbp),%rdx
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_concat
	movl	%esi,%edx
	andl	$63,%edx
	orl	$128,%edx
	andl	$255,%edx
	xorl	%r8d,%r8d
	leaq	-32(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-32(%rbp),%r8
	xorl	%r9d,%r9d
	movq	-24(%rbp),%rdx
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_concat
.Lj1160:
.Lj1157:
.Lj1154:
	movq	-24(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [200] inc(i, size);
	movzbl	-16(%rbp),%eax
	addl	%eax,%edi
.Lj1150:
	movq	-8(%rbp),%rax
	cmpw	$0,(%rax)
	jne	.Lj1163
	xorb	%cl,%cl
	jmp	.Lj1161
	.balign 4,0x90
.Lj1163:
	movq	-8(%rbp),%rax
	movzwl	(%rax),%eax
	movl	%eax,-12(%rbp)
	movb	$1,-16(%rbp)
	cmpl	$55296,-12(%rbp)
	jnae	.Lj1165
	cmpl	$56319,-12(%rbp)
	jnbe	.Lj1165
	movq	-8(%rbp),%rax
	movl	2(%rax),%eax
	andl	$65535,%eax
	subq	$56320,%rax
	movl	-12(%rbp),%edx
	subq	$55296,%rdx
	shlq	$10,%rdx
	addq	%rdx,%rax
	addq	$65536,%rax
	movl	%eax,-12(%rbp)
	movb	$2,-16(%rbp)
	.balign 4,0x90
.Lj1165:
	movzbl	-16(%rbp),%eax
	shlq	$1,%rax
	addq	%rax,-8(%rbp)
	movb	$1,%cl
.Lj1161:
	testb	%cl,%cl
	jne	.Lj1149
.Lj1146:
	nop
.Lj1145:
	movq	%rbp,%rcx
	call	SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000273
	movq	-56(%rbp),%rbx
	movq	-48(%rbp),%rdi
	movq	-40(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1144
	.rva	.Lj1145
	.rva	SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000273

.section .text.n_system_$$_utf16toutf8$pwidechar$$ansistring,"x"
.seh_endproc
.Lc623:

.section .text.n_system_$$_is_codepoint_newline$longword$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN
SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN:
.Lc627:
# Var $result located in register al
# Var u located in register ecx
# [205] begin
# [206] result := ((u <= 127) and ((u = 10) or (u = 13) or (u = $85))) or ((u = $2028) or (u = $2029));
	cmpl	$127,%ecx
	jnbe	.Lj1170
	cmpl	$10,%ecx
	je	.Lj1171
	cmpl	$13,%ecx
	je	.Lj1171
	cmpl	$133,%ecx
	je	.Lj1171
.Lj1170:
	cmpl	$8232,%ecx
	je	.Lj1171
	cmpl	$8233,%ecx
	jne	.Lj1176
# Var $result located in register al
.Lj1171:
	movb	$1,%al
	ret
.Lj1176:
	xorb	%al,%al
# [207] end;
	ret
.Lc628:

.section .text.n_system_$$_utf8len$pansichar$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64
SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64:
.Lc629:
.seh_proc SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64
# [214] begin
	leaq	-24(%rsp),%rsp
.Lc631:
.seh_stackalloc 24
.seh_endprologue
# Var $result located in register rax
# Var cur located at rsp+0, size=OS_64
# Var codepoint located at rsp+8, size=OS_32
# Var size located at rsp+12, size=OS_8
# Var utf8 located in register rcx
# Var utf8 located in register rcx
# [215] cur := utf8;
	movq	%rcx,(%rsp)
# Var $result located in register rax
# [216] result := 0;
	xorl	%eax,%eax
# [217] while utf8decode(cur, nil, codepoint, size) do begin
	jmp	.Lj1184
	.balign 8,0x90
.Lj1183:
# [218] inc(result);
	addq	$1,%rax
.Lj1184:
	movq	(%rsp),%rdx
	cmpb	$0,(%rdx)
	jne	.Lj1188
	xorb	%r8b,%r8b
	jmp	.Lj1186
	.balign 4,0x90
.Lj1188:
	movq	(%rsp),%rdx
	movb	(%rdx),%dl
	andb	$240,%dl
	cmpb	$240,%dl
	jne	.Lj1190
	movq	(%rsp),%rdx
	movw	1(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	shll	$12,%edx
	movq	(%rsp),%rcx
	movw	(%rcx),%cx
	andw	$7,%cx
	movswl	%cx,%ecx
	shll	$18,%ecx
	orl	%ecx,%edx
	movq	(%rsp),%rcx
	movw	2(%rcx),%cx
	andw	$63,%cx
	movswl	%cx,%ecx
	shll	$6,%ecx
	orl	%ecx,%edx
	movq	(%rsp),%rcx
	movw	3(%rcx),%cx
	andw	$63,%cx
	movswl	%cx,%ecx
	orl	%ecx,%edx
	movl	%edx,8(%rsp)
	movb	$4,12(%rsp)
	jmp	.Lj1191
.Lj1190:
	movq	(%rsp),%rdx
	movb	(%rdx),%dl
	andb	$224,%dl
	cmpb	$224,%dl
	jne	.Lj1193
	movq	(%rsp),%rdx
	movw	1(%rdx),%dx
	andw	$63,%dx
	movswl	%dx,%edx
	shll	$6,%edx
	movq	(%rsp),%rcx
	movw	(%rcx),%cx
	andw	$15,%cx
	movswl	%cx,%ecx
	shll	$12,%ecx
	orl	%ecx,%edx
	movq	(%rsp),%rcx
	movw	2(%rcx),%cx
	andw	$63,%cx
	movswl	%cx,%ecx
	orl	%ecx,%edx
	movl	%edx,8(%rsp)
	movb	$3,12(%rsp)
	jmp	.Lj1194
.Lj1193:
	movq	(%rsp),%rdx
	movb	(%rdx),%dl
	andb	$192,%dl
	cmpb	$192,%dl
	jne	.Lj1196
	movq	(%rsp),%rdx
	movw	(%rdx),%dx
	andw	$31,%dx
	movswl	%dx,%edx
	shll	$6,%edx
	movq	(%rsp),%rcx
	movw	1(%rcx),%cx
	andw	$63,%cx
	movswl	%cx,%ecx
	orl	%ecx,%edx
	movl	%edx,8(%rsp)
	movb	$2,12(%rsp)
	jmp	.Lj1197
.Lj1196:
	movq	(%rsp),%rdx
	movzbl	(%rdx),%edx
	movl	%edx,8(%rsp)
	movb	$1,12(%rsp)
.Lj1197:
.Lj1194:
.Lj1191:
	movzbl	12(%rsp),%edx
	addq	%rdx,(%rsp)
	movb	$1,%r8b
.Lj1186:
	testb	%r8b,%r8b
	jne	.Lj1183
# [220] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc630:

.section .text.n_system_$$_newunicodestring$int64$$pointer,"x"
	.balign 16,0x90
SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER:
.Lc632:
.seh_proc SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
# [ustrings.inc]
# [41] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc634:
.seh_stackalloc 48
.seh_endprologue
# Var $result located at rsp+32, size=OS_64
	movq	%rcx,%rbx
# Var len located in register rbx
# [42] GetMem(result, len*2+sizeof(tunicoderec)+2); {2 for #0}
	movq	%rbx,%rax
# [49] end;
	leaq	24(%rax,%rax,1),%rax
	leaq	2(%rax),%rdx
	leaq	32(%rsp),%rcx
	call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
# [43] punicoderec(result)^.len := len;
	movq	32(%rsp),%rdx
	movq	%rbx,16(%rdx)
# Var len located in register rax
# [44] punicoderec(result)^.ref := 1;
	movq	32(%rsp),%rax
	movq	$1,8(%rax)
# [45] punicoderec(result)^.codepage := DefaultUnicodeCodePage;
	movq	32(%rsp),%rax
	movl	$1200,(%rax)
# [46] punicoderec(result)^.elementsize := 2;
	movq	32(%rsp),%rax
	movw	$2,4(%rax)
# [47] inc(result, ufirstoff);
	addq	$24,32(%rsp)
# [48] PUnicodeChar(result)^ := #0;
	movq	32(%rsp),%rax
	movw	$0,(%rax)
	movq	32(%rsp),%rax
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc633:

.section .text.n_fpc_unicodestr_assign,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_assign
fpc_unicodestr_assign:
.globl	FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
.Lc635:
.seh_proc fpc_unicodestr_assign
# [52] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc637:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var s1 located in register rbx
	movq	%rdx,%rsi
# Var s2 located in register rsi
# [53] if s2 <> nil then
	testq	%rdx,%rdx
	je	.Lj1203
# [54] if punicoderec(s2-ufirstoff)^.ref > 0 then
	cmpq	$0,-16(%rsi)
	jng	.Lj1205
# [55] inc(punicoderec(s2-ufirstoff)^.ref);
	addq	$1,-16(%rsi)
	.balign 4,0x90
.Lj1205:
	.balign 4,0x90
.Lj1203:
# [56] fpc_unicodestr_decr_ref(s1);
	movq	%rbx,%rcx
	call	fpc_unicodestr_decr_ref
# Var s2 located in register rsi
# [57] s1 := s2;
	movq	%rsi,(%rbx)
# [58] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc636:

.section .text.n_system$_$fpc_unicodestr_setlength$unicodestring$int64_$$_fin$00000275,"x"
	.balign 16,0x90
SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$00000275:
.Lc638:
.seh_proc SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$00000275
# [77] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc640:
.Lc641:
	movq	%rcx,%rbp
.Lc642:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
# [64] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc639:

.section .text.n_fpc_unicodestr_setlength,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_setlength
fpc_unicodestr_setlength:
.globl	FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
.Lc643:
# Temps allocated between rbp-24 and rbp-8
.seh_proc fpc_unicodestr_setlength
	pushq	%rbp
.seh_pushreg %rbp
.Lc645:
.Lc646:
	movq	%rsp,%rbp
.Lc647:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
# Var u located at rbp-8, size=OS_64
# Var n located in register rax
	movq	%rcx,%rbx
# Var s located in register rbx
	movq	%rdx,%rsi
# Var l located in register rsi
	movq	$0,-8(%rbp)
.Lj1214:
	nop
.Lj1210:
# [65] if l = 0 then begin
	testq	%rsi,%rsi
	jne	.Lj1216
# [66] fpc_unicodestr_decr_ref(pointer(s));
	movq	%rbx,%rcx
	call	fpc_unicodestr_decr_ref
# [67] exit;
	jmp	.Lj1212
	.balign 4,0x90
.Lj1216:
# [69] pointer(u) := newunicodestring(l);
	movq	%rsi,%rcx
	call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
	movq	%rax,-8(%rbp)
# [70] if pointer(s) <> nil then begin
	cmpq	$0,(%rbx)
	je	.Lj1218
# [71] n := length(s)+1; // inc terminator
	movq	(%rbx),%rax
	testq	%rax,%rax
	je	.Lj1219
	movq	-8(%rax),%rax
.Lj1219:
	addq	$1,%rax
# [72] if n > l then n := l;
	cmpq	%rax,%rsi
	cmovlq	%rsi,%rax
# [73] move(pointer(s)^, pointer(u)^, n*2);
	movq	(%rbx),%rcx
	movq	%rax,%r8
	shlq	$1,%r8
	movq	-8(%rbp),%rdx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [74] fpc_unicodestr_decr_ref(pointer(s));
	movq	%rbx,%rcx
	call	fpc_unicodestr_decr_ref
	.balign 4,0x90
.Lj1218:
# [76] s := u;
	movq	%rbx,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_unicodestr_assign
.Lj1212:
	nop
.Lj1211:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$00000275
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1210
	.rva	.Lj1211
	.rva	SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$00000275

.section .text.n_fpc_unicodestr_setlength,"x"
.seh_endproc
.Lc644:

.section .text.n_system$_$fpc_unicodestr_concat$unicodestring$unicodestring$unicodestring_$$_fin$00000276,"x"
	.balign 16,0x90
SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$00000276:
.Lc648:
.seh_proc SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$00000276
# [95] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc650:
.Lc651:
	movq	%rcx,%rbp
.Lc652:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
# [82] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc649:

.section .text.n_fpc_unicodestr_concat,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_concat
fpc_unicodestr_concat:
.Lc653:
# Temps allocated between rbp-32 and rbp-8
.seh_proc fpc_unicodestr_concat
	pushq	%rbp
.seh_pushreg %rbp
.Lc655:
.Lc656:
	movq	%rsp,%rbp
.Lc657:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-32(%rbp)
	movq	%rdi,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rdi, 40
.seh_savereg %rsi, 48
.seh_endprologue
# Var u located at rbp-8, size=OS_64
	movq	%rcx,%rbx
# Var dests located in register rbx
	movq	%rdx,%rsi
# Var s1 located in register rsi
	movq	%r8,%rdi
# Var s2 located in register rdi
	movq	$0,-8(%rbp)
.Lj1230:
	nop
.Lj1226:
# [83] if s1 = '' then begin
	testq	%rsi,%rsi
	jne	.Lj1232
# [84] dests := s2;
	movq	%rbx,%rcx
	movq	%rdi,%rdx
	call	fpc_unicodestr_assign
# [85] exit;
	jmp	.Lj1228
	.balign 4,0x90
.Lj1232:
# [87] if s2 = '' then begin
	testq	%rdi,%rdi
	jne	.Lj1234
# [88] dests := s1;
	movq	%rbx,%rcx
	movq	%rsi,%rdx
	call	fpc_unicodestr_assign
# [89] exit;
	jmp	.Lj1228
	.balign 4,0x90
.Lj1234:
# [91] setlength(u, length(s1)+length(s2));
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj1235
	movq	-8(%rax),%rax
.Lj1235:
	movq	%rdi,%rdx
	testq	%rdi,%rdi
	je	.Lj1236
	movq	-8(%rdx),%rdx
.Lj1236:
	addq	%rax,%rdx
	leaq	-8(%rbp),%rcx
	call	fpc_unicodestr_setlength
# [92] move(pointer(s1)^, pointer(u)^, length(s1)*2);
	movq	%rsi,%r8
	testq	%rsi,%rsi
	je	.Lj1237
	movq	-8(%r8),%r8
.Lj1237:
	shlq	$1,%r8
	movq	-8(%rbp),%rdx
	movq	%rsi,%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [93] move(pointer(s2)^, (pointer(u)+(length(s1)*2))^, length(s2)*2);
	movq	%rsi,%rdx
	testq	%rsi,%rsi
	je	.Lj1238
	movq	-8(%rdx),%rdx
.Lj1238:
	shlq	$1,%rdx
	addq	-8(%rbp),%rdx
	movq	%rdi,%r8
	testq	%rdi,%rdi
	je	.Lj1239
	movq	-8(%r8),%r8
.Lj1239:
	shlq	$1,%r8
	movq	%rdi,%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [94] dests := u;
	movq	%rbx,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_unicodestr_assign
.Lj1228:
	nop
.Lj1227:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$00000276
	movq	-32(%rbp),%rbx
	movq	-24(%rbp),%rdi
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1226
	.rva	.Lj1227
	.rva	SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$00000276

.section .text.n_fpc_unicodestr_concat,"x"
.seh_endproc
.Lc654:

.section .text.n_fpc_unicodestr_concat_multi,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
.Lc658:
# Temps allocated between rbp-40 and rbp+0
.seh_proc fpc_unicodestr_concat_multi
# [101] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc660:
.Lc661:
	movq	%rsp,%rbp
.Lc662:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
	movq	%rbx,-40(%rbp)
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
	movq	%r12,-16(%rbp)
	movq	%r13,-8(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_savereg %r12, 64
.seh_savereg %r13, 72
.seh_endprologue
# Var l located in register rax
# Var p located in register rax
# Var i located in register r12d
	movq	%rcx,%rbx
# Var dests located in register rbx
	movq	%rdx,%rsi
# Var sarr located in register rsi
	movq	%r8,%rdi
# Var $highSARR located in register rdi
# Var l located in register rdx
# [102] l := 0;
	xorl	%edx,%edx
# [103] for i := 0 to high(sarr) do begin
	movl	%edi,%eax
	testl	%eax,%eax
	jnge	.Lj1243
	movl	$-1,%r12d
	.balign 8,0x90
.Lj1244:
	addl	$1,%r12d
# [104] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then l := l + length(sarr[i]);
	movslq	%r12d,%rcx
	movq	(%rsi,%rcx,8),%rcx
	testq	%rcx,%rcx
	je	.Lj1248
	testq	%rcx,%rcx
	je	.Lj1248
	movslq	%r12d,%rcx
	movq	(%rsi,%rcx,8),%rcx
	testq	%rcx,%rcx
	je	.Lj1250
	movq	-8(%rcx),%rcx
.Lj1250:
	addq	%rcx,%rdx
	.balign 4,0x90
.Lj1248:
	cmpl	%r12d,%eax
	jnle	.Lj1244
	.balign 4,0x90
.Lj1243:
# [106] setlength(dests, l);
	movq	%rbx,%rcx
# Var l located in register rdx
	call	fpc_unicodestr_setlength
# Var p located in register r13
# [107] p := 1;
	movl	$1,%r13d
# [108] for i := 0 to high(sarr) do begin
	testl	%edi,%edi
	jnge	.Lj1252
	movl	$-1,%r12d
	.balign 8,0x90
.Lj1253:
	addl	$1,%r12d
# [109] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then begin
	movslq	%r12d,%rax
	movq	(%rsi,%rax,8),%rax
	testq	%rax,%rax
	je	.Lj1257
	testq	%rax,%rax
	je	.Lj1257
# [110] move(pointer(sarr[i])^, pointer(@dests[p])^, length(sarr[i]));
	movslq	%r12d,%rax
	movq	(%rsi,%rax,8),%r8
	testq	%r8,%r8
	je	.Lj1259
	movq	-8(%r8),%r8
.Lj1259:
	movq	(%rbx),%rax
	leaq	-2(%rax,%r13,2),%rdx
	movslq	%r12d,%rax
	movq	(%rsi,%rax,8),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [111] inc(p, length(sarr[i]));
	movslq	%r12d,%rax
	movq	(%rsi,%rax,8),%rax
	testq	%rax,%rax
	je	.Lj1260
	movq	-8(%rax),%rax
.Lj1260:
	addq	%rax,%r13
	.balign 4,0x90
.Lj1257:
	cmpl	%r12d,%edi
	jnle	.Lj1253
	.balign 4,0x90
.Lj1252:
# [114] end;
	movq	-40(%rbp),%rbx
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	movq	-16(%rbp),%r12
	movq	-8(%rbp),%r13
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc659:

.section .text.n_fpc_unicodestr_incr_ref,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
.globl	FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
.Lc663:
# [117] begin
	movq	%rcx,%rax
# Var s located in register rax
# [118] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
	testq	%rcx,%rcx
	je	.Lj1261
	cmpq	$0,-16(%rax)
	jl	.Lj1261
	.balign 4,0x90
# Var s located in register rax
# [119] inc(punicoderec(s-ufirstoff)^.ref);
	addq	$1,-16(%rax)
.Lj1261:
# [120] end;
	ret
.Lc664:

.section .text.n_fpc_unicodestr_decr_ref,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
.globl	FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
.Lc665:
.seh_proc fpc_unicodestr_decr_ref
# [123] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc667:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var s located in register rbx
	movq	(%rbx),%rax
# [124] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
	testq	%rax,%rax
	je	.Lj1266
	cmpq	$0,-16(%rax)
	jl	.Lj1266
	.balign 4,0x90
# [125] dec(punicoderec(s-ufirstoff)^.ref);
	movq	(%rbx),%rax
	subq	$1,-16(%rax)
# [126] if punicoderec(s-ufirstoff)^.ref <= 0 then FreeMem(s-ufirstoff);
	movq	(%rbx),%rax
	cmpq	$0,-16(%rax)
	jnle	.Lj1272
	movq	(%rbx),%rax
	leaq	-24(%rax),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
	.balign 4,0x90
.Lj1272:
# [127] s := nil;
	movq	$0,(%rbx)
.Lj1266:
# [128] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc666:

.section .text.n_system$_$fpc_unicodestr_unique$pointer$$pointer_$$_fin$00000277,"x"
	.balign 16,0x90
SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$00000277:
.Lc668:
.seh_proc SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$00000277
# [137] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc670:
.Lc671:
	movq	%rcx,%rbp
.Lc672:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
# [133] begin
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc669:

.section .text.n_fpc_unicodestr_unique,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_unique
fpc_unicodestr_unique:
.globl	FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
.Lc673:
# Temps allocated between rbp-16 and rbp-8
.seh_proc fpc_unicodestr_unique
	pushq	%rbp
.seh_pushreg %rbp
.Lc675:
.Lc676:
	movq	%rsp,%rbp
.Lc677:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
	movq	%rbx,-16(%rbp)
.seh_savereg %rbx, 32
.seh_endprologue
# Var $result located in register rax
# Var u located at rbp-8, size=OS_64
	movq	%rcx,%rbx
# Var s located in register rbx
	movq	$0,-8(%rbp)
.Lj1281:
	nop
.Lj1277:
# [134] pointer(u) := newunicodestring(punicoderec(s-ufirstoff)^.len);
	movq	(%rbx),%rax
	movq	-8(%rax),%rcx
	call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
	movq	%rax,-8(%rbp)
# [135] move(s^, pointer(u)^, punicoderec(s-ufirstoff)^.len);
	movq	(%rbx),%rax
	movq	-8(%rax),%r8
	movq	(%rbx),%rcx
	movq	-8(%rbp),%rdx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [136] s := pointer(u);
	movq	-8(%rbp),%rax
	movq	%rax,(%rbx)
.Lj1279:
	nop
.Lj1278:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$00000277
	movq	-16(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1277
	.rva	.Lj1278
	.rva	SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$00000277

.section .text.n_fpc_unicodestr_unique,"x"
.seh_endproc
.Lc674:

.section .text.n_fpc_unicodestr_copy,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_copy
fpc_unicodestr_copy:
.Lc678:
.seh_proc fpc_unicodestr_copy
# [140] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc680:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var s located in register rsi
	movq	%r8,%rdi
# Var index located in register rdi
	movq	%r9,%r12
# Var size located in register r12
# [141] dec(index);
	subq	$1,%rdi
# [142] if index < 0 then index := 0;
	testq	%rdi,%rdi
	jnl	.Lj1285
	xorl	%edi,%edi
	.balign 4,0x90
.Lj1285:
# [143] if (size > length(s)) or (size+index > length(s)) then size := length(s)-index;
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj1286
	movq	-8(%rax),%rax
.Lj1286:
	cmpq	%r12,%rax
	jl	.Lj1287
	leaq	(%r12,%rdi),%rdx
	cmpq	%rax,%rdx
	jng	.Lj1289
.Lj1287:
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj1290
	movq	-8(%rax),%rax
.Lj1290:
	subq	%rdi,%rax
	movq	%rax,%r12
	.balign 4,0x90
.Lj1289:
# [144] setlength(result, size);
	movq	%rbx,%rcx
# Var size located in register r12
	movq	%r12,%rdx
	call	fpc_unicodestr_setlength
# [145] move((pointer(s)+(index*2))^, pointer(result)^, size*2);
	shlq	$1,%rdi
	leaq	(%rdi,%rsi),%rcx
	movq	(%rbx),%rdx
	movq	%r12,%r8
	shlq	$1,%r8
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [146] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc679:

.section .text.n_fpc_uchar_to_unicodestr,"x"
	.balign 16,0x90
.globl	fpc_uchar_to_unicodestr
fpc_uchar_to_unicodestr:
.Lc681:
.seh_proc fpc_uchar_to_unicodestr
# [149] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc683:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var $result located in register rbx
	movw	%dx,%si
# Var c located in register si
# [150] setlength(result, 1);
	movq	%rbx,%rcx
	movl	$1,%edx
	call	fpc_unicodestr_setlength
# [151] pwidechar(@result[1])^ := c;
	movq	(%rbx),%rax
# Var c located in register si
	movw	%si,(%rax)
# [152] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc682:

.section .text.n_fpc_unicodestr_to_ansistr,"x"
	.balign 16,0x90
.globl	fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
.Lc684:
.seh_proc fpc_unicodestr_to_ansistr
# [155] begin
	leaq	-40(%rsp),%rsp
.Lc686:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var s2 located in register rdx
# Var cp located in register r8d
# Var s2 located in register rdx
# [156] result := utf16toutf8(s2);
	call	SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
# [157] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc685:

.section .text.n_fpc_pwidechar_to_unicodestr,"x"
	.balign 16,0x90
.globl	fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
.Lc687:
.seh_proc fpc_pwidechar_to_unicodestr
# [162] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc689:
.seh_stackalloc 40
.seh_endprologue
# Var p located at rsp+32, size=OS_64
# Var s located in register rax
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,32(%rsp)
# [163] if p = nil then exit('');
	testq	%rdx,%rdx
	jne	.Lj1298
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_unicodestr_assign
	jmp	.Lj1295
	.balign 4,0x90
.Lj1298:
# [164] s := IndexWord(p, -1, 0);
	leaq	32(%rsp),%rcx
	xorl	%r8d,%r8d
	movq	$-1,%rdx
	call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
	movq	%rax,%rsi
# Var s located in register rsi
# [165] setlength(result, s);
	movq	%rbx,%rcx
# Var s located in register rsi
	movq	%rsi,%rdx
	call	fpc_unicodestr_setlength
# [166] move(p^, pointer(result)^, s*2);
	movq	(%rbx),%rdx
	movq	%rsi,%r8
	shlq	$1,%r8
	movq	32(%rsp),%rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
.Lj1295:
# [167] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc688:

.section .text.n_fpc_widestr_to_unicodestr,"x"
	.balign 16,0x90
.globl	fpc_widestr_to_unicodestr
fpc_widestr_to_unicodestr:
.Lc690:
.seh_proc fpc_widestr_to_unicodestr
# [170] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc692:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var s2 located in register rsi
# [171] setlength(result, length(s2));
	testq	%rdx,%rdx
	je	.Lj1301
	movl	-4(%rdx),%edx
	shrq	$1,%rdx
.Lj1301:
	movq	%rbx,%rcx
	call	fpc_unicodestr_setlength
# [172] move(pointer(s2)^, pointer(result)^, length(s2)*2);
	movq	%rsi,%r8
	testq	%rsi,%rsi
	je	.Lj1302
	movl	-4(%r8),%r8d
	shrq	$1,%r8
.Lj1302:
	shlq	$1,%r8
	movq	(%rbx),%rdx
	movq	%rsi,%rcx
# Var s2 located in register rcx
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [173] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc691:

.section .text.n_system_$$_inclocked$longint,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_INCLOCKED$LONGINT
SYSTEM_$$_INCLOCKED$LONGINT:
.Lc723:
.seh_proc SYSTEM_$$_INCLOCKED$LONGINT
# [misc.inc]
# [105] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc725:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var target located in register rbx
# [106] if IsMultithread then AtomicIncrement(target) else inc(target);
	cmpb	$0,TC_$SYSTEM_$$_ISMULTITHREAD(%rip)
	je	.Lj1318
	movq	%rbx,%rcx
	call	SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
	jmp	.Lj1319
.Lj1318:
	addl	$1,(%rbx)
.Lj1319:
# [107] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc724:

.section .text.n_system_$$_inclocked$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_INCLOCKED$INT64
SYSTEM_$$_INCLOCKED$INT64:
.Lc726:
.seh_proc SYSTEM_$$_INCLOCKED$INT64
# [110] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc728:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
# Var target located in register rbx
# [111] if IsMultithread then AtomicIncrement(target) else inc(target);
	cmpb	$0,TC_$SYSTEM_$$_ISMULTITHREAD(%rip)
	je	.Lj1323
	movq	%rbx,%rcx
	call	SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
	jmp	.Lj1324
.Lj1323:
	addq	$1,(%rbx)
.Lj1324:
# [112] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc727:

.section .text.n_system_$$_declocked$longint$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN:
.Lc729:
.seh_proc SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
# [115] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc731:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register al
	movq	%rcx,%rbx
# Var target located in register rbx
# [116] if IsMultithread then
	cmpb	$0,TC_$SYSTEM_$$_ISMULTITHREAD(%rip)
	je	.Lj1328
# [117] result := AtomicDecrement(target) = 0
	movq	%rbx,%rcx
	call	SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
	testl	%eax,%eax
	seteb	%al
	jmp	.Lj1329
.Lj1328:
# [119] dec(target);
	subl	$1,(%rbx)
# [120] result := target = 0;
	cmpl	$0,(%rbx)
	seteb	%al
.Lj1329:
# [122] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc730:

.section .text.n_system_$$_declocked$int64$$boolean,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN
SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN:
.Lc732:
.seh_proc SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN
# [125] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc734:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register al
	movq	%rcx,%rbx
# Var target located in register rbx
# [126] if IsMultithread then
	cmpb	$0,TC_$SYSTEM_$$_ISMULTITHREAD(%rip)
	je	.Lj1333
# [127] result := AtomicDecrement(target) = 0
	movq	%rbx,%rcx
	call	SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
	testq	%rax,%rax
	seteb	%al
	jmp	.Lj1334
.Lj1333:
# [129] dec(target);
	subq	$1,(%rbx)
# [130] result := target = 0;
	cmpq	$0,(%rbx)
	seteb	%al
.Lj1334:
# [132] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc733:

.section .text.n_system_$$_makelangid$word$word$$word,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD
SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD:
.Lc735:
# Var $result located in register ax
# [175] begin
	movl	%ecx,%eax
# Var primary located in register ax
# Var sub located in register dx
# [176] result := (primary and $3FF) or (sub shl 10);
	andl	$1023,%eax
	andl	$65535,%edx
	shll	$10,%edx
	orl	%edx,%eax
# Var $result located in register ax
# [177] end;
	andl	$65535,%eax
	ret
.Lc736:

.section .text.n_system_$$_pos$ansistring$ansistring$int64$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64:
.Lc737:
.seh_proc SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
# [182] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-32(%rsp),%rsp
.Lc739:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var i located in register r13
	movq	%rcx,%rbx
# Var needle located in register rbx
	movq	%rdx,%rsi
# Var haystack located in register rsi
# Var offset located in register r8
# Var $result located in register rdi
# [183] result := -1;
	movq	$-1,%rdi
# [184] for i := offset to length(haystack)-length(needle)+1 do
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj1339
	movq	-8(%rax),%rax
.Lj1339:
	movq	%rbx,%rdx
	testq	%rbx,%rbx
	je	.Lj1340
	movq	-8(%rdx),%rdx
.Lj1340:
	subq	%rdx,%rax
	leaq	1(%rax),%r12
	cmpq	%r8,%r12
	jnge	.Lj1342
	leaq	-1(%r8),%r13
	.balign 8,0x90
.Lj1343:
	addq	$1,%r13
# [185] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
	movq	%rbx,%r8
	testq	%rbx,%rbx
	je	.Lj1346
	movq	-8(%r8),%r8
.Lj1346:
	leaq	-1(%rsi,%r13,1),%rdx
	movq	%rbx,%rcx
	call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
	testq	%rax,%rax
	jne	.Lj1348
# [186] exit(i);
	movq	%r13,%rdi
	jmp	.Lj1337
	.balign 4,0x90
.Lj1348:
	cmpq	%r13,%r12
	jnle	.Lj1343
	.balign 4,0x90
.Lj1342:
.Lj1337:
# [187] end;
	movq	%rdi,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc738:

.section .text.n_system_$$_pos$unicodestring$unicodestring$int64$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64
SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64:
.Lc740:
.seh_proc SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64
# [192] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-32(%rsp),%rsp
.Lc742:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var i located in register r13
	movq	%rcx,%rbx
# Var needle located in register rbx
	movq	%rdx,%rsi
# Var haystack located in register rsi
# Var offset located in register r8
# Var $result located in register rdi
# [193] result := -1;
	movq	$-1,%rdi
# [194] for i := offset to length(haystack)-length(needle)+1 do
	movq	%rsi,%rax
	testq	%rsi,%rsi
	je	.Lj1351
	movq	-8(%rax),%rax
.Lj1351:
	movq	%rbx,%rdx
	testq	%rbx,%rbx
	je	.Lj1352
	movq	-8(%rdx),%rdx
.Lj1352:
	subq	%rdx,%rax
	leaq	1(%rax),%r12
	cmpq	%r8,%r12
	jnge	.Lj1354
	leaq	-1(%r8),%r13
	.balign 8,0x90
.Lj1355:
	addq	$1,%r13
# [195] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
	movq	%rbx,%r8
	testq	%rbx,%rbx
	je	.Lj1358
	movq	-8(%r8),%r8
.Lj1358:
	leaq	-2(%rsi,%r13,2),%rdx
	movq	%rbx,%rcx
	call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
	testq	%rax,%rax
	jne	.Lj1360
# [196] exit(i);
	movq	%r13,%rdi
	jmp	.Lj1349
	.balign 4,0x90
.Lj1360:
	cmpq	%r13,%r12
	jnle	.Lj1355
	.balign 4,0x90
.Lj1354:
.Lj1349:
# [197] end;
	movq	%rdi,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc741:

.section .text.n_system$_$pos$widestring$widestring$int64$$int64_$$_fin$00000278,"x"
	.balign 16,0x90
SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$00000278:
.Lc743:
.seh_proc SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$00000278
# [202] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc745:
.Lc746:
	movq	%rcx,%rbp
.Lc747:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [200] begin
	leaq	-32(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	leaq	-16(%rbp),%rcx
	call	fpc_unicodestr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc744:

.section .text.n_system_$$_pos$widestring$widestring$int64$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64
SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64:
.Lc748:
# Temps allocated between rbp-56 and rbp+0
.seh_proc SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64
	pushq	%rbp
.seh_pushreg %rbp
.Lc750:
.Lc751:
	movq	%rsp,%rbp
.Lc752:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
	movq	%rbx,-56(%rbp)
	movq	%rdi,-48(%rbp)
	movq	%rsi,-40(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_endprologue
# Var $result located in register rbx
	movq	%rcx,%rbx
# Var needle located in register rbx
# Var haystack located in register rdx
	movq	%r8,%rsi
# Var offset located in register rsi
	movq	$0,-32(%rbp)
	movq	$0,-16(%rbp)
.Lj1369:
	nop
.Lj1365:
# [201] result := pos(unicodestring(needle), unicodestring(haystack), offset);
	leaq	-16(%rbp),%rcx
	call	fpc_widestr_to_unicodestr
	movq	-16(%rbp),%rax
	movq	%rax,-8(%rbp)
	movq	%rbx,%rdx
	leaq	-32(%rbp),%rcx
	call	fpc_widestr_to_unicodestr
	movq	-32(%rbp),%rax
	movq	%rax,-24(%rbp)
	movq	$-1,%rbx
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1371
	movq	-8(%rax),%rax
.Lj1371:
	movq	-24(%rbp),%rdx
	testq	%rdx,%rdx
	je	.Lj1372
	movq	-8(%rdx),%rdx
.Lj1372:
	subq	%rdx,%rax
	leaq	1(%rax),%rdi
	cmpq	%rsi,%rdi
	jnge	.Lj1374
	subq	$1,%rsi
	.balign 8,0x90
.Lj1375:
	addq	$1,%rsi
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%r8
	testq	%r8,%r8
	je	.Lj1378
	movq	-8(%r8),%r8
.Lj1378:
	movq	-8(%rbp),%rax
	leaq	-2(%rax,%rsi,2),%rdx
	call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
	testq	%rax,%rax
	jne	.Lj1380
	movq	%rsi,%rbx
	jmp	.Lj1370
	.balign 4,0x90
.Lj1380:
	cmpq	%rsi,%rdi
	jnle	.Lj1375
	.balign 4,0x90
.Lj1374:
.Lj1370:
.Lj1367:
	nop
.Lj1366:
	movq	%rbp,%rcx
	call	SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$00000278
	movq	%rbx,%rax
	movq	-56(%rbp),%rbx
	movq	-48(%rbp),%rdi
	movq	-40(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1365
	.rva	.Lj1366
	.rva	SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$00000278

.section .text.n_system_$$_pos$widestring$widestring$int64$$int64,"x"
.seh_endproc
.Lc749:

.section .text.n_system_$$_getmem$qword$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_GETMEM$QWORD$$POINTER
SYSTEM_$$_GETMEM$QWORD$$POINTER:
.Lc753:
.seh_proc SYSTEM_$$_GETMEM$QWORD$$POINTER
# [heap.inc]
# [53] begin
	leaq	-40(%rsp),%rsp
.Lc755:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var size located in register rcx
# Var size located in register rcx
# [54] result := xgetmem(size);
	call	XMM_$$_XGETMEM$QWORD$$POINTER
# Var $result located in register rax
# [55] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc754:

.section .text.n_system_$$_getmem$pointer$qword$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER:
.Lc756:
.seh_proc SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
# [58] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc758:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rbx
# Var p located in register rbx
	movq	%rdx,%rcx
# Var size located in register rcx
# Var size located in register rcx
# [59] result := xgetmem(size);
	call	XMM_$$_XGETMEM$QWORD$$POINTER
# Var $result located in register rax
# Var $result located in register rax
# [60] p := result;
	movq	%rax,(%rbx)
# [61] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc757:

.section .text.n_system_$$_freemem$pointer$$qword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FREEMEM$POINTER$$QWORD
SYSTEM_$$_FREEMEM$POINTER$$QWORD:
.Lc759:
.seh_proc SYSTEM_$$_FREEMEM$POINTER$$QWORD
# [64] begin
	leaq	-40(%rsp),%rsp
.Lc761:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
# Var p located in register rcx
# [65] result := xfreemem(p);
	call	_$dll$rtllib$xfreemem
# Var $result located in register rax
# [66] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc760:

.section .text.n_system_$$_freememsize$pointer$qword$$qword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD
SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD:
.Lc762:
.seh_proc SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD
# [69] begin
	leaq	-40(%rsp),%rsp
.Lc764:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
# Var size located in register rdx
# Var p located in register rcx
# [70] result := xfreemem(p);
	call	_$dll$rtllib$xfreemem
# Var $result located in register rax
# [71] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc763:

.section .text.n_system_$$_allocmem$qword$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
SYSTEM_$$_ALLOCMEM$QWORD$$POINTER:
.Lc765:
.seh_proc SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
# [74] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc767:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rsi
# Var size located in register rsi
# Var size located in register rsi
# [75] result := xallocmem(size);
	call	XMM_$$_XGETMEM$QWORD$$POINTER
	movq	%rax,%rbx
	testq	%rax,%rax
	je	.Lj1391
	.balign 4,0x90
	movq	%rsi,%rdx
	xorl	%r8d,%r8d
	movq	%rbx,%rcx
	call	_$dll$kernel32$RtlFillMemory
.Lj1391:
	movq	%rbx,%rax
# [76] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc766:

.section .text.n_system_$$_reallocmem$pointer$qword$$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER:
.Lc768:
.seh_proc SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
# [79] begin
	leaq	-40(%rsp),%rsp
.Lc770:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
# Var size located in register rdx
# Var size located in register rdx
# [80] result := xreallocmem(p, size);
	call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
# Var $result located in register rax
# [81] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc769:

.section .text.n_system_$$_memsize$pointer$$qword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MEMSIZE$POINTER$$QWORD
SYSTEM_$$_MEMSIZE$POINTER$$QWORD:
.Lc771:
.seh_proc SYSTEM_$$_MEMSIZE$POINTER$$QWORD
# [84] begin
	leaq	-40(%rsp),%rsp
.Lc773:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
# Var p located in register rcx
# [85] result := xmemsize(p);
	call	XMM_$$_XMEMSIZE$POINTER$$QWORD
# Var $result located in register rax
# [86] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc772:

.section .text.n_system_$$_move$formal$formal$qword,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MOVE$formal$formal$QWORD
SYSTEM_$$_MOVE$formal$formal$QWORD:
.Lc774:
.seh_proc SYSTEM_$$_MOVE$formal$formal$QWORD
# [91] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc776:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var src located in register rax
	movq	%rdx,%rcx
# Var dst located in register rcx
	movq	%r8,%rbx
# Var count located in register rbx
# [92] xmovemem(@src, @dst, count);
	movq	%rax,%rdx
# Var count located in register rbx
	movq	%rbx,%r8
	call	_$dll$kernel32$RtlMoveMemory
# Var count located in register rbx
	movq	%rbx,%rax
# [93] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc775:

.section .text.n_system_$$_fillchar$formal$qword$char,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
.Lc777:
.seh_proc SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
# [96] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc779:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var x located in register rax
	movq	%rdx,%rbx
# Var count located in register rbx
# Var value located in register r8b
# [97] xfillmem(@x, count, ord(value));
	movq	%rax,%rcx
	andl	$255,%r8d
# Var count located in register rbx
	movq	%rbx,%rdx
	call	_$dll$kernel32$RtlFillMemory
# Var count located in register rbx
	movq	%rbx,%rax
# [98] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc778:

.section .text.n_system_$$_fillchar$formal$qword$byte,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE:
.Lc780:
.seh_proc SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
# [101] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc782:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var x located in register rax
	movq	%rdx,%rbx
# Var count located in register rbx
# Var value located in register r8b
# [102] xfillmem(@x, count, value);
	movq	%rax,%rcx
	andl	$255,%r8d
# Var count located in register rbx
	movq	%rbx,%rdx
	call	_$dll$kernel32$RtlFillMemory
# Var count located in register rbx
	movq	%rbx,%rax
# [103] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc781:

.section .text.n_system_$$_fillbyte$formal$qword$byte,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE
SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE:
.Lc783:
.seh_proc SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE
# [106] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc785:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var x located in register rax
	movq	%rdx,%rbx
# Var count located in register rbx
# Var value located in register r8b
# [107] xfillmem(@x, count, value);
	movq	%rax,%rcx
	andl	$255,%r8d
# Var count located in register rbx
	movq	%rbx,%rdx
	call	_$dll$kernel32$RtlFillMemory
# Var count located in register rbx
	movq	%rbx,%rax
# [108] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc784:

.section .text.n_system_$$_indexbyte$formal$int64$byte$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64
SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64:
.Lc786:
# Var $result located in register rax
# Var i located in register rax
# Var buf located in register rcx
# Var len located in register rdx
# Var b located in register r8b
# [113] begin
# Var $result located in register rax
# [114] result := -1;
	movq	$-1,%rax
# Var i located in register r9
# [115] i := 0;
	xorq	%r9,%r9
# [116] while (i < len) or (len = -1){len may not be given} do begin
	jmp	.Lj1414
	.balign 8,0x90
.Lj1413:
# [117] if pbyte(pointer(buf)+i)^ = b then exit(i);
	movq	(%rcx),%r10
	addq	%r9,%r10
	cmpb	(%r10),%r8b
	jne	.Lj1417
	movq	%r9,%rax
	ret
	.balign 4,0x90
.Lj1417:
# [118] inc(i);
	addq	$1,%r9
.Lj1414:
	cmpq	%r9,%rdx
	jg	.Lj1413
	cmpq	$-1,%rdx
	je	.Lj1413
# [120] end;
	ret
.Lc787:

.section .text.n_system_$$_indexchar$formal$int64$char$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64
SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64:
.Lc788:
# Var $result located in register rax
# Var i located in register rax
# Var buf located in register rcx
# Var len located in register rdx
# Var b located in register r8b
# [125] begin
# Var $result located in register rax
# [126] result := -1;
	movq	$-1,%rax
# Var i located in register r9
# [127] i := 0;
	xorq	%r9,%r9
# [128] while (i < len) or (len = -1){len may not be given} do begin
	jmp	.Lj1424
	.balign 8,0x90
.Lj1423:
# [129] if pchar(pointer(buf)+i)^ = b then exit(i);
	movq	(%rcx),%r10
	addq	%r9,%r10
	cmpb	(%r10),%r8b
	jne	.Lj1427
	movq	%r9,%rax
	ret
	.balign 4,0x90
.Lj1427:
# [130] inc(i);
	addq	$1,%r9
.Lj1424:
	cmpq	%r9,%rdx
	jg	.Lj1423
	cmpq	$-1,%rdx
	je	.Lj1423
# [132] end;
	ret
.Lc789:

.section .text.n_system_$$_indexword$formal$int64$word$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64:
.Lc790:
# Var $result located in register rax
# Var i located in register rax
# Var buf located in register rcx
# Var len located in register rdx
# Var w located in register r8w
# [137] begin
# Var $result located in register rax
# [138] result := -1;
	movq	$-1,%rax
# Var i located in register r10
# [139] i := 0;
	xorq	%r10,%r10
# [140] while (i < len) or (len = -1){len may not be given} do begin
	jmp	.Lj1434
	.balign 8,0x90
.Lj1433:
# [141] if pword(pointer(buf)+i)^ = w then exit(i div 2);
	movq	(%rcx),%r9
	addq	%r10,%r9
	cmpw	(%r9),%r8w
	jne	.Lj1437
	movq	%r10,%r9
	movq	%r9,%r11
	shrq	$63,%r11
	addq	%r11,%r9
	sarq	$1,%r9
	movq	%r9,%rax
	ret
	.balign 4,0x90
.Lj1437:
# [142] inc(i, 2);
	addq	$2,%r10
.Lj1434:
	cmpq	%r10,%rdx
	jg	.Lj1433
	cmpq	$-1,%rdx
	je	.Lj1433
# [144] end;
	ret
.Lc791:

.section .text.n_system_$$_comparebyte$formal$formal$qword$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64:
.Lc792:
.seh_proc SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
# [149] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc794:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rdx
# Var u located in register rax
	movq	%rcx,%rbx
# Var buf1 located in register rbx
	movq	%rdx,%rsi
# Var buf2 located in register rsi
	movq	%r8,%rdi
# Var len located in register rdi
# [150] u := xmemdiffat(@buf1, @buf2, len);
	movq	%rsi,%rdx
	movq	%rbx,%rcx
# Var len located in register rdi
	movq	%rdi,%r8
	call	_$dll$ntdll$RtlCompareMemory
# Var u located in register rax
# [151] if u = len then result := 0 else result := pbyte(@buf1+u)^-pbyte(@buf2+u)^;
	cmpq	%rax,%rdi
	jne	.Lj1444
	xorl	%edx,%edx
	jmp	.Lj1445
.Lj1444:
	leaq	(%rbx,%rax),%rcx
	movzbl	(%rcx),%ecx
	addq	%rsi,%rax
	movzbl	(%rax),%eax
	subq	%rax,%rcx
	movq	%rcx,%rdx
.Lj1445:
# [152] end;
	movq	%rdx,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc793:

.section .text.n_system_$$_comparechar$formal$formal$qword$$int64,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64:
.Lc795:
.seh_proc SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64
# [155] begin
	leaq	-40(%rsp),%rsp
.Lc797:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var buf1 located in register rcx
# Var buf2 located in register rdx
# Var len located in register r8
# Var len located in register r8
# [156] result := CompareByte(buf1, buf2, len);
	call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
# Var $result located in register rax
# [157] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc796:

.section .text.n_fpc_getmem,"x"
	.balign 16,0x90
.globl	fpc_getmem
fpc_getmem:
.globl	FPC_GETMEM
FPC_GETMEM:
.Lc798:
.seh_proc fpc_getmem
# [162] begin
	leaq	-40(%rsp),%rsp
.Lc800:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var size located in register rcx
# Var size located in register rcx
# [163] result := GetMem(size);
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
# Var $result located in register rax
# [164] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc799:

.section .text.n_fpc_freemem,"x"
	.balign 16,0x90
.globl	fpc_freemem
fpc_freemem:
.globl	FPC_FREEMEM
FPC_FREEMEM:
.Lc801:
.seh_proc fpc_freemem
# [167] begin
	leaq	-40(%rsp),%rsp
.Lc803:
.seh_stackalloc 40
.seh_endprologue
# Var p located in register rax
# Var p located in register rcx
# [168] FreeMem(p);
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
# [169] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc802:

.section .text.n_system_$$_fpc_setstring_ansistr_pansichar$ansistring$pansichar,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPC_SETSTRING_ANSISTR_PANSICHAR$ANSISTRING$PANSICHAR
SYSTEM_$$_FPC_SETSTRING_ANSISTR_PANSICHAR$ANSISTRING$PANSICHAR:
.Lc804:
.seh_proc SYSTEM_$$_FPC_SETSTRING_ANSISTR_PANSICHAR$ANSISTRING$PANSICHAR
# [StrUtils.pas]
# [41] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc806:
.seh_stackalloc 40
.seh_endprologue
# Var len located in register rax
# Var i located in register r12
	movq	%rcx,%rbx
# Var dest located in register rbx
	movq	%rdx,%rsi
# Var source located in register rsi
# [42] if source = nil then
	testq	%rdx,%rdx
	jne	.Lj1455
# [44] dest := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
# [45] Exit;
	jmp	.Lj1452
	.balign 4,0x90
.Lj1455:
# Var len located in register rdi
# [48] len := 0;
	xorl	%edi,%edi
# [49] while source[len] <> #0 do
	jmp	.Lj1457
	.balign 8,0x90
.Lj1456:
# [50] Inc(len);
	addq	$1,%rdi
.Lj1457:
	cmpb	$0,(%rsi,%rdi,1)
	jne	.Lj1456
# [52] SetLength(dest, len);
	movq	%rbx,%rcx
# Var len located in register rdi
	movq	%rdi,%rdx
	xorl	%r8d,%r8d
	call	fpc_ansistr_setlength
# Var len located in register rdi
# [53] for i := 1 to len do
	cmpq	$1,%rdi
	jnge	.Lj1460
	xorq	%r12,%r12
	.balign 8,0x90
.Lj1461:
	addq	$1,%r12
# [54] dest[i] := source[i - 1];
	movq	%rbx,%rcx
	call	fpc_ansistr_unique
	movb	-1(%rsi,%r12,1),%dl
	movb	%dl,-1(%rax,%r12,1)
	cmpq	%r12,%rdi
	jnle	.Lj1461
	.balign 4,0x90
.Lj1460:
.Lj1452:
# [55] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc805:

.section .text.n_system$_$stringreplace$ansistring$ansistring$ansistring$treplaceflags$$ansistring_$$_fin$00000279,"x"
	.balign 16,0x90
SYSTEM$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000279:
.Lc807:
.seh_proc SYSTEM$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000279
# [96] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc809:
.Lc810:
	movq	%rcx,%rbp
.Lc811:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
# [63] begin
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc808:

.section .text.n_system_$$_stringreplace$ansistring$ansistring$ansistring$treplaceflags$$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
SYSTEM_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
.Lc812:
# Temps allocated between rbp-72 and rbp-8
.seh_proc SYSTEM_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc814:
.Lc815:
	movq	%rsp,%rbp
.Lc816:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
	movq	%rbx,-72(%rbp)
	movq	%rdi,-64(%rbp)
	movq	%rsi,-56(%rbp)
	movq	%r12,-48(%rbp)
	movq	%r13,-40(%rbp)
	movq	%r14,-32(%rbp)
	movq	%r15,-24(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_savereg %r12, 64
.seh_savereg %r13, 72
.seh_savereg %r14, 80
.seh_savereg %r15, 88
.seh_endprologue
# Var i located in register r13d
# Var StartPos located in register edi
# Var OldLen located in register r12d
# Var ResultStr located at rbp-8, size=OS_64
	movq	%rcx,%r15
# Var $result located in register r15
	movq	%rdx,%r14
# Var S located in register r14
	movq	%r8,%rbx
# Var OldPattern located in register rbx
	movq	%r9,%rsi
# Var NewPattern located in register rsi
	movl	48(%rbp),%eax
# Var Flags located in register eax
	movq	$0,-8(%rbp)
	movq	$0,-16(%rbp)
.Lj1472:
	nop
.Lj1468:
# [64] ResultStr := '';
	leaq	-8(%rbp),%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
# [65] StartPos := 1;
	movl	$1,%edi
# [66] OldLen := Length(OldPattern);
	movq	%rbx,%rax
	testq	%rbx,%rbx
	je	.Lj1473
	movq	-8(%rax),%rax
.Lj1473:
	movl	%eax,%r12d
# [68] if OldLen = 0 then
	testl	%eax,%eax
	jne	.Lj1475
# [70] Exit(S);
	movq	%r15,%rcx
	movq	%r14,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj1470
	.balign 4,0x90
.Lj1475:
# [73] i := Pos(OldPattern, S);
	movq	%r14,%rdx
	movq	%rbx,%rcx
	movl	$1,%r8d
	call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
	movl	%eax,%r13d
# [75] while i > 0 do
	jmp	.Lj1477
	.balign 8,0x90
.Lj1476:
# [78] ResultStr := ResultStr + Copy(S, StartPos, i - StartPos);
	movslq	%r13d,%r9
	movslq	%edi,%rax
	subq	%rax,%r9
	movslq	%edi,%r8
	movq	%r14,%rdx
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_copy
	movq	-16(%rbp),%r8
	movq	-8(%rbp),%rdx
	leaq	-8(%rbp),%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [81] ResultStr := ResultStr + NewPattern;
	movq	%rsi,%r8
	movq	-8(%rbp),%rdx
	leaq	-8(%rbp),%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [84] StartPos := i + OldLen;
	leal	(%r12d,%r13d),%edi
# [87] i := Pos(OldPattern, Copy(S, StartPos, Length(S) - StartPos + 1));
	movq	%r14,%rax
	testq	%r14,%r14
	je	.Lj1479
	movq	-8(%rax),%rax
.Lj1479:
	movslq	%edi,%rdx
	subq	%rdx,%rax
	leaq	1(%rax),%r9
	movslq	%edi,%r8
	movq	%r14,%rdx
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_copy
	movq	-16(%rbp),%rdx
	movq	%rbx,%rcx
	movl	$1,%r8d
	call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
	movl	%eax,%r13d
# [88] if i > 0 then
	testl	%r13d,%r13d
	jng	.Lj1481
# [89] i := i + StartPos - 1;
	leal	(%edi,%r13d),%eax
	subl	$1,%eax
	movl	%eax,%r13d
	.balign 4,0x90
.Lj1481:
.Lj1477:
	testl	%r13d,%r13d
	jg	.Lj1476
# [93] ResultStr := ResultStr + Copy(S, StartPos, Length(S) - StartPos + 1);
	movq	%r14,%rax
	testq	%r14,%r14
	je	.Lj1482
	movq	-8(%rax),%rax
.Lj1482:
	movslq	%edi,%rdx
	subq	%rdx,%rax
	leaq	1(%rax),%r9
	movslq	%edi,%r8
	movq	%r14,%rdx
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_copy
	movq	-16(%rbp),%r8
	movq	-8(%rbp),%rdx
	leaq	-8(%rbp),%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [95] Exit(ResultStr);
	movq	%r15,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_assign
.Lj1470:
	nop
.Lj1469:
	movq	%rbp,%rcx
	call	SYSTEM$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000279
	movq	-72(%rbp),%rbx
	movq	-64(%rbp),%rdi
	movq	-56(%rbp),%rsi
	movq	-48(%rbp),%r12
	movq	-40(%rbp),%r13
	movq	-32(%rbp),%r14
	movq	-24(%rbp),%r15
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1468
	.rva	.Lj1469
	.rva	SYSTEM$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000279

.section .text.n_system_$$_stringreplace$ansistring$ansistring$ansistring$treplaceflags$$ansistring,"x"
.seh_endproc
.Lc813:

.section .text.n_system_$$_showmessage$pchar,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
.Lc817:
.seh_proc SYSTEM_$$_SHOWMESSAGE$PCHAR
# [Dialogs.pas]
# [30] begin
	leaq	-40(%rsp),%rsp
.Lc819:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
# Var msg located in register rax
# Var msg located in register rdx
# [31] MessageBoxA(0, msg, PChar(' '), 0);
	xorl	%r9d,%r9d
	leaq	.Ld32(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
# [32] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc818:

.section .text.n_system$_$msgdebug$ansistring_$$_fin$0000027a,"x"
	.balign 16,0x90
SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000027A:
.Lc820:
.seh_proc SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000027A
# [system.pas]
# [260] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc822:
.Lc823:
	movq	%rcx,%rbp
.Lc824:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [258] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc821:

.section .text.n_system_$$_msgdebug$ansistring,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_MSGDEBUG$ANSISTRING
SYSTEM_$$_MSGDEBUG$ANSISTRING:
.Lc825:
.seh_proc SYSTEM_$$_MSGDEBUG$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc827:
.Lc828:
	movq	%rsp,%rbp
.Lc829:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var msg located at rbp-8, size=OS_64
	movq	%rcx,-8(%rbp)
	call	fpc_ansistr_incr_ref
.Lj1493:
	nop
.Lj1489:
# [259] MessageBoxA(0, @msg[1], 'DEBUG', 0);
	movq	-8(%rbp),%rdx
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld33(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
.Lj1491:
	nop
.Lj1490:
	movq	%rbp,%rcx
	call	SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000027A
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1489
	.rva	.Lj1490
	.rva	SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000027A

.section .text.n_system_$$_msgdebug$ansistring,"x"
.seh_endproc
.Lc826:

.section .text.n_fpc_initializeunits,"x"
	.balign 16,0x90
.globl	fpc_initializeunits
fpc_initializeunits:
.globl	FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
.Lc830:
.seh_proc fpc_initializeunits
# [284] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc832:
.seh_stackalloc 40
.seh_endprologue
# Var i located in register ebx
# [285] for i := 1 to InitFinalTable.TableCount do begin
	movl	INITFINAL(%rip),%esi
	cmpl	$1,%esi
	jnge	.Lj1497
	xorl	%ebx,%ebx
	.balign 8,0x90
.Lj1498:
	addl	$1,%ebx
# [286] if InitFinalTable.Procs[i].InitProc <> nil then begin
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,(%rdx,%rax)
	je	.Lj1502
# [287] InitFinalTable.Procs[i].InitProc();
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	call	*(%rdx,%rax)
	.balign 4,0x90
.Lj1502:
	cmpl	%ebx,%esi
	jnle	.Lj1498
	.balign 4,0x90
.Lj1497:
# [290] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc831:

.section .text.n_fpc_finalizeunits,"x"
	.balign 16,0x90
.globl	fpc_finalizeunits
fpc_finalizeunits:
.globl	FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
.Lc833:
.seh_proc fpc_finalizeunits
# [299] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc835:
.seh_stackalloc 40
.seh_endprologue
# Var i located in register ebx
# [300] for i := 1 to InitFinalTable.TableCount do begin
	movl	INITFINAL(%rip),%esi
	cmpl	$1,%esi
	jnge	.Lj1506
	xorl	%ebx,%ebx
	.balign 8,0x90
.Lj1507:
	addl	$1,%ebx
# [301] if InitFinalTable.Procs[i].FinalProc <> nil then begin
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,8(%rdx,%rax)
	je	.Lj1511
# [302] InitFinalTable.Procs[i].FinalProc();
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	call	*8(%rdx,%rax)
	.balign 4,0x90
.Lj1511:
	cmpl	%ebx,%esi
	jnle	.Lj1507
	.balign 4,0x90
.Lj1506:
# [305] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc834:

.section .text.n_fpc_libinitializeunits,"x"
	.balign 16,0x90
.globl	fpc_libinitializeunits
fpc_libinitializeunits:
.globl	FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
.Lc836:
.seh_proc fpc_libinitializeunits
# [312] begin
	leaq	-40(%rsp),%rsp
.Lc838:
.seh_stackalloc 40
.seh_endprologue
# [313] is_library := true;
	movb	$1,operatingsystem_islibrary(%rip)
# [314] fpc_initializeunits;
	call	FPC_INITIALIZEUNITS
# [315] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc837:

.section .text.n_system_$$_halt$longint,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_HALT$LONGINT
SYSTEM_$$_HALT$LONGINT:
.Lc839:
.seh_proc SYSTEM_$$_HALT$LONGINT
# [318] Begin
	leaq	-40(%rsp),%rsp
.Lc841:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%eax
# Var err located in register eax
# [319] internal_do_exit;
	call	FPC_DO_EXIT
# [320] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc840:

.section .text.n_fpc_do_exit,"x"
	.balign 16,0x90
.globl	fpc_do_exit
fpc_do_exit:
.globl	FPC_DO_EXIT
FPC_DO_EXIT:
.Lc842:
.seh_proc fpc_do_exit
# [323] begin
	leaq	-40(%rsp),%rsp
.Lc844:
.seh_stackalloc 40
.seh_endprologue
# [324] fpc_finalizeunits;
	call	FPC_FINALIZEUNITS
# [325] ExitProcess(ExitCode);
	movl	operatingsystem_result(%rip),%ecx
	call	_$dll$kernel32$ExitProcess
# [326] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc843:

.section .text.n_system_$$_fpc_emptymethod,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
.globl	FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
.Lc847:
# [340] begin
# [341] end;
	ret
.Lc848:

.section .text.n_system_$$_bsrbyte$byte$$byte,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_BSRBYTE$BYTE$$BYTE
SYSTEM_$$_BSRBYTE$BYTE$$BYTE:
.Lc849:
# Var $result located in register al
# Var avalue located in register cl
# [364] begin
# [365] result:=bsr8bit[AValue];
	andl	$255,%ecx
# Var $result located in register al
	leaq	TC_$SYSTEM$_$BSRBYTE$BYTE$$BYTE_$$_BSR8BIT(%rip),%rax
	movzbl	(%rax,%rcx,1),%eax
# [366] end;
	ret
.Lc850:

.section .text.n_system_$$_bsrdword$longword$$cardinal,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL:
.Lc851:
.seh_proc SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
# [371] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc853:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register eax
# Var tmp located in register eax
	movl	%ecx,%eax
# Var avalue located in register eax
# [372] result:=ord(AValue>$FFFF)*16;
	cmpl	$65535,%eax
	setab	%dl
	andl	$255,%edx
	shll	$4,%edx
# Var $result located in register edx
# [373] tmp:=AValue shr result;
	movl	%edx,%ecx
	shrl	%cl,%eax
# Var tmp located in register eax
# [374] result:=result or (ord(tmp>$FF)*8);
	cmpl	$255,%eax
	setab	%bl
	andl	$255,%ebx
	shll	$3,%ebx
	orl	%edx,%ebx
# Var $result located in register ebx
# [375] tmp:=tmp shr (result and 8);
	movl	%ebx,%edx
	andl	$8,%edx
	movl	%edx,%ecx
	shrl	%cl,%eax
# Var tmp located in register ecx
	movl	%eax,%ecx
# [376] result:=result or BsrByte(byte(tmp));
	andl	$255,%ecx
	call	SYSTEM_$$_BSRBYTE$BYTE$$BYTE
	andl	$255,%eax
	orl	%ebx,%eax
# Var $result located in register eax
# [377] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc852:

.section .text.n_system_$$_bsrqword$qword$$cardinal,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL:
.Lc854:
.seh_proc SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
# [382] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc856:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register eax
# Var tmp located in register eax
	movq	%rcx,%rbx
# Var avalue located in register rbx
# Var $result located in register edi
# [383] result:=32;
	movl	$32,%edi
# Var avalue located in register rbx
# [384] tmp:=hi(AValue);
	movq	%rbx,%rcx
	call	SYSTEM_$$_HI$QWORD$$LONGWORD
	movl	%eax,%esi
# Var tmp located in register esi
# [385] if (tmp=0) then
	testl	%eax,%eax
	jne	.Lj1529
# [387] tmp:=lo(AValue);
	movq	%rbx,%rcx
	call	SYSTEM_$$_LO$QWORD$$LONGWORD
	movl	%eax,%esi
# [388] result:=0;
	xorl	%edi,%edi
	.balign 4,0x90
.Lj1529:
# [390] result:=result or BsrDword(tmp);
	movl	%esi,%ecx
# Var tmp located in register ecx
	call	SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
	orl	%edi,%eax
# Var $result located in register eax
# [391] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc855:

.section .text.n_fpc_div_qword,"x"
	.balign 16,0x90
.globl	fpc_div_qword
fpc_div_qword:
.globl	FPC_DIV_QWORD
FPC_DIV_QWORD:
.Lc857:
.seh_proc fpc_div_qword
# [396] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc859:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rbx
# Var shift located in register eax
# Var lzz located in register eax
# Var lzn located in register eax
	movq	%rcx,%rsi
# Var n located in register rsi
	movq	%rdx,%rdi
# Var z located in register rdi
# [398] if (hi(z) = 0) and (hi(n) = 0) then begin
	movq	%rdi,%rcx
	call	SYSTEM_$$_HI$QWORD$$LONGWORD
	testl	%eax,%eax
	jne	.Lj1533
	movq	%rsi,%rcx
	call	SYSTEM_$$_HI$QWORD$$LONGWORD
	testl	%eax,%eax
	jne	.Lj1533
# [399] fpc_div_qword := Dword(z) div Dword(n);
	movl	%edi,%eax
	movl	%esi,%ecx
	cqto
	idivq	%rcx
	movq	%rax,%rbx
# [400] exit;
	jmp	.Lj1530
	.balign 4,0x90
.Lj1533:
# [403] fpc_div_qword:=0;
	xorl	%ebx,%ebx
# Var z located in register rdi
# [406] lzz:=BsrQWord(z);
	movq	%rdi,%rcx
	call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
	movl	%eax,%r12d
# Var lzz located in register r12d
# Var n located in register rsi
# [407] lzn:=BsrQWord(n);
	movq	%rsi,%rcx
	call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
# Var lzn located in register eax
# [411] if lzn > lzz then exit;
	cmpl	%eax,%r12d
	jl	.Lj1530
	.balign 4,0x90
# [413] shift:=lzz-lzn;
	subl	%eax,%r12d
# Var shift located in register r12d
# [414] n:=n shl shift;
	movslq	%r12d,%rcx
	shlq	%cl,%rsi
# Var n located in register rsi
# [415] for shift:=shift downto 0 do
	testl	%r12d,%r12d
	jnge	.Lj1538
	addl	$1,%r12d
	.balign 8,0x90
.Lj1539:
	subl	$1,%r12d
# [417] if z>=n then
	cmpq	%rdi,%rsi
	jnbe	.Lj1543
# [419] z:=z-n;
	subq	%rsi,%rdi
# [420] fpc_div_qword:=fpc_div_qword+(qword(1) shl shift);
	movslq	%r12d,%rcx
	movl	$1,%eax
	shlq	%cl,%rax
	addq	%rax,%rbx
	.balign 4,0x90
.Lj1543:
# [422] n:=n shr 1;
	shrq	$1,%rsi
	testl	%r12d,%r12d
	jnle	.Lj1539
	.balign 4,0x90
.Lj1538:
.Lj1530:
# [424] end;
	movq	%rbx,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc858:

.section .text.n_fpc_div_int64,"x"
	.balign 16,0x90
.globl	fpc_div_int64
fpc_div_int64:
.globl	FPC_DIV_INT64
FPC_DIV_INT64:
.Lc860:
# Var $result located in register rcx
# Var sign located in register al
# Var q1 located in register r8
# Var q2 located in register r9
# Var n located in register rcx
# Var z located in register rdx
# [430] begin
# Var sign located in register al
# [435] sign := false;
	xorb	%al,%al
# [436] if z < 0 then begin
	testq	%rdx,%rdx
	jnl	.Lj1547
# [437] sign := not sign;
	testb	%al,%al
	seteb	%al
# [438] q1 := qword(-z);
	movq	%rdx,%r8
	negq	%r8
	jmp	.Lj1548
.Lj1547:
# [441] q1 := z;
	movq	%rdx,%r8
.Lj1548:
# [443] if n < 0 then begin
	testq	%rcx,%rcx
	jnl	.Lj1550
# [444] sign := not sign;
	testb	%al,%al
	seteb	%al
# [445] q2 := qword(-n);
	movq	%rcx,%r9
	negq	%r9
	jmp	.Lj1551
.Lj1550:
# [448] q2 := n;
	movq	%rcx,%r9
.Lj1551:
# [450] if sign then
	testb	%al,%al
	je	.Lj1553
# [451] result := -(q1 div q2)
	movq	%r8,%rax
	xorl	%edx,%edx
	divq	%r9
	negq	%rax
	movq	%rax,%rcx
	jmp	.Lj1554
.Lj1553:
# [453] result := q1 div q2;
	movq	%r8,%rax
	xorl	%edx,%edx
	divq	%r9
	movq	%rax,%rcx
.Lj1554:
# [454] end;
	movq	%rcx,%rax
	ret
.Lc861:

.section .text.n_fpc_handleerror,"x"
	.balign 16,0x90
.globl	fpc_handleerror
fpc_handleerror:
.globl	FPC_HANDLEERROR
FPC_HANDLEERROR:
.Lc862:
.seh_proc fpc_handleerror
# [469] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc864:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%ebx
# Var errno located in register ebx
# [470] writeln('fpc_handleerror, errno = ', errno, ', meaning = ', errmap[errno]);
	call	fpc_get_output
	movq	%rax,%rsi
	leaq	_$SYSTEM$_Ld71(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movslq	%ebx,%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_sint
	leaq	_$SYSTEM$_Ld72(%rip),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movl	%ebx,%eax
	leaq	TC_$SYSTEM$_$FPC_HANDLEERROR$LONGINT_$$_ERRMAP(%rip),%rdx
	movq	-1600(%rdx,%rax,8),%r8
	movq	%rsi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_ansistr
	movq	%rsi,%rcx
	call	fpc_writeln_end
# [471] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc863:

.section .text.n_fpc_popaddrstack,"x"
	.balign 16,0x90
.globl	fpc_popaddrstack
fpc_popaddrstack:
.globl	FPC_POPADDRSTACK
FPC_POPADDRSTACK:
.Lc865:
.seh_proc fpc_popaddrstack
# [475] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc867:
.seh_stackalloc 32
.seh_endprologue
# [476] writeln('fpc_popaddrstack');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld73(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [477] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc866:

.section .text.n_fpc_pushexceptaddr,"x"
	.balign 16,0x90
.globl	fpc_pushexceptaddr
fpc_pushexceptaddr:
.globl	FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
.Lc868:
.seh_proc fpc_pushexceptaddr
# [480] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc870:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var ft located in register ecx
# Var _buf located in register rdx
# Var _newaddr located in register r8
# [481] writeln('fpc_pushexceptaddr');
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$SYSTEM$_Ld74(%rip),%r8
	movq	%rbx,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rbx,%rcx
	call	fpc_writeln_end
# [482] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc869:

.section .text.n_system_$$_handleerroraddrframe$longint$pointer$pointer,"x"
	.balign 16,0x90
.globl	SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER:
.globl	FPC_BREAK_ERROR
FPC_BREAK_ERROR:
.Lc875:
.seh_proc SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
# [580] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc877:
.seh_stackalloc 32
.seh_endprologue
	movl	%ecx,%ebx
# Var Errno located in register ebx
	movq	%rdx,%rsi
# Var addr located in register rsi
	movq	%r8,%rdi
# Var frame located in register rdi
# [581] if CodePointer(ErrorProc) <> nil then ErrorProc(Errno, addr, frame);
	cmpq	$0,TC_$SYSTEM_$$_ERRORPROC(%rip)
	je	.Lj1568
	movq	%rdi,%r8
	movq	%rsi,%rdx
	movl	%ebx,%ecx
	call	*TC_$SYSTEM_$$_ERRORPROC(%rip)
	.balign 4,0x90
.Lj1568:
# [582] ErrorCode := Word(Errno);
	movw	%bx,TC_$SYSTEM_$$_ERRORCODE(%rip)
# [583] ErrorAddr := addr;
	movq	%rsi,%rdx
# Var addr located in register rdx
	movq	%rdx,TC_$SYSTEM_$$_ERRORADDR(%rip)
# [584] ErrorBase := frame;
	movq	%rdi,%r8
# Var frame located in register r8
	movq	%r8,FPC_ERRORBASE(%rip)
# [585] if ExceptAddrStack <> nil then raise TObject(nil) at addr, frame;
	cmpq	$0,U_$SYSTEM_$$_EXCEPTADDRSTACK(%rip)
	je	.Lj1570
	xorl	%ecx,%ecx
	call	fpc_raiseexception
	.balign 4,0x90
.Lj1570:
# [586] Halt(ErrorCode);
	movzwl	TC_$SYSTEM_$$_ERRORCODE(%rip),%ecx
	call	SYSTEM_$$_HALT$LONGINT
# [587] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc876:

.section .text.n_fpc_overflow,"x"
	.balign 16,0x90
.globl	fpc_overflow
fpc_overflow:
.globl	FPC_OVERFLOW
FPC_OVERFLOW:
.Lc878:
.seh_proc fpc_overflow
# [590] begin
	leaq	-40(%rsp),%rsp
.Lc880:
.seh_stackalloc 40
.seh_endprologue
# [591] Halt(215); // IntOverflow
	movl	$215,%ecx
	call	SYSTEM_$$_HALT$LONGINT
# [592] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc879:

.section .text.n_system$_$ttestexception_$_create$ansistring$$ttestexception_$$_fin$000002ac,"x"
	.balign 16,0x90
SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$000002AC:
.Lc881:
.seh_proc SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$000002AC
# [597] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc883:
.Lc884:
	movq	%rcx,%rbp
.Lc885:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [595] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc882:

.section .text.n_system$_$ttestexception_$__$$_create$ansistring$$ttestexception,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION:
.Lc886:
.seh_proc SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
	pushq	%rbp
.seh_pushreg %rbp
.Lc888:
.Lc889:
	movq	%rsp,%rbp
.Lc890:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var msg located at rbp-8, size=OS_64
# Var $vmt located at rbp-16, size=OS_64
# Var $self located at rbp-24, size=OS_64
# Var $vmt_afterconstruction_local located at rbp-32, size=OS_S64
	movq	%rcx,-24(%rbp)
	movq	%rdx,-16(%rbp)
	movq	%r8,-8(%rbp)
	movq	%r8,%rcx
	call	fpc_ansistr_incr_ref
	cmpq	$1,-16(%rbp)
	jne	.Lj1578
	movq	-24(%rbp),%rax
	movq	-24(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-24(%rbp)
	.balign 4,0x90
.Lj1578:
	cmpq	$0,-24(%rbp)
	je	.Lj1573
	.balign 4,0x90
.Lj1586:
	nop
.Lj1585:
	movq	$-1,-32(%rbp)
.Lj1591:
	nop
.Lj1587:
# [596] test := msg;
	movq	-24(%rbp),%rax
	leaq	8(%rax),%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_assign
.Lj1589:
	nop
.Lj1588:
	movq	%rbp,%rcx
	call	SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$000002AC
	movq	$1,-32(%rbp)
	cmpq	$0,-24(%rbp)
	je	.Lj1583
	cmpq	$0,-16(%rbp)
	je	.Lj1583
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*128(%rax)
	.balign 4,0x90
	jmp	.Lj1583
.Lj1582:
	cmpq	$0,-16(%rbp)
	je	.Lj1596
	movq	-32(%rbp),%rdx
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
	.balign 4,0x90
.Lj1596:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj1597:
	nop
.Lj1583:
.Lj1573:
	movq	-24(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	2
	.long	0
	.rva	.Lj1587
	.rva	.Lj1588
	.rva	SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$000002AC
	.long	1
	.rva	.Lj1585
	.rva	.Lj1582
	.rva	.Lj1583

.section .text.n_system$_$ttestexception_$__$$_create$ansistring$$ttestexception,"x"
.seh_endproc
.Lc887:

.section .text.n_fpc_dynarray_setlength,"x"
	.balign 16,0x90
.globl	fpc_dynarray_setlength
fpc_dynarray_setlength:
.globl	FPC_DYNARR_SETLENGTH
FPC_DYNARR_SETLENGTH:
.Lc891:
.seh_proc fpc_dynarray_setlength
# [609] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc893:
.seh_stackalloc 40
.seh_endprologue
# Var elesize located in register rax
# Var eletype located in register rax
# Var eletypemngd located in register rax
# Var ti located in register rax
# Var size located in register rax
# Var newp located in register r12
	movq	%rcx,%rbx
# Var p located in register rbx
# Var pti located in register rdx
# Var dimcount located in register r8
	movq	%r9,%rsi
# Var dims located in register rsi
# [620] if dimcount > 1 then begin
	cmpq	$1,%r8
	jg	.Lj1598
	.balign 4,0x90
# [625] if dims[0] < 0 then begin
	cmpq	$0,(%rsi)
# [630] if dims[0] = 0 then begin
	cmpq	$0,(%rsi)
	je	.Lj1598
	.balign 4,0x90
# [636] ti := pointer(pti)+2+pbyte(pti)[1];
	leaq	2(%rdx),%rcx
	movzbl	1(%rdx),%eax
	addq	%rcx,%rax
# Var ti located in register rax
# Var ti located in register rax
# Var elesize located in register rcx
# [637] elesize := psizeuint(ti)^;
	movq	(%rax),%rcx
# Var ti located in register rax
# [639] eletype := pdynarraytypedata(ti)^.elType2^;
	movq	8(%rax),%rdx
# Var eletype located in register rdx
	movq	(%rdx),%rdx
# [643] if assigned(pdynarraytypedata(ti)^.elType) then eletypemngd := pdynarraytypedata(ti)^.elType^ else eletypemngd := nil;
	cmpq	$0,20(%rax)
	je	.Lj1607
	movq	20(%rax),%rax
	movq	(%rax),%rax
	jmp	.Lj1608
.Lj1607:
	xorl	%eax,%eax
.Lj1608:
# [649] size := elesize*dims[0]+sizeof(tdynarray);
	movq	(%rsi),%rdi
	imulq	%rcx,%rdi
	jno	.Lj1609
	call	FPC_OVERFLOW
.Lj1609:
	addq	$16,%rdi
	jno	.Lj1610
	call	FPC_OVERFLOW
.Lj1610:
# Var size located in register rdi
# [653] if not assigned(p) then begin
	cmpq	$0,(%rbx)
	jne	.Lj1612
# [656] newp := xallocmem(size);
	movq	%rdi,%rcx
	call	XMM_$$_XGETMEM$QWORD$$POINTER
	movq	%rax,%r12
	testq	%rax,%rax
	je	.Lj1617
	.balign 4,0x90
	movq	%rdi,%rdx
	xorl	%r8d,%r8d
	movq	%r12,%rcx
	call	_$dll$kernel32$RtlFillMemory
	jmp	.Lj1617
.Lj1612:
# [663] writeln('array needs reallocation');
	call	fpc_get_output
	movq	%rax,%rdi
	leaq	_$SYSTEM$_Ld75(%rip),%r8
	movq	%rdi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rdi,%rcx
	call	fpc_writeln_end
# [664] writeln('@@todo to be implemented!');
	call	fpc_get_output
	movq	%rax,%rdi
	leaq	_$SYSTEM$_Ld76(%rip),%r8
	movq	%rdi,%rdx
	xorl	%ecx,%ecx
	call	fpc_write_text_shortstr
	movq	%rdi,%rcx
	call	fpc_writeln_end
.Lj1617:
# [667] p := pointer(newp)+sizeof(tdynarray);
	leaq	16(%r12),%rax
	movq	%rax,(%rbx)
# [669] newp^.refcount := 1;
	movq	$1,(%r12)
# [670] newp^.high := dims[0]-1;
	movq	(%rsi),%rax
	subq	$1,%rax
	movq	%rax,8(%r12)
.Lj1598:
# [671] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc892:

.section .text.n_fpc_dynarray_length,"x"
	.balign 16,0x90
.globl	fpc_dynarray_length
fpc_dynarray_length:
.globl	FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
.Lc894:
# Var $result located in register rax
# Var p located in register rcx
# [674] begin
# [675] if p = nil then exit(0);
	testq	%rcx,%rcx
	jne	.Lj1621
	xorl	%eax,%eax
	ret
	.balign 4,0x90
.Lj1621:
# Var p located in register rcx
# [676] result := pdynarray(p-sizeof(tdynarray))^.high+1;
	movq	-8(%rcx),%rdx
	addq	$1,%rdx
	movq	%rdx,%rax
# [677] end;
	ret
.Lc895:

.section .text.n_fpc_dynarray_high,"x"
	.balign 16,0x90
.globl	fpc_dynarray_high
fpc_dynarray_high:
.globl	FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
.Lc896:
# Var $result located in register rax
# Var p located in register rcx
# [680] begin
# [681] if p = nil then exit(0);
	testq	%rcx,%rcx
	jne	.Lj1625
	xorl	%eax,%eax
	ret
	.balign 4,0x90
.Lj1625:
# Var p located in register rcx
# [682] result := pdynarray(p-sizeof(tdynarray))^.high;
	movq	-8(%rcx),%rax
# [683] end;
	ret
.Lc897:

.section .text.n_fpc_dynarray_incr_ref,"x"
	.balign 16,0x90
.globl	fpc_dynarray_incr_ref
fpc_dynarray_incr_ref:
.globl	FPC_DYNARRAY_INCR_REF
FPC_DYNARRAY_INCR_REF:
.Lc898:
.seh_proc fpc_dynarray_incr_ref
# [688] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc900:
.seh_stackalloc 32
.seh_endprologue
# Var d located in register rax
# Var p located in register rcx
# [689] if p = nil then exit;
	testq	%rcx,%rcx
	je	.Lj1626
	.balign 4,0x90
# [690] d := pdynarray(p-sizeof(tdynarray));
	leaq	-16(%rcx),%rbx
# Var d located in register rbx
# [691] if d^.refcount = 0 then
	cmpq	$0,(%rbx)
	jne	.Lj1631
# [693] HandleError(204)
	movl	$204,%ecx
	call	FPC_HANDLEERROR
	jmp	.Lj1632
.Lj1631:
# [694] else if d^.refcount>0 then
	cmpq	$0,(%rbx)
	jng	.Lj1634
# [697] inc(d^.refcount);
	addq	$1,(%rbx)
	.balign 4,0x90
.Lj1634:
.Lj1632:
.Lj1626:
# [698] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc899:

.section .text.n_fpc_dynarray_clear,"x"
	.balign 16,0x90
.globl	fpc_dynarray_clear
fpc_dynarray_clear:
.globl	FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
.Lc901:
.seh_proc fpc_dynarray_clear
# [703] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc903:
.seh_stackalloc 40
.seh_endprologue
# Var d located in register rax
	movq	%rcx,%rbx
# Var p located in register rbx
# Var ti located in register rdx
# [704] if p = nil then exit;
	cmpq	$0,(%rbx)
	je	.Lj1635
	.balign 4,0x90
# [705] d := pdynarray(p-sizeof(tdynarray));
	movq	(%rbx),%rax
	leaq	-16(%rax),%rsi
# Var d located in register rsi
# [706] if d^.refcount = 0 then
	cmpq	$0,(%rsi)
	jne	.Lj1640
# [708] HandleError(204);
	movl	$204,%ecx
	call	FPC_HANDLEERROR
	.balign 4,0x90
.Lj1640:
# [709] if d^.refcount > 0 then begin
	cmpq	$0,(%rsi)
	jng	.Lj1642
# [710] dec(d^.refcount); // todo: locked
	subq	$1,(%rsi)
# [714] FreeMem(d);
	movq	%rsi,%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
	.balign 4,0x90
.Lj1642:
# [716] p := nil;
	movq	$0,(%rbx)
.Lj1635:
# [717] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc902:

.section .text.n_WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1,"x"
	.balign 16,0x90
.globl	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1:
# [objects.inc]
# [567] function TInterfacedObject.QueryInterface(constref iid: TGUID; out obj): LongInt; stdcall;
	subq	$16,%rcx
	jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT

.section .text.n_WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT,"x"
	.balign 16,0x90
.globl	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
# [572] function TInterfacedObject._AddRef: LongInt; stdcall;
	subq	$16,%rcx
	jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT

.section .text.n_WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT,"x"
	.balign 16,0x90
.globl	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
# [579] function TInterfacedObject._Release: LongInt; stdcall;
	subq	$16,%rcx
	jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

.section .text.n_system_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$SYSTEM
INIT$_$SYSTEM:
.globl	SYSTEM_$$_init$
SYSTEM_$$_init$:
.Lc914:
.seh_proc SYSTEM_$$_init$
# [system.pas]
# [828] initialization
	leaq	-40(%rsp),%rsp
.Lc916:
.seh_stackalloc 40
.seh_endprologue
# [829] install_exception_handlers;
	call	SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
# [831] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc915:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
# [system_types.inc]
# [254] FPC_EMPTYCHAR: AnsiChar;
	.globl U_$SYSTEM_$$_FPC_EMPTYCHAR
U_$SYSTEM_$$_FPC_EMPTYCHAR:
	.zero 1

.section .bss
	.balign 8
# [exceptions.inc]
# [148] ExceptAddrStack:   PExceptAddr;
	.globl U_$SYSTEM_$$_EXCEPTADDRSTACK
U_$SYSTEM_$$_EXCEPTADDRSTACK:
	.zero 8

.section .bss
	.balign 8
# [149] ExceptObjectStack: PExceptObject;
	.globl U_$SYSTEM_$$_EXCEPTOBJECTSTACK
U_$SYSTEM_$$_EXCEPTOBJECTSTACK:
	.zero 8

.section .bss
	.balign 8
# [system.pas]
# [190] StdIn, StdOut, StdErr: HANDLE;       // initialized in sysinitpas if app type is CONSOLE
	.globl U_$SYSTEM_$$_STDIN
U_$SYSTEM_$$_STDIN:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$_STDOUT
U_$SYSTEM_$$_STDOUT:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$_STDERR
U_$SYSTEM_$$_STDERR:
	.zero 8

.section .bss
	.balign 8
# [191] EntryInformation: TEntryInformation; // @@todo: check if EntryInformation is used
	.globl U_$SYSTEM_$$_ENTRYINFORMATION
U_$SYSTEM_$$_ENTRYINFORMATION:
	.zero 56

.section .bss
	.balign 4
# [193] ExitCode: LongInt;           public name 'operatingsystem_result';
	.globl operatingsystem_result
operatingsystem_result:
	.zero 4

.section .bss
	.balign 8
# [exceptions64.inc]
# [178] ex_rip   : array[0..ex_max_level-1] of qword;
U_$SYSTEM_$$_EX_RIP:
	.zero 128

.section .bss
	.balign 8
# [179] except_signal : array[0..ex_max_level-1] of qword;
U_$SYSTEM_$$_EXCEPT_SIGNAL:
	.zero 128

.section .bss
# [180] reset_fpu    : array[0..ex_max_level-1] of boolean;
U_$SYSTEM_$$_RESET_FPU:
	.zero 16

.section .rodata.n_VMT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT:
	.quad	8,-8,0
	.quad	.Ld77
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TOBJECT
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0
# [system.pas]

.section .rodata.n_IID_$SYSTEM_$$_IUNKNOWN,"d"
	.balign 8
.globl	IID_$SYSTEM_$$_IUNKNOWN
IID_$SYSTEM_$$_IUNKNOWN:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.section .rodata.n_IIDSTR_$SYSTEM_$$_IUNKNOWN,"d"
	.balign 8
.globl	IIDSTR_$SYSTEM_$$_IUNKNOWN
IIDSTR_$SYSTEM_$$_IUNKNOWN:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"

.section .rodata.n_VMT_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TINTERFACEDOBJECT
VMT_$SYSTEM_$$_TINTERFACEDOBJECT:
	.quad	24,-24
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld78
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
	.quad	0,0
	.quad	.Ld80
	.quad	0
	.quad	SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION
	.quad	SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_TTESTEXCEPTION,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TTESTEXCEPTION
VMT_$SYSTEM_$$_TTESTEXCEPTION:
	.quad	16,-16
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld81
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TTESTEXCEPTION
	.quad	INIT_$SYSTEM_$$_TTESTEXCEPTION
	.quad	0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld34$strlab:
	.short	0,1
	.long	0
	.quad	-1,9
.Ld34:
# [460] 'DivByZero',        'RangeError',      'StackOverflow',     '203',            '204',
	.ascii	"DivByZero\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld35$strlab:
	.short	0,1
	.long	0
	.quad	-1,10
.Ld35:
	.ascii	"RangeError\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld36$strlab:
	.short	0,1
	.long	0
	.quad	-1,13
.Ld36:
	.ascii	"StackOverflow\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld37$strlab:
	.short	0,1
	.long	0
	.quad	-1,3
.Ld37:
	.ascii	"203\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld38$strlab:
	.short	0,1
	.long	0
	.quad	-1,3
.Ld38:
	.ascii	"204\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld39$strlab:
	.short	0,1
	.long	0
	.quad	-1,8
.Ld39:
# [461] 'Overflow',         'Underflow',       'InvalidOp',         'ZeroDivide',     '209',
	.ascii	"Overflow\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld40$strlab:
	.short	0,1
	.long	0
	.quad	-1,9
.Ld40:
	.ascii	"Underflow\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld41$strlab:
	.short	0,1
	.long	0
	.quad	-1,9
.Ld41:
	.ascii	"InvalidOp\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld42$strlab:
	.short	0,1
	.long	0
	.quad	-1,10
.Ld42:
	.ascii	"ZeroDivide\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld43$strlab:
	.short	0,1
	.long	0
	.quad	-1,3
.Ld43:
	.ascii	"209\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld44$strlab:
	.short	0,1
	.long	0
	.quad	-1,16
.Ld44:
# [462] 'ObjectCheckError', 'AbstractError',   'ExternalException', '213',            'BusError',
	.ascii	"ObjectCheckError\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld45$strlab:
	.short	0,1
	.long	0
	.quad	-1,13
.Ld45:
	.ascii	"AbstractError\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld46$strlab:
	.short	0,1
	.long	0
	.quad	-1,17
.Ld46:
	.ascii	"ExternalException\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld47$strlab:
	.short	0,1
	.long	0
	.quad	-1,3
.Ld47:
	.ascii	"213\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld48$strlab:
	.short	0,1
	.long	0
	.quad	-1,8
.Ld48:
	.ascii	"BusError\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld49$strlab:
	.short	0,1
	.long	0
	.quad	-1,11
.Ld49:
# [463] 'IntOverflow',      'AccessViolation', 'ControlC',          'Privilege',      'InvalidCast',
	.ascii	"IntOverflow\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld50$strlab:
	.short	0,1
	.long	0
	.quad	-1,15
.Ld50:
	.ascii	"AccessViolation\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld51$strlab:
	.short	0,1
	.long	0
	.quad	-1,8
.Ld51:
	.ascii	"ControlC\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld52$strlab:
	.short	0,1
	.long	0
	.quad	-1,9
.Ld52:
	.ascii	"Privilege\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld53$strlab:
	.short	0,1
	.long	0
	.quad	-1,11
.Ld53:
	.ascii	"InvalidCast\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld54$strlab:
	.short	0,1
	.long	0
	.quad	-1,14
.Ld54:
# [464] 'InvalidVarCast',   'InvalidVarOp',    'DispatchError',     'VarArrayCreate', 'VarNotArray',
	.ascii	"InvalidVarCast\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld55$strlab:
	.short	0,1
	.long	0
	.quad	-1,12
.Ld55:
	.ascii	"InvalidVarOp\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld56$strlab:
	.short	0,1
	.long	0
	.quad	-1,13
.Ld56:
	.ascii	"DispatchError\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld57$strlab:
	.short	0,1
	.long	0
	.quad	-1,14
.Ld57:
	.ascii	"VarArrayCreate\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld58$strlab:
	.short	0,1
	.long	0
	.quad	-1,11
.Ld58:
	.ascii	"VarNotArray\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld59$strlab:
	.short	0,1
	.long	0
	.quad	-1,14
.Ld59:
# [465] 'VarArrayBounds',   '226',             'AssertionFailed',   'IntfCastError',  'SafecallException',
	.ascii	"VarArrayBounds\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld60$strlab:
	.short	0,1
	.long	0
	.quad	-1,3
.Ld60:
	.ascii	"226\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld61$strlab:
	.short	0,1
	.long	0
	.quad	-1,15
.Ld61:
	.ascii	"AssertionFailed\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld62$strlab:
	.short	0,1
	.long	0
	.quad	-1,13
.Ld62:
	.ascii	"IntfCastError\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld63$strlab:
	.short	0,1
	.long	0
	.quad	-1,17
.Ld63:
	.ascii	"SafecallException\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld64$strlab:
	.short	0,1
	.long	0
	.quad	-1,3
.Ld64:
# [466] '230',              'iconvError',      'NoThreadSupport',   'SigQuit',        'MissingWStringManager',
	.ascii	"230\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld65$strlab:
	.short	0,1
	.long	0
	.quad	-1,10
.Ld65:
	.ascii	"iconvError\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld66$strlab:
	.short	0,1
	.long	0
	.quad	-1,15
.Ld66:
	.ascii	"NoThreadSupport\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld67$strlab:
	.short	0,1
	.long	0
	.quad	-1,7
.Ld67:
	.ascii	"SigQuit\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld68$strlab:
	.short	0,1
	.long	0
	.quad	-1,21
.Ld68:
	.ascii	"MissingWStringManager\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld69$strlab:
	.short	0,1
	.long	0
	.quad	-1,16
.Ld69:
# [467] 'NoDynLibsSupport', 'ThreadError'
	.ascii	"NoDynLibsSupport\000"

.section .rodata.n_.Ld34,"d"
	.balign 8
.Ld70$strlab:
	.short	0,1
	.long	0
	.quad	-1,11
.Ld70:
# [468] );
	.ascii	"ThreadError\000"

.section .rodata.n_VMT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.Ld77:
	.byte	7
	.ascii	"TObject"

.section .rodata.n_VMT_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.Ld78:
	.byte	17
	.ascii	"TInterfacedObject"

.section .rodata.n_VMT_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.Ld79:
	.quad	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
	.quad	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
	.quad	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

.section .rodata.n_VMT_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.Ld80:
	.quad	1
	.quad	IID_$SYSTEM_$$_IUNKNOWN$indirect
	.quad	.Ld79
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.quad	16
	.quad	IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
	.long	0
	.byte	0,0,0,0

.section .rodata.n_VMT_$SYSTEM_$$_TTESTEXCEPTION,"d"
	.balign 8
.Ld81:
	.byte	14
	.ascii	"TTestException"
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$SYSTEM_$$_EXITPROC,"d"
	.balign 8
.globl	TC_$SYSTEM_$$_EXITPROC
TC_$SYSTEM_$$_EXITPROC:
	.quad	0
# [40] ErrorAddr: CodePointer = nil;

.section .data.n_TC_$SYSTEM_$$_ERRORADDR,"d"
	.balign 8
.globl	TC_$SYSTEM_$$_ERRORADDR
TC_$SYSTEM_$$_ERRORADDR:
	.quad	0
# [41] ErrorCode: Word = 0;

.section .data.n_TC_$SYSTEM_$$_ERRORCODE,"d"
	.balign 2
.globl	TC_$SYSTEM_$$_ERRORCODE
TC_$SYSTEM_$$_ERRORCODE:
	.short	0
# [42] ErrorBase: Pointer = nil; public name 'FPC_ERRORBASE';

.section .data.n_FPC_ERRORBASE,"d"
	.balign 8
.globl	FPC_ERRORBASE
FPC_ERRORBASE:
	.quad	0
# [46] const

.section .data.n_TC_$SYSTEM_$$_IOBJECTINSTANCE,"d"
	.balign 4
.globl	TC_$SYSTEM_$$_IOBJECTINSTANCE
TC_$SYSTEM_$$_IOBJECTINSTANCE:
	.long	-652436748
	.short	15507,16911
	.byte	163,3,191,91,168,43,253,35
# [objects.inc]
# [148] type

.section .data.n_TC_$SYSTEM_$$_DEFAULT8087CW,"d"
	.balign 2
.globl	TC_$SYSTEM_$$_DEFAULT8087CW
TC_$SYSTEM_$$_DEFAULT8087CW:
	.short	4914
# [exceptions.inc]
# [61] DefaultMXCSR: DWord = $1900;

.section .data.n_TC_$SYSTEM_$$_DEFAULTMXCSR,"d"
	.balign 4
.globl	TC_$SYSTEM_$$_DEFAULTMXCSR
TC_$SYSTEM_$$_DEFAULTMXCSR:
	.long	6400
# [64] const

.section .data.n_TC_$SYSTEM_$$_EXCEPTOBJPROC,"d"
	.balign 8
.globl	TC_$SYSTEM_$$_EXCEPTOBJPROC
TC_$SYSTEM_$$_EXCEPTOBJPROC:
	.quad	0
# [153] ExceptClsProc: TExceptClsProc = nil;

.section .data.n_TC_$SYSTEM_$$_EXCEPTCLSPROC,"d"
	.balign 8
.globl	TC_$SYSTEM_$$_EXCEPTCLSPROC
TC_$SYSTEM_$$_EXCEPTCLSPROC:
	.quad	0
# [154] ErrorProc: TErrorProc = nil;

.section .data.n_TC_$SYSTEM_$$_ERRORPROC,"d"
	.balign 8
.globl	TC_$SYSTEM_$$_ERRORPROC
TC_$SYSTEM_$$_ERRORPROC:
	.quad	0
# [exceptions64.inc]
# [7] type

.section .data.n_TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT,"d"
	.balign 4
.globl	TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT
TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT:
	.long	16
# [98] type

.section .data.n_operatingsystem_islibrary,"d"
.globl	operatingsystem_islibrary
operatingsystem_islibrary:
	.byte	0
# [system.pas]
# [195] is_console: boolean = false; public name 'operatingsystem_isconsole';

.section .data.n_operatingsystem_isconsole,"d"
.globl	operatingsystem_isconsole
operatingsystem_isconsole:
	.byte	0
# [196] IsMultithread: boolean = false;

.section .data.n_TC_$SYSTEM_$$_ISMULTITHREAD,"d"
.globl	TC_$SYSTEM_$$_ISMULTITHREAD
TC_$SYSTEM_$$_ISMULTITHREAD:
	.byte	0
# [198] implementation

.section .rodata.n__$SYSTEM$_Ld1,"d"
	.balign 8
.globl	_$SYSTEM$_Ld1
_$SYSTEM$_Ld1:
	.ascii	"\020press <enter>...\000"

.section .rodata.n_.Ld2,"d"
	.balign 8
.Ld2$strlab:
	.short	0,1
	.long	0
	.quad	-1,9
.Ld2:
# [objects.inc]
	.ascii	"$Capturer\000"

.section .rodata.n__$SYSTEM$_Ld3,"d"
	.balign 16
.globl	_$SYSTEM$_Ld3
_$SYSTEM$_Ld3:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.section .rodata.n_.Ld4,"d"
	.balign 8
.Ld4$strlab:
	.short	0,1
	.long	0
	.quad	-1,21
.Ld4:
	.ascii	"@@todo: fpc_intf_cast\000"

.section .data.n_TC_$SYSTEM_$$_EX_LEVEL,"d"
TC_$SYSTEM_$$_EX_LEVEL:
	.byte	0
# [exceptions64.inc]
# [177] var

.section .rodata.n__$SYSTEM$_Ld5,"d"
	.balign 8
.globl	_$SYSTEM$_Ld5
_$SYSTEM$_Ld5:
	.ascii	"\022JumpToHandleSignal\000"

.section .rodata.n__$SYSTEM$_Ld6,"d"
	.balign 8
.globl	_$SYSTEM$_Ld6
_$SYSTEM$_Ld6:
	.ascii	"\031signals_exception_handler\000"

.section .rodata.n__$SYSTEM$_Ld7,"d"
	.balign 8
.globl	_$SYSTEM$_Ld7
_$SYSTEM$_Ld7:
	.ascii	"\027exrec^.ExceptionCode = \000"

.section .rodata.n__$SYSTEM$_Ld8,"d"
	.balign 8
.globl	_$SYSTEM$_Ld8
_$SYSTEM$_Ld8:
	.ascii	"\034syswin_x64_exception_handler\000"

.section .data.n_TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER,"d"
	.balign 8
TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER:
	.quad	0
# [283] procedure install_exception_handlers;

.section .rodata.n__$SYSTEM$_Ld9,"d"
	.balign 8
.globl	_$SYSTEM$_Ld9
_$SYSTEM$_Ld9:
	.ascii	"\026__FPC_specific_handler\000"

.section .rodata.n__$SYSTEM$_Ld10,"d"
	.balign 8
.globl	_$SYSTEM$_Ld10
_$SYSTEM$_Ld10:
	.ascii	"\022fpc_raiseexception\000"

.section .rodata.n__$SYSTEM$_Ld11,"d"
	.balign 8
.globl	_$SYSTEM$_Ld11
_$SYSTEM$_Ld11:
	.ascii	"\007obj nil\000"

.section .rodata.n__$SYSTEM$_Ld12,"d"
	.balign 8
.globl	_$SYSTEM$_Ld12
_$SYSTEM$_Ld12:
	.ascii	"\012anaddr nil\000"

.section .rodata.n__$SYSTEM$_Ld13,"d"
	.balign 8
.globl	_$SYSTEM$_Ld13
_$SYSTEM$_Ld13:
	.ascii	"\012aframe nil\000"

.section .rodata.n__$SYSTEM$_Ld14,"d"
	.balign 8
.globl	_$SYSTEM$_Ld14
_$SYSTEM$_Ld14:
	.ascii	"\024exception message = \000"

.section .rodata.n__$SYSTEM$_Ld15,"d"
	.balign 8
.globl	_$SYSTEM$_Ld15
_$SYSTEM$_Ld15:
# [rtti.inc]
	.ascii	"\016fpc_initialize\000"

.section .rodata.n__$SYSTEM$_Ld16,"d"
	.balign 8
.globl	_$SYSTEM$_Ld16
_$SYSTEM$_Ld16:
	.ascii	"\014fpc_finalize\000"

.section .rodata.n__$SYSTEM$_Ld17,"d"
	.balign 8
.globl	_$SYSTEM$_Ld17
_$SYSTEM$_Ld17:
	.ascii	"&decrease refcount of interfaced object\000"

.section .rodata.n__$SYSTEM$_Ld18,"d"
	.balign 8
.globl	_$SYSTEM$_Ld18
_$SYSTEM$_Ld18:
	.ascii	"\012fpc_addref\000"

.section .rodata.n__$SYSTEM$_Ld19,"d"
	.balign 8
.globl	_$SYSTEM$_Ld19
_$SYSTEM$_Ld19:
	.ascii	"\012fpc_decref\000"

.section .rodata.n_.Ld20,"d"
	.balign 8
.Ld20$strlab:
	.short	0,1
	.long	0
	.quad	-1,2
.Ld20:
# [io.inc]
	.ascii	"\015\012\000"

.section .rodata.n_.Ld21,"d"
	.balign 8
.Ld21$strlab:
	.short	0,1
	.long	0
	.quad	-1,4
.Ld21:
	.ascii	"TRUE\000"

.section .rodata.n_.Ld22,"d"
	.balign 8
.Ld22$strlab:
	.short	0,1
	.long	0
	.quad	-1,5
.Ld22:
	.ascii	"FALSE\000"

.section .rodata.n__$SYSTEM$_Ld23,"d"
	.balign 8
.globl	_$SYSTEM$_Ld23
_$SYSTEM$_Ld23:
# [strings.inc]
	.ascii	"\025fpc_val_sint_shortstr\000"

.section .rodata.n__$SYSTEM$_Ld24,"d"
	.balign 8
.globl	_$SYSTEM$_Ld24
_$SYSTEM$_Ld24:
	.ascii	"\021fpc_shortstr_sint\000"

.section .rodata.n__$SYSTEM$_Ld25,"d"
	.balign 8
.globl	_$SYSTEM$_Ld25
_$SYSTEM$_Ld25:
	.ascii	"\030fpc_ansistr_concat_multi\000"

.section .rodata.n__$SYSTEM$_Ld26,"d"
	.balign 8
.globl	_$SYSTEM$_Ld26
_$SYSTEM$_Ld26:
	.ascii	"\020fpc_ansistr_sint\000"

.section .rodata.n__$SYSTEM$_Ld27,"d"
	.balign 8
.globl	_$SYSTEM$_Ld27
_$SYSTEM$_Ld27:
	.ascii	"\025fpc_pchar_to_shortstr\000"

.section .rodata.n__$SYSTEM$_Ld28,"d"
	.balign 8
.globl	_$SYSTEM$_Ld28
_$SYSTEM$_Ld28:
	.ascii	"\024fpc_uchar_to_ansistr\000"

.section .rodata.n_TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg,"d"
TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg:
	.byte	0

.section .rodata.n_.Ld29,"d"
	.balign 8
.Ld29$strlab:
	.short	0,1
	.long	0
	.quad	-1,1
.Ld29:
	.ascii	"0\000"

.section .rodata.n_.Ld30,"d"
	.balign 8
.Ld30$strlab:
	.short	1200,2
	.long	0
	.quad	-1,1
.Ld30:
	.short	63,0
# [unicode.inc]

.section .rodata.n_.Ld31,"d"
	.balign 8
.Ld31$strlab:
	.short	0,1
	.long	0
	.quad	-1,1
.Ld31:
	.ascii	"?\000"

.section .rodata.n_.Ld32,"d"
	.balign 8
.Ld32$strlab:
	.short	0,1
	.long	0
	.quad	-1,1
.Ld32:
# [Dialogs.pas]
	.ascii	" \000"

.section .rodata.n__$SYSTEM$_Ld33,"d"
	.balign 8
.globl	_$SYSTEM$_Ld33
_$SYSTEM$_Ld33:
# [system.pas]
	.ascii	"DEBUG\000"

.section .data.n_TC_$SYSTEM$_$BSRBYTE$BYTE$$BYTE_$$_BSR8BIT,"d"
TC_$SYSTEM$_$BSRBYTE$BYTE$$BYTE_$$_BSR8BIT:
	.byte	255,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6
	.byte	6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,7,7
	.byte	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
	.byte	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7

.section .data.n_TC_$SYSTEM$_$FPC_HANDLEERROR$LONGINT_$$_ERRMAP,"d"
	.balign 8
TC_$SYSTEM$_$FPC_HANDLEERROR$LONGINT_$$_ERRMAP:
	.quad	.Ld34
	.quad	.Ld35
	.quad	.Ld36
	.quad	.Ld37
	.quad	.Ld38
	.quad	.Ld39
	.quad	.Ld40
	.quad	.Ld41
	.quad	.Ld42
	.quad	.Ld43
	.quad	.Ld44
	.quad	.Ld45
	.quad	.Ld46
	.quad	.Ld47
	.quad	.Ld48
	.quad	.Ld49
	.quad	.Ld50
	.quad	.Ld51
	.quad	.Ld52
	.quad	.Ld53
	.quad	.Ld54
	.quad	.Ld55
	.quad	.Ld56
	.quad	.Ld57
	.quad	.Ld58
	.quad	.Ld59
	.quad	.Ld60
	.quad	.Ld61
	.quad	.Ld62
	.quad	.Ld63
	.quad	.Ld64
	.quad	.Ld65
	.quad	.Ld66
	.quad	.Ld67
	.quad	.Ld68
	.quad	.Ld69
	.quad	.Ld70

.section .rodata.n__$SYSTEM$_Ld71,"d"
	.balign 8
.globl	_$SYSTEM$_Ld71
_$SYSTEM$_Ld71:
	.ascii	"\031fpc_handleerror, errno = \000"

.section .rodata.n__$SYSTEM$_Ld72,"d"
	.balign 8
.globl	_$SYSTEM$_Ld72
_$SYSTEM$_Ld72:
	.ascii	"\014, meaning = \000"

.section .rodata.n__$SYSTEM$_Ld73,"d"
	.balign 8
.globl	_$SYSTEM$_Ld73
_$SYSTEM$_Ld73:
	.ascii	"\020fpc_popaddrstack\000"

.section .rodata.n__$SYSTEM$_Ld74,"d"
	.balign 8
.globl	_$SYSTEM$_Ld74
_$SYSTEM$_Ld74:
	.ascii	"\022fpc_pushexceptaddr\000"

.section .rodata.n__$SYSTEM$_Ld75,"d"
	.balign 8
.globl	_$SYSTEM$_Ld75
_$SYSTEM$_Ld75:
	.ascii	"\030array needs reallocation\000"

.section .rodata.n__$SYSTEM$_Ld76,"d"
	.balign 8
.globl	_$SYSTEM$_Ld76
_$SYSTEM$_Ld76:
	.ascii	"\031@@todo to be implemented!\000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$SYSTEM_$$_formal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal:
	.byte	0,7
# [832] 
	.ascii	"$formal"

.section .rodata.n_RTTI_$SYSTEM_$$_typedformal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_typedformal
RTTI_$SYSTEM_$$_typedformal:
	.byte	0,12
	.ascii	"$typedformal"

.section .rodata.n_RTTI_$SYSTEM_$$_void,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_void
RTTI_$SYSTEM_$$_void:
	.byte	1,5
	.ascii	"$void"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_POINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINTER
RTTI_$SYSTEM_$$_POINTER:
	.byte	29,7
	.ascii	"Pointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTE
RTTI_$SYSTEM_$$_BYTE:
	.byte	1,4
	.ascii	"Byte"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTINT
RTTI_$SYSTEM_$$_SHORTINT:
	.byte	1,8
	.ascii	"ShortInt"
	.byte	0
	.long	-128,127

.section .rodata.n_RTTI_$SYSTEM_$$_WORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORD
RTTI_$SYSTEM_$$_WORD:
	.byte	1,4
	.ascii	"Word"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$SYSTEM_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALLINT
RTTI_$SYSTEM_$$_SMALLINT:
	.byte	1,8
	.ascii	"SmallInt"
	.byte	2
	.long	-32768,32767

.section .rodata.n_RTTI_$SYSTEM_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGWORD
RTTI_$SYSTEM_$$_LONGWORD:
	.byte	1,8
	.ascii	"LongWord"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_LONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGINT
RTTI_$SYSTEM_$$_LONGINT:
	.byte	1,7
	.ascii	"LongInt"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORD
RTTI_$SYSTEM_$$_QWORD:
	.byte	20,5
	.ascii	"QWord"
	.byte	7
	.quad	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_INT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_INT64
RTTI_$SYSTEM_$$_INT64:
	.byte	19,5
	.ascii	"Int64"
	.byte	6
	.quad	-9223372036854775808,9223372036854775807

.section .rodata.n_RTTI_$SYSTEM_$$_uint128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_uint128
RTTI_$SYSTEM_$$_uint128:
	.byte	1,8
	.ascii	"$uint128"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_int128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_int128
RTTI_$SYSTEM_$$_int128:
	.byte	1,7
	.ascii	"$int128"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN
RTTI_$SYSTEM_$$_BOOLEAN:
	.byte	18,7
	.ascii	"Boolean"
	.byte	1
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN8
RTTI_$SYSTEM_$$_BOOLEAN8:
	.byte	18,8
	.ascii	"Boolean8"
	.byte	1
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN16
RTTI_$SYSTEM_$$_BOOLEAN16:
	.byte	18,9
	.ascii	"Boolean16"
	.byte	3
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN32
RTTI_$SYSTEM_$$_BOOLEAN32:
	.byte	18,9
	.ascii	"Boolean32"
	.byte	5
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN64
RTTI_$SYSTEM_$$_BOOLEAN64:
	.byte	18,9
	.ascii	"Boolean64"
	.byte	7
	.quad	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTEBOOL
RTTI_$SYSTEM_$$_BYTEBOOL:
	.byte	18,8
	.ascii	"ByteBool"
	.byte	0
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_WORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORDBOOL
RTTI_$SYSTEM_$$_WORDBOOL:
	.byte	18,8
	.ascii	"WordBool"
	.byte	2
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBOOL
RTTI_$SYSTEM_$$_LONGBOOL:
	.byte	18,8
	.ascii	"LongBool"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_QWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORDBOOL
RTTI_$SYSTEM_$$_QWORDBOOL:
	.byte	18,9
	.ascii	"QWordBool"
	.byte	6
	.quad	-9223372036854775808,9223372036854775807

.section .rodata.n_RTTI_$SYSTEM_$$_CHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CHAR
RTTI_$SYSTEM_$$_CHAR:
	.byte	2,4
	.ascii	"Char"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$SYSTEM_$$_WIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDECHAR
RTTI_$SYSTEM_$$_WIDECHAR:
	.byte	17,8
	.ascii	"WideChar"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTSTRING
RTTI_$SYSTEM_$$_SHORTSTRING:
	.byte	7,11
	.ascii	"ShortString"
	.byte	255

.section .rodata.n_RTTI_$SYSTEM_$$_longstring,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_longstring
RTTI_$SYSTEM_$$_longstring:
	.byte	8,11
	.ascii	"$longstring"

.section .rodata.n_RTTI_$SYSTEM_$$_ANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ANSISTRING
RTTI_$SYSTEM_$$_ANSISTRING:
	.byte	9,10
	.ascii	"AnsiString"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_WIDESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDESTRING
RTTI_$SYSTEM_$$_WIDESTRING:
	.byte	10,10
	.ascii	"WideString"

.section .rodata.n_RTTI_$SYSTEM_$$_UNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNICODESTRING
RTTI_$SYSTEM_$$_UNICODESTRING:
	.byte	24,13
	.ascii	"UnicodeString"

.section .rodata.n_RTTI_$SYSTEM_$$_OPENSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OPENSTRING
RTTI_$SYSTEM_$$_OPENSTRING:
	.byte	7,10
	.ascii	"OpenString"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_SINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SINGLE
RTTI_$SYSTEM_$$_SINGLE:
	.byte	4,6
	.ascii	"Single"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_DOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_DOUBLE
RTTI_$SYSTEM_$$_DOUBLE:
	.byte	4,6
	.ascii	"Double"
	.byte	1

.section .rodata.n_RTTI_$SYSTEM_$$_s80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_s80real
RTTI_$SYSTEM_$$_s80real:
	.byte	4,8
	.ascii	"$s80real"
	.byte	2

.section .rodata.n_RTTI_$SYSTEM_$$_sc80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_sc80real
RTTI_$SYSTEM_$$_sc80real:
	.byte	4,9
	.ascii	"$sc80real"
	.byte	2

.section .rodata.n_RTTI_$SYSTEM_$$_CURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CURRENCY
RTTI_$SYSTEM_$$_CURRENCY:
	.byte	4,8
	.ascii	"Currency"
	.byte	4

.section .rodata.n_RTTI_$SYSTEM_$$_char_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_char_pointer
RTTI_$SYSTEM_$$_char_pointer:
	.byte	29,13
	.ascii	"$char_pointer"
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_widechar_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_widechar_pointer
RTTI_$SYSTEM_$$_widechar_pointer:
	.byte	29,17
	.ascii	"$widechar_pointer"
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_parentfp_void_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_parentfp_void_pointer
RTTI_$SYSTEM_$$_parentfp_void_pointer:
	.byte	29,22
	.ascii	"$parentfp_void_pointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARPOINTER
RTTI_$SYSTEM_$$_NEARPOINTER:
	.byte	29,11
	.ascii	"NearPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARCSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARCSPOINTER
RTTI_$SYSTEM_$$_NEARCSPOINTER:
	.byte	29,13
	.ascii	"NearCsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARDSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARDSPOINTER
RTTI_$SYSTEM_$$_NEARDSPOINTER:
	.byte	29,13
	.ascii	"NearDsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARSSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARSSPOINTER
RTTI_$SYSTEM_$$_NEARSSPOINTER:
	.byte	29,13
	.ascii	"NearSsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARESPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARESPOINTER
RTTI_$SYSTEM_$$_NEARESPOINTER:
	.byte	29,13
	.ascii	"NearEsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARFSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARFSPOINTER
RTTI_$SYSTEM_$$_NEARFSPOINTER:
	.byte	29,13
	.ascii	"NearFsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARGSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARGSPOINTER
RTTI_$SYSTEM_$$_NEARGSPOINTER:
	.byte	29,13
	.ascii	"NearGsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_openchararray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_openchararray
RTTI_$SYSTEM_$$_openchararray:
	.byte	12,4
	.ascii	"Char"
	.quad	0,0
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_file,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_file
RTTI_$SYSTEM_$$_file:
	.byte	0,5
	.ascii	"$file"

.section .rodata.n_RTTI_$SYSTEM_$$_VARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_VARIANT
RTTI_$SYSTEM_$$_VARIANT:
	.byte	11,7
	.ascii	"Variant"

.section .rodata.n_RTTI_$SYSTEM_$$_OLEVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OLEVARIANT
RTTI_$SYSTEM_$$_OLEVARIANT:
	.byte	11,10
	.ascii	"OleVariant"

.section .rodata.n_RTTI_$SYSTEM_$$_TEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXT
RTTI_$SYSTEM_$$_TEXT:
	.byte	0,4
	.ascii	"Text"

.section .rodata.n_RTTI_$SYSTEM_$$_TYPEDFILE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TYPEDFILE
RTTI_$SYSTEM_$$_TYPEDFILE:
	.byte	0,9
	.ascii	"TypedFile"

.section .rodata.n_INIT_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$___vtbl_ptr_type
INIT_$SYSTEM_$$___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.quad	0
	.long	40
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_pvmt,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_pvmt
RTTI_$SYSTEM_$$_pvmt:
	.byte	29,5
	.ascii	"$pvmt"
	.quad	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000037,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000037
RTTI_$SYSTEM_$$_def00000037:
	.byte	29,0
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000038,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000038
RTTI_$SYSTEM_$$_def00000038:
	.byte	12,0
	.quad	8,1
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$___vtbl_ptr_type
RTTI_$SYSTEM_$$___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.quad	INIT_$SYSTEM_$$___vtbl_ptr_type
	.long	40,5
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_pvmt$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_def00000037$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_def00000038$indirect
	.quad	32

.section .rodata.n_RTTI_$SYSTEM_$$_vtblarray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_vtblarray
RTTI_$SYSTEM_$$_vtblarray:
	.byte	12,10
	.ascii	"$vtblarray"
	.quad	16,2
	.quad	RTTI_$SYSTEM_$$_pvmt$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_methodpointer
INIT_$SYSTEM_$$_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_methodpointer
RTTI_$SYSTEM_$$_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.quad	INIT_$SYSTEM_$$_methodpointer
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_INIT_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_nestedprocpointer
INIT_$SYSTEM_$$_nestedprocpointer:
	.byte	13,18
	.ascii	"$nestedprocpointer"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_nestedprocpointer
RTTI_$SYSTEM_$$_nestedprocpointer:
	.byte	13,18
	.ascii	"$nestedprocpointer"
	.quad	INIT_$SYSTEM_$$_nestedprocpointer
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_CARDINAL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CARDINAL
RTTI_$SYSTEM_$$_CARDINAL:
	.byte	1,8
	.ascii	"Cardinal"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_HRESULT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_HRESULT
RTTI_$SYSTEM_$$_HRESULT:
	.byte	1,7
	.ascii	"HRESULT"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_PCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCHAR
RTTI_$SYSTEM_$$_PCHAR:
	.byte	29,5
	.ascii	"PChar"
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPCHAR
RTTI_$SYSTEM_$$_PPCHAR:
	.byte	29,6
	.ascii	"PPChar"
	.quad	RTTI_$SYSTEM_$$_PCHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PANSICHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSICHAR
RTTI_$SYSTEM_$$_PANSICHAR:
	.byte	29,9
	.ascii	"PAnsiChar"
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSISTRING
RTTI_$SYSTEM_$$_PANSISTRING:
	.byte	29,11
	.ascii	"PAnsiString"
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PWIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWIDECHAR
RTTI_$SYSTEM_$$_PWIDECHAR:
	.byte	29,9
	.ascii	"PWideChar"
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPWIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPWIDECHAR
RTTI_$SYSTEM_$$_PPWIDECHAR:
	.byte	29,10
	.ascii	"PPWideChar"
	.quad	RTTI_$SYSTEM_$$_PWIDECHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTSTRING
RTTI_$SYSTEM_$$_PSHORTSTRING:
	.byte	29,12
	.ascii	"PShortString"
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_RAWBYTESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_RAWBYTESTRING
RTTI_$SYSTEM_$$_RAWBYTESTRING:
	.byte	9,13
	.ascii	"RawByteString"
	.short	65535

.section .rodata.n_RTTI_$SYSTEM_$$_PRAWBYTESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PRAWBYTESTRING
RTTI_$SYSTEM_$$_PRAWBYTESTRING:
	.byte	29,14
	.ascii	"PRawByteString"
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_UTF8STRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UTF8STRING
RTTI_$SYSTEM_$$_UTF8STRING:
	.byte	9,10
	.ascii	"UTF8String"
	.short	65001

.section .rodata.n_RTTI_$SYSTEM_$$_PUTF8STRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUTF8STRING
RTTI_$SYSTEM_$$_PUTF8STRING:
	.byte	29,11
	.ascii	"PUTF8String"
	.quad	RTTI_$SYSTEM_$$_UTF8STRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PUNICODECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNICODECHAR
RTTI_$SYSTEM_$$_PUNICODECHAR:
	.byte	29,12
	.ascii	"PUnicodeChar"
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PUNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNICODESTRING
RTTI_$SYSTEM_$$_PUNICODESTRING:
	.byte	29,14
	.ascii	"PUnicodeString"
	.quad	RTTI_$SYSTEM_$$_UNICODESTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSMALLINT
RTTI_$SYSTEM_$$_PSMALLINT:
	.byte	29,9
	.ascii	"PSmallInt"
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTINT
RTTI_$SYSTEM_$$_PSHORTINT:
	.byte	29,9
	.ascii	"PShortInt"
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PINTEGER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTEGER
RTTI_$SYSTEM_$$_PINTEGER:
	.byte	29,8
	.ascii	"PInteger"
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBYTE
RTTI_$SYSTEM_$$_PBYTE:
	.byte	29,5
	.ascii	"PByte"
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWORD
RTTI_$SYSTEM_$$_PWORD:
	.byte	29,5
	.ascii	"PWord"
	.quad	RTTI_$SYSTEM_$$_WORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDWORD
RTTI_$SYSTEM_$$_PDWORD:
	.byte	29,6
	.ascii	"PDWord"
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGWORD
RTTI_$SYSTEM_$$_PLONGWORD:
	.byte	29,9
	.ascii	"PLongWord"
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGINT
RTTI_$SYSTEM_$$_PLONGINT:
	.byte	29,8
	.ascii	"PLongint"
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PCARDINAL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCARDINAL
RTTI_$SYSTEM_$$_PCARDINAL:
	.byte	29,9
	.ascii	"PCardinal"
	.quad	RTTI_$SYSTEM_$$_CARDINAL$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PQWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PQWORD
RTTI_$SYSTEM_$$_PQWORD:
	.byte	29,6
	.ascii	"PQWord"
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PINT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINT64
RTTI_$SYSTEM_$$_PINT64:
	.byte	29,6
	.ascii	"PInt64"
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PUINT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUINT64
RTTI_$SYSTEM_$$_PUINT64:
	.byte	29,7
	.ascii	"PUInt64"
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPTRINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPTRINT
RTTI_$SYSTEM_$$_PPTRINT:
	.byte	29,7
	.ascii	"PPtrInt"
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPTRUINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPTRUINT
RTTI_$SYSTEM_$$_PPTRUINT:
	.byte	29,8
	.ascii	"PPtrUInt"
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSIZEINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSIZEINT
RTTI_$SYSTEM_$$_PSIZEINT:
	.byte	29,8
	.ascii	"PSizeInt"
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSIZEUINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSIZEUINT
RTTI_$SYSTEM_$$_PSIZEUINT:
	.byte	29,9
	.ascii	"PSizeUInt"
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSINGLE
RTTI_$SYSTEM_$$_PSINGLE:
	.byte	29,7
	.ascii	"PSingle"
	.quad	RTTI_$SYSTEM_$$_SINGLE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PDOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDOUBLE
RTTI_$SYSTEM_$$_PDOUBLE:
	.byte	29,7
	.ascii	"PDouble"
	.quad	RTTI_$SYSTEM_$$_DOUBLE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PEXTENDED,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXTENDED
RTTI_$SYSTEM_$$_PEXTENDED:
	.byte	29,9
	.ascii	"PExtended"
	.quad	RTTI_$SYSTEM_$$_DOUBLE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN
RTTI_$SYSTEM_$$_PBOOLEAN:
	.byte	29,8
	.ascii	"PBoolean"
	.quad	RTTI_$SYSTEM_$$_BOOLEAN$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN16
RTTI_$SYSTEM_$$_PBOOLEAN16:
	.byte	29,10
	.ascii	"PBoolean16"
	.quad	RTTI_$SYSTEM_$$_BOOLEAN16$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN32
RTTI_$SYSTEM_$$_PBOOLEAN32:
	.byte	29,10
	.ascii	"PBoolean32"
	.quad	RTTI_$SYSTEM_$$_BOOLEAN32$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN64
RTTI_$SYSTEM_$$_PBOOLEAN64:
	.byte	29,10
	.ascii	"PBoolean64"
	.quad	RTTI_$SYSTEM_$$_BOOLEAN64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PBYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBYTEBOOL
RTTI_$SYSTEM_$$_PBYTEBOOL:
	.byte	29,9
	.ascii	"PByteBool"
	.quad	RTTI_$SYSTEM_$$_BYTEBOOL$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWORDBOOL
RTTI_$SYSTEM_$$_PWORDBOOL:
	.byte	29,9
	.ascii	"PWordBool"
	.quad	RTTI_$SYSTEM_$$_WORDBOOL$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGBOOL
RTTI_$SYSTEM_$$_PLONGBOOL:
	.byte	29,9
	.ascii	"PLongBool"
	.quad	RTTI_$SYSTEM_$$_LONGBOOL$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PQWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PQWORDBOOL
RTTI_$SYSTEM_$$_PQWORDBOOL:
	.byte	29,10
	.ascii	"PQWordBool"
	.quad	RTTI_$SYSTEM_$$_QWORDBOOL$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PNATIVEINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PNATIVEINT
RTTI_$SYSTEM_$$_PNATIVEINT:
	.byte	29,10
	.ascii	"PNativeInt"
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PNATIVEUINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PNATIVEUINT
RTTI_$SYSTEM_$$_PNATIVEUINT:
	.byte	29,11
	.ascii	"PNativeUInt"
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PCURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCURRENCY
RTTI_$SYSTEM_$$_PCURRENCY:
	.byte	29,9
	.ascii	"PCurrency"
	.quad	RTTI_$SYSTEM_$$_CURRENCY$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVARIANT
RTTI_$SYSTEM_$$_PVARIANT:
	.byte	29,8
	.ascii	"PVariant"
	.quad	RTTI_$SYSTEM_$$_VARIANT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPOINTER
RTTI_$SYSTEM_$$_PPOINTER:
	.byte	29,8
	.ascii	"PPointer"
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TDATETIME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDATETIME
RTTI_$SYSTEM_$$_TDATETIME:
	.byte	4,9
	.ascii	"TDateTime"
	.byte	1

.section .rodata.n_RTTI_$SYSTEM_$$_TDATE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDATE
RTTI_$SYSTEM_$$_TDATE:
	.byte	4,5
	.ascii	"TDate"
	.byte	1

.section .rodata.n_RTTI_$SYSTEM_$$_TTIME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTIME
RTTI_$SYSTEM_$$_TTIME:
	.byte	4,5
	.ascii	"TTime"
	.byte	1

.section .rodata.n_RTTI_$SYSTEM_$$_TPROCEDURE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TPROCEDURE
RTTI_$SYSTEM_$$_TPROCEDURE:
	.byte	23,10
	.ascii	"TProcedure"
	.byte	0,0
	.quad	0
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_PTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTEXT
RTTI_$SYSTEM_$$_PTEXT:
	.byte	29,5
	.ascii	"PText"
	.quad	RTTI_$SYSTEM_$$_TEXT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PCODEPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCODEPOINTER
RTTI_$SYSTEM_$$_PCODEPOINTER:
	.byte	29,12
	.ascii	"PCodePointer"
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PFILETEXTRECCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PFILETEXTRECCHAR
RTTI_$SYSTEM_$$_PFILETEXTRECCHAR:
	.byte	29,16
	.ascii	"PFileTextRecChar"
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect

.section .rodata.n_INIT_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_JMP_BUF
INIT_$SYSTEM_$$_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.quad	0
	.long	248
	.quad	0,0
	.long	0

.section .rodata.n_INIT_$SYSTEM_$$_def00000074,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_def00000074
INIT_$SYSTEM_$$_def00000074:
	.byte	13,0
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000074,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000074
RTTI_$SYSTEM_$$_def00000074:
	.byte	13,0
	.quad	INIT_$SYSTEM_$$_def00000074
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_JMP_BUF
RTTI_$SYSTEM_$$_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.quad	INIT_$SYSTEM_$$_JMP_BUF
	.long	248,23
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	96
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	112
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	128
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	144
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	160
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	176
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	192
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	208
	.quad	RTTI_$SYSTEM_$$_def00000074$indirect
	.quad	224
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	240
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	244
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	246

.section .rodata.n_RTTI_$SYSTEM_$$_PJMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PJMP_BUF
RTTI_$SYSTEM_$$_PJMP_BUF:
	.byte	29,8
	.ascii	"pjmp_buf"
	.quad	RTTI_$SYSTEM_$$_JMP_BUF$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTADDR
INIT_$SYSTEM_$$_TEXCEPTADDR:
	.byte	13,11
	.ascii	"TExceptAddr"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTADDR
RTTI_$SYSTEM_$$_TEXCEPTADDR:
	.byte	13,11
	.ascii	"TExceptAddr"
	.quad	INIT_$SYSTEM_$$_TEXCEPTADDR
	.long	24,3
	.quad	RTTI_$SYSTEM_$$_PJMP_BUF$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	16

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTADDR
RTTI_$SYSTEM_$$_PEXCEPTADDR:
	.byte	29,11
	.ascii	"PExceptAddr"
	.quad	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TGUID
INIT_$SYSTEM_$$_TGUID:
	.byte	13,5
	.ascii	"TGUID"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def0000007E,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000007E
RTTI_$SYSTEM_$$_def0000007E:
	.byte	12,0
	.quad	8,8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def0000007F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000007F
RTTI_$SYSTEM_$$_def0000007F:
	.byte	12,0
	.quad	8,8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000080,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000080
RTTI_$SYSTEM_$$_def00000080:
	.byte	12,0
	.quad	6,6
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TGUID
RTTI_$SYSTEM_$$_TGUID:
	.byte	13,5
	.ascii	"TGUID"
	.quad	INIT_$SYSTEM_$$_TGUID
	.long	16,14
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_def0000007E$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_def0000007F$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	9
	.quad	RTTI_$SYSTEM_$$_def00000080$indirect
	.quad	10

.section .rodata.n_RTTI_$SYSTEM_$$_PGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PGUID
RTTI_$SYSTEM_$$_PGUID:
	.byte	29,5
	.ascii	"PGUID"
	.quad	RTTI_$SYSTEM_$$_TGUID$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TLINEENDSTR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TLINEENDSTR
RTTI_$SYSTEM_$$_TLINEENDSTR:
	.byte	7,11
	.ascii	"TLineEndStr"
	.byte	3

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTBUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTBUF
RTTI_$SYSTEM_$$_TEXTBUF:
	.byte	12,7
	.ascii	"TextBuf"
	.quad	256,256
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXTREC
INIT_$SYSTEM_$$_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.quad	0
	.long	904
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000084,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000084
RTTI_$SYSTEM_$$_def00000084:
	.byte	29,0
	.quad	RTTI_$SYSTEM_$$_TEXTBUF$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000085,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000085
RTTI_$SYSTEM_$$_def00000085:
	.byte	12,0
	.quad	32,32
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000086,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000086
RTTI_$SYSTEM_$$_def00000086:
	.byte	12,0
	.quad	512,256
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTREC
RTTI_$SYSTEM_$$_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.quad	INIT_$SYSTEM_$$_TEXTREC
	.long	904,17
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_def00000084$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_def00000085$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_def00000086$indirect
	.quad	120
	.quad	RTTI_$SYSTEM_$$_TLINEENDSTR$indirect
	.quad	632
	.quad	RTTI_$SYSTEM_$$_TEXTBUF$indirect
	.quad	636
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	892
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	896

.section .rodata.n_INIT_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TANSIREC
INIT_$SYSTEM_$$_TANSIREC:
	.byte	13,8
	.ascii	"TAnsiRec"
	.quad	0
	.long	32
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TANSIREC
RTTI_$SYSTEM_$$_TANSIREC:
	.byte	13,8
	.ascii	"TAnsiRec"
	.quad	INIT_$SYSTEM_$$_TANSIREC
	.long	32,5
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	24

.section .rodata.n_RTTI_$SYSTEM_$$_PANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSIREC
RTTI_$SYSTEM_$$_PANSIREC:
	.byte	29,8
	.ascii	"PAnsiRec"
	.quad	RTTI_$SYSTEM_$$_TANSIREC$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TWIDEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TWIDEREC
INIT_$SYSTEM_$$_TWIDEREC:
	.byte	13,8
	.ascii	"TWideRec"
	.quad	0
	.long	6
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TWIDEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TWIDEREC
RTTI_$SYSTEM_$$_TWIDEREC:
	.byte	13,8
	.ascii	"TWideRec"
	.quad	INIT_$SYSTEM_$$_TWIDEREC
	.long	6,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect
	.quad	4

.section .rodata.n_RTTI_$SYSTEM_$$_PWIDEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWIDEREC
RTTI_$SYSTEM_$$_PWIDEREC:
	.byte	29,8
	.ascii	"PWideRec"
	.quad	RTTI_$SYSTEM_$$_TWIDEREC$indirect

.section .rodata.n_INIT_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_FILEREC
INIT_$SYSTEM_$$_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.quad	0
	.long	632
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def0000008E,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000008E
RTTI_$SYSTEM_$$_def0000008E:
	.byte	12,0
	.quad	64,64
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def0000008F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000008F
RTTI_$SYSTEM_$$_def0000008F:
	.byte	12,0
	.quad	32,32
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000090,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000090
RTTI_$SYSTEM_$$_def00000090:
	.byte	12,0
	.quad	512,256
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_FILEREC
RTTI_$SYSTEM_$$_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.quad	INIT_$SYSTEM_$$_FILEREC
	.long	632,6
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_def0000008E$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_def0000008F$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_def00000090$indirect
	.quad	120

.section .rodata.n_INIT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TOBJECT
INIT_$SYSTEM_$$_TOBJECT:
	.byte	15,7
	.ascii	"TObject"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TOBJECT
RTTI_$SYSTEM_$$_TOBJECT:
	.byte	15,7
	.ascii	"TObject"
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	0
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_IUNKNOWN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_IUNKNOWN
RTTI_$SYSTEM_$$_IUNKNOWN:
	.byte	14,8
	.ascii	"IUnknown"
	.quad	0
	.byte	1
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70,6
	.ascii	"system"
	.short	0,3,65535

.section .rodata.n_RTTI_$SYSTEM_$$_TCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCLASS
RTTI_$SYSTEM_$$_TCLASS:
	.byte	28,6
	.ascii	"TClass"
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCLASS
RTTI_$SYSTEM_$$_PCLASS:
	.byte	29,6
	.ascii	"PClass"
	.quad	RTTI_$SYSTEM_$$_TCLASS$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE:
	.byte	3,19
	.ascii	"TInterfaceEntryType"
	.byte	5
	.long	0,6
	.quad	0
	.byte	10
	.ascii	"etStandard"
	.byte	21
	.ascii	"etVirtualMethodResult"
	.byte	20
	.ascii	"etStaticMethodResult"
	.byte	12
	.ascii	"etFieldValue"
	.byte	20
	.ascii	"etVirtualMethodClass"
	.byte	19
	.ascii	"etStaticMethodClass"
	.byte	17
	.ascii	"etFieldValueClass"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o:
	.long	7,3
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	.long	6
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146
	.long	0
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	.long	5
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	.long	2
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	.long	4
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	.long	1
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEENTRY
INIT_$SYSTEM_$$_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"TInterfaceEntry"
	.quad	0
	.long	56
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def000000BE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000BE
RTTI_$SYSTEM_$$_def000000BE:
	.byte	29,0
	.quad	RTTI_$SYSTEM_$$_PGUID$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C0,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C0
RTTI_$SYSTEM_$$_def000000C0:
	.byte	29,0
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRY
RTTI_$SYSTEM_$$_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"TInterfaceEntry"
	.quad	INIT_$SYSTEM_$$_TINTERFACEENTRY
	.long	56,8
	.quad	RTTI_$SYSTEM_$$_def000000BE$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PGUID$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_def000000C0$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
	.quad	48

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACEENTRY
RTTI_$SYSTEM_$$_PINTERFACEENTRY:
	.byte	29,15
	.ascii	"PInterfaceEntry"
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACETABLE
INIT_$SYSTEM_$$_TINTERFACETABLE:
	.byte	13,15
	.ascii	"TInterfaceTable"
	.quad	0
	.long	64
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C3,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C3
RTTI_$SYSTEM_$$_def000000C3:
	.byte	12,0
	.quad	56,1
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACETABLE
RTTI_$SYSTEM_$$_TINTERFACETABLE:
	.byte	13,15
	.ascii	"TInterfaceTable"
	.quad	INIT_$SYSTEM_$$_TINTERFACETABLE
	.long	64,2
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_def000000C3$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACETABLE
RTTI_$SYSTEM_$$_PINTERFACETABLE:
	.byte	29,15
	.ascii	"PInterfaceTable"
	.quad	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMSGSTRTABLE
INIT_$SYSTEM_$$_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMSGSTRTABLE
RTTI_$SYSTEM_$$_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.quad	INIT_$SYSTEM_$$_TMSGSTRTABLE
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PMSGSTRTABLE
RTTI_$SYSTEM_$$_PMSGSTRTABLE:
	.byte	29,12
	.ascii	"PMsgStrTable"
	.quad	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C8
RTTI_$SYSTEM_$$_def000000C8:
	.byte	12,0
	.quad	16,1
	.quad	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.quad	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
	.long	24,2
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_def000000C8$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE:
	.byte	29,19
	.ascii	"pstringmessagetable"
	.quad	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVMT
INIT_$SYSTEM_$$_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.quad	0
	.long	200
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_PPVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPVMT
RTTI_$SYSTEM_$$_PPVMT:
	.byte	29,5
	.ascii	"PPVmt"
	.quad	RTTI_$SYSTEM_$$_PVMT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVMT
RTTI_$SYSTEM_$$_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.quad	INIT_$SYSTEM_$$_TVMT
	.long	200,25
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PPVMT$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	96
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	104
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	112
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	120
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	128
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	136
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	144
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	152
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	160
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	168
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	176
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	184
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	192

.section .rodata.n_RTTI_$SYSTEM_$$_PVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVMT
RTTI_$SYSTEM_$$_PVMT:
	.byte	29,4
	.ascii	"PVmt"
	.quad	RTTI_$SYSTEM_$$_TVMT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEDOBJECT
INIT_$SYSTEM_$$_TINTERFACEDOBJECT:
	.byte	15,17
	.ascii	"TInterfacedObject"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
RTTI_$SYSTEM_$$_TINTERFACEDOBJECT:
	.byte	15,17
	.ascii	"TInterfacedObject"
	.quad	VMT_$SYSTEM_$$_TINTERFACEDOBJECT
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEDCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEDCLASS
RTTI_$SYSTEM_$$_TINTERFACEDCLASS:
	.byte	28,16
	.ascii	"TInterfacedClass"
	.quad	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TMETHOD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMETHOD
INIT_$SYSTEM_$$_TMETHOD:
	.byte	13,7
	.ascii	"TMethod"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TMETHOD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMETHOD
RTTI_$SYSTEM_$$_TMETHOD:
	.byte	13,7
	.ascii	"TMethod"
	.quad	INIT_$SYSTEM_$$_TMETHOD
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PMETHOD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PMETHOD
RTTI_$SYSTEM_$$_PMETHOD:
	.byte	29,7
	.ascii	"PMethod"
	.quad	RTTI_$SYSTEM_$$_TMETHOD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION:
	.byte	3,21
	.ascii	"EXCEPTION_DISPOSITION"
	.byte	5
	.long	0,3
	.quad	0
	.byte	26
	.ascii	"ExceptionContinueExecution"
	.byte	23
	.ascii	"ExceptionContinueSearch"
	.byte	24
	.ascii	"ExceptionNestedException"
	.byte	23
	.ascii	"ExceptionCollidedUnwind"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o:
	.long	4,3
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116
	.long	0
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40
	.long	1
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	.long	2
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION_RECORD
INIT_$SYSTEM_$$_EXCEPTION_RECORD:
	.byte	13,16
	.ascii	"EXCEPTION_RECORD"
	.quad	0
	.long	152
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def0000011F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000011F
RTTI_$SYSTEM_$$_def0000011F:
	.byte	12,0
	.quad	120,15
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_RECORD
RTTI_$SYSTEM_$$_EXCEPTION_RECORD:
	.byte	13,16
	.ascii	"EXCEPTION_RECORD"
	.quad	INIT_$SYSTEM_$$_EXCEPTION_RECORD
	.long	152,6
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_def0000011F$indirect
	.quad	32

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD:
	.byte	29,17
	.ascii	"PEXCEPTION_RECORD"
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSEHFRAME
INIT_$SYSTEM_$$_TSEHFRAME:
	.byte	13,9
	.ascii	"TSEHFrame"
	.quad	0
	.long	32
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSEHFRAME
RTTI_$SYSTEM_$$_TSEHFRAME:
	.byte	13,9
	.ascii	"TSEHFrame"
	.quad	INIT_$SYSTEM_$$_TSEHFRAME
	.long	32,4
	.quad	RTTI_$SYSTEM_$$_PSEHFRAME$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24

.section .rodata.n_RTTI_$SYSTEM_$$_PSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSEHFRAME
RTTI_$SYSTEM_$$_PSEHFRAME:
	.byte	29,9
	.ascii	"PSEHFrame"
	.quad	RTTI_$SYSTEM_$$_TSEHFRAME$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTOBJECT
INIT_$SYSTEM_$$_TEXCEPTOBJECT:
	.byte	13,13
	.ascii	"TExceptObject"
	.quad	0
	.long	40
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTOBJECT
RTTI_$SYSTEM_$$_TEXCEPTOBJECT:
	.byte	13,13
	.ascii	"TExceptObject"
	.quad	INIT_$SYSTEM_$$_TEXCEPTOBJECT
	.long	40,6
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	28
	.quad	RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
	.quad	32

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTOBJECT
RTTI_$SYSTEM_$$_PEXCEPTOBJECT:
	.byte	29,13
	.ascii	"PExceptObject"
	.quad	RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TFILTERREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TFILTERREC
INIT_$SYSTEM_$$_TFILTERREC:
	.byte	13,10
	.ascii	"TFilterRec"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TFILTERREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TFILTERREC
RTTI_$SYSTEM_$$_TFILTERREC:
	.byte	13,10
	.ascii	"TFilterRec"
	.quad	INIT_$SYSTEM_$$_TFILTERREC
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	4

.section .rodata.n_RTTI_$SYSTEM_$$_PFILTERREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PFILTERREC
RTTI_$SYSTEM_$$_PFILTERREC:
	.byte	29,10
	.ascii	"PFilterRec"
	.quad	RTTI_$SYSTEM_$$_TFILTERREC$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTION_FRAME,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTION_FRAME
INIT_$SYSTEM_$$_TEXCEPTION_FRAME:
	.byte	13,16
	.ascii	"TEXCEPTION_FRAME"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTION_FRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME
RTTI_$SYSTEM_$$_TEXCEPTION_FRAME:
	.byte	13,16
	.ascii	"TEXCEPTION_FRAME"
	.quad	INIT_$SYSTEM_$$_TEXCEPTION_FRAME
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_FRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME
RTTI_$SYSTEM_$$_PEXCEPTION_FRAME:
	.byte	29,16
	.ascii	"PEXCEPTION_FRAME"
	.quad	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TUNWINDPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TUNWINDPROC
RTTI_$SYSTEM_$$_TUNWINDPROC:
	.byte	23,11
	.ascii	"TUnwindProc"
	.byte	0,0
	.quad	0
	.byte	1
	.short	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.byte	5
	.ascii	"frame"

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTOBJPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTOBJPROC
RTTI_$SYSTEM_$$_TEXCEPTOBJPROC:
	.byte	23,14
	.ascii	"TExceptObjProc"
	.byte	0,0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	2
	.short	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.byte	4
	.ascii	"code"
	.short	2
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
	.byte	3
	.ascii	"rec"

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTCLSPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTCLSPROC
RTTI_$SYSTEM_$$_TEXCEPTCLSPROC:
	.byte	23,14
	.ascii	"TExceptClsProc"
	.byte	0,0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	1
	.short	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.byte	4
	.ascii	"code"

.section .rodata.n_RTTI_$SYSTEM_$$_TERRORPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TERRORPROC
RTTI_$SYSTEM_$$_TERRORPROC:
	.byte	23,10
	.ascii	"TErrorProc"
	.byte	0,0
	.quad	0
	.byte	3
	.short	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.byte	5
	.ascii	"ErrNo"
	.short	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	7
	.ascii	"Address"
	.short	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	5
	.ascii	"Frame"

.section .rodata.n_INIT_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_M128A
INIT_$SYSTEM_$$_M128A:
	.byte	13,5
	.ascii	"M128A"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_M128A
RTTI_$SYSTEM_$$_M128A:
	.byte	13,5
	.ascii	"M128A"
	.quad	INIT_$SYSTEM_$$_M128A
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PM128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PM128A
RTTI_$SYSTEM_$$_PM128A:
	.byte	29,6
	.ascii	"PM128A"
	.quad	RTTI_$SYSTEM_$$_M128A$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TCONTEXT
INIT_$SYSTEM_$$_TCONTEXT:
	.byte	13,8
	.ascii	"TContext"
	.quad	0
	.long	1136
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000130,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000130
RTTI_$SYSTEM_$$_def00000130:
	.byte	12,0
	.quad	32,2
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000131,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000131
RTTI_$SYSTEM_$$_def00000131:
	.byte	12,0
	.quad	128,8
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000132,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000132
RTTI_$SYSTEM_$$_def00000132:
	.byte	12,0
	.quad	416,26
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCONTEXT
RTTI_$SYSTEM_$$_TCONTEXT:
	.byte	13,8
	.ascii	"TContext"
	.quad	INIT_$SYSTEM_$$_TCONTEXT
	.long	1136,63
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	52
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	58
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	60
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	62
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	66
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	68
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	96
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	104
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	112
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	120
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	128
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	136
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	144
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	152
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	160
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	168
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	176
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	184
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	192
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	200
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	208
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	216
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	224
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	232
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	240
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	248
	.quad	RTTI_$SYSTEM_$$_def00000130$indirect
	.quad	256
	.quad	RTTI_$SYSTEM_$$_def00000131$indirect
	.quad	288
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	416
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	432
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	448
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	464
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	480
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	496
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	512
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	528
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	544
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	560
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	576
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	592
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	608
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	624
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	640
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	656
	.quad	RTTI_$SYSTEM_$$_def00000132$indirect
	.quad	672
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1088
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1096
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1104
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1112
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1120
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1128

.section .rodata.n_RTTI_$SYSTEM_$$_PCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONTEXT
RTTI_$SYSTEM_$$_PCONTEXT:
	.byte	29,8
	.ascii	"PContext"
	.quad	RTTI_$SYSTEM_$$_TCONTEXT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION_POINTERS,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION_POINTERS
INIT_$SYSTEM_$$_EXCEPTION_POINTERS:
	.byte	13,18
	.ascii	"EXCEPTION_POINTERS"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_POINTERS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS
RTTI_$SYSTEM_$$_EXCEPTION_POINTERS:
	.byte	13,18
	.ascii	"EXCEPTION_POINTERS"
	.quad	INIT_$SYSTEM_$$_EXCEPTION_POINTERS
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PCONTEXT$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS
RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS:
	.byte	29,19
	.ascii	"PEXCEPTION_POINTERS"
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSCOPEREC
INIT_$SYSTEM_$$_TSCOPEREC:
	.byte	13,9
	.ascii	"TScopeRec"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSCOPEREC
RTTI_$SYSTEM_$$_TSCOPEREC:
	.byte	13,9
	.ascii	"TScopeRec"
	.quad	INIT_$SYSTEM_$$_TSCOPEREC
	.long	16,4
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	12

.section .rodata.n_RTTI_$SYSTEM_$$_PSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSCOPEREC
RTTI_$SYSTEM_$$_PSCOPEREC:
	.byte	29,9
	.ascii	"PScopeRec"
	.quad	RTTI_$SYSTEM_$$_TSCOPEREC$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE:
	.byte	23,17
	.ascii	"EXCEPTION_ROUTINE"
	.byte	0,0
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
	.byte	4
	.short	1
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
	.byte	15
	.ascii	"ExceptionRecord"
	.short	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	16
	.ascii	"EstablisherFrame"
	.short	1
	.quad	RTTI_$SYSTEM_$$_TCONTEXT$indirect
	.byte	13
	.ascii	"ContextRecord"
	.short	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	17
	.ascii	"DispatcherContext"

.section .rodata.n_INIT_$SYSTEM_$$_RUNTIME_FUNCTION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_RUNTIME_FUNCTION
INIT_$SYSTEM_$$_RUNTIME_FUNCTION:
	.byte	13,16
	.ascii	"RUNTIME_FUNCTION"
	.quad	0
	.long	12
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_RUNTIME_FUNCTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION
RTTI_$SYSTEM_$$_RUNTIME_FUNCTION:
	.byte	13,16
	.ascii	"RUNTIME_FUNCTION"
	.quad	INIT_$SYSTEM_$$_RUNTIME_FUNCTION
	.long	12,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION
RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION:
	.byte	29,17
	.ascii	"PRUNTIME_FUNCTION"
	.quad	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect

.section .rodata.n_INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY:
	.byte	13,26
	.ascii	"UNWIND_HISTORY_TABLE_ENTRY"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY:
	.byte	13,26
	.ascii	"UNWIND_HISTORY_TABLE_ENTRY"
	.quad	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect
	.quad	8

.section .rodata.n_INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE:
	.byte	13,20
	.ascii	"UNWIND_HISTORY_TABLE"
	.quad	0
	.long	216
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def0000013D,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000013D
RTTI_$SYSTEM_$$_def0000013D:
	.byte	12,0
	.quad	192,12
	.quad	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE:
	.byte	13,20
	.ascii	"UNWIND_HISTORY_TABLE"
	.quad	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE
	.long	216,8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	5
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	7
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_def0000013D$indirect
	.quad	24

.section .rodata.n_RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE
RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE:
	.byte	29,21
	.ascii	"PUNWIND_HISTORY_TABLE"
	.quad	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT:
	.byte	13,18
	.ascii	"TDispatcherContext"
	.quad	0
	.long	80
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT:
	.byte	13,18
	.ascii	"TDispatcherContext"
	.quad	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
	.long	80,11
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_PCONTEXT$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	76

.section .rodata.n_RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT:
	.byte	29,18
	.ascii	"PDispatcherContext"
	.quad	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND
RTTI_$SYSTEM_$$_TTYPEKIND:
	.byte	3,9
	.ascii	"TTypeKind"
	.byte	5
	.long	0,29
	.quad	0
	.byte	9
	.ascii	"tkUnknown"
	.byte	9
	.ascii	"tkInteger"
	.byte	6
	.ascii	"tkChar"
	.byte	13
	.ascii	"tkEnumeration"
	.byte	7
	.ascii	"tkFloat"
	.byte	5
	.ascii	"tkSet"
	.byte	8
	.ascii	"tkMethod"
	.byte	9
	.ascii	"tkSString"
	.byte	9
	.ascii	"tkLString"
	.byte	9
	.ascii	"tkAString"
	.byte	9
	.ascii	"tkWString"
	.byte	9
	.ascii	"tkVariant"
	.byte	7
	.ascii	"tkArray"
	.byte	8
	.ascii	"tkRecord"
	.byte	11
	.ascii	"tkInterface"
	.byte	7
	.ascii	"tkClass"
	.byte	8
	.ascii	"tkObject"
	.byte	7
	.ascii	"tkWChar"
	.byte	6
	.ascii	"tkBool"
	.byte	7
	.ascii	"tkInt64"
	.byte	7
	.ascii	"tkQWord"
	.byte	10
	.ascii	"tkDynArray"
	.byte	14
	.ascii	"tkInterfaceRaw"
	.byte	9
	.ascii	"tkProcVar"
	.byte	9
	.ascii	"tkUString"
	.byte	7
	.ascii	"tkUChar"
	.byte	8
	.ascii	"tkHelper"
	.byte	6
	.ascii	"tkFile"
	.byte	10
	.ascii	"tkClassRef"
	.byte	9
	.ascii	"tkPointer"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_s2o
RTTI_$SYSTEM_$$_TTYPEKIND_s2o:
	.long	30,12
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+142
	.long	9
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+112
	.long	18
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+196
	.long	2
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+48
	.long	15
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+171
	.long	28
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+289
	.long	21
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+219
	.long	3
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+55
	.long	27
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+282
	.long	4
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+69
	.long	26
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+273
	.long	19
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+203
	.long	1
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+38
	.long	14
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+159
	.long	22
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+230
	.long	8
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+102
	.long	6
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+83
	.long	16
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+179
	.long	29
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+300
	.long	23
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+245
	.long	20
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+211
	.long	13
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+150
	.long	5
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+77
	.long	7
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+92
	.long	25
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+265
	.long	0
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+28
	.long	24
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+255
	.long	11
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+132
	.long	17
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+188
	.long	10
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+122

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_o2s
RTTI_$SYSTEM_$$_TTYPEKIND_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+28
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+38
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+48
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+55
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+69
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+77
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+83
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+92
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+102
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+112
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+122
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+132
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+142
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+150
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+159
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+171
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+179
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+188
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+196
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+203
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+211
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+219
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+230
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+245
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+255
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+265
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+273
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+282
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+289
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+300

.section .rodata.n_RTTI_$SYSTEM_$$_PTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTYPEKIND
RTTI_$SYSTEM_$$_PTYPEKIND:
	.byte	29,9
	.ascii	"PTypeKind"
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000187,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000187
RTTI_$SYSTEM_$$_def00000187:
	.byte	12,13
	.ascii	"RawByteString"
	.quad	0,0
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TUNICODEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TUNICODEREC
INIT_$SYSTEM_$$_TUNICODEREC:
	.byte	13,11
	.ascii	"tunicoderec"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TUNICODEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TUNICODEREC
RTTI_$SYSTEM_$$_TUNICODEREC:
	.byte	13,11
	.ascii	"tunicoderec"
	.quad	INIT_$SYSTEM_$$_TUNICODEREC
	.long	24,4
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	16

.section .rodata.n_RTTI_$SYSTEM_$$_PUNICODEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNICODEREC
RTTI_$SYSTEM_$$_PUNICODEREC:
	.byte	29,11
	.ascii	"punicoderec"
	.quad	RTTI_$SYSTEM_$$_TUNICODEREC$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def000001AE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001AE
RTTI_$SYSTEM_$$_def000001AE:
	.byte	12,13
	.ascii	"UnicodeString"
	.quad	0,0
	.quad	RTTI_$SYSTEM_$$_UNICODESTRING$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TVARREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVARREC
INIT_$SYSTEM_$$_TVARREC:
	.byte	13,7
	.ascii	"TVarRec"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TVARREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVARREC
RTTI_$SYSTEM_$$_TVARREC:
	.byte	13,7
	.ascii	"TVarRec"
	.quad	INIT_$SYSTEM_$$_TVARREC
	.long	16,20
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BOOLEAN$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PEXTENDED$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PANSICHAR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_TCLASS$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PWIDECHAR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PCURRENCY$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PVARIANT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PINT64$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PQWORD$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PVARREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVARREC
RTTI_$SYSTEM_$$_PVARREC:
	.byte	29,7
	.ascii	"PVarRec"
	.quad	RTTI_$SYSTEM_$$_TVARREC$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAG,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAG
RTTI_$SYSTEM_$$_TREPLACEFLAG:
	.byte	3,12
	.ascii	"TReplaceFlag"
	.byte	5
	.long	0,1
	.quad	0
	.byte	12
	.ascii	"rfReplaceAll"
	.byte	12
	.ascii	"rfIgnoreCase"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o
RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o:
	.long	2,1
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG+44
	.long	0
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG+31

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s
RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG+31
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG+44

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAGS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAGS
RTTI_$SYSTEM_$$_TREPLACEFLAGS:
	.byte	5,13
	.ascii	"TReplaceFlags"
	.byte	5
	.quad	4
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TTESTEXCEPTION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TTESTEXCEPTION
INIT_$SYSTEM_$$_TTESTEXCEPTION:
	.byte	15,14
	.ascii	"TTestException"
	.quad	0
	.long	8
	.quad	0,0
	.long	1
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_TTESTEXCEPTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTESTEXCEPTION
RTTI_$SYSTEM_$$_TTESTEXCEPTION:
	.byte	15,14
	.ascii	"TTestException"
	.quad	VMT_$SYSTEM_$$_TTESTEXCEPTION
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_PDYNARRAYINDEX,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDYNARRAYINDEX
RTTI_$SYSTEM_$$_PDYNARRAYINDEX:
	.byte	29,14
	.ascii	"pdynarrayindex"
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TDYNARRAY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDYNARRAY
INIT_$SYSTEM_$$_TDYNARRAY:
	.byte	13,9
	.ascii	"tdynarray"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TDYNARRAY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDYNARRAY
RTTI_$SYSTEM_$$_TDYNARRAY:
	.byte	13,9
	.ascii	"tdynarray"
	.quad	INIT_$SYSTEM_$$_TDYNARRAY
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PDYNARRAY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDYNARRAY
RTTI_$SYSTEM_$$_PDYNARRAY:
	.byte	29,9
	.ascii	"pdynarray"
	.quad	RTTI_$SYSTEM_$$_TDYNARRAY$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA
INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA:
	.byte	13,17
	.ascii	"tdynarraytypedata"
	.quad	0
	.long	28
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA
RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA:
	.byte	13,17
	.ascii	"tdynarraytypedata"
	.quad	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA
	.long	28,5
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PPOINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_PPOINTER$indirect
	.quad	20
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA
RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA:
	.byte	29,17
	.ascii	"pdynarraytypedata"
	.quad	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TENTRYINFORMATION
INIT_$SYSTEM_$$_TENTRYINFORMATION:
	.byte	13,17
	.ascii	"TEntryInformation"
	.quad	0
	.long	56
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000210,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000210
RTTI_$SYSTEM_$$_def00000210:
	.byte	23,0,0,0
	.quad	0
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TENTRYINFORMATION
RTTI_$SYSTEM_$$_TENTRYINFORMATION:
	.byte	13,17
	.ascii	"TEntryInformation"
	.quad	INIT_$SYSTEM_$$_TENTRYINFORMATION
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
	.quad	RTTI_$SYSTEM_$$_def00000210$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_BOOLEAN$indirect
	.quad	48

.section .rodata.n_RTTI_$SYSTEM_$$_def00000282,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000282
RTTI_$SYSTEM_$$_def00000282:
	.byte	12,0
	.quad	296,37
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_VMT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TOBJECT$indirect
VMT_$SYSTEM_$$_TOBJECT$indirect:
	.quad	VMT_$SYSTEM_$$_TOBJECT

.section .rodata.n_IID_$SYSTEM_$$_IUNKNOWN,"d"
	.balign 8
.globl	IID_$SYSTEM_$$_IUNKNOWN$indirect
IID_$SYSTEM_$$_IUNKNOWN$indirect:
	.quad	IID_$SYSTEM_$$_IUNKNOWN

.section .rodata.n_IIDSTR_$SYSTEM_$$_IUNKNOWN,"d"
	.balign 8
.globl	IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect:
	.quad	IIDSTR_$SYSTEM_$$_IUNKNOWN

.section .rodata.n_VMT_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
VMT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect:
	.quad	VMT_$SYSTEM_$$_TINTERFACEDOBJECT

.section .rodata.n_VMT_$SYSTEM_$$_TTESTEXCEPTION,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TTESTEXCEPTION$indirect
VMT_$SYSTEM_$$_TTESTEXCEPTION$indirect:
	.quad	VMT_$SYSTEM_$$_TTESTEXCEPTION

.section .rodata.n_RTTI_$SYSTEM_$$_formal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_formal$indirect
RTTI_$SYSTEM_$$_formal$indirect:
	.quad	RTTI_$SYSTEM_$$_formal

.section .rodata.n_RTTI_$SYSTEM_$$_typedformal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_typedformal$indirect
RTTI_$SYSTEM_$$_typedformal$indirect:
	.quad	RTTI_$SYSTEM_$$_typedformal

.section .rodata.n_RTTI_$SYSTEM_$$_void,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_void$indirect
RTTI_$SYSTEM_$$_void$indirect:
	.quad	RTTI_$SYSTEM_$$_void

.section .rodata.n_RTTI_$SYSTEM_$$_POINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINTER$indirect
RTTI_$SYSTEM_$$_POINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_POINTER

.section .rodata.n_RTTI_$SYSTEM_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTE$indirect
RTTI_$SYSTEM_$$_BYTE$indirect:
	.quad	RTTI_$SYSTEM_$$_BYTE

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTINT$indirect
RTTI_$SYSTEM_$$_SHORTINT$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .rodata.n_RTTI_$SYSTEM_$$_WORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORD$indirect
RTTI_$SYSTEM_$$_WORD$indirect:
	.quad	RTTI_$SYSTEM_$$_WORD

.section .rodata.n_RTTI_$SYSTEM_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALLINT$indirect
RTTI_$SYSTEM_$$_SMALLINT$indirect:
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .rodata.n_RTTI_$SYSTEM_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGWORD$indirect
RTTI_$SYSTEM_$$_LONGWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGWORD

.section .rodata.n_RTTI_$SYSTEM_$$_LONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGINT$indirect
RTTI_$SYSTEM_$$_LONGINT$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .rodata.n_RTTI_$SYSTEM_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORD$indirect
RTTI_$SYSTEM_$$_QWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_QWORD

.section .rodata.n_RTTI_$SYSTEM_$$_INT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_INT64$indirect
RTTI_$SYSTEM_$$_INT64$indirect:
	.quad	RTTI_$SYSTEM_$$_INT64

.section .rodata.n_RTTI_$SYSTEM_$$_uint128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_uint128$indirect
RTTI_$SYSTEM_$$_uint128$indirect:
	.quad	RTTI_$SYSTEM_$$_uint128

.section .rodata.n_RTTI_$SYSTEM_$$_int128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_int128$indirect
RTTI_$SYSTEM_$$_int128$indirect:
	.quad	RTTI_$SYSTEM_$$_int128

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN$indirect
RTTI_$SYSTEM_$$_BOOLEAN$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN8$indirect
RTTI_$SYSTEM_$$_BOOLEAN8$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN8

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN16$indirect
RTTI_$SYSTEM_$$_BOOLEAN16$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN16

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN32$indirect
RTTI_$SYSTEM_$$_BOOLEAN32$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN32

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN64$indirect
RTTI_$SYSTEM_$$_BOOLEAN64$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN64

.section .rodata.n_RTTI_$SYSTEM_$$_BYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTEBOOL$indirect
RTTI_$SYSTEM_$$_BYTEBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_BYTEBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_WORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORDBOOL$indirect
RTTI_$SYSTEM_$$_WORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_WORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBOOL$indirect
RTTI_$SYSTEM_$$_LONGBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_QWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORDBOOL$indirect
RTTI_$SYSTEM_$$_QWORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_QWORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_CHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CHAR$indirect
RTTI_$SYSTEM_$$_CHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_CHAR

.section .rodata.n_RTTI_$SYSTEM_$$_WIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDECHAR$indirect
RTTI_$SYSTEM_$$_WIDECHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_WIDECHAR

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTSTRING$indirect
RTTI_$SYSTEM_$$_SHORTSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_longstring,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_longstring$indirect
RTTI_$SYSTEM_$$_longstring$indirect:
	.quad	RTTI_$SYSTEM_$$_longstring

.section .rodata.n_RTTI_$SYSTEM_$$_ANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ANSISTRING$indirect
RTTI_$SYSTEM_$$_ANSISTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_ANSISTRING

.section .rodata.n_RTTI_$SYSTEM_$$_WIDESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDESTRING$indirect
RTTI_$SYSTEM_$$_WIDESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_WIDESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_UNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNICODESTRING$indirect
RTTI_$SYSTEM_$$_UNICODESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_UNICODESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_OPENSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OPENSTRING$indirect
RTTI_$SYSTEM_$$_OPENSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_OPENSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_SINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SINGLE$indirect
RTTI_$SYSTEM_$$_SINGLE$indirect:
	.quad	RTTI_$SYSTEM_$$_SINGLE

.section .rodata.n_RTTI_$SYSTEM_$$_DOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_DOUBLE$indirect
RTTI_$SYSTEM_$$_DOUBLE$indirect:
	.quad	RTTI_$SYSTEM_$$_DOUBLE

.section .rodata.n_RTTI_$SYSTEM_$$_s80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_s80real$indirect
RTTI_$SYSTEM_$$_s80real$indirect:
	.quad	RTTI_$SYSTEM_$$_s80real

.section .rodata.n_RTTI_$SYSTEM_$$_sc80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_sc80real$indirect
RTTI_$SYSTEM_$$_sc80real$indirect:
	.quad	RTTI_$SYSTEM_$$_sc80real

.section .rodata.n_RTTI_$SYSTEM_$$_CURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CURRENCY$indirect
RTTI_$SYSTEM_$$_CURRENCY$indirect:
	.quad	RTTI_$SYSTEM_$$_CURRENCY

.section .rodata.n_RTTI_$SYSTEM_$$_char_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_char_pointer$indirect
RTTI_$SYSTEM_$$_char_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_char_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_widechar_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_widechar_pointer$indirect
RTTI_$SYSTEM_$$_widechar_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_widechar_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_parentfp_void_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_parentfp_void_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_NEARPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARPOINTER$indirect
RTTI_$SYSTEM_$$_NEARPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARCSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARCSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARDSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARDSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARSSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARSSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARESPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARESPOINTER$indirect
RTTI_$SYSTEM_$$_NEARESPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARESPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARFSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARFSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARGSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARGSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_openchararray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_openchararray$indirect
RTTI_$SYSTEM_$$_openchararray$indirect:
	.quad	RTTI_$SYSTEM_$$_openchararray

.section .rodata.n_RTTI_$SYSTEM_$$_file,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_file$indirect
RTTI_$SYSTEM_$$_file$indirect:
	.quad	RTTI_$SYSTEM_$$_file

.section .rodata.n_RTTI_$SYSTEM_$$_VARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_VARIANT$indirect
RTTI_$SYSTEM_$$_VARIANT$indirect:
	.quad	RTTI_$SYSTEM_$$_VARIANT

.section .rodata.n_RTTI_$SYSTEM_$$_OLEVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OLEVARIANT$indirect
RTTI_$SYSTEM_$$_OLEVARIANT$indirect:
	.quad	RTTI_$SYSTEM_$$_OLEVARIANT

.section .rodata.n_RTTI_$SYSTEM_$$_TEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXT$indirect
RTTI_$SYSTEM_$$_TEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXT

.section .rodata.n_RTTI_$SYSTEM_$$_TYPEDFILE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TYPEDFILE$indirect
RTTI_$SYSTEM_$$_TYPEDFILE$indirect:
	.quad	RTTI_$SYSTEM_$$_TYPEDFILE

.section .rodata.n_INIT_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$___vtbl_ptr_type$indirect
INIT_$SYSTEM_$$___vtbl_ptr_type$indirect:
	.quad	INIT_$SYSTEM_$$___vtbl_ptr_type

.section .rodata.n_RTTI_$SYSTEM_$$_pvmt,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_pvmt$indirect
RTTI_$SYSTEM_$$_pvmt$indirect:
	.quad	RTTI_$SYSTEM_$$_pvmt

.section .rodata.n_RTTI_$SYSTEM_$$_def00000037,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000037$indirect
RTTI_$SYSTEM_$$_def00000037$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000037

.section .rodata.n_RTTI_$SYSTEM_$$_def00000038,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000038$indirect
RTTI_$SYSTEM_$$_def00000038$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000038

.section .rodata.n_RTTI_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect
RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect:
	.quad	RTTI_$SYSTEM_$$___vtbl_ptr_type

.section .rodata.n_RTTI_$SYSTEM_$$_vtblarray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_vtblarray$indirect
RTTI_$SYSTEM_$$_vtblarray$indirect:
	.quad	RTTI_$SYSTEM_$$_vtblarray

.section .rodata.n_INIT_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_methodpointer$indirect
INIT_$SYSTEM_$$_methodpointer$indirect:
	.quad	INIT_$SYSTEM_$$_methodpointer

.section .rodata.n_RTTI_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_methodpointer$indirect
RTTI_$SYSTEM_$$_methodpointer$indirect:
	.quad	RTTI_$SYSTEM_$$_methodpointer

.section .rodata.n_INIT_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_nestedprocpointer$indirect
INIT_$SYSTEM_$$_nestedprocpointer$indirect:
	.quad	INIT_$SYSTEM_$$_nestedprocpointer

.section .rodata.n_RTTI_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_nestedprocpointer$indirect
RTTI_$SYSTEM_$$_nestedprocpointer$indirect:
	.quad	RTTI_$SYSTEM_$$_nestedprocpointer

.section .rodata.n_RTTI_$SYSTEM_$$_CARDINAL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CARDINAL$indirect
RTTI_$SYSTEM_$$_CARDINAL$indirect:
	.quad	RTTI_$SYSTEM_$$_CARDINAL

.section .rodata.n_RTTI_$SYSTEM_$$_HRESULT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_HRESULT$indirect
RTTI_$SYSTEM_$$_HRESULT$indirect:
	.quad	RTTI_$SYSTEM_$$_HRESULT

.section .rodata.n_RTTI_$SYSTEM_$$_PCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCHAR$indirect
RTTI_$SYSTEM_$$_PCHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PCHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PPCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPCHAR$indirect
RTTI_$SYSTEM_$$_PPCHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PPCHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PANSICHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSICHAR$indirect
RTTI_$SYSTEM_$$_PANSICHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PANSICHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSISTRING$indirect
RTTI_$SYSTEM_$$_PANSISTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PANSISTRING

.section .rodata.n_RTTI_$SYSTEM_$$_PWIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWIDECHAR$indirect
RTTI_$SYSTEM_$$_PWIDECHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PWIDECHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PPWIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPWIDECHAR$indirect
RTTI_$SYSTEM_$$_PPWIDECHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PPWIDECHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
RTTI_$SYSTEM_$$_PSHORTSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_RAWBYTESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_PRAWBYTESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PRAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_PRAWBYTESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PRAWBYTESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_UTF8STRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UTF8STRING$indirect
RTTI_$SYSTEM_$$_UTF8STRING$indirect:
	.quad	RTTI_$SYSTEM_$$_UTF8STRING

.section .rodata.n_RTTI_$SYSTEM_$$_PUTF8STRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUTF8STRING$indirect
RTTI_$SYSTEM_$$_PUTF8STRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PUTF8STRING

.section .rodata.n_RTTI_$SYSTEM_$$_PUNICODECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNICODECHAR$indirect
RTTI_$SYSTEM_$$_PUNICODECHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PUNICODECHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PUNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNICODESTRING$indirect
RTTI_$SYSTEM_$$_PUNICODESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PUNICODESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_PSMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSMALLINT$indirect
RTTI_$SYSTEM_$$_PSMALLINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PSMALLINT

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTINT$indirect
RTTI_$SYSTEM_$$_PSHORTINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PSHORTINT

.section .rodata.n_RTTI_$SYSTEM_$$_PINTEGER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTEGER$indirect
RTTI_$SYSTEM_$$_PINTEGER$indirect:
	.quad	RTTI_$SYSTEM_$$_PINTEGER

.section .rodata.n_RTTI_$SYSTEM_$$_PBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBYTE$indirect
RTTI_$SYSTEM_$$_PBYTE$indirect:
	.quad	RTTI_$SYSTEM_$$_PBYTE

.section .rodata.n_RTTI_$SYSTEM_$$_PWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWORD$indirect
RTTI_$SYSTEM_$$_PWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PWORD

.section .rodata.n_RTTI_$SYSTEM_$$_PDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDWORD$indirect
RTTI_$SYSTEM_$$_PDWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PDWORD

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGWORD$indirect
RTTI_$SYSTEM_$$_PLONGWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PLONGWORD

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGINT$indirect
RTTI_$SYSTEM_$$_PLONGINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PLONGINT

.section .rodata.n_RTTI_$SYSTEM_$$_PCARDINAL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCARDINAL$indirect
RTTI_$SYSTEM_$$_PCARDINAL$indirect:
	.quad	RTTI_$SYSTEM_$$_PCARDINAL

.section .rodata.n_RTTI_$SYSTEM_$$_PQWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PQWORD$indirect
RTTI_$SYSTEM_$$_PQWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PQWORD

.section .rodata.n_RTTI_$SYSTEM_$$_PINT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINT64$indirect
RTTI_$SYSTEM_$$_PINT64$indirect:
	.quad	RTTI_$SYSTEM_$$_PINT64

.section .rodata.n_RTTI_$SYSTEM_$$_PUINT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUINT64$indirect
RTTI_$SYSTEM_$$_PUINT64$indirect:
	.quad	RTTI_$SYSTEM_$$_PUINT64

.section .rodata.n_RTTI_$SYSTEM_$$_PPTRINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPTRINT$indirect
RTTI_$SYSTEM_$$_PPTRINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PPTRINT

.section .rodata.n_RTTI_$SYSTEM_$$_PPTRUINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPTRUINT$indirect
RTTI_$SYSTEM_$$_PPTRUINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PPTRUINT

.section .rodata.n_RTTI_$SYSTEM_$$_PSIZEINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSIZEINT$indirect
RTTI_$SYSTEM_$$_PSIZEINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PSIZEINT

.section .rodata.n_RTTI_$SYSTEM_$$_PSIZEUINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSIZEUINT$indirect
RTTI_$SYSTEM_$$_PSIZEUINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PSIZEUINT

.section .rodata.n_RTTI_$SYSTEM_$$_PSINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSINGLE$indirect
RTTI_$SYSTEM_$$_PSINGLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PSINGLE

.section .rodata.n_RTTI_$SYSTEM_$$_PDOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDOUBLE$indirect
RTTI_$SYSTEM_$$_PDOUBLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PDOUBLE

.section .rodata.n_RTTI_$SYSTEM_$$_PEXTENDED,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXTENDED$indirect
RTTI_$SYSTEM_$$_PEXTENDED$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXTENDED

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN$indirect
RTTI_$SYSTEM_$$_PBOOLEAN$indirect:
	.quad	RTTI_$SYSTEM_$$_PBOOLEAN

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN16$indirect
RTTI_$SYSTEM_$$_PBOOLEAN16$indirect:
	.quad	RTTI_$SYSTEM_$$_PBOOLEAN16

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN32$indirect
RTTI_$SYSTEM_$$_PBOOLEAN32$indirect:
	.quad	RTTI_$SYSTEM_$$_PBOOLEAN32

.section .rodata.n_RTTI_$SYSTEM_$$_PBOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBOOLEAN64$indirect
RTTI_$SYSTEM_$$_PBOOLEAN64$indirect:
	.quad	RTTI_$SYSTEM_$$_PBOOLEAN64

.section .rodata.n_RTTI_$SYSTEM_$$_PBYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBYTEBOOL$indirect
RTTI_$SYSTEM_$$_PBYTEBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_PBYTEBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_PWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWORDBOOL$indirect
RTTI_$SYSTEM_$$_PWORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_PWORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGBOOL$indirect
RTTI_$SYSTEM_$$_PLONGBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_PLONGBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_PQWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PQWORDBOOL$indirect
RTTI_$SYSTEM_$$_PQWORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_PQWORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_PNATIVEINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PNATIVEINT$indirect
RTTI_$SYSTEM_$$_PNATIVEINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PNATIVEINT

.section .rodata.n_RTTI_$SYSTEM_$$_PNATIVEUINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PNATIVEUINT$indirect
RTTI_$SYSTEM_$$_PNATIVEUINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PNATIVEUINT

.section .rodata.n_RTTI_$SYSTEM_$$_PCURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCURRENCY$indirect
RTTI_$SYSTEM_$$_PCURRENCY$indirect:
	.quad	RTTI_$SYSTEM_$$_PCURRENCY

.section .rodata.n_RTTI_$SYSTEM_$$_PVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVARIANT$indirect
RTTI_$SYSTEM_$$_PVARIANT$indirect:
	.quad	RTTI_$SYSTEM_$$_PVARIANT

.section .rodata.n_RTTI_$SYSTEM_$$_PPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPOINTER$indirect
RTTI_$SYSTEM_$$_PPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_PPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_TDATETIME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDATETIME$indirect
RTTI_$SYSTEM_$$_TDATETIME$indirect:
	.quad	RTTI_$SYSTEM_$$_TDATETIME

.section .rodata.n_RTTI_$SYSTEM_$$_TDATE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDATE$indirect
RTTI_$SYSTEM_$$_TDATE$indirect:
	.quad	RTTI_$SYSTEM_$$_TDATE

.section .rodata.n_RTTI_$SYSTEM_$$_TTIME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTIME$indirect
RTTI_$SYSTEM_$$_TTIME$indirect:
	.quad	RTTI_$SYSTEM_$$_TTIME

.section .rodata.n_RTTI_$SYSTEM_$$_TPROCEDURE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TPROCEDURE$indirect
RTTI_$SYSTEM_$$_TPROCEDURE$indirect:
	.quad	RTTI_$SYSTEM_$$_TPROCEDURE

.section .rodata.n_RTTI_$SYSTEM_$$_PTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTEXT$indirect
RTTI_$SYSTEM_$$_PTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_PTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_PCODEPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
RTTI_$SYSTEM_$$_PCODEPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_PCODEPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_PFILETEXTRECCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PFILETEXTRECCHAR$indirect
RTTI_$SYSTEM_$$_PFILETEXTRECCHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PFILETEXTRECCHAR

.section .rodata.n_INIT_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_JMP_BUF$indirect
INIT_$SYSTEM_$$_JMP_BUF$indirect:
	.quad	INIT_$SYSTEM_$$_JMP_BUF

.section .rodata.n_INIT_$SYSTEM_$$_def00000074,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_def00000074$indirect
INIT_$SYSTEM_$$_def00000074$indirect:
	.quad	INIT_$SYSTEM_$$_def00000074

.section .rodata.n_RTTI_$SYSTEM_$$_def00000074,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000074$indirect
RTTI_$SYSTEM_$$_def00000074$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000074

.section .rodata.n_RTTI_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_JMP_BUF$indirect
RTTI_$SYSTEM_$$_JMP_BUF$indirect:
	.quad	RTTI_$SYSTEM_$$_JMP_BUF

.section .rodata.n_RTTI_$SYSTEM_$$_PJMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PJMP_BUF$indirect
RTTI_$SYSTEM_$$_PJMP_BUF$indirect:
	.quad	RTTI_$SYSTEM_$$_PJMP_BUF

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTADDR$indirect
INIT_$SYSTEM_$$_TEXCEPTADDR$indirect:
	.quad	INIT_$SYSTEM_$$_TEXCEPTADDR

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTADDR

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTADDR

.section .rodata.n_INIT_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TGUID$indirect
INIT_$SYSTEM_$$_TGUID$indirect:
	.quad	INIT_$SYSTEM_$$_TGUID

.section .rodata.n_RTTI_$SYSTEM_$$_def0000007E,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000007E$indirect
RTTI_$SYSTEM_$$_def0000007E$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000007E

.section .rodata.n_RTTI_$SYSTEM_$$_def0000007F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000007F$indirect
RTTI_$SYSTEM_$$_def0000007F$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000007F

.section .rodata.n_RTTI_$SYSTEM_$$_def00000080,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000080$indirect
RTTI_$SYSTEM_$$_def00000080$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000080

.section .rodata.n_RTTI_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TGUID$indirect
RTTI_$SYSTEM_$$_TGUID$indirect:
	.quad	RTTI_$SYSTEM_$$_TGUID

.section .rodata.n_RTTI_$SYSTEM_$$_PGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PGUID$indirect
RTTI_$SYSTEM_$$_PGUID$indirect:
	.quad	RTTI_$SYSTEM_$$_PGUID

.section .rodata.n_RTTI_$SYSTEM_$$_TLINEENDSTR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TLINEENDSTR$indirect
RTTI_$SYSTEM_$$_TLINEENDSTR$indirect:
	.quad	RTTI_$SYSTEM_$$_TLINEENDSTR

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTBUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTBUF$indirect
RTTI_$SYSTEM_$$_TEXTBUF$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXTBUF

.section .rodata.n_INIT_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXTREC$indirect
INIT_$SYSTEM_$$_TEXTREC$indirect:
	.quad	INIT_$SYSTEM_$$_TEXTREC

.section .rodata.n_RTTI_$SYSTEM_$$_def00000084,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000084$indirect
RTTI_$SYSTEM_$$_def00000084$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000084

.section .rodata.n_RTTI_$SYSTEM_$$_def00000085,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000085$indirect
RTTI_$SYSTEM_$$_def00000085$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000085

.section .rodata.n_RTTI_$SYSTEM_$$_def00000086,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000086$indirect
RTTI_$SYSTEM_$$_def00000086$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000086

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTREC$indirect
RTTI_$SYSTEM_$$_TEXTREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXTREC

.section .rodata.n_INIT_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TANSIREC$indirect
INIT_$SYSTEM_$$_TANSIREC$indirect:
	.quad	INIT_$SYSTEM_$$_TANSIREC

.section .rodata.n_RTTI_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TANSIREC$indirect
RTTI_$SYSTEM_$$_TANSIREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TANSIREC

.section .rodata.n_RTTI_$SYSTEM_$$_PANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSIREC$indirect
RTTI_$SYSTEM_$$_PANSIREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PANSIREC

.section .rodata.n_INIT_$SYSTEM_$$_TWIDEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TWIDEREC$indirect
INIT_$SYSTEM_$$_TWIDEREC$indirect:
	.quad	INIT_$SYSTEM_$$_TWIDEREC

.section .rodata.n_RTTI_$SYSTEM_$$_TWIDEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TWIDEREC$indirect
RTTI_$SYSTEM_$$_TWIDEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TWIDEREC

.section .rodata.n_RTTI_$SYSTEM_$$_PWIDEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PWIDEREC$indirect
RTTI_$SYSTEM_$$_PWIDEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PWIDEREC

.section .rodata.n_INIT_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_FILEREC$indirect
INIT_$SYSTEM_$$_FILEREC$indirect:
	.quad	INIT_$SYSTEM_$$_FILEREC

.section .rodata.n_RTTI_$SYSTEM_$$_def0000008E,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000008E$indirect
RTTI_$SYSTEM_$$_def0000008E$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000008E

.section .rodata.n_RTTI_$SYSTEM_$$_def0000008F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000008F$indirect
RTTI_$SYSTEM_$$_def0000008F$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000008F

.section .rodata.n_RTTI_$SYSTEM_$$_def00000090,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000090$indirect
RTTI_$SYSTEM_$$_def00000090$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000090

.section .rodata.n_RTTI_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_FILEREC$indirect
RTTI_$SYSTEM_$$_FILEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_FILEREC

.section .rodata.n_INIT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TOBJECT$indirect
INIT_$SYSTEM_$$_TOBJECT$indirect:
	.quad	INIT_$SYSTEM_$$_TOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TOBJECT$indirect
RTTI_$SYSTEM_$$_TOBJECT$indirect:
	.quad	RTTI_$SYSTEM_$$_TOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_IUNKNOWN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_IUNKNOWN$indirect
RTTI_$SYSTEM_$$_IUNKNOWN$indirect:
	.quad	RTTI_$SYSTEM_$$_IUNKNOWN

.section .rodata.n_RTTI_$SYSTEM_$$_TCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCLASS$indirect
RTTI_$SYSTEM_$$_TCLASS$indirect:
	.quad	RTTI_$SYSTEM_$$_TCLASS

.section .rodata.n_RTTI_$SYSTEM_$$_PCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCLASS$indirect
RTTI_$SYSTEM_$$_PCLASS$indirect:
	.quad	RTTI_$SYSTEM_$$_PCLASS

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect
INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect:
	.quad	INIT_$SYSTEM_$$_TINTERFACEENTRY

.section .rodata.n_RTTI_$SYSTEM_$$_def000000BE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000BE$indirect
RTTI_$SYSTEM_$$_def000000BE$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000BE

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C0,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C0$indirect
RTTI_$SYSTEM_$$_def000000C0$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000C0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRY

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_PINTERFACEENTRY$indirect:
	.quad	RTTI_$SYSTEM_$$_PINTERFACEENTRY

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACETABLE$indirect
INIT_$SYSTEM_$$_TINTERFACETABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TINTERFACETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C3,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C3$indirect
RTTI_$SYSTEM_$$_def000000C3$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000C3

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PINTERFACETABLE

.section .rodata.n_INIT_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect
INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TMSGSTRTABLE

.section .rodata.n_RTTI_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TMSGSTRTABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_PMSGSTRTABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PMSGSTRTABLE

.section .rodata.n_INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C8$indirect
RTTI_$SYSTEM_$$_def000000C8$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000C8

.section .rodata.n_RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE

.section .rodata.n_INIT_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVMT$indirect
INIT_$SYSTEM_$$_TVMT$indirect:
	.quad	INIT_$SYSTEM_$$_TVMT

.section .rodata.n_RTTI_$SYSTEM_$$_PPVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPVMT$indirect
RTTI_$SYSTEM_$$_PPVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_PPVMT

.section .rodata.n_RTTI_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVMT$indirect
RTTI_$SYSTEM_$$_TVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_TVMT

.section .rodata.n_RTTI_$SYSTEM_$$_PVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVMT$indirect
RTTI_$SYSTEM_$$_PVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_PVMT

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
INIT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect:
	.quad	INIT_$SYSTEM_$$_TINTERFACEDOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEDOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEDCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEDCLASS$indirect
RTTI_$SYSTEM_$$_TINTERFACEDCLASS$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEDCLASS

.section .rodata.n_INIT_$SYSTEM_$$_TMETHOD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMETHOD$indirect
INIT_$SYSTEM_$$_TMETHOD$indirect:
	.quad	INIT_$SYSTEM_$$_TMETHOD

.section .rodata.n_RTTI_$SYSTEM_$$_TMETHOD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMETHOD$indirect
RTTI_$SYSTEM_$$_TMETHOD$indirect:
	.quad	RTTI_$SYSTEM_$$_TMETHOD

.section .rodata.n_RTTI_$SYSTEM_$$_PMETHOD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PMETHOD$indirect
RTTI_$SYSTEM_$$_PMETHOD$indirect:
	.quad	RTTI_$SYSTEM_$$_PMETHOD

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect
INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect:
	.quad	INIT_$SYSTEM_$$_EXCEPTION_RECORD

.section .rodata.n_RTTI_$SYSTEM_$$_def0000011F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000011F$indirect
RTTI_$SYSTEM_$$_def0000011F$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000011F

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_RECORD

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD

.section .rodata.n_INIT_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSEHFRAME$indirect
INIT_$SYSTEM_$$_TSEHFRAME$indirect:
	.quad	INIT_$SYSTEM_$$_TSEHFRAME

.section .rodata.n_RTTI_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSEHFRAME$indirect
RTTI_$SYSTEM_$$_TSEHFRAME$indirect:
	.quad	RTTI_$SYSTEM_$$_TSEHFRAME

.section .rodata.n_RTTI_$SYSTEM_$$_PSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSEHFRAME$indirect
RTTI_$SYSTEM_$$_PSEHFRAME$indirect:
	.quad	RTTI_$SYSTEM_$$_PSEHFRAME

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect
INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect:
	.quad	INIT_$SYSTEM_$$_TEXCEPTOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTOBJECT

.section .rodata.n_INIT_$SYSTEM_$$_TFILTERREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TFILTERREC$indirect
INIT_$SYSTEM_$$_TFILTERREC$indirect:
	.quad	INIT_$SYSTEM_$$_TFILTERREC

.section .rodata.n_RTTI_$SYSTEM_$$_TFILTERREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TFILTERREC$indirect
RTTI_$SYSTEM_$$_TFILTERREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TFILTERREC

.section .rodata.n_RTTI_$SYSTEM_$$_PFILTERREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PFILTERREC$indirect
RTTI_$SYSTEM_$$_PFILTERREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PFILTERREC

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTION_FRAME,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTION_FRAME$indirect
INIT_$SYSTEM_$$_TEXCEPTION_FRAME$indirect:
	.quad	INIT_$SYSTEM_$$_TEXCEPTION_FRAME

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTION_FRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect
RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_FRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME

.section .rodata.n_RTTI_$SYSTEM_$$_TUNWINDPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TUNWINDPROC$indirect
RTTI_$SYSTEM_$$_TUNWINDPROC$indirect:
	.quad	RTTI_$SYSTEM_$$_TUNWINDPROC

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTOBJPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTOBJPROC$indirect
RTTI_$SYSTEM_$$_TEXCEPTOBJPROC$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTOBJPROC

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTCLSPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTCLSPROC$indirect
RTTI_$SYSTEM_$$_TEXCEPTCLSPROC$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTCLSPROC

.section .rodata.n_RTTI_$SYSTEM_$$_TERRORPROC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TERRORPROC$indirect
RTTI_$SYSTEM_$$_TERRORPROC$indirect:
	.quad	RTTI_$SYSTEM_$$_TERRORPROC

.section .rodata.n_INIT_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_M128A$indirect
INIT_$SYSTEM_$$_M128A$indirect:
	.quad	INIT_$SYSTEM_$$_M128A

.section .rodata.n_RTTI_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_M128A$indirect
RTTI_$SYSTEM_$$_M128A$indirect:
	.quad	RTTI_$SYSTEM_$$_M128A

.section .rodata.n_RTTI_$SYSTEM_$$_PM128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PM128A$indirect
RTTI_$SYSTEM_$$_PM128A$indirect:
	.quad	RTTI_$SYSTEM_$$_PM128A

.section .rodata.n_INIT_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TCONTEXT$indirect
INIT_$SYSTEM_$$_TCONTEXT$indirect:
	.quad	INIT_$SYSTEM_$$_TCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_def00000130,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000130$indirect
RTTI_$SYSTEM_$$_def00000130$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000130

.section .rodata.n_RTTI_$SYSTEM_$$_def00000131,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000131$indirect
RTTI_$SYSTEM_$$_def00000131$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000131

.section .rodata.n_RTTI_$SYSTEM_$$_def00000132,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000132$indirect
RTTI_$SYSTEM_$$_def00000132$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000132

.section .rodata.n_RTTI_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCONTEXT$indirect
RTTI_$SYSTEM_$$_TCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_TCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_PCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONTEXT$indirect
RTTI_$SYSTEM_$$_PCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_PCONTEXT

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION_POINTERS,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION_POINTERS$indirect
INIT_$SYSTEM_$$_EXCEPTION_POINTERS$indirect:
	.quad	INIT_$SYSTEM_$$_EXCEPTION_POINTERS

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_POINTERS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect
RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS

.section .rodata.n_INIT_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSCOPEREC$indirect
INIT_$SYSTEM_$$_TSCOPEREC$indirect:
	.quad	INIT_$SYSTEM_$$_TSCOPEREC

.section .rodata.n_RTTI_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSCOPEREC$indirect
RTTI_$SYSTEM_$$_TSCOPEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TSCOPEREC

.section .rodata.n_RTTI_$SYSTEM_$$_PSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSCOPEREC$indirect
RTTI_$SYSTEM_$$_PSCOPEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PSCOPEREC

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE

.section .rodata.n_INIT_$SYSTEM_$$_RUNTIME_FUNCTION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_RUNTIME_FUNCTION$indirect
INIT_$SYSTEM_$$_RUNTIME_FUNCTION$indirect:
	.quad	INIT_$SYSTEM_$$_RUNTIME_FUNCTION

.section .rodata.n_RTTI_$SYSTEM_$$_RUNTIME_FUNCTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect
RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect:
	.quad	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION

.section .rodata.n_RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect
RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect:
	.quad	RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION

.section .rodata.n_INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect:
	.quad	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY

.section .rodata.n_RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect:
	.quad	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY

.section .rodata.n_INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect:
	.quad	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def0000013D,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000013D$indirect
RTTI_$SYSTEM_$$_def0000013D$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000013D

.section .rodata.n_RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE$indirect
RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE

.section .rodata.n_INIT_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect:
	.quad	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND$indirect
RTTI_$SYSTEM_$$_TTYPEKIND$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND_o2s

.section .rodata.n_RTTI_$SYSTEM_$$_PTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTYPEKIND$indirect
RTTI_$SYSTEM_$$_PTYPEKIND$indirect:
	.quad	RTTI_$SYSTEM_$$_PTYPEKIND

.section .rodata.n_RTTI_$SYSTEM_$$_def00000187,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000187$indirect
RTTI_$SYSTEM_$$_def00000187$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000187

.section .rodata.n_INIT_$SYSTEM_$$_TUNICODEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TUNICODEREC$indirect
INIT_$SYSTEM_$$_TUNICODEREC$indirect:
	.quad	INIT_$SYSTEM_$$_TUNICODEREC

.section .rodata.n_RTTI_$SYSTEM_$$_TUNICODEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TUNICODEREC$indirect
RTTI_$SYSTEM_$$_TUNICODEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TUNICODEREC

.section .rodata.n_RTTI_$SYSTEM_$$_PUNICODEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PUNICODEREC$indirect
RTTI_$SYSTEM_$$_PUNICODEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PUNICODEREC

.section .rodata.n_RTTI_$SYSTEM_$$_def000001AE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001AE$indirect
RTTI_$SYSTEM_$$_def000001AE$indirect:
	.quad	RTTI_$SYSTEM_$$_def000001AE

.section .rodata.n_INIT_$SYSTEM_$$_TVARREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVARREC$indirect
INIT_$SYSTEM_$$_TVARREC$indirect:
	.quad	INIT_$SYSTEM_$$_TVARREC

.section .rodata.n_RTTI_$SYSTEM_$$_TVARREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVARREC$indirect
RTTI_$SYSTEM_$$_TVARREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TVARREC

.section .rodata.n_RTTI_$SYSTEM_$$_PVARREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVARREC$indirect
RTTI_$SYSTEM_$$_PVARREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PVARREC

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAG,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAG$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAG$indirect:
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s

.section .rodata.n_RTTI_$SYSTEM_$$_TREPLACEFLAGS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TREPLACEFLAGS$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAGS$indirect:
	.quad	RTTI_$SYSTEM_$$_TREPLACEFLAGS

.section .rodata.n_INIT_$SYSTEM_$$_TTESTEXCEPTION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TTESTEXCEPTION$indirect
INIT_$SYSTEM_$$_TTESTEXCEPTION$indirect:
	.quad	INIT_$SYSTEM_$$_TTESTEXCEPTION

.section .rodata.n_RTTI_$SYSTEM_$$_TTESTEXCEPTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTESTEXCEPTION$indirect
RTTI_$SYSTEM_$$_TTESTEXCEPTION$indirect:
	.quad	RTTI_$SYSTEM_$$_TTESTEXCEPTION

.section .rodata.n_RTTI_$SYSTEM_$$_PDYNARRAYINDEX,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDYNARRAYINDEX$indirect
RTTI_$SYSTEM_$$_PDYNARRAYINDEX$indirect:
	.quad	RTTI_$SYSTEM_$$_PDYNARRAYINDEX

.section .rodata.n_INIT_$SYSTEM_$$_TDYNARRAY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDYNARRAY$indirect
INIT_$SYSTEM_$$_TDYNARRAY$indirect:
	.quad	INIT_$SYSTEM_$$_TDYNARRAY

.section .rodata.n_RTTI_$SYSTEM_$$_TDYNARRAY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDYNARRAY$indirect
RTTI_$SYSTEM_$$_TDYNARRAY$indirect:
	.quad	RTTI_$SYSTEM_$$_TDYNARRAY

.section .rodata.n_RTTI_$SYSTEM_$$_PDYNARRAY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDYNARRAY$indirect
RTTI_$SYSTEM_$$_PDYNARRAY$indirect:
	.quad	RTTI_$SYSTEM_$$_PDYNARRAY

.section .rodata.n_INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect
INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect:
	.quad	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA

.section .rodata.n_RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect
RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect:
	.quad	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA

.section .rodata.n_RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA$indirect
RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA$indirect:
	.quad	RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA

.section .rodata.n_INIT_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect
INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect:
	.quad	INIT_$SYSTEM_$$_TENTRYINFORMATION

.section .rodata.n_RTTI_$SYSTEM_$$_def00000210,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000210$indirect
RTTI_$SYSTEM_$$_def00000210$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000210

.section .rodata.n_RTTI_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect
RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect:
	.quad	RTTI_$SYSTEM_$$_TENTRYINFORMATION

.section .rodata.n_RTTI_$SYSTEM_$$_def00000282,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000282$indirect
RTTI_$SYSTEM_$$_def00000282$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000282
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc917:
	.long	.Lc919-.Lc918
.Lc918:
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
.Lc919:
	.long	.Lc921-.Lc920
.Lc920:
	.secrel32	.Lc917
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc921:
	.long	.Lc923-.Lc922
.Lc922:
	.secrel32	.Lc917
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.balign 4,0
.Lc923:
	.long	.Lc925-.Lc924
.Lc924:
	.secrel32	.Lc917
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.balign 4,0
.Lc925:
	.long	.Lc927-.Lc926
.Lc926:
	.secrel32	.Lc917
	.quad	.Lc8
	.quad	.Lc9-.Lc8
	.balign 4,0
.Lc927:
	.long	.Lc929-.Lc928
.Lc928:
	.secrel32	.Lc917
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.balign 4,0
.Lc929:
	.long	.Lc931-.Lc930
.Lc930:
	.secrel32	.Lc917
	.quad	.Lc12
	.quad	.Lc13-.Lc12
	.balign 4,0
.Lc931:
	.long	.Lc933-.Lc932
.Lc932:
	.secrel32	.Lc917
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.balign 4,0
.Lc933:
	.long	.Lc935-.Lc934
.Lc934:
	.secrel32	.Lc917
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.balign 4,0
.Lc935:
	.long	.Lc937-.Lc936
.Lc936:
	.secrel32	.Lc917
	.quad	.Lc18
	.quad	.Lc19-.Lc18
	.balign 4,0
.Lc937:
	.long	.Lc939-.Lc938
.Lc938:
	.secrel32	.Lc917
	.quad	.Lc20
	.quad	.Lc21-.Lc20
	.balign 4,0
.Lc939:
	.long	.Lc941-.Lc940
.Lc940:
	.secrel32	.Lc917
	.quad	.Lc22
	.quad	.Lc23-.Lc22
	.balign 4,0
.Lc941:
	.long	.Lc943-.Lc942
.Lc942:
	.secrel32	.Lc917
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.balign 4,0
.Lc943:
	.long	.Lc945-.Lc944
.Lc944:
	.secrel32	.Lc917
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.balign 4,0
.Lc945:
	.long	.Lc947-.Lc946
.Lc946:
	.secrel32	.Lc917
	.quad	.Lc28
	.quad	.Lc29-.Lc28
	.balign 4,0
.Lc947:
	.long	.Lc949-.Lc948
.Lc948:
	.secrel32	.Lc917
	.quad	.Lc30
	.quad	.Lc31-.Lc30
	.balign 4,0
.Lc949:
	.long	.Lc951-.Lc950
.Lc950:
	.secrel32	.Lc917
	.quad	.Lc32
	.quad	.Lc33-.Lc32
	.byte	4
	.long	.Lc34-.Lc32
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc35-.Lc34
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc36-.Lc35
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc951:
	.long	.Lc953-.Lc952
.Lc952:
	.secrel32	.Lc917
	.quad	.Lc37
	.quad	.Lc38-.Lc37
	.byte	4
	.long	.Lc39-.Lc37
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc953:
	.long	.Lc955-.Lc954
.Lc954:
	.secrel32	.Lc917
	.quad	.Lc40
	.quad	.Lc41-.Lc40
	.byte	4
	.long	.Lc42-.Lc40
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc955:
	.long	.Lc957-.Lc956
.Lc956:
	.secrel32	.Lc917
	.quad	.Lc43
	.quad	.Lc44-.Lc43
	.byte	4
	.long	.Lc45-.Lc43
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc957:
	.long	.Lc959-.Lc958
.Lc958:
	.secrel32	.Lc917
	.quad	.Lc46
	.quad	.Lc47-.Lc46
	.balign 4,0
.Lc959:
	.long	.Lc961-.Lc960
.Lc960:
	.secrel32	.Lc917
	.quad	.Lc48
	.quad	.Lc49-.Lc48
	.byte	4
	.long	.Lc50-.Lc48
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc961:
	.long	.Lc963-.Lc962
.Lc962:
	.secrel32	.Lc917
	.quad	.Lc51
	.quad	.Lc52-.Lc51
	.balign 4,0
.Lc963:
	.long	.Lc965-.Lc964
.Lc964:
	.secrel32	.Lc917
	.quad	.Lc53
	.quad	.Lc54-.Lc53
	.byte	4
	.long	.Lc55-.Lc53
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc965:
	.long	.Lc967-.Lc966
.Lc966:
	.secrel32	.Lc917
	.quad	.Lc56
	.quad	.Lc57-.Lc56
	.balign 4,0
.Lc967:
	.long	.Lc969-.Lc968
.Lc968:
	.secrel32	.Lc917
	.quad	.Lc58
	.quad	.Lc59-.Lc58
	.balign 4,0
.Lc969:
	.long	.Lc971-.Lc970
.Lc970:
	.secrel32	.Lc917
	.quad	.Lc60
	.quad	.Lc61-.Lc60
	.byte	4
	.long	.Lc62-.Lc60
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc971:
	.long	.Lc973-.Lc972
.Lc972:
	.secrel32	.Lc917
	.quad	.Lc63
	.quad	.Lc64-.Lc63
	.balign 4,0
.Lc973:
	.long	.Lc975-.Lc974
.Lc974:
	.secrel32	.Lc917
	.quad	.Lc65
	.quad	.Lc66-.Lc65
	.balign 4,0
.Lc975:
	.long	.Lc977-.Lc976
.Lc976:
	.secrel32	.Lc917
	.quad	.Lc67
	.quad	.Lc68-.Lc67
	.balign 4,0
.Lc977:
	.long	.Lc979-.Lc978
.Lc978:
	.secrel32	.Lc917
	.quad	.Lc69
	.quad	.Lc70-.Lc69
	.balign 4,0
.Lc979:
	.long	.Lc981-.Lc980
.Lc980:
	.secrel32	.Lc917
	.quad	.Lc71
	.quad	.Lc72-.Lc71
	.balign 4,0
.Lc981:
	.long	.Lc983-.Lc982
.Lc982:
	.secrel32	.Lc917
	.quad	.Lc73
	.quad	.Lc74-.Lc73
	.balign 4,0
.Lc983:
	.long	.Lc985-.Lc984
.Lc984:
	.secrel32	.Lc917
	.quad	.Lc75
	.quad	.Lc76-.Lc75
	.byte	4
	.long	.Lc77-.Lc75
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc985:
	.long	.Lc987-.Lc986
.Lc986:
	.secrel32	.Lc917
	.quad	.Lc78
	.quad	.Lc79-.Lc78
	.byte	4
	.long	.Lc80-.Lc78
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc987:
	.long	.Lc989-.Lc988
.Lc988:
	.secrel32	.Lc917
	.quad	.Lc81
	.quad	.Lc82-.Lc81
	.byte	4
	.long	.Lc83-.Lc81
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc989:
	.long	.Lc991-.Lc990
.Lc990:
	.secrel32	.Lc917
	.quad	.Lc84
	.quad	.Lc85-.Lc84
	.byte	4
	.long	.Lc86-.Lc84
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc991:
	.long	.Lc993-.Lc992
.Lc992:
	.secrel32	.Lc917
	.quad	.Lc87
	.quad	.Lc88-.Lc87
	.byte	4
	.long	.Lc89-.Lc87
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc993:
	.long	.Lc995-.Lc994
.Lc994:
	.secrel32	.Lc917
	.quad	.Lc90
	.quad	.Lc91-.Lc90
	.byte	4
	.long	.Lc92-.Lc90
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc995:
	.long	.Lc997-.Lc996
.Lc996:
	.secrel32	.Lc917
	.quad	.Lc93
	.quad	.Lc94-.Lc93
	.byte	4
	.long	.Lc95-.Lc93
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc997:
	.long	.Lc999-.Lc998
.Lc998:
	.secrel32	.Lc917
	.quad	.Lc96
	.quad	.Lc97-.Lc96
	.byte	4
	.long	.Lc98-.Lc96
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc999:
	.long	.Lc1001-.Lc1000
.Lc1000:
	.secrel32	.Lc917
	.quad	.Lc99
	.quad	.Lc100-.Lc99
	.balign 4,0
.Lc1001:
	.long	.Lc1003-.Lc1002
.Lc1002:
	.secrel32	.Lc917
	.quad	.Lc101
	.quad	.Lc102-.Lc101
	.byte	4
	.long	.Lc103-.Lc101
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc104-.Lc103
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc105-.Lc104
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1003:
	.long	.Lc1005-.Lc1004
.Lc1004:
	.secrel32	.Lc917
	.quad	.Lc106
	.quad	.Lc107-.Lc106
	.byte	4
	.long	.Lc108-.Lc106
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc109-.Lc108
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc110-.Lc109
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1005:
	.long	.Lc1007-.Lc1006
.Lc1006:
	.secrel32	.Lc917
	.quad	.Lc111
	.quad	.Lc112-.Lc111
	.byte	4
	.long	.Lc113-.Lc111
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1007:
	.long	.Lc1009-.Lc1008
.Lc1008:
	.secrel32	.Lc917
	.quad	.Lc114
	.quad	.Lc115-.Lc114
	.balign 4,0
.Lc1009:
	.long	.Lc1011-.Lc1010
.Lc1010:
	.secrel32	.Lc917
	.quad	.Lc116
	.quad	.Lc117-.Lc116
	.byte	4
	.long	.Lc118-.Lc116
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1011:
	.long	.Lc1013-.Lc1012
.Lc1012:
	.secrel32	.Lc917
	.quad	.Lc119
	.quad	.Lc120-.Lc119
	.byte	4
	.long	.Lc121-.Lc119
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1013:
	.long	.Lc1015-.Lc1014
.Lc1014:
	.secrel32	.Lc917
	.quad	.Lc122
	.quad	.Lc123-.Lc122
	.balign 4,0
.Lc1015:
	.long	.Lc1017-.Lc1016
.Lc1016:
	.secrel32	.Lc917
	.quad	.Lc124
	.quad	.Lc125-.Lc124
	.balign 4,0
.Lc1017:
	.long	.Lc1019-.Lc1018
.Lc1018:
	.secrel32	.Lc917
	.quad	.Lc126
	.quad	.Lc127-.Lc126
	.balign 4,0
.Lc1019:
	.long	.Lc1021-.Lc1020
.Lc1020:
	.secrel32	.Lc917
	.quad	.Lc128
	.quad	.Lc129-.Lc128
	.balign 4,0
.Lc1021:
	.long	.Lc1023-.Lc1022
.Lc1022:
	.secrel32	.Lc917
	.quad	.Lc130
	.quad	.Lc131-.Lc130
	.balign 4,0
.Lc1023:
	.long	.Lc1025-.Lc1024
.Lc1024:
	.secrel32	.Lc917
	.quad	.Lc132
	.quad	.Lc133-.Lc132
	.balign 4,0
.Lc1025:
	.long	.Lc1027-.Lc1026
.Lc1026:
	.secrel32	.Lc917
	.quad	.Lc134
	.quad	.Lc135-.Lc134
	.byte	4
	.long	.Lc136-.Lc134
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1027:
	.long	.Lc1029-.Lc1028
.Lc1028:
	.secrel32	.Lc917
	.quad	.Lc137
	.quad	.Lc138-.Lc137
	.byte	4
	.long	.Lc139-.Lc137
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc1029:
	.long	.Lc1031-.Lc1030
.Lc1030:
	.secrel32	.Lc917
	.quad	.Lc140
	.quad	.Lc141-.Lc140
	.balign 4,0
.Lc1031:
	.long	.Lc1033-.Lc1032
.Lc1032:
	.secrel32	.Lc917
	.quad	.Lc142
	.quad	.Lc143-.Lc142
	.byte	4
	.long	.Lc144-.Lc142
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1033:
	.long	.Lc1035-.Lc1034
.Lc1034:
	.secrel32	.Lc917
	.quad	.Lc145
	.quad	.Lc146-.Lc145
	.byte	4
	.long	.Lc147-.Lc145
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1035:
	.long	.Lc1037-.Lc1036
.Lc1036:
	.secrel32	.Lc917
	.quad	.Lc148
	.quad	.Lc149-.Lc148
	.byte	4
	.long	.Lc150-.Lc148
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1037:
	.long	.Lc1039-.Lc1038
.Lc1038:
	.secrel32	.Lc917
	.quad	.Lc151
	.quad	.Lc152-.Lc151
	.byte	4
	.long	.Lc153-.Lc151
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1039:
	.long	.Lc1041-.Lc1040
.Lc1040:
	.secrel32	.Lc917
	.quad	.Lc154
	.quad	.Lc155-.Lc154
	.byte	4
	.long	.Lc156-.Lc154
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1041:
	.long	.Lc1043-.Lc1042
.Lc1042:
	.secrel32	.Lc917
	.quad	.Lc157
	.quad	.Lc158-.Lc157
	.byte	4
	.long	.Lc159-.Lc157
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1043:
	.long	.Lc1045-.Lc1044
.Lc1044:
	.secrel32	.Lc917
	.quad	.Lc160
	.quad	.Lc161-.Lc160
	.byte	4
	.long	.Lc162-.Lc160
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc1045:
	.long	.Lc1047-.Lc1046
.Lc1046:
	.secrel32	.Lc917
	.quad	.Lc163
	.quad	.Lc164-.Lc163
	.balign 4,0
.Lc1047:
	.long	.Lc1049-.Lc1048
.Lc1048:
	.secrel32	.Lc917
	.quad	.Lc165
	.quad	.Lc166-.Lc165
	.balign 4,0
.Lc1049:
	.long	.Lc1051-.Lc1050
.Lc1050:
	.secrel32	.Lc917
	.quad	.Lc167
	.quad	.Lc168-.Lc167
	.byte	4
	.long	.Lc169-.Lc167
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1051:
	.long	.Lc1053-.Lc1052
.Lc1052:
	.secrel32	.Lc917
	.quad	.Lc170
	.quad	.Lc171-.Lc170
	.byte	4
	.long	.Lc172-.Lc170
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc1053:
	.long	.Lc1055-.Lc1054
.Lc1054:
	.secrel32	.Lc917
	.quad	.Lc173
	.quad	.Lc174-.Lc173
	.byte	4
	.long	.Lc175-.Lc173
	.byte	14
	.uleb128	16
	.balign 4,0
.Lc1055:
	.long	.Lc1057-.Lc1056
.Lc1056:
	.secrel32	.Lc917
	.quad	.Lc176
	.quad	.Lc177-.Lc176
	.byte	4
	.long	.Lc178-.Lc176
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1057:
	.long	.Lc1059-.Lc1058
.Lc1058:
	.secrel32	.Lc917
	.quad	.Lc179
	.quad	.Lc180-.Lc179
	.byte	4
	.long	.Lc181-.Lc179
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1059:
	.long	.Lc1061-.Lc1060
.Lc1060:
	.secrel32	.Lc917
	.quad	.Lc182
	.quad	.Lc183-.Lc182
	.byte	4
	.long	.Lc184-.Lc182
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1061:
	.long	.Lc1063-.Lc1062
.Lc1062:
	.secrel32	.Lc917
	.quad	.Lc185
	.quad	.Lc186-.Lc185
	.byte	4
	.long	.Lc187-.Lc185
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc1063:
	.long	.Lc1065-.Lc1064
.Lc1064:
	.secrel32	.Lc917
	.quad	.Lc188
	.quad	.Lc189-.Lc188
	.byte	4
	.long	.Lc190-.Lc188
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc191-.Lc190
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc192-.Lc191
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1065:
	.long	.Lc1067-.Lc1066
.Lc1066:
	.secrel32	.Lc917
	.quad	.Lc193
	.quad	.Lc194-.Lc193
	.byte	4
	.long	.Lc195-.Lc193
	.byte	14
	.uleb128	1448
	.balign 4,0
.Lc1067:
	.long	.Lc1069-.Lc1068
.Lc1068:
	.secrel32	.Lc917
	.quad	.Lc196
	.quad	.Lc197-.Lc196
	.byte	4
	.long	.Lc198-.Lc196
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc1069:
	.long	.Lc1071-.Lc1070
.Lc1070:
	.secrel32	.Lc917
	.quad	.Lc199
	.quad	.Lc200-.Lc199
	.byte	4
	.long	.Lc201-.Lc199
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1071:
	.long	.Lc1073-.Lc1072
.Lc1072:
	.secrel32	.Lc917
	.quad	.Lc202
	.quad	.Lc203-.Lc202
	.byte	4
	.long	.Lc204-.Lc202
	.byte	14
	.uleb128	88
	.balign 4,0
.Lc1073:
	.long	.Lc1075-.Lc1074
.Lc1074:
	.secrel32	.Lc917
	.quad	.Lc205
	.quad	.Lc206-.Lc205
	.byte	4
	.long	.Lc207-.Lc205
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1075:
	.long	.Lc1077-.Lc1076
.Lc1076:
	.secrel32	.Lc917
	.quad	.Lc208
	.quad	.Lc209-.Lc208
	.balign 4,0
.Lc1077:
	.long	.Lc1079-.Lc1078
.Lc1078:
	.secrel32	.Lc917
	.quad	.Lc210
	.quad	.Lc211-.Lc210
	.balign 4,0
.Lc1079:
	.long	.Lc1081-.Lc1080
.Lc1080:
	.secrel32	.Lc917
	.quad	.Lc212
	.quad	.Lc213-.Lc212
	.byte	4
	.long	.Lc214-.Lc212
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1081:
	.long	.Lc1083-.Lc1082
.Lc1082:
	.secrel32	.Lc917
	.quad	.Lc215
	.quad	.Lc216-.Lc215
	.byte	4
	.long	.Lc217-.Lc215
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1083:
	.long	.Lc1085-.Lc1084
.Lc1084:
	.secrel32	.Lc917
	.quad	.Lc218
	.quad	.Lc219-.Lc218
	.byte	4
	.long	.Lc220-.Lc218
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1085:
	.long	.Lc1087-.Lc1086
.Lc1086:
	.secrel32	.Lc917
	.quad	.Lc221
	.quad	.Lc222-.Lc221
	.byte	4
	.long	.Lc223-.Lc221
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1087:
	.long	.Lc1089-.Lc1088
.Lc1088:
	.secrel32	.Lc917
	.quad	.Lc224
	.quad	.Lc225-.Lc224
	.byte	4
	.long	.Lc226-.Lc224
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1089:
	.long	.Lc1091-.Lc1090
.Lc1090:
	.secrel32	.Lc917
	.quad	.Lc227
	.quad	.Lc228-.Lc227
	.balign 4,0
.Lc1091:
	.long	.Lc1093-.Lc1092
.Lc1092:
	.secrel32	.Lc917
	.quad	.Lc229
	.quad	.Lc230-.Lc229
	.balign 4,0
.Lc1093:
	.long	.Lc1095-.Lc1094
.Lc1094:
	.secrel32	.Lc917
	.quad	.Lc231
	.quad	.Lc232-.Lc231
	.balign 4,0
.Lc1095:
	.long	.Lc1097-.Lc1096
.Lc1096:
	.secrel32	.Lc917
	.quad	.Lc233
	.quad	.Lc234-.Lc233
	.byte	4
	.long	.Lc235-.Lc233
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc236-.Lc235
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc237-.Lc236
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1097:
	.long	.Lc1099-.Lc1098
.Lc1098:
	.secrel32	.Lc917
	.quad	.Lc238
	.quad	.Lc239-.Lc238
	.byte	4
	.long	.Lc240-.Lc238
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc241-.Lc240
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc242-.Lc241
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1099:
	.long	.Lc1101-.Lc1100
.Lc1100:
	.secrel32	.Lc917
	.quad	.Lc243
	.quad	.Lc244-.Lc243
	.byte	4
	.long	.Lc245-.Lc243
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc1101:
	.long	.Lc1103-.Lc1102
.Lc1102:
	.secrel32	.Lc917
	.quad	.Lc246
	.quad	.Lc247-.Lc246
	.byte	4
	.long	.Lc248-.Lc246
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc1103:
	.long	.Lc1105-.Lc1104
.Lc1104:
	.secrel32	.Lc917
	.quad	.Lc249
	.quad	.Lc250-.Lc249
	.byte	4
	.long	.Lc251-.Lc249
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1105:
	.long	.Lc1107-.Lc1106
.Lc1106:
	.secrel32	.Lc917
	.quad	.Lc252
	.quad	.Lc253-.Lc252
	.byte	4
	.long	.Lc254-.Lc252
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1107:
	.long	.Lc1109-.Lc1108
.Lc1108:
	.secrel32	.Lc917
	.quad	.Lc255
	.quad	.Lc256-.Lc255
	.byte	4
	.long	.Lc257-.Lc255
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1109:
	.long	.Lc1111-.Lc1110
.Lc1110:
	.secrel32	.Lc917
	.quad	.Lc258
	.quad	.Lc259-.Lc258
	.byte	4
	.long	.Lc260-.Lc258
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1111:
	.long	.Lc1113-.Lc1112
.Lc1112:
	.secrel32	.Lc917
	.quad	.Lc261
	.quad	.Lc262-.Lc261
	.balign 4,0
.Lc1113:
	.long	.Lc1115-.Lc1114
.Lc1114:
	.secrel32	.Lc917
	.quad	.Lc263
	.quad	.Lc264-.Lc263
	.byte	4
	.long	.Lc265-.Lc263
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc266-.Lc265
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc267-.Lc266
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1115:
	.long	.Lc1117-.Lc1116
.Lc1116:
	.secrel32	.Lc917
	.quad	.Lc268
	.quad	.Lc269-.Lc268
	.byte	4
	.long	.Lc270-.Lc268
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc271-.Lc270
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc272-.Lc271
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1117:
	.long	.Lc1119-.Lc1118
.Lc1118:
	.secrel32	.Lc917
	.quad	.Lc273
	.quad	.Lc274-.Lc273
	.byte	4
	.long	.Lc275-.Lc273
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc276-.Lc275
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc277-.Lc276
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1119:
	.long	.Lc1121-.Lc1120
.Lc1120:
	.secrel32	.Lc917
	.quad	.Lc278
	.quad	.Lc279-.Lc278
	.byte	4
	.long	.Lc280-.Lc278
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc281-.Lc280
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc282-.Lc281
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1121:
	.long	.Lc1123-.Lc1122
.Lc1122:
	.secrel32	.Lc917
	.quad	.Lc283
	.quad	.Lc284-.Lc283
	.balign 4,0
.Lc1123:
	.long	.Lc1125-.Lc1124
.Lc1124:
	.secrel32	.Lc917
	.quad	.Lc285
	.quad	.Lc286-.Lc285
	.byte	4
	.long	.Lc287-.Lc285
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc288-.Lc287
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc289-.Lc288
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1125:
	.long	.Lc1127-.Lc1126
.Lc1126:
	.secrel32	.Lc917
	.quad	.Lc290
	.quad	.Lc291-.Lc290
	.byte	4
	.long	.Lc292-.Lc290
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc293-.Lc292
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc294-.Lc293
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1127:
	.long	.Lc1129-.Lc1128
.Lc1128:
	.secrel32	.Lc917
	.quad	.Lc295
	.quad	.Lc296-.Lc295
	.byte	4
	.long	.Lc297-.Lc295
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc298-.Lc297
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc299-.Lc298
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1129:
	.long	.Lc1131-.Lc1130
.Lc1130:
	.secrel32	.Lc917
	.quad	.Lc300
	.quad	.Lc301-.Lc300
	.byte	4
	.long	.Lc302-.Lc300
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc303-.Lc302
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc304-.Lc303
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1131:
	.long	.Lc1133-.Lc1132
.Lc1132:
	.secrel32	.Lc917
	.quad	.Lc305
	.quad	.Lc306-.Lc305
	.byte	4
	.long	.Lc307-.Lc305
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc308-.Lc307
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc309-.Lc308
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1133:
	.long	.Lc1135-.Lc1134
.Lc1134:
	.secrel32	.Lc917
	.quad	.Lc310
	.quad	.Lc311-.Lc310
	.byte	4
	.long	.Lc312-.Lc310
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc313-.Lc312
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc314-.Lc313
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1135:
	.long	.Lc1137-.Lc1136
.Lc1136:
	.secrel32	.Lc917
	.quad	.Lc315
	.quad	.Lc316-.Lc315
	.byte	4
	.long	.Lc317-.Lc315
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc318-.Lc317
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc319-.Lc318
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1137:
	.long	.Lc1139-.Lc1138
.Lc1138:
	.secrel32	.Lc917
	.quad	.Lc320
	.quad	.Lc321-.Lc320
	.byte	4
	.long	.Lc322-.Lc320
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc323-.Lc322
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc324-.Lc323
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1139:
	.long	.Lc1141-.Lc1140
.Lc1140:
	.secrel32	.Lc917
	.quad	.Lc325
	.quad	.Lc326-.Lc325
	.byte	4
	.long	.Lc327-.Lc325
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc328-.Lc327
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc329-.Lc328
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1141:
	.long	.Lc1143-.Lc1142
.Lc1142:
	.secrel32	.Lc917
	.quad	.Lc330
	.quad	.Lc331-.Lc330
	.byte	4
	.long	.Lc332-.Lc330
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc333-.Lc332
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc334-.Lc333
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1143:
	.long	.Lc1145-.Lc1144
.Lc1144:
	.secrel32	.Lc917
	.quad	.Lc335
	.quad	.Lc336-.Lc335
	.byte	4
	.long	.Lc337-.Lc335
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc338-.Lc337
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc339-.Lc338
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1145:
	.long	.Lc1147-.Lc1146
.Lc1146:
	.secrel32	.Lc917
	.quad	.Lc340
	.quad	.Lc341-.Lc340
	.byte	4
	.long	.Lc342-.Lc340
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc343-.Lc342
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc344-.Lc343
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1147:
	.long	.Lc1149-.Lc1148
.Lc1148:
	.secrel32	.Lc917
	.quad	.Lc345
	.quad	.Lc346-.Lc345
	.balign 4,0
.Lc1149:
	.long	.Lc1151-.Lc1150
.Lc1150:
	.secrel32	.Lc917
	.quad	.Lc347
	.quad	.Lc348-.Lc347
	.byte	4
	.long	.Lc349-.Lc347
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1151:
	.long	.Lc1153-.Lc1152
.Lc1152:
	.secrel32	.Lc917
	.quad	.Lc350
	.quad	.Lc351-.Lc350
	.byte	4
	.long	.Lc352-.Lc350
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1153:
	.long	.Lc1155-.Lc1154
.Lc1154:
	.secrel32	.Lc917
	.quad	.Lc353
	.quad	.Lc354-.Lc353
	.byte	4
	.long	.Lc355-.Lc353
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1155:
	.long	.Lc1157-.Lc1156
.Lc1156:
	.secrel32	.Lc917
	.quad	.Lc356
	.quad	.Lc357-.Lc356
	.byte	4
	.long	.Lc358-.Lc356
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1157:
	.long	.Lc1159-.Lc1158
.Lc1158:
	.secrel32	.Lc917
	.quad	.Lc359
	.quad	.Lc360-.Lc359
	.byte	4
	.long	.Lc361-.Lc359
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1159:
	.long	.Lc1161-.Lc1160
.Lc1160:
	.secrel32	.Lc917
	.quad	.Lc362
	.quad	.Lc363-.Lc362
	.byte	4
	.long	.Lc364-.Lc362
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1161:
	.long	.Lc1163-.Lc1162
.Lc1162:
	.secrel32	.Lc917
	.quad	.Lc365
	.quad	.Lc366-.Lc365
	.byte	4
	.long	.Lc367-.Lc365
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1163:
	.long	.Lc1165-.Lc1164
.Lc1164:
	.secrel32	.Lc917
	.quad	.Lc368
	.quad	.Lc369-.Lc368
	.byte	4
	.long	.Lc370-.Lc368
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1165:
	.long	.Lc1167-.Lc1166
.Lc1166:
	.secrel32	.Lc917
	.quad	.Lc371
	.quad	.Lc372-.Lc371
	.byte	4
	.long	.Lc373-.Lc371
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1167:
	.long	.Lc1169-.Lc1168
.Lc1168:
	.secrel32	.Lc917
	.quad	.Lc374
	.quad	.Lc375-.Lc374
	.byte	4
	.long	.Lc376-.Lc374
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1169:
	.long	.Lc1171-.Lc1170
.Lc1170:
	.secrel32	.Lc917
	.quad	.Lc377
	.quad	.Lc378-.Lc377
	.byte	4
	.long	.Lc379-.Lc377
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1171:
	.long	.Lc1173-.Lc1172
.Lc1172:
	.secrel32	.Lc917
	.quad	.Lc380
	.quad	.Lc381-.Lc380
	.byte	4
	.long	.Lc382-.Lc380
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1173:
	.long	.Lc1175-.Lc1174
.Lc1174:
	.secrel32	.Lc917
	.quad	.Lc383
	.quad	.Lc384-.Lc383
	.byte	4
	.long	.Lc385-.Lc383
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1175:
	.long	.Lc1177-.Lc1176
.Lc1176:
	.secrel32	.Lc917
	.quad	.Lc386
	.quad	.Lc387-.Lc386
	.byte	4
	.long	.Lc388-.Lc386
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc1177:
	.long	.Lc1179-.Lc1178
.Lc1178:
	.secrel32	.Lc917
	.quad	.Lc389
	.quad	.Lc390-.Lc389
	.byte	4
	.long	.Lc391-.Lc389
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1179:
	.long	.Lc1181-.Lc1180
.Lc1180:
	.secrel32	.Lc917
	.quad	.Lc392
	.quad	.Lc393-.Lc392
	.byte	4
	.long	.Lc394-.Lc392
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1181:
	.long	.Lc1183-.Lc1182
.Lc1182:
	.secrel32	.Lc917
	.quad	.Lc395
	.quad	.Lc396-.Lc395
	.byte	4
	.long	.Lc397-.Lc395
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1183:
	.long	.Lc1185-.Lc1184
.Lc1184:
	.secrel32	.Lc917
	.quad	.Lc398
	.quad	.Lc399-.Lc398
	.balign 4,0
.Lc1185:
	.long	.Lc1187-.Lc1186
.Lc1186:
	.secrel32	.Lc917
	.quad	.Lc400
	.quad	.Lc401-.Lc400
	.byte	4
	.long	.Lc402-.Lc400
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1187:
	.long	.Lc1189-.Lc1188
.Lc1188:
	.secrel32	.Lc917
	.quad	.Lc403
	.quad	.Lc404-.Lc403
	.byte	4
	.long	.Lc405-.Lc403
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1189:
	.long	.Lc1191-.Lc1190
.Lc1190:
	.secrel32	.Lc917
	.quad	.Lc406
	.quad	.Lc407-.Lc406
	.byte	4
	.long	.Lc408-.Lc406
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1191:
	.long	.Lc1193-.Lc1192
.Lc1192:
	.secrel32	.Lc917
	.quad	.Lc409
	.quad	.Lc410-.Lc409
	.byte	4
	.long	.Lc411-.Lc409
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc412-.Lc411
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc413-.Lc412
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1193:
	.long	.Lc1195-.Lc1194
.Lc1194:
	.secrel32	.Lc917
	.quad	.Lc414
	.quad	.Lc415-.Lc414
	.byte	4
	.long	.Lc416-.Lc414
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1195:
	.long	.Lc1197-.Lc1196
.Lc1196:
	.secrel32	.Lc917
	.quad	.Lc417
	.quad	.Lc418-.Lc417
	.byte	4
	.long	.Lc419-.Lc417
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1197:
	.long	.Lc1199-.Lc1198
.Lc1198:
	.secrel32	.Lc917
	.quad	.Lc420
	.quad	.Lc421-.Lc420
	.byte	4
	.long	.Lc422-.Lc420
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1199:
	.long	.Lc1201-.Lc1200
.Lc1200:
	.secrel32	.Lc917
	.quad	.Lc423
	.quad	.Lc424-.Lc423
	.byte	4
	.long	.Lc425-.Lc423
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1201:
	.long	.Lc1203-.Lc1202
.Lc1202:
	.secrel32	.Lc917
	.quad	.Lc426
	.quad	.Lc427-.Lc426
	.byte	4
	.long	.Lc428-.Lc426
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc1203:
	.long	.Lc1205-.Lc1204
.Lc1204:
	.secrel32	.Lc917
	.quad	.Lc429
	.quad	.Lc430-.Lc429
	.byte	4
	.long	.Lc431-.Lc429
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1205:
	.long	.Lc1207-.Lc1206
.Lc1206:
	.secrel32	.Lc917
	.quad	.Lc432
	.quad	.Lc433-.Lc432
	.byte	4
	.long	.Lc434-.Lc432
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1207:
	.long	.Lc1209-.Lc1208
.Lc1208:
	.secrel32	.Lc917
	.quad	.Lc435
	.quad	.Lc436-.Lc435
	.byte	4
	.long	.Lc437-.Lc435
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1209:
	.long	.Lc1211-.Lc1210
.Lc1210:
	.secrel32	.Lc917
	.quad	.Lc438
	.quad	.Lc439-.Lc438
	.byte	4
	.long	.Lc440-.Lc438
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1211:
	.long	.Lc1213-.Lc1212
.Lc1212:
	.secrel32	.Lc917
	.quad	.Lc441
	.quad	.Lc442-.Lc441
	.byte	4
	.long	.Lc443-.Lc441
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1213:
	.long	.Lc1215-.Lc1214
.Lc1214:
	.secrel32	.Lc917
	.quad	.Lc444
	.quad	.Lc445-.Lc444
	.byte	4
	.long	.Lc446-.Lc444
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1215:
	.long	.Lc1217-.Lc1216
.Lc1216:
	.secrel32	.Lc917
	.quad	.Lc447
	.quad	.Lc448-.Lc447
	.byte	4
	.long	.Lc449-.Lc447
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1217:
	.long	.Lc1219-.Lc1218
.Lc1218:
	.secrel32	.Lc917
	.quad	.Lc450
	.quad	.Lc451-.Lc450
	.byte	4
	.long	.Lc452-.Lc450
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1219:
	.long	.Lc1221-.Lc1220
.Lc1220:
	.secrel32	.Lc917
	.quad	.Lc453
	.quad	.Lc454-.Lc453
	.byte	4
	.long	.Lc455-.Lc453
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1221:
	.long	.Lc1223-.Lc1222
.Lc1222:
	.secrel32	.Lc917
	.quad	.Lc456
	.quad	.Lc457-.Lc456
	.byte	4
	.long	.Lc458-.Lc456
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1223:
	.long	.Lc1225-.Lc1224
.Lc1224:
	.secrel32	.Lc917
	.quad	.Lc459
	.quad	.Lc460-.Lc459
	.byte	4
	.long	.Lc461-.Lc459
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1225:
	.long	.Lc1227-.Lc1226
.Lc1226:
	.secrel32	.Lc917
	.quad	.Lc462
	.quad	.Lc463-.Lc462
	.byte	4
	.long	.Lc464-.Lc462
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1227:
	.long	.Lc1229-.Lc1228
.Lc1228:
	.secrel32	.Lc917
	.quad	.Lc465
	.quad	.Lc466-.Lc465
	.byte	4
	.long	.Lc467-.Lc465
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1229:
	.long	.Lc1231-.Lc1230
.Lc1230:
	.secrel32	.Lc917
	.quad	.Lc468
	.quad	.Lc469-.Lc468
	.byte	4
	.long	.Lc470-.Lc468
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1231:
	.long	.Lc1233-.Lc1232
.Lc1232:
	.secrel32	.Lc917
	.quad	.Lc471
	.quad	.Lc472-.Lc471
	.byte	4
	.long	.Lc473-.Lc471
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1233:
	.long	.Lc1235-.Lc1234
.Lc1234:
	.secrel32	.Lc917
	.quad	.Lc474
	.quad	.Lc475-.Lc474
	.byte	4
	.long	.Lc476-.Lc474
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1235:
	.long	.Lc1237-.Lc1236
.Lc1236:
	.secrel32	.Lc917
	.quad	.Lc477
	.quad	.Lc478-.Lc477
	.byte	4
	.long	.Lc479-.Lc477
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1237:
	.long	.Lc1239-.Lc1238
.Lc1238:
	.secrel32	.Lc917
	.quad	.Lc480
	.quad	.Lc481-.Lc480
	.byte	4
	.long	.Lc482-.Lc480
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1239:
	.long	.Lc1241-.Lc1240
.Lc1240:
	.secrel32	.Lc917
	.quad	.Lc483
	.quad	.Lc484-.Lc483
	.byte	4
	.long	.Lc485-.Lc483
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1241:
	.long	.Lc1243-.Lc1242
.Lc1242:
	.secrel32	.Lc917
	.quad	.Lc486
	.quad	.Lc487-.Lc486
	.byte	4
	.long	.Lc488-.Lc486
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1243:
	.long	.Lc1245-.Lc1244
.Lc1244:
	.secrel32	.Lc917
	.quad	.Lc489
	.quad	.Lc490-.Lc489
	.balign 4,0
.Lc1245:
	.long	.Lc1247-.Lc1246
.Lc1246:
	.secrel32	.Lc917
	.quad	.Lc491
	.quad	.Lc492-.Lc491
	.byte	4
	.long	.Lc493-.Lc491
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1247:
	.long	.Lc1249-.Lc1248
.Lc1248:
	.secrel32	.Lc917
	.quad	.Lc494
	.quad	.Lc495-.Lc494
	.byte	4
	.long	.Lc496-.Lc494
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc497-.Lc496
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc498-.Lc497
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1249:
	.long	.Lc1251-.Lc1250
.Lc1250:
	.secrel32	.Lc917
	.quad	.Lc499
	.quad	.Lc500-.Lc499
	.byte	4
	.long	.Lc501-.Lc499
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc502-.Lc501
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc503-.Lc502
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1251:
	.long	.Lc1253-.Lc1252
.Lc1252:
	.secrel32	.Lc917
	.quad	.Lc504
	.quad	.Lc505-.Lc504
	.byte	4
	.long	.Lc506-.Lc504
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1253:
	.long	.Lc1255-.Lc1254
.Lc1254:
	.secrel32	.Lc917
	.quad	.Lc507
	.quad	.Lc508-.Lc507
	.byte	4
	.long	.Lc509-.Lc507
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1255:
	.long	.Lc1257-.Lc1256
.Lc1256:
	.secrel32	.Lc917
	.quad	.Lc510
	.quad	.Lc511-.Lc510
	.byte	4
	.long	.Lc512-.Lc510
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1257:
	.long	.Lc1259-.Lc1258
.Lc1258:
	.secrel32	.Lc917
	.quad	.Lc513
	.quad	.Lc514-.Lc513
	.byte	4
	.long	.Lc515-.Lc513
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1259:
	.long	.Lc1261-.Lc1260
.Lc1260:
	.secrel32	.Lc917
	.quad	.Lc516
	.quad	.Lc517-.Lc516
	.byte	4
	.long	.Lc518-.Lc516
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc519-.Lc518
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc520-.Lc519
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1261:
	.long	.Lc1263-.Lc1262
.Lc1262:
	.secrel32	.Lc917
	.quad	.Lc521
	.quad	.Lc522-.Lc521
	.byte	4
	.long	.Lc523-.Lc521
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc524-.Lc523
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc525-.Lc524
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1263:
	.long	.Lc1265-.Lc1264
.Lc1264:
	.secrel32	.Lc917
	.quad	.Lc526
	.quad	.Lc527-.Lc526
	.byte	4
	.long	.Lc528-.Lc526
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc529-.Lc528
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc530-.Lc529
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1265:
	.long	.Lc1267-.Lc1266
.Lc1266:
	.secrel32	.Lc917
	.quad	.Lc531
	.quad	.Lc532-.Lc531
	.byte	4
	.long	.Lc533-.Lc531
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc534-.Lc533
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc535-.Lc534
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1267:
	.long	.Lc1269-.Lc1268
.Lc1268:
	.secrel32	.Lc917
	.quad	.Lc536
	.quad	.Lc537-.Lc536
	.byte	4
	.long	.Lc538-.Lc536
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc539-.Lc538
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc540-.Lc539
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1269:
	.long	.Lc1271-.Lc1270
.Lc1270:
	.secrel32	.Lc917
	.quad	.Lc541
	.quad	.Lc542-.Lc541
	.byte	4
	.long	.Lc543-.Lc541
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc544-.Lc543
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc545-.Lc544
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1271:
	.long	.Lc1273-.Lc1272
.Lc1272:
	.secrel32	.Lc917
	.quad	.Lc546
	.quad	.Lc547-.Lc546
	.byte	4
	.long	.Lc548-.Lc546
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1273:
	.long	.Lc1275-.Lc1274
.Lc1274:
	.secrel32	.Lc917
	.quad	.Lc549
	.quad	.Lc550-.Lc549
	.balign 4,0
.Lc1275:
	.long	.Lc1277-.Lc1276
.Lc1276:
	.secrel32	.Lc917
	.quad	.Lc551
	.quad	.Lc552-.Lc551
	.byte	4
	.long	.Lc553-.Lc551
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1277:
	.long	.Lc1279-.Lc1278
.Lc1278:
	.secrel32	.Lc917
	.quad	.Lc554
	.quad	.Lc555-.Lc554
	.byte	4
	.long	.Lc556-.Lc554
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1279:
	.long	.Lc1281-.Lc1280
.Lc1280:
	.secrel32	.Lc917
	.quad	.Lc557
	.quad	.Lc558-.Lc557
	.byte	4
	.long	.Lc559-.Lc557
	.byte	14
	.uleb128	16
	.balign 4,0
.Lc1281:
	.long	.Lc1283-.Lc1282
.Lc1282:
	.secrel32	.Lc917
	.quad	.Lc560
	.quad	.Lc561-.Lc560
	.byte	4
	.long	.Lc562-.Lc560
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1283:
	.long	.Lc1285-.Lc1284
.Lc1284:
	.secrel32	.Lc917
	.quad	.Lc563
	.quad	.Lc564-.Lc563
	.balign 4,0
.Lc1285:
	.long	.Lc1287-.Lc1286
.Lc1286:
	.secrel32	.Lc917
	.quad	.Lc565
	.quad	.Lc566-.Lc565
	.byte	4
	.long	.Lc567-.Lc565
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc568-.Lc567
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc569-.Lc568
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1287:
	.long	.Lc1289-.Lc1288
.Lc1288:
	.secrel32	.Lc917
	.quad	.Lc570
	.quad	.Lc571-.Lc570
	.byte	4
	.long	.Lc572-.Lc570
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc573-.Lc572
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc574-.Lc573
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1289:
	.long	.Lc1291-.Lc1290
.Lc1290:
	.secrel32	.Lc917
	.quad	.Lc575
	.quad	.Lc576-.Lc575
	.balign 4,0
.Lc1291:
	.long	.Lc1293-.Lc1292
.Lc1292:
	.secrel32	.Lc917
	.quad	.Lc577
	.quad	.Lc578-.Lc577
	.byte	4
	.long	.Lc579-.Lc577
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc580-.Lc579
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc581-.Lc580
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1293:
	.long	.Lc1295-.Lc1294
.Lc1294:
	.secrel32	.Lc917
	.quad	.Lc582
	.quad	.Lc583-.Lc582
	.byte	4
	.long	.Lc584-.Lc582
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc585-.Lc584
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc586-.Lc585
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1295:
	.long	.Lc1297-.Lc1296
.Lc1296:
	.secrel32	.Lc917
	.quad	.Lc587
	.quad	.Lc588-.Lc587
	.byte	4
	.long	.Lc589-.Lc587
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc590-.Lc589
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc591-.Lc590
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1297:
	.long	.Lc1299-.Lc1298
.Lc1298:
	.secrel32	.Lc917
	.quad	.Lc592
	.quad	.Lc593-.Lc592
	.byte	4
	.long	.Lc594-.Lc592
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc595-.Lc594
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc596-.Lc595
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1299:
	.long	.Lc1301-.Lc1300
.Lc1300:
	.secrel32	.Lc917
	.quad	.Lc597
	.quad	.Lc598-.Lc597
	.byte	4
	.long	.Lc599-.Lc597
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc600-.Lc599
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc601-.Lc600
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1301:
	.long	.Lc1303-.Lc1302
.Lc1302:
	.secrel32	.Lc917
	.quad	.Lc602
	.quad	.Lc603-.Lc602
	.byte	4
	.long	.Lc604-.Lc602
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc605-.Lc604
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc606-.Lc605
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1303:
	.long	.Lc1305-.Lc1304
.Lc1304:
	.secrel32	.Lc917
	.quad	.Lc607
	.quad	.Lc608-.Lc607
	.byte	4
	.long	.Lc609-.Lc607
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc610-.Lc609
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc611-.Lc610
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1305:
	.long	.Lc1307-.Lc1306
.Lc1306:
	.secrel32	.Lc917
	.quad	.Lc612
	.quad	.Lc613-.Lc612
	.byte	4
	.long	.Lc614-.Lc612
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc615-.Lc614
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc616-.Lc615
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1307:
	.long	.Lc1309-.Lc1308
.Lc1308:
	.secrel32	.Lc917
	.quad	.Lc617
	.quad	.Lc618-.Lc617
	.byte	4
	.long	.Lc619-.Lc617
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc620-.Lc619
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc621-.Lc620
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1309:
	.long	.Lc1311-.Lc1310
.Lc1310:
	.secrel32	.Lc917
	.quad	.Lc622
	.quad	.Lc623-.Lc622
	.byte	4
	.long	.Lc624-.Lc622
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc625-.Lc624
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc626-.Lc625
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1311:
	.long	.Lc1313-.Lc1312
.Lc1312:
	.secrel32	.Lc917
	.quad	.Lc627
	.quad	.Lc628-.Lc627
	.balign 4,0
.Lc1313:
	.long	.Lc1315-.Lc1314
.Lc1314:
	.secrel32	.Lc917
	.quad	.Lc629
	.quad	.Lc630-.Lc629
	.byte	4
	.long	.Lc631-.Lc629
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc1315:
	.long	.Lc1317-.Lc1316
.Lc1316:
	.secrel32	.Lc917
	.quad	.Lc632
	.quad	.Lc633-.Lc632
	.byte	4
	.long	.Lc634-.Lc632
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc1317:
	.long	.Lc1319-.Lc1318
.Lc1318:
	.secrel32	.Lc917
	.quad	.Lc635
	.quad	.Lc636-.Lc635
	.byte	4
	.long	.Lc637-.Lc635
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1319:
	.long	.Lc1321-.Lc1320
.Lc1320:
	.secrel32	.Lc917
	.quad	.Lc638
	.quad	.Lc639-.Lc638
	.byte	4
	.long	.Lc640-.Lc638
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc641-.Lc640
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc642-.Lc641
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1321:
	.long	.Lc1323-.Lc1322
.Lc1322:
	.secrel32	.Lc917
	.quad	.Lc643
	.quad	.Lc644-.Lc643
	.byte	4
	.long	.Lc645-.Lc643
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc646-.Lc645
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc647-.Lc646
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1323:
	.long	.Lc1325-.Lc1324
.Lc1324:
	.secrel32	.Lc917
	.quad	.Lc648
	.quad	.Lc649-.Lc648
	.byte	4
	.long	.Lc650-.Lc648
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc651-.Lc650
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc652-.Lc651
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1325:
	.long	.Lc1327-.Lc1326
.Lc1326:
	.secrel32	.Lc917
	.quad	.Lc653
	.quad	.Lc654-.Lc653
	.byte	4
	.long	.Lc655-.Lc653
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc656-.Lc655
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc657-.Lc656
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1327:
	.long	.Lc1329-.Lc1328
.Lc1328:
	.secrel32	.Lc917
	.quad	.Lc658
	.quad	.Lc659-.Lc658
	.byte	4
	.long	.Lc660-.Lc658
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc661-.Lc660
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc662-.Lc661
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1329:
	.long	.Lc1331-.Lc1330
.Lc1330:
	.secrel32	.Lc917
	.quad	.Lc663
	.quad	.Lc664-.Lc663
	.balign 4,0
.Lc1331:
	.long	.Lc1333-.Lc1332
.Lc1332:
	.secrel32	.Lc917
	.quad	.Lc665
	.quad	.Lc666-.Lc665
	.byte	4
	.long	.Lc667-.Lc665
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1333:
	.long	.Lc1335-.Lc1334
.Lc1334:
	.secrel32	.Lc917
	.quad	.Lc668
	.quad	.Lc669-.Lc668
	.byte	4
	.long	.Lc670-.Lc668
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc671-.Lc670
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc672-.Lc671
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1335:
	.long	.Lc1337-.Lc1336
.Lc1336:
	.secrel32	.Lc917
	.quad	.Lc673
	.quad	.Lc674-.Lc673
	.byte	4
	.long	.Lc675-.Lc673
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc676-.Lc675
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc677-.Lc676
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1337:
	.long	.Lc1339-.Lc1338
.Lc1338:
	.secrel32	.Lc917
	.quad	.Lc678
	.quad	.Lc679-.Lc678
	.byte	4
	.long	.Lc680-.Lc678
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1339:
	.long	.Lc1341-.Lc1340
.Lc1340:
	.secrel32	.Lc917
	.quad	.Lc681
	.quad	.Lc682-.Lc681
	.byte	4
	.long	.Lc683-.Lc681
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1341:
	.long	.Lc1343-.Lc1342
.Lc1342:
	.secrel32	.Lc917
	.quad	.Lc684
	.quad	.Lc685-.Lc684
	.byte	4
	.long	.Lc686-.Lc684
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1343:
	.long	.Lc1345-.Lc1344
.Lc1344:
	.secrel32	.Lc917
	.quad	.Lc687
	.quad	.Lc688-.Lc687
	.byte	4
	.long	.Lc689-.Lc687
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1345:
	.long	.Lc1347-.Lc1346
.Lc1346:
	.secrel32	.Lc917
	.quad	.Lc690
	.quad	.Lc691-.Lc690
	.byte	4
	.long	.Lc692-.Lc690
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1347:
	.long	.Lc1349-.Lc1348
.Lc1348:
	.secrel32	.Lc917
	.quad	.Lc693
	.quad	.Lc694-.Lc693
	.byte	4
	.long	.Lc695-.Lc693
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc696-.Lc695
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc697-.Lc696
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1349:
	.long	.Lc1351-.Lc1350
.Lc1350:
	.secrel32	.Lc917
	.quad	.Lc698
	.quad	.Lc699-.Lc698
	.byte	4
	.long	.Lc700-.Lc698
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc701-.Lc700
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc702-.Lc701
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1351:
	.long	.Lc1353-.Lc1352
.Lc1352:
	.secrel32	.Lc917
	.quad	.Lc703
	.quad	.Lc704-.Lc703
	.byte	4
	.long	.Lc705-.Lc703
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc706-.Lc705
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc707-.Lc706
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1353:
	.long	.Lc1355-.Lc1354
.Lc1354:
	.secrel32	.Lc917
	.quad	.Lc708
	.quad	.Lc709-.Lc708
	.byte	4
	.long	.Lc710-.Lc708
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc711-.Lc710
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc712-.Lc711
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1355:
	.long	.Lc1357-.Lc1356
.Lc1356:
	.secrel32	.Lc917
	.quad	.Lc713
	.quad	.Lc714-.Lc713
	.byte	4
	.long	.Lc715-.Lc713
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc716-.Lc715
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc717-.Lc716
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1357:
	.long	.Lc1359-.Lc1358
.Lc1358:
	.secrel32	.Lc917
	.quad	.Lc718
	.quad	.Lc719-.Lc718
	.byte	4
	.long	.Lc720-.Lc718
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc721-.Lc720
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc722-.Lc721
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1359:
	.long	.Lc1361-.Lc1360
.Lc1360:
	.secrel32	.Lc917
	.quad	.Lc723
	.quad	.Lc724-.Lc723
	.byte	4
	.long	.Lc725-.Lc723
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1361:
	.long	.Lc1363-.Lc1362
.Lc1362:
	.secrel32	.Lc917
	.quad	.Lc726
	.quad	.Lc727-.Lc726
	.byte	4
	.long	.Lc728-.Lc726
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1363:
	.long	.Lc1365-.Lc1364
.Lc1364:
	.secrel32	.Lc917
	.quad	.Lc729
	.quad	.Lc730-.Lc729
	.byte	4
	.long	.Lc731-.Lc729
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1365:
	.long	.Lc1367-.Lc1366
.Lc1366:
	.secrel32	.Lc917
	.quad	.Lc732
	.quad	.Lc733-.Lc732
	.byte	4
	.long	.Lc734-.Lc732
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1367:
	.long	.Lc1369-.Lc1368
.Lc1368:
	.secrel32	.Lc917
	.quad	.Lc735
	.quad	.Lc736-.Lc735
	.balign 4,0
.Lc1369:
	.long	.Lc1371-.Lc1370
.Lc1370:
	.secrel32	.Lc917
	.quad	.Lc737
	.quad	.Lc738-.Lc737
	.byte	4
	.long	.Lc739-.Lc737
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1371:
	.long	.Lc1373-.Lc1372
.Lc1372:
	.secrel32	.Lc917
	.quad	.Lc740
	.quad	.Lc741-.Lc740
	.byte	4
	.long	.Lc742-.Lc740
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1373:
	.long	.Lc1375-.Lc1374
.Lc1374:
	.secrel32	.Lc917
	.quad	.Lc743
	.quad	.Lc744-.Lc743
	.byte	4
	.long	.Lc745-.Lc743
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc746-.Lc745
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc747-.Lc746
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1375:
	.long	.Lc1377-.Lc1376
.Lc1376:
	.secrel32	.Lc917
	.quad	.Lc748
	.quad	.Lc749-.Lc748
	.byte	4
	.long	.Lc750-.Lc748
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc751-.Lc750
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc752-.Lc751
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1377:
	.long	.Lc1379-.Lc1378
.Lc1378:
	.secrel32	.Lc917
	.quad	.Lc753
	.quad	.Lc754-.Lc753
	.byte	4
	.long	.Lc755-.Lc753
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1379:
	.long	.Lc1381-.Lc1380
.Lc1380:
	.secrel32	.Lc917
	.quad	.Lc756
	.quad	.Lc757-.Lc756
	.byte	4
	.long	.Lc758-.Lc756
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1381:
	.long	.Lc1383-.Lc1382
.Lc1382:
	.secrel32	.Lc917
	.quad	.Lc759
	.quad	.Lc760-.Lc759
	.byte	4
	.long	.Lc761-.Lc759
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1383:
	.long	.Lc1385-.Lc1384
.Lc1384:
	.secrel32	.Lc917
	.quad	.Lc762
	.quad	.Lc763-.Lc762
	.byte	4
	.long	.Lc764-.Lc762
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1385:
	.long	.Lc1387-.Lc1386
.Lc1386:
	.secrel32	.Lc917
	.quad	.Lc765
	.quad	.Lc766-.Lc765
	.byte	4
	.long	.Lc767-.Lc765
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1387:
	.long	.Lc1389-.Lc1388
.Lc1388:
	.secrel32	.Lc917
	.quad	.Lc768
	.quad	.Lc769-.Lc768
	.byte	4
	.long	.Lc770-.Lc768
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1389:
	.long	.Lc1391-.Lc1390
.Lc1390:
	.secrel32	.Lc917
	.quad	.Lc771
	.quad	.Lc772-.Lc771
	.byte	4
	.long	.Lc773-.Lc771
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1391:
	.long	.Lc1393-.Lc1392
.Lc1392:
	.secrel32	.Lc917
	.quad	.Lc774
	.quad	.Lc775-.Lc774
	.byte	4
	.long	.Lc776-.Lc774
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1393:
	.long	.Lc1395-.Lc1394
.Lc1394:
	.secrel32	.Lc917
	.quad	.Lc777
	.quad	.Lc778-.Lc777
	.byte	4
	.long	.Lc779-.Lc777
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1395:
	.long	.Lc1397-.Lc1396
.Lc1396:
	.secrel32	.Lc917
	.quad	.Lc780
	.quad	.Lc781-.Lc780
	.byte	4
	.long	.Lc782-.Lc780
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1397:
	.long	.Lc1399-.Lc1398
.Lc1398:
	.secrel32	.Lc917
	.quad	.Lc783
	.quad	.Lc784-.Lc783
	.byte	4
	.long	.Lc785-.Lc783
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1399:
	.long	.Lc1401-.Lc1400
.Lc1400:
	.secrel32	.Lc917
	.quad	.Lc786
	.quad	.Lc787-.Lc786
	.balign 4,0
.Lc1401:
	.long	.Lc1403-.Lc1402
.Lc1402:
	.secrel32	.Lc917
	.quad	.Lc788
	.quad	.Lc789-.Lc788
	.balign 4,0
.Lc1403:
	.long	.Lc1405-.Lc1404
.Lc1404:
	.secrel32	.Lc917
	.quad	.Lc790
	.quad	.Lc791-.Lc790
	.balign 4,0
.Lc1405:
	.long	.Lc1407-.Lc1406
.Lc1406:
	.secrel32	.Lc917
	.quad	.Lc792
	.quad	.Lc793-.Lc792
	.byte	4
	.long	.Lc794-.Lc792
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1407:
	.long	.Lc1409-.Lc1408
.Lc1408:
	.secrel32	.Lc917
	.quad	.Lc795
	.quad	.Lc796-.Lc795
	.byte	4
	.long	.Lc797-.Lc795
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1409:
	.long	.Lc1411-.Lc1410
.Lc1410:
	.secrel32	.Lc917
	.quad	.Lc798
	.quad	.Lc799-.Lc798
	.byte	4
	.long	.Lc800-.Lc798
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1411:
	.long	.Lc1413-.Lc1412
.Lc1412:
	.secrel32	.Lc917
	.quad	.Lc801
	.quad	.Lc802-.Lc801
	.byte	4
	.long	.Lc803-.Lc801
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1413:
	.long	.Lc1415-.Lc1414
.Lc1414:
	.secrel32	.Lc917
	.quad	.Lc804
	.quad	.Lc805-.Lc804
	.byte	4
	.long	.Lc806-.Lc804
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1415:
	.long	.Lc1417-.Lc1416
.Lc1416:
	.secrel32	.Lc917
	.quad	.Lc807
	.quad	.Lc808-.Lc807
	.byte	4
	.long	.Lc809-.Lc807
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc810-.Lc809
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc811-.Lc810
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1417:
	.long	.Lc1419-.Lc1418
.Lc1418:
	.secrel32	.Lc917
	.quad	.Lc812
	.quad	.Lc813-.Lc812
	.byte	4
	.long	.Lc814-.Lc812
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc815-.Lc814
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc816-.Lc815
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1419:
	.long	.Lc1421-.Lc1420
.Lc1420:
	.secrel32	.Lc917
	.quad	.Lc817
	.quad	.Lc818-.Lc817
	.byte	4
	.long	.Lc819-.Lc817
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1421:
	.long	.Lc1423-.Lc1422
.Lc1422:
	.secrel32	.Lc917
	.quad	.Lc820
	.quad	.Lc821-.Lc820
	.byte	4
	.long	.Lc822-.Lc820
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc823-.Lc822
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc824-.Lc823
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1423:
	.long	.Lc1425-.Lc1424
.Lc1424:
	.secrel32	.Lc917
	.quad	.Lc825
	.quad	.Lc826-.Lc825
	.byte	4
	.long	.Lc827-.Lc825
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc828-.Lc827
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc829-.Lc828
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1425:
	.long	.Lc1427-.Lc1426
.Lc1426:
	.secrel32	.Lc917
	.quad	.Lc830
	.quad	.Lc831-.Lc830
	.byte	4
	.long	.Lc832-.Lc830
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1427:
	.long	.Lc1429-.Lc1428
.Lc1428:
	.secrel32	.Lc917
	.quad	.Lc833
	.quad	.Lc834-.Lc833
	.byte	4
	.long	.Lc835-.Lc833
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1429:
	.long	.Lc1431-.Lc1430
.Lc1430:
	.secrel32	.Lc917
	.quad	.Lc836
	.quad	.Lc837-.Lc836
	.byte	4
	.long	.Lc838-.Lc836
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1431:
	.long	.Lc1433-.Lc1432
.Lc1432:
	.secrel32	.Lc917
	.quad	.Lc839
	.quad	.Lc840-.Lc839
	.byte	4
	.long	.Lc841-.Lc839
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1433:
	.long	.Lc1435-.Lc1434
.Lc1434:
	.secrel32	.Lc917
	.quad	.Lc842
	.quad	.Lc843-.Lc842
	.byte	4
	.long	.Lc844-.Lc842
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1435:
	.long	.Lc1437-.Lc1436
.Lc1436:
	.secrel32	.Lc917
	.quad	.Lc845
	.quad	.Lc846-.Lc845
	.balign 4,0
.Lc1437:
	.long	.Lc1439-.Lc1438
.Lc1438:
	.secrel32	.Lc917
	.quad	.Lc847
	.quad	.Lc848-.Lc847
	.balign 4,0
.Lc1439:
	.long	.Lc1441-.Lc1440
.Lc1440:
	.secrel32	.Lc917
	.quad	.Lc849
	.quad	.Lc850-.Lc849
	.balign 4,0
.Lc1441:
	.long	.Lc1443-.Lc1442
.Lc1442:
	.secrel32	.Lc917
	.quad	.Lc851
	.quad	.Lc852-.Lc851
	.byte	4
	.long	.Lc853-.Lc851
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1443:
	.long	.Lc1445-.Lc1444
.Lc1444:
	.secrel32	.Lc917
	.quad	.Lc854
	.quad	.Lc855-.Lc854
	.byte	4
	.long	.Lc856-.Lc854
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1445:
	.long	.Lc1447-.Lc1446
.Lc1446:
	.secrel32	.Lc917
	.quad	.Lc857
	.quad	.Lc858-.Lc857
	.byte	4
	.long	.Lc859-.Lc857
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1447:
	.long	.Lc1449-.Lc1448
.Lc1448:
	.secrel32	.Lc917
	.quad	.Lc860
	.quad	.Lc861-.Lc860
	.balign 4,0
.Lc1449:
	.long	.Lc1451-.Lc1450
.Lc1450:
	.secrel32	.Lc917
	.quad	.Lc862
	.quad	.Lc863-.Lc862
	.byte	4
	.long	.Lc864-.Lc862
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1451:
	.long	.Lc1453-.Lc1452
.Lc1452:
	.secrel32	.Lc917
	.quad	.Lc865
	.quad	.Lc866-.Lc865
	.byte	4
	.long	.Lc867-.Lc865
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1453:
	.long	.Lc1455-.Lc1454
.Lc1454:
	.secrel32	.Lc917
	.quad	.Lc868
	.quad	.Lc869-.Lc868
	.byte	4
	.long	.Lc870-.Lc868
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1455:
	.long	.Lc1457-.Lc1456
.Lc1456:
	.secrel32	.Lc917
	.quad	.Lc871
	.quad	.Lc872-.Lc871
	.balign 4,0
.Lc1457:
	.long	.Lc1459-.Lc1458
.Lc1458:
	.secrel32	.Lc917
	.quad	.Lc873
	.quad	.Lc874-.Lc873
	.balign 4,0
.Lc1459:
	.long	.Lc1461-.Lc1460
.Lc1460:
	.secrel32	.Lc917
	.quad	.Lc875
	.quad	.Lc876-.Lc875
	.byte	4
	.long	.Lc877-.Lc875
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1461:
	.long	.Lc1463-.Lc1462
.Lc1462:
	.secrel32	.Lc917
	.quad	.Lc878
	.quad	.Lc879-.Lc878
	.byte	4
	.long	.Lc880-.Lc878
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1463:
	.long	.Lc1465-.Lc1464
.Lc1464:
	.secrel32	.Lc917
	.quad	.Lc881
	.quad	.Lc882-.Lc881
	.byte	4
	.long	.Lc883-.Lc881
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc884-.Lc883
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc885-.Lc884
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1465:
	.long	.Lc1467-.Lc1466
.Lc1466:
	.secrel32	.Lc917
	.quad	.Lc886
	.quad	.Lc887-.Lc886
	.byte	4
	.long	.Lc888-.Lc886
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc889-.Lc888
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc890-.Lc889
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1467:
	.long	.Lc1469-.Lc1468
.Lc1468:
	.secrel32	.Lc917
	.quad	.Lc891
	.quad	.Lc892-.Lc891
	.byte	4
	.long	.Lc893-.Lc891
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1469:
	.long	.Lc1471-.Lc1470
.Lc1470:
	.secrel32	.Lc917
	.quad	.Lc894
	.quad	.Lc895-.Lc894
	.balign 4,0
.Lc1471:
	.long	.Lc1473-.Lc1472
.Lc1472:
	.secrel32	.Lc917
	.quad	.Lc896
	.quad	.Lc897-.Lc896
	.balign 4,0
.Lc1473:
	.long	.Lc1475-.Lc1474
.Lc1474:
	.secrel32	.Lc917
	.quad	.Lc898
	.quad	.Lc899-.Lc898
	.byte	4
	.long	.Lc900-.Lc898
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc1475:
	.long	.Lc1477-.Lc1476
.Lc1476:
	.secrel32	.Lc917
	.quad	.Lc901
	.quad	.Lc902-.Lc901
	.byte	4
	.long	.Lc903-.Lc901
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1477:
	.long	.Lc1479-.Lc1478
.Lc1478:
	.secrel32	.Lc917
	.quad	.Lc904
	.quad	.Lc905-.Lc904
	.byte	4
	.long	.Lc906-.Lc904
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc907-.Lc906
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc908-.Lc907
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1479:
	.long	.Lc1481-.Lc1480
.Lc1480:
	.secrel32	.Lc917
	.quad	.Lc909
	.quad	.Lc910-.Lc909
	.byte	4
	.long	.Lc911-.Lc909
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc912-.Lc911
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc913-.Lc912
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc1481:
	.long	.Lc1483-.Lc1482
.Lc1482:
	.secrel32	.Lc917
	.quad	.Lc914
	.quad	.Lc915-.Lc914
	.byte	4
	.long	.Lc916-.Lc914
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc1483:
# End asmlist al_dwarf_frame

