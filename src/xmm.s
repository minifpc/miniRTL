	.file "xmm.pas"
# Begin asmlist al_pure_assembler

.section .text.n_xmm_$$__atomic32$longint$longint$$longint,"x"
	.balign 16,0x90
XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT:
.Lc1:
.seh_proc XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
# [xmm.pas]
# [102] asm
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-4, size=OS_S32
#  CPU ATHLON64
# [104] mov    eax, val
	movl	%edx,%eax
# [105] lock   xchg [target], eax
	lock
	xchgq	%eax,(%rcx)
#  CPU ATHLON64
# [111] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:
# End asmlist al_pure_assembler
# Begin asmlist al_procedures

.section .text.n_xmm_$$__xmemchunksbegin,"x"
	.balign 16,0x90
XMM_$$__XMEMCHUNKSBEGIN:
.Lc6:
.seh_proc XMM_$$__XMEMCHUNKSBEGIN
# [115] begin
	leaq	-40(%rsp),%rsp
.Lc8:
.seh_stackalloc 40
.seh_endprologue
	.balign 8,0x90
.Lj7:
# [116] while _atomic32(xmemchunks_critical_section, 1) <> 0 do; // consider adding a sleep to reduce CPU usage
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rax
	movl	$1,%edx
	movq	%rax,%rcx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj7
# [117] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc7:

.section .text.n_xmm_$$__xmemchunksend,"x"
	.balign 16,0x90
XMM_$$__XMEMCHUNKSEND:
.Lc9:
.seh_proc XMM_$$__XMEMCHUNKSEND
# [121] begin
	leaq	-40(%rsp),%rsp
.Lc11:
.seh_stackalloc 40
.seh_endprologue
# [122] _atomic32(xmemchunks_critical_section, 0);
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rax
	xorl	%edx,%edx
	movq	%rax,%rcx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
# [123] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc10:

.section .text.n_xmm_$$__xgetmemchunk$longword$$pointer,"x"
	.balign 16,0x90
XMM_$$__XGETMEMCHUNK$LONGWORD$$POINTER:
.Lc12:
.seh_proc XMM_$$__XGETMEMCHUNK$LONGWORD$$POINTER
# [129] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc14:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var i located in register eax
	movl	%ecx,%ebx
# Var size located in register ebx
# Var $result located in register rsi
# [131] result := nil;
	xorl	%esi,%esi
	.balign 8,0x90
.Lj14:
# [132] _xmemchunksbegin;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj14
# [135] if result = nil then begin
	testq	%rsi,%rsi
	jne	.Lj18
# [136] for i := 0 to high(xmemchunks) do begin
	movl	$-1,%eax
	.balign 8,0x90
.Lj19:
	addl	$1,%eax
# [137] if xmemchunks[i].h.size = 0 then begin
	movl	%eax,%edx
	imulq	$552,%rdx,%rcx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rdx
	cmpq	$0,8(%rdx,%rcx)
	jne	.Lj23
# [139] result := @xmemchunks[i].data[0];
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	leaq	40(%rcx,%rdx),%rsi
# [140] break;
	jmp	.Lj21
	.balign 4,0x90
.Lj23:
	cmpl	$8191,%eax
	jnge	.Lj19
.Lj21:
	.balign 4,0x90
.Lj18:
# [145] if result <> nil then begin
	testq	%rsi,%rsi
	je	.Lj25
# [147] pxmemchunk(result-sizeof(txmemheader))^.h.size := size;
	andl	%ebx,%ebx
	movq	%rbx,-32(%rsi)
	.balign 4,0x90
.Lj25:
# [151] _xmemchunksend;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
# [152] end;
	movq	%rsi,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc13:

.section .text.n_xmm_$$_xgetmem$qword$$pointer,"x"
	.balign 16,0x90
.globl	XMM_$$_XGETMEM$QWORD$$POINTER
XMM_$$_XGETMEM$QWORD$$POINTER:
.Lc15:
.seh_proc XMM_$$_XGETMEM$QWORD$$POINTER
# [155] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc17:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rbx
# Var size located in register rbx
# Var $result located in register rdi
# [160] result := nil;
	xorl	%edi,%edi
# [163] if (size > 0) and (size <= XMMCHUNKSIZE) then begin
	testq	%rbx,%rbx
	jna	.Lj29
	cmpq	$512,%rbx
	jnbe	.Lj29
# [164] result := _xgetmemchunk(size);
	movl	%ebx,%esi
	xorq	%r12,%r12
	.balign 8,0x90
.Lj32:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj32
	testq	%r12,%r12
	jne	.Lj36
	movl	$-1,%eax
	.balign 8,0x90
.Lj37:
	addl	$1,%eax
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	cmpq	$0,8(%rcx,%rdx)
	jne	.Lj41
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	leaq	40(%rcx,%rdx),%r12
	jmp	.Lj39
	.balign 4,0x90
.Lj41:
	cmpl	$8191,%eax
	jnge	.Lj37
.Lj39:
	.balign 4,0x90
.Lj36:
	testq	%r12,%r12
	je	.Lj43
	andl	%esi,%esi
	movq	%rsi,-32(%r12)
	.balign 4,0x90
.Lj43:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	movq	%r12,%rdi
# [165] if result <> nil then exit; // succeeded
	testq	%r12,%r12
	jne	.Lj26
	.balign 4,0x90
	.balign 4,0x90
.Lj29:
# [169] result := VirtualAlloc(nil, size+sizeof(txmemheader), MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE);
	leaq	40(%rbx),%rdx
	movl	$4,%r9d
	movl	$12288,%r8d
	xorl	%ecx,%ecx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,%rdi
# [170] if result = nil then exit;
	testq	%rax,%rax
	je	.Lj26
	.balign 4,0x90
# Var size located in register rbx
# [173] pxmemheader(result)^.size := size;
	movq	%rbx,8(%rdi)
# [175] pxmemheader(result)^.realsize := ((int64(size) div 4096)+1)*4096-sizeof(txmemheader); // align to 4096 bytes (OS alignment), subtract the header size
	movq	%rbx,%rax
	sarq	$63,%rax
	andq	$4095,%rax
	addq	%rax,%rbx
	sarq	$12,%rbx
	leaq	1(%rbx),%rax
	shlq	$12,%rax
	subq	$40,%rax
	movq	%rax,16(%rdi)
# [180] pxmemheader(result)^.wasallocated := true; // memory allocated by OS; must be freed using VirtualFree
	movb	$1,(%rdi)
# [181] pxmemheader(result)^.prev := nil; // not used currently; may be removed if it offers no performance gain
	movq	$0,24(%rdi)
# [182] pxmemheader(result)^.next := nil; // not used currently; may be removed if it offers no performance gain
	movq	$0,32(%rdi)
# [185] result := result + sizeof(txmemheader);
	addq	$40,%rdi
.Lj26:
# [186] end;
	movq	%rdi,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc16:

.section .text.n_xmm_$$_xallocmem$qword$$pointer,"x"
	.balign 16,0x90
.globl	XMM_$$_XALLOCMEM$QWORD$$POINTER
XMM_$$_XALLOCMEM$QWORD$$POINTER:
.Lc18:
.seh_proc XMM_$$_XALLOCMEM$QWORD$$POINTER
# [189] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc20:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rbx
	movq	%rcx,%rsi
# Var size located in register rsi
# [193] result := xgetmem(size);
	xorl	%ebx,%ebx
	testq	%rsi,%rsi
	jna	.Lj52
	cmpq	$512,%rsi
	jnbe	.Lj52
	movl	%esi,%edi
	xorq	%r12,%r12
	.balign 8,0x90
.Lj55:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj55
	testq	%r12,%r12
	jne	.Lj59
	movl	$-1,%eax
	.balign 8,0x90
.Lj60:
	addl	$1,%eax
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	cmpq	$0,8(%rcx,%rdx)
	jne	.Lj64
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	leaq	40(%rcx,%rdx),%r12
	jmp	.Lj62
	.balign 4,0x90
.Lj64:
	cmpl	$8191,%eax
	jnge	.Lj60
.Lj62:
	.balign 4,0x90
.Lj59:
	testq	%r12,%r12
	je	.Lj66
	andl	%edi,%edi
	movq	%rdi,-32(%r12)
	.balign 4,0x90
.Lj66:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	movq	%r12,%rbx
	testq	%r12,%r12
	jne	.Lj50
	.balign 4,0x90
	.balign 4,0x90
.Lj52:
	leaq	40(%rsi),%rdx
	movl	$4,%r9d
	movl	$12288,%r8d
	xorl	%ecx,%ecx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,%rbx
	testq	%rax,%rax
	je	.Lj50
	.balign 4,0x90
	movq	%rsi,8(%rbx)
	movq	%rsi,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$4095,%rdx
	addq	%rdx,%rax
	sarq	$12,%rax
	addq	$1,%rax
	shlq	$12,%rax
	subq	$40,%rax
	movq	%rax,16(%rbx)
	movb	$1,(%rbx)
	movq	$0,24(%rbx)
	movq	$0,32(%rbx)
	addq	$40,%rbx
.Lj50:
# [194] if result = nil then exit;
	testq	%rbx,%rbx
	je	.Lj48
	.balign 4,0x90
# [196] xfillmem(result, size, 0);
	movq	%rsi,%rdx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
.Lj48:
# [197] end;
	movq	%rbx,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc19:

.section .text.n_xmm_$$_xreallocmem$pointer$qword$$pointer,"x"
	.balign 16,0x90
.globl	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER:
.Lc21:
.seh_proc XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
# [203] begin
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
.Lc23:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var h located in register rdi
# Var n located in register r8
	movq	%rcx,%rbx
# Var p located in register rbx
	movq	%rdx,%rsi
# Var size located in register rsi
# Var $result located in register r12
# [208] result := nil;
	movq	$0,%r12
# [211] if size = 0 then begin
	testq	%rsi,%rsi
	jne	.Lj76
# [212] if p <> nil then xfreemem(p);
	cmpq	$0,(%rbx)
	je	.Lj78
	movq	(%rbx),%rcx
	call	XMM_$$_XFREEMEM$POINTER$$QWORD
	.balign 4,0x90
.Lj78:
# [213] p := nil;
	movq	$0,(%rbx)
# [214] exit(nil);
	xorq	%r12,%r12
	jmp	.Lj73
	.balign 4,0x90
.Lj76:
# [218] if p = nil then begin
	cmpq	$0,(%rbx)
	jne	.Lj80
# [219] p := xgetmem(size);
	xorq	%r13,%r13
	testq	%rsi,%rsi
	jna	.Lj83
	cmpq	$512,%rsi
	jnbe	.Lj83
	movl	%esi,%edi
	xorq	%r14,%r14
	.balign 8,0x90
.Lj86:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj86
	testq	%r14,%r14
	jne	.Lj90
	movl	$-1,%eax
	.balign 8,0x90
.Lj91:
	addl	$1,%eax
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	cmpq	$0,8(%rcx,%rdx)
	jne	.Lj95
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	leaq	40(%rcx,%rdx),%r14
	jmp	.Lj93
	.balign 4,0x90
.Lj95:
	cmpl	$8191,%eax
	jnge	.Lj91
.Lj93:
	.balign 4,0x90
.Lj90:
	testq	%r14,%r14
	je	.Lj97
	andl	%edi,%edi
	movq	%rdi,-32(%r14)
	.balign 4,0x90
.Lj97:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	movq	%r14,%r13
	testq	%r14,%r14
	jne	.Lj81
	.balign 4,0x90
	.balign 4,0x90
.Lj83:
	leaq	40(%rsi),%rdx
	movl	$4,%r9d
	movl	$12288,%r8d
	xorl	%ecx,%ecx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,%r13
	testq	%rax,%rax
	je	.Lj81
	.balign 4,0x90
	movq	%rsi,8(%r13)
	movq	%rsi,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$4095,%rdx
	addq	%rdx,%rax
	sarq	$12,%rax
	addq	$1,%rax
	shlq	$12,%rax
	subq	$40,%rax
	movq	%rax,16(%r13)
	movb	$1,(%r13)
	movq	$0,24(%r13)
	movq	$0,32(%r13)
	addq	$40,%r13
.Lj81:
	movq	%r13,(%rbx)
# [220] exit(p);
	movq	%r13,%r12
	jmp	.Lj73
	.balign 4,0x90
.Lj80:
# [224] h := p-sizeof(txmemheader);
	movq	(%rbx),%rax
	leaq	-40(%rax),%rdi
	.balign 8,0x90
.Lj102:
# [227] _xmemchunksbegin;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj102
# [228] if not h^.wasallocated then begin
	cmpb	$0,(%rdi)
	jne	.Lj106
# [229] if size < XMMCHUNKSIZE then begin
	cmpq	$512,%rsi
	jnb	.Lj108
# [230] h^.size := size;
	movq	%rsi,8(%rdi)
# [231] result := p;
	movq	(%rbx),%r12
	.balign 4,0x90
.Lj108:
	.balign 4,0x90
.Lj106:
# [234] _xmemchunksend;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
# [238] if (result = nil) and (size < h^.realsize) then begin
	testq	%r12,%r12
	jne	.Lj110
	cmpq	16(%rdi),%rsi
	jnb	.Lj110
# [240] h^.size := size;
	movq	%rsi,8(%rdi)
# [241] result := p;
	movq	(%rbx),%r12
	.balign 4,0x90
.Lj110:
# [244] if result = nil then begin
	testq	%r12,%r12
	jne	.Lj113
# [246] result := xgetmem(size);
	xorq	%r13,%r13
	testq	%rsi,%rsi
	jna	.Lj116
	cmpq	$512,%rsi
	jnbe	.Lj116
	movl	%esi,%edi
	xorq	%r14,%r14
	.balign 8,0x90
.Lj119:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj119
	testq	%r14,%r14
	jne	.Lj123
	movl	$-1,%eax
	.balign 8,0x90
.Lj124:
	addl	$1,%eax
	movl	%eax,%edx
	imulq	$552,%rdx,%rcx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rdx
	cmpq	$0,8(%rdx,%rcx)
	jne	.Lj128
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	leaq	40(%rcx,%rdx),%r14
	jmp	.Lj126
	.balign 4,0x90
.Lj128:
	cmpl	$8191,%eax
	jnge	.Lj124
.Lj126:
	.balign 4,0x90
.Lj123:
	testq	%r14,%r14
	je	.Lj130
	andl	%edi,%edi
	movq	%rdi,-32(%r14)
	.balign 4,0x90
.Lj130:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	movq	%r14,%r13
	testq	%r14,%r14
	jne	.Lj114
	.balign 4,0x90
	.balign 4,0x90
.Lj116:
	leaq	40(%rsi),%rdx
	movl	$4,%r9d
	movl	$12288,%r8d
	xorl	%ecx,%ecx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,%r13
	testq	%rax,%rax
	je	.Lj114
	.balign 4,0x90
	movq	%rsi,8(%r13)
	movq	%rsi,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$4095,%rdx
	addq	%rdx,%rax
	sarq	$12,%rax
	addq	$1,%rax
	shlq	$12,%rax
	subq	$40,%rax
	movq	%rax,16(%r13)
	movb	$1,(%r13)
	movq	$0,24(%r13)
	movq	$0,32(%r13)
	addq	$40,%r13
.Lj114:
	movq	%r13,%r12
# [247] if result <> nil then begin
	testq	%r13,%r13
	je	.Lj136
# [249] n := size;
	movq	%rsi,%r8
# [250] if pxmemheader(p)^.size < n then n := pxmemheader(p)^.size;
	movq	(%rbx),%rax
	cmpq	8(%rax),%r8
	jna	.Lj138
	movq	(%rbx),%rax
	movq	8(%rax),%r8
	.balign 4,0x90
.Lj138:
# [252] xmovemem(p, result, n);
	movq	(%rbx),%rcx
	movq	%r12,%rdx
	call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
	.balign 4,0x90
.Lj136:
# [256] xfreemem(p);
	movq	(%rbx),%rcx
	call	XMM_$$_XFREEMEM$POINTER$$QWORD
# [257] p := result;
	movq	%r12,(%rbx)
	.balign 4,0x90
.Lj113:
.Lj73:
# [259] end;
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
.Lc22:

.section .text.n_xmm_$$_xclone$pointer$$pointer,"x"
	.balign 16,0x90
.globl	XMM_$$_XCLONE$POINTER$$POINTER
XMM_$$_XCLONE$POINTER$$POINTER:
.Lc24:
.seh_proc XMM_$$_XCLONE$POINTER$$POINTER
# [264] begin
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
.Lc26:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rbx
# Var u located in register rax
	movq	%rcx,%rsi
# Var p located in register rsi
# Var p located in register rsi
# [268] u := xmemsize(p);
	call	XMM_$$_XMEMSIZE$POINTER$$QWORD
	movq	%rax,%rdi
# Var u located in register rdi
# [269] result := xgetmem(u);
	xorl	%ebx,%ebx
	testq	%rdi,%rdi
	jna	.Lj143
	cmpq	$512,%rdi
	jnbe	.Lj143
	movl	%edi,%r12d
	xorq	%r13,%r13
	.balign 8,0x90
.Lj146:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj146
	testq	%r13,%r13
	jne	.Lj150
	movl	$-1,%eax
	.balign 8,0x90
.Lj151:
	addl	$1,%eax
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	cmpq	$0,8(%rcx,%rdx)
	jne	.Lj155
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	leaq	40(%rcx,%rdx),%r13
	jmp	.Lj153
	.balign 4,0x90
.Lj155:
	cmpl	$8191,%eax
	jnge	.Lj151
.Lj153:
	.balign 4,0x90
.Lj150:
	testq	%r13,%r13
	je	.Lj157
	andl	%r12d,%r12d
	movq	%r12,-32(%r13)
	.balign 4,0x90
.Lj157:
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	movq	%r13,%rbx
	testq	%r13,%r13
	jne	.Lj141
	.balign 4,0x90
	.balign 4,0x90
.Lj143:
	leaq	40(%rdi),%rdx
	movl	$4,%r9d
	movl	$12288,%r8d
	xorl	%ecx,%ecx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,%rbx
	testq	%rax,%rax
	je	.Lj141
	.balign 4,0x90
	movq	%rdi,8(%rbx)
	movq	%rdi,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$4095,%rdx
	addq	%rdx,%rax
	sarq	$12,%rax
	addq	$1,%rax
	shlq	$12,%rax
	subq	$40,%rax
	movq	%rax,16(%rbx)
	movb	$1,(%rbx)
	movq	$0,24(%rbx)
	movq	$0,32(%rbx)
	addq	$40,%rbx
.Lj141:
# [270] xmovemem(p, result, u);
	movq	%rdi,%r8
	movq	%rbx,%rdx
	movq	%rsi,%rcx
	call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
# [271] end;
	movq	%rbx,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc25:

.section .text.n_xmm_$$_xmemsize$pointer$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XMEMSIZE$POINTER$$QWORD
XMM_$$_XMEMSIZE$POINTER$$QWORD:
.Lc27:
# Var $result located in register rax
# Var p located in register rcx
# [274] begin
# Var p located in register rcx
# Var $result located in register rax
# [278] result := pxmemheader(p-sizeof(txmemheader))^.size;
	movq	-32(%rcx),%rax
# [279] end;
	ret
.Lc28:

.section .text.n_xmm_$$_xmemrealsize$pointer$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XMEMREALSIZE$POINTER$$QWORD
XMM_$$_XMEMREALSIZE$POINTER$$QWORD:
.Lc29:
# Var $result located in register rax
# Var p located in register rcx
# [282] begin
# Var p located in register rcx
# [286] result := pxmemheader(p-sizeof(txmemheader))^.realsize+sizeof(txmemheader);
	movq	-24(%rcx),%rax
	addq	$40,%rax
# Var $result located in register rax
# [287] end;
	ret
.Lc30:

.section .text.n_xmm_$$_xmemavailsize$pointer$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD
XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD:
.Lc31:
# Var $result located in register rax
# Var p located in register rcx
# [290] begin
# Var p located in register rcx
# Var $result located in register rax
# [294] result := pxmemheader(p-sizeof(txmemheader))^.realsize;
	movq	-24(%rcx),%rax
# [295] end;
	ret
.Lc32:

.section .text.n_xmm_$$_xfreemem$pointer$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XFREEMEM$POINTER$$QWORD
XMM_$$_XFREEMEM$POINTER$$QWORD:
.Lc33:
.seh_proc XMM_$$_XFREEMEM$POINTER$$QWORD
# [300] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc35:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var h located in register rax
	movq	%rcx,%rbx
# Var p located in register rbx
	.balign 8,0x90
.Lj170:
# [305] _xmemchunksbegin;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj170
# [308] h := p-sizeof(txmemheader);
	subq	$40,%rbx
# Var h located in register rbx
# Var h located in register rbx
# Var $result located in register rsi
# [311] result := h^.realsize;
	movq	16(%rbx),%rsi
# [313] if h^.wasallocated then result := result + sizeof(txmemheader);
	cmpb	$0,(%rbx)
	je	.Lj174
	addq	$40,%rsi
	.balign 4,0x90
.Lj174:
# [315] if h^.wasallocated then begin
	cmpb	$0,(%rbx)
	je	.Lj176
# [317] VirtualFree(h, 0, MEM_RELEASE);
	movq	%rbx,%rcx
	movl	$32768,%r8d
	xorl	%edx,%edx
	call	_$dll$kernel32$VirtualFree
	jmp	.Lj177
.Lj176:
# [320] h^.size := 0;
	movq	$0,8(%rbx)
.Lj177:
# [323] _xmemchunksend;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
# [324] end;
	movq	%rsi,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc34:

.section .text.n_xmm_$$_xzeromem$pointer$qword$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD
XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD:
.Lc36:
.seh_proc XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD
# [327] begin
	leaq	-40(%rsp),%rsp
.Lc38:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
# Var len located in register rdx
# Var len located in register rdx
# Var p located in register rcx
# [331] result := xfillmem(p, len, 0);
	xorl	%r8d,%r8d
	call	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
# Var $result located in register rax
# [332] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc37:

.section .text.n_xmm_$$_xmovemem$pointer$pointer$qword$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD:
.Lc39:
.seh_proc XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
# [335] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc41:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rax
# Var src located in register rax
	movq	%rdx,%rcx
# Var dst located in register rcx
	movq	%r8,%rbx
# Var len located in register rbx
# Var len located in register rbx
# [339] RtlMoveMemory(dst, src, len);
	movq	%rax,%rdx
# Var src located in register rdx
# Var dst located in register rcx
	call	_$dll$kernel32$RtlMoveMemory
# Var $result located in register rax
# [340] result := len;
	movq	%rbx,%rax
# Var len located in register rax
# [341] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc40:

.section .text.n_xmm_$$_xfillmem$pointer$qword$byte$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD:
.Lc42:
.seh_proc XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
# [344] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc44:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
	movq	%rdx,%rbx
# Var len located in register rbx
# Var v located in register r8b
# [348] RtlFillMemory(p, len, v);
	andl	$255,%r8d
# Var len located in register rbx
	movq	%rbx,%rdx
# Var p located in register rcx
	call	_$dll$kernel32$RtlFillMemory
# Var $result located in register rax
# [349] result := len;
	movq	%rbx,%rax
# Var len located in register rax
# [350] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc43:

.section .text.n_xmm_$$_xfillmem$pointer$qword$char$$qword,"x"
	.balign 16,0x90
XMM_$$_XFILLMEM$POINTER$QWORD$CHAR$$QWORD:
.Lc45:
.seh_proc XMM_$$_XFILLMEM$POINTER$QWORD$CHAR$$QWORD
# [353] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc47:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var p located in register rcx
	movq	%rdx,%rbx
# Var len located in register rbx
# Var v located in register r8b
# [357] RtlFillMemory(p, len, ord(v));
	andl	$255,%r8d
# Var len located in register rbx
	movq	%rbx,%rdx
# Var p located in register rcx
	call	_$dll$kernel32$RtlFillMemory
# Var $result located in register rax
# [358] result := len;
	movq	%rbx,%rax
# Var len located in register rax
# [359] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc46:

.section .text.n_xmm_$$_xmemdiffat$pointer$pointer$qword$$qword,"x"
	.balign 16,0x90
.globl	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD:
.Lc48:
.seh_proc XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
# [362] begin
	leaq	-40(%rsp),%rsp
.Lc50:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var p1 located in register rcx
# Var p2 located in register rdx
# Var len located in register r8
# Var len located in register r8
# Var p2 located in register rdx
# Var p1 located in register rcx
# [366] result := RtlCompareMemory(p1, p2, len);
	call	_$dll$ntdll$RtlCompareMemory
# Var $result located in register rax
# [367] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc49:

.section .text.n_xmm_$$_xmemcompare$pointer$pointer$qword$$boolean,"x"
	.balign 16,0x90
.globl	XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN
XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN:
.Lc51:
.seh_proc XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN
# [370] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc53:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register al
# Var p1 located in register rcx
# Var p2 located in register rdx
	movq	%r8,%rbx
# Var len located in register rbx
# [374] result := RtlCompareMemory(p1, p2, len) = len;
	call	_$dll$ntdll$RtlCompareMemory
	cmpq	%rbx,%rax
# Var $result located in register al
	seteb	%al
# [375] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc52:

.section .text.n_xmm_$$_xgetfreechunks$$longint,"x"
	.balign 16,0x90
.globl	XMM_$$_XGETFREECHUNKS$$LONGINT
XMM_$$_XGETFREECHUNKS$$LONGINT:
.Lc54:
.seh_proc XMM_$$_XGETFREECHUNKS$$LONGINT
# [380] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc56:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register eax
# Var i located in register eax
# Var $result located in register ebx
# [384] result := 0;
	xorl	%ebx,%ebx
	.balign 8,0x90
.Lj192:
# [385] _xmemchunksbegin;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj192
# Var i located in register eax
# [386] for i := 0 to high(xmemchunks) do if xmemchunks[i].h.size = 0 then result := result + 1;
	movl	$-1,%eax
	.balign 8,0x90
.Lj195:
	addl	$1,%eax
	movl	%eax,%edx
	imulq	$552,%rdx,%rcx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rdx
	cmpq	$0,8(%rdx,%rcx)
	jne	.Lj199
	addl	$1,%ebx
	.balign 4,0x90
.Lj199:
	cmpl	$8191,%eax
	jnge	.Lj195
# [387] _xmemchunksend;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
# [388] end;
	movl	%ebx,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc55:

.section .text.n_xmm_$$_xmminit,"x"
	.balign 16,0x90
.globl	XMM_$$_XMMINIT
XMM_$$_XMMINIT:
.Lc57:
.seh_proc XMM_$$_XMMINIT
# [393] begin
	leaq	-40(%rsp),%rsp
.Lc59:
.seh_stackalloc 40
.seh_endprologue
# Var i located in register eax
# [399] if xmemchunks_init_done then exit;
	cmpb	$0,TC_$XMM_$$_XMEMCHUNKS_INIT_DONE(%rip)
	jne	.Lj200
	.balign 4,0x90
	.balign 8,0x90
.Lj204:
# [402] _xmemchunksbegin;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	movl	$1,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	.Lj204
# [405] RtlFillMemory(@xmemchunks[0], sizeof(xmemchunks), 0);
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	xorl	%r8d,%r8d
	movl	$4521984,%edx
	call	_$dll$kernel32$RtlFillMemory
# Var i located in register eax
# [407] for i := low(xmemchunks) to high(xmemchunks) do begin
	movl	$-1,%eax
	.balign 8,0x90
.Lj207:
	addl	$1,%eax
# [409] if i <> low(xmemchunks)  then xmemchunks[i].h.prev := @xmemchunks[i-1]; // set previous chunk pointer
	je	.Lj211
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rdx
	movslq	%eax,%rcx
	imulq	$552,%rcx,%rcx
	leaq	-552(%rdx,%rcx),%r8
	movl	%eax,%ecx
	imulq	$552,%rcx,%rcx
	movq	%r8,24(%rdx,%rcx)
	.balign 4,0x90
.Lj211:
# [410] if i <> high(xmemchunks) then xmemchunks[i].h.next := @xmemchunks[i+1]; // set next chunk pointer
	cmpl	$8191,%eax
	je	.Lj213
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rdx
	movslq	%eax,%rcx
	imulq	$552,%rcx,%rcx
	leaq	552(%rdx,%rcx),%r8
	movl	%eax,%ecx
	imulq	$552,%rcx,%rcx
	movq	%r8,32(%rdx,%rcx)
	.balign 4,0x90
.Lj213:
# [413] xmemchunks[i].h.realsize := sizeof(xmemchunks[i].data);
	movl	%eax,%edx
	imulq	$552,%rdx,%rdx
	leaq	U_$XMM_$$_XMEMCHUNKS(%rip),%rcx
	movq	$512,16(%rcx,%rdx)
	cmpl	$8191,%eax
	jnge	.Lj207
# [417] xmemchunks_init_done := true;
	movb	$1,TC_$XMM_$$_XMEMCHUNKS_INIT_DONE(%rip)
# [420] _xmemchunksend;
	leaq	TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION(%rip),%rcx
	xorl	%edx,%edx
	call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
.Lj200:
# [421] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc58:

.section .text.n_xmm_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$XMM
INIT$_$XMM:
.globl	XMM_$$_init$
XMM_$$_init$:
.Lc60:
.seh_proc XMM_$$_init$
# [423] initialization
	leaq	-40(%rsp),%rsp
.Lc62:
.seh_stackalloc 40
.seh_endprologue
# [425] xmminit;
	call	XMM_$$_XMMINIT
# [427] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc61:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [96] xmemchunks: array[0..XMMCHUNKCOUNT-1] of txmemchunk;
U_$XMM_$$_XMEMCHUNKS:
	.zero 4521984
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION,"d"
	.balign 4
TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION:
	.long	0
# [98] xmemchunks_init_done: boolean = false;

.section .data.n_TC_$XMM_$$_XMEMCHUNKS_INIT_DONE,"d"
TC_$XMM_$$_XMEMCHUNKS_INIT_DONE:
	.byte	0
# [101] function _atomic32(var target: integer; val: integer): integer; assembler;
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc63:
	.long	.Lc65-.Lc64
.Lc64:
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
.Lc65:
	.long	.Lc67-.Lc66
.Lc66:
	.secrel32	.Lc63
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
.Lc67:
	.long	.Lc69-.Lc68
.Lc68:
	.secrel32	.Lc63
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc69:
	.long	.Lc71-.Lc70
.Lc70:
	.secrel32	.Lc63
	.quad	.Lc9
	.quad	.Lc10-.Lc9
	.byte	4
	.long	.Lc11-.Lc9
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc71:
	.long	.Lc73-.Lc72
.Lc72:
	.secrel32	.Lc63
	.quad	.Lc12
	.quad	.Lc13-.Lc12
	.byte	4
	.long	.Lc14-.Lc12
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc73:
	.long	.Lc75-.Lc74
.Lc74:
	.secrel32	.Lc63
	.quad	.Lc15
	.quad	.Lc16-.Lc15
	.byte	4
	.long	.Lc17-.Lc15
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc75:
	.long	.Lc77-.Lc76
.Lc76:
	.secrel32	.Lc63
	.quad	.Lc18
	.quad	.Lc19-.Lc18
	.byte	4
	.long	.Lc20-.Lc18
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc77:
	.long	.Lc79-.Lc78
.Lc78:
	.secrel32	.Lc63
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc79:
	.long	.Lc81-.Lc80
.Lc80:
	.secrel32	.Lc63
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.byte	4
	.long	.Lc26-.Lc24
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc81:
	.long	.Lc83-.Lc82
.Lc82:
	.secrel32	.Lc63
	.quad	.Lc27
	.quad	.Lc28-.Lc27
	.balign 4,0
.Lc83:
	.long	.Lc85-.Lc84
.Lc84:
	.secrel32	.Lc63
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.balign 4,0
.Lc85:
	.long	.Lc87-.Lc86
.Lc86:
	.secrel32	.Lc63
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.balign 4,0
.Lc87:
	.long	.Lc89-.Lc88
.Lc88:
	.secrel32	.Lc63
	.quad	.Lc33
	.quad	.Lc34-.Lc33
	.byte	4
	.long	.Lc35-.Lc33
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc89:
	.long	.Lc91-.Lc90
.Lc90:
	.secrel32	.Lc63
	.quad	.Lc36
	.quad	.Lc37-.Lc36
	.byte	4
	.long	.Lc38-.Lc36
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc91:
	.long	.Lc93-.Lc92
.Lc92:
	.secrel32	.Lc63
	.quad	.Lc39
	.quad	.Lc40-.Lc39
	.byte	4
	.long	.Lc41-.Lc39
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc93:
	.long	.Lc95-.Lc94
.Lc94:
	.secrel32	.Lc63
	.quad	.Lc42
	.quad	.Lc43-.Lc42
	.byte	4
	.long	.Lc44-.Lc42
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc95:
	.long	.Lc97-.Lc96
.Lc96:
	.secrel32	.Lc63
	.quad	.Lc45
	.quad	.Lc46-.Lc45
	.byte	4
	.long	.Lc47-.Lc45
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc97:
	.long	.Lc99-.Lc98
.Lc98:
	.secrel32	.Lc63
	.quad	.Lc48
	.quad	.Lc49-.Lc48
	.byte	4
	.long	.Lc50-.Lc48
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc99:
	.long	.Lc101-.Lc100
.Lc100:
	.secrel32	.Lc63
	.quad	.Lc51
	.quad	.Lc52-.Lc51
	.byte	4
	.long	.Lc53-.Lc51
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc101:
	.long	.Lc103-.Lc102
.Lc102:
	.secrel32	.Lc63
	.quad	.Lc54
	.quad	.Lc55-.Lc54
	.byte	4
	.long	.Lc56-.Lc54
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc103:
	.long	.Lc105-.Lc104
.Lc104:
	.secrel32	.Lc63
	.quad	.Lc57
	.quad	.Lc58-.Lc57
	.byte	4
	.long	.Lc59-.Lc57
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc105:
	.long	.Lc107-.Lc106
.Lc106:
	.secrel32	.Lc63
	.quad	.Lc60
	.quad	.Lc61-.Lc60
	.byte	4
	.long	.Lc62-.Lc60
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc107:
# End asmlist al_dwarf_frame

