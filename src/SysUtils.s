	.file "SysUtils.pas"
# Begin asmlist al_procedures

.section .text.n_sysutils_$$_fpc_pchar_ansistr_intern_charmove$pchar$int64$rawbytestring$int64$int64,"x"
	.balign 16,0x90
SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64:
.Lc1:
.seh_proc SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
# [SysUtils.pas]
# [82] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var src located in register rax
	movq	%rdx,%rcx
# Var srcindex located in register rcx
	movq	%r8,%rdx
# Var dst located in register rdx
# Var dstindex located in register r9
	movq	48(%rbp),%r8
# Var len located in register r8
# [83] move(src[srcindex],pbyte(pointer(dst))[dstindex],len);
	movq	(%rdx),%rdx
	addq	%r9,%rdx
	addq	%rax,%rcx
# Var len located in register r8
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [84] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:

.section .text.n_sysutils_$$_fpc_pchar_pchar_intern_charmove$pchar$int64$pchar$int64$int64,"x"
	.balign 16,0x90
SYSUTILS_$$_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$INT64$PCHAR$INT64$INT64:
.Lc6:
.seh_proc SYSUTILS_$$_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$INT64$PCHAR$INT64$INT64
# [87] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
# Var src located in register rax
	movq	%rdx,%rcx
# Var srcindex located in register rcx
	movq	%r8,%rdx
# Var dst located in register rdx
# Var dstindex located in register r9
	movq	48(%rbp),%r8
# Var len located in register r8
# [88] move(src[srcindex],dst[dstindex],len);
	addq	%r9,%rdx
	addq	%rax,%rcx
# Var len located in register r8
	call	SYSTEM_$$_MOVE$formal$formal$QWORD
# [89] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc7:

.section .text.n_sysutils_$$_strpas$pansichar$$ansistring,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING:
.Lc11:
.seh_proc SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
# [103] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc13:
.seh_stackalloc 48
.seh_endprologue
# Var Start located in register rax
# Var Len located in register eax
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var P located in register rsi
# [104] if P = nil then
	testq	%rdx,%rdx
	jne	.Lj10
# [105] Exit('');
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
	jmp	.Lj7
	.balign 4,0x90
.Lj10:
# Var Start located in register rdi
# Var P located in register rsi
# [106] Start := P;
	movq	%rsi,%rdi
# [108] while P^ <> #0 do
	jmp	.Lj12
	.balign 8,0x90
.Lj11:
# [109] Inc(P);
	addq	$1,%rsi
.Lj12:
	cmpb	$0,(%rsi)
	jne	.Lj11
# [110] Len := P - Start;
	subq	%rdi,%rsi
# Var Len located in register esi
# [112] SetLength(result, Len);
	movslq	%esi,%rdx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_ansistr_setlength
# [113] if Start <> nil then
	testq	%rdi,%rdi
	je	.Lj15
# [114] fpc_pchar_ansistr_intern_charmove(Start,0,result,0,Len);
	movslq	%esi,%rsi
	movq	%rsi,32(%rsp)
	movq	%rbx,%r8
	movq	%rdi,%rcx
	xorq	%r9,%r9
	xorl	%edx,%edx
	call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
	.balign 4,0x90
.Lj15:
.Lj7:
# [118] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc12:

.section .text.n_sysutils$_$chatastr1$array_of_char$$ansistring_$$_fin$0000001f,"x"
	.balign 16,0x90
SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001F:
.Lc14:
.seh_proc SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001F
# [140] end;
	pushq	%rbp
.seh_pushreg %rbp
.Lc16:
.Lc17:
	movq	%rcx,%rbp
.Lc18:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# [126] begin
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc15:

.section .text.n_sysutils_$$_chatastr1$array_of_char$$ansistring,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING
SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING:
.Lc19:
# Temps allocated between rbp-40 and rbp+0
.seh_proc SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc21:
.Lc22:
	movq	%rsp,%rbp
.Lc23:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
	movq	%rbx,-40(%rbp)
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
	movq	%r12,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_savereg %r12, 64
.seh_endprologue
# Var len located in register r12d
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var A located in register rsi
	movq	%r8,%rdi
# Var $highA located in register rdi
	movq	$0,-8(%rbp)
.Lj24:
	nop
.Lj20:
# [127] result := '';
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
# [128] if Length(A) = 0 then
	leaq	1(%rdi),%rax
	testq	%rax,%rax
	jne	.Lj26
# [130] MessageBoxA(0,'Error: Char Array empty.', 'Error', 0);
	xorl	%r9d,%r9d
	leaq	_$SYSUTILS$_Ld1(%rip),%r8
	leaq	_$SYSUTILS$_Ld2(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
# [131] Exit('');
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
	jmp	.Lj22
	.balign 4,0x90
.Lj26:
# [133] len := 0;
	xorl	%r12d,%r12d
	.balign 8,0x90
.Lj27:
# [135] result := result + A[len];
	movslq	%r12d,%rax
	movzbl	(%rsi,%rax,1),%edx
	xorl	%r8d,%r8d
	leaq	-8(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-8(%rbp),%r8
	movq	(%rbx),%rdx
	movq	%rbx,%rcx
	xorl	%r9d,%r9d
	call	fpc_ansistr_concat
# [136] inc(len);
	addl	$1,%r12d
# [137] until len = Length(A);
	movslq	%r12d,%rax
	leaq	1(%rdi),%rdx
	cmpq	%rdx,%rax
	jne	.Lj27
# [139] Exit(StrPas(PAnsiChar(@A[0])));
	movq	%rsi,%rdx
	movq	%rbx,%rcx
	call	SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
.Lj22:
	nop
.Lj21:
	movq	%rbp,%rcx
	call	SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001F
	movq	-40(%rbp),%rbx
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	movq	-16(%rbp),%r12
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj20
	.rva	.Lj21
	.rva	SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001F

.section .text.n_sysutils_$$_chatastr1$array_of_char$$ansistring,"x"
.seh_endproc
.Lc20:

.section .text.n_sysutils_$$_chatastr2$array_of_char$longint$$ansistring,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING:
.Lc24:
# Temps allocated between rbp-32 and rbp+0
.seh_proc SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING
# [146] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc26:
.Lc27:
	movq	%rsp,%rbp
.Lc28:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
	movq	%rbx,-32(%rbp)
	movq	%rdi,-24(%rbp)
	movq	%rsi,-16(%rbp)
	movq	%r12,-8(%rbp)
.seh_savereg %rbx, 48
.seh_savereg %rdi, 56
.seh_savereg %rsi, 64
.seh_savereg %r12, 72
.seh_endprologue
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var A located in register rsi
	movq	%r8,%rdi
# Var $highA located in register rdi
	movl	%r9d,%r12d
# Var BufLen located in register r12d
# [147] if (BufLen <= 0) or (Length(A) = 0) then
	testl	%r12d,%r12d
	jle	.Lj32
	leaq	1(%rdi),%rax
	testq	%rax,%rax
	jne	.Lj34
.Lj32:
# [148] Exit('');
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
	jmp	.Lj30
	.balign 4,0x90
.Lj34:
# [149] if BufLen > Length(A) then
	movslq	%r12d,%rax
	leaq	1(%rdi),%rdx
	cmpq	%rdx,%rax
	jng	.Lj36
# [150] BufLen := Length(A);
	leaq	1(%rdi),%rax
	movl	%eax,%r12d
	.balign 4,0x90
.Lj36:
# [153] SetLength(result, BufLen);
	movslq	%r12d,%rdx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_ansistr_setlength
# [154] if PAnsiChar(@A[0]) <> nil then
	testq	%rsi,%rsi
	je	.Lj38
# [155] fpc_pchar_ansistr_intern_charmove(PAnsiChar(@A[0]),0,result,0,BufLen);
	movslq	%r12d,%r12
	movq	%r12,32(%rsp)
	movq	%rsi,%rcx
	movq	%rbx,%r8
	xorq	%r9,%r9
	xorl	%edx,%edx
	call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
	.balign 4,0x90
.Lj38:
.Lj30:
# [157] end;
	movq	-32(%rbp),%rbx
	movq	-24(%rbp),%rdi
	movq	-16(%rbp),%rsi
	movq	-8(%rbp),%r12
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc25:

.section .text.n_sysutils_$$_chatastr3$pansichar$longint$$ansistring,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING:
.Lc29:
.seh_proc SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING
# [163] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc31:
.seh_stackalloc 48
.seh_endprologue
	movq	%rcx,%rbx
# Var $result located in register rbx
	movq	%rdx,%rsi
# Var P located in register rsi
	movl	%r8d,%edi
# Var BufLen located in register edi
# [164] if (P = nil) or (BufLen <= 0) then
	testq	%rsi,%rsi
	je	.Lj41
	testl	%edi,%edi
	jnle	.Lj43
.Lj41:
# [165] Exit('');
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	fpc_ansistr_assign
	jmp	.Lj39
	.balign 4,0x90
.Lj43:
# [176] SetLength(result, BufLen);
	movslq	%edi,%rdx
	movq	%rbx,%rcx
	xorl	%r8d,%r8d
	call	fpc_ansistr_setlength
# [177] if P <> nil then
	testq	%rsi,%rsi
	je	.Lj45
# [178] fpc_pchar_ansistr_intern_charmove(P,0,result,0,BufLen);
	movslq	%edi,%rdi
	movq	%rdi,32(%rsp)
	movq	%rbx,%r8
	movq	%rsi,%rcx
	xorq	%r9,%r9
	xorl	%edx,%edx
	call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
	.balign 4,0x90
.Lj45:
.Lj39:
# [180] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc30:

.section .text.n_sysutils_$$_stralloc$cardinal$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR:
.Lc32:
.seh_proc SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
# [184] begin
	leaq	-40(%rsp),%rsp
.Lc34:
.seh_stackalloc 40
.seh_endprologue
# Var $result located at rsp+32, size=OS_64
	movl	%ecx,%eax
# Var Size located in register eax
# [185] GetMem(result, Size + 1); // +1 f..r Nullterminator
	leaq	1(%rax),%rdx
	leaq	32(%rsp),%rcx
	call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
# [186] result[0] := #0;          // sicherstellen, dass String leer initialisiert ist
	movq	32(%rsp),%rax
	movb	$0,(%rax)
# [187] end;
	movq	32(%rsp),%rax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc33:

.section .text.n_sysutils_$$_strdispose$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_STRDISPOSE$PCHAR
SYSUTILS_$$_STRDISPOSE$PCHAR:
.Lc35:
.seh_proc SYSUTILS_$$_STRDISPOSE$PCHAR
# [190] begin
	leaq	-40(%rsp),%rsp
.Lc37:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
# Var P located in register rax
# [191] if P <> nil then
	testq	%rcx,%rcx
	je	.Lj51
# [192] FreeMem(P);
	movq	%rax,%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
	.balign 4,0x90
.Lj51:
# [193] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc36:

.section .text.n_sysutils_$$_strcopy_$pchar$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR:
.Lc38:
.seh_proc SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
# [200] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc40:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
# Var I located in register edx
# Var L located in register eax
	movq	%rcx,%rbx
# Var Dest located in register rbx
	movq	%rdx,%rsi
# Var Source located in register rsi
# Var Source located in register rsi
# [201] L      := StrLen(Source);
	movq	%rsi,%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
	movl	%eax,%edi
# Var L located in register edi
# [202] Dest   := StrAlloc(L + 1);
	leal	1(%edi),%ecx
	call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
	movq	%rax,(%rbx)
# [204] for I := 0 to L - 1 do
	leal	-1(%edi),%eax
	testl	%eax,%eax
	jnge	.Lj55
	movl	$-1,%edx
	.balign 8,0x90
.Lj56:
	addl	$1,%edx
# [205] Dest  [i] := Source[i];
	movq	(%rbx),%r9
	movslq	%edx,%rcx
	movb	(%rsi,%rcx,1),%r8b
	movb	%r8b,(%r9,%rcx,1)
	cmpl	%edx,%eax
	jnle	.Lj56
	.balign 4,0x90
.Lj55:
# [206] Dest  [L] := #0;
	movq	(%rbx),%rax
	movslq	%edi,%rdi
	movb	$0,(%rax,%rdi,1)
# Var $result located in register rax
# [208] Exit(Dest);
	movq	(%rbx),%rax
# [209] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc39:

.section .text.n_sysutils_$$_strcopy$pchar$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR:
.Lc41:
.seh_proc SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
# [211] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc43:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rbx
# Var Dest located in register rbx
	movq	%rdx,%rsi
# Var Source located in register rsi
# [212] if Dest = nil then
	cmpq	$0,(%rbx)
	jne	.Lj62
# [213] Dest := StrAlloc(StrLen(Source) + 1);
	movq	%rsi,%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
	leal	1(%eax),%ecx
	call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
	movq	%rax,(%rbx)
	.balign 4,0x90
.Lj62:
# [214] StrCopy_(Dest, Source);
	movq	%rbx,%rcx
	movq	%rsi,%rdx
# Var Source located in register rdx
	call	SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
# Var $result located in register rax
# [215] Exit(Dest);
	movq	(%rbx),%rax
# [216] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc42:

.section .text.n_sysutils_$$_strcat_$pchar$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR:
.Lc44:
.seh_proc SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
# [231] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-40(%rsp),%rsp
.Lc46:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var D located in register rax
# Var L located in register eax
# Var I located in register r12d
# Var J located in register edx
	movq	%rcx,%rbx
# Var Dest located in register rbx
	movq	%rdx,%rsi
# Var Source located in register rsi
# [232] L := StrLen(Dest) + StrLen(Source) + 1;
	movq	(%rbx),%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
	movl	%eax,%edi
# Var Source located in register rsi
	movq	%rsi,%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
	addl	%edi,%eax
	leal	1(%eax),%ecx
# Var L located in register ecx
# [233] D := StrAlloc(L);
	call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
	movq	%rax,%rdi
# Var D located in register rdi
# [235] for i := 0 to StrLen(Dest) - 1 do
	movq	(%rbx),%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
	subl	$1,%eax
	testl	%eax,%eax
	jnge	.Lj66
	movl	$-1,%r12d
	.balign 8,0x90
.Lj67:
	addl	$1,%r12d
# [236] D[i] := Dest[i];
	movslq	%r12d,%rdx
	movq	(%rbx),%rcx
	movb	(%rcx,%rdx,1),%cl
	movb	%cl,(%rdi,%rdx,1)
	cmpl	%r12d,%eax
	jnle	.Lj67
	.balign 4,0x90
.Lj66:
# Var Source located in register rsi
# [238] for J := 0 to StrLen(Source) - 1 do
	movq	%rsi,%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
	subl	$1,%eax
	testl	%eax,%eax
	jnge	.Lj71
	movl	$-1,%edx
	.balign 8,0x90
.Lj72:
	addl	$1,%edx
# [239] D[i + j + 1] := Source[J];
	movslq	%r12d,%rcx
	movslq	%edx,%r8
	leaq	(%rcx,%r8),%r9
	movb	(%rsi,%r8,1),%cl
	movb	%cl,1(%rdi,%r9,1)
	cmpl	%edx,%eax
	jnle	.Lj72
	.balign 4,0x90
.Lj71:
# [240] D[i + J + 2] := #0;
	movslq	%r12d,%r12
	movslq	%edx,%rdx
	leaq	(%r12,%rdx),%rax
	movb	$0,2(%rdi,%rax,1)
# [242] Dest := D;
	movq	%rdi,%rax
# Var D located in register rax
	movq	%rax,(%rbx)
# Var $result located in register rax
# Var D located in register rax
# [244] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc45:

.section .text.n_sysutils_$$_strcat$pchar$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR:
.Lc47:
.seh_proc SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
# [246] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc49:
.seh_stackalloc 32
.seh_endprologue
# Var $result located in register rax
	movq	%rcx,%rbx
# Var Dest located in register rbx
# Var Source located in register rdx
# Var Source located in register rdx
# [247] StrCat_(Dest, Source);
	call	SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
# Var $result located in register rax
# [248] Exit(Dest);
	movq	(%rbx),%rax
# [249] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc48:

.section .text.n_sysutils_$$_inttostrcrt32$longint$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR:
.Lc50:
.seh_proc SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
# [269] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc52:
.seh_stackalloc 56
.seh_endprologue
# Var $result located in register rax
# Var Buffer located at rsp+32, size=OS_NO
# Var I located in register eax
	movl	%ecx,%ebx
# Var Value located in register ebx
# [270] result := StrAlloc(16);
	movl	$16,%ecx
	call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
	movq	%rax,%rsi
# Var $result located in register rsi
# [271] _itoa(Value, Buffer, 10);
	leaq	32(%rsp),%rdx
	movl	%ebx,%ecx
# Var Value located in register ecx
	movl	$10,%r8d
	call	_$dll$msvcrt$_itoa
# Var I located in register edx
# [272] i := 0;
	xorl	%edx,%edx
	.balign 8,0x90
.Lj79:
# [274] result[i] := Buffer[i];
	movslq	%edx,%rax
	movl	%edx,%ecx
	movb	32(%rsp,%rcx,1),%cl
	movb	%cl,(%rsi,%rax,1)
# [275] inc(i);
	addl	$1,%edx
# [276] until i = Length(Buffer);
	movslq	%edx,%rax
	cmpq	$17,%rax
	jne	.Lj79
# [277] result[16] := #0;
	movb	$0,16(%rsi)
# [278] end;
	movq	%rsi,%rax
	nop
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc51:

.section .text.n_sysutils_$$_inttostrcrt64$int64$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR:
.Lc53:
.seh_proc SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
# [283] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-72(%rsp),%rsp
.Lc55:
.seh_stackalloc 72
.seh_endprologue
# Var $result located in register rax
# Var Buffer located at rsp+32, size=OS_NO
# Var I located in register eax
	movq	%rcx,%rbx
# Var Value located in register rbx
# [284] result := StrAlloc(32);
	movl	$32,%ecx
	call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
	movq	%rax,%rsi
# Var $result located in register rsi
# [285] _i64toa(Value, Buffer, 10);
	leaq	32(%rsp),%rdx
	movq	%rbx,%rcx
# Var Value located in register rcx
	movl	$10,%r8d
	call	_$dll$msvcrt$_i64toa
# Var I located in register edx
# [286] i := 0;
	xorl	%edx,%edx
	.balign 8,0x90
.Lj84:
# [288] result[i] := Buffer[i];
	movslq	%edx,%rax
	movl	%edx,%ecx
	movb	32(%rsp,%rcx,1),%cl
	movb	%cl,(%rsi,%rax,1)
# [289] inc(i);
	addl	$1,%edx
# [290] until i = Length(Buffer);
	movslq	%edx,%rax
	cmpq	$33,%rax
	jne	.Lj84
# [291] result[32] := #0;
	movb	$0,32(%rsi)
# [292] end;
	movq	%rsi,%rax
	nop
	leaq	72(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc54:

.section .text.n_sysutils_$$_inttostr$longint$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR:
.Lc56:
.seh_proc SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
# [294] function IntToStr(Value: Integer): PChar; stdcall; overload; begin result := IntToStrCRT32(Value); end;
	leaq	-40(%rsp),%rsp
.Lc58:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var Value located in register ecx
# Var Value located in register ecx
	call	SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
# Var $result located in register rax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc57:

.section .text.n_sysutils_$$_inttostr$int64$$pchar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_INTTOSTR$INT64$$PCHAR
SYSUTILS_$$_INTTOSTR$INT64$$PCHAR:
.Lc59:
.seh_proc SYSUTILS_$$_INTTOSTR$INT64$$PCHAR
# [295] function IntToStr(Value:   Int64): PChar; stdcall; overload; begin result := IntToStrCRT64(Value); end;
	leaq	-40(%rsp),%rsp
.Lc61:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var Value located in register rcx
# Var Value located in register rcx
	call	SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
# Var $result located in register rax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc60:

.section .text.n_sysutils_$$_uinttostra$qword$$ansistring,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING:
.Lc62:
.seh_proc SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
# [311] begin
	leaq	-72(%rsp),%rsp
.Lc64:
.seh_stackalloc 72
.seh_endprologue
# Var temp located at rsp+32, size=OS_NO
# Var i located in register eax
# Var $result located in register rcx
	movq	%rdx,%r8
# Var Value located in register r8
# Var i located in register r9d
# [312] i := High(temp);
	movl	$31,%r9d
# [313] temp[i] := #0;
	movl	%r9d,%eax
	movb	$0,32(%rsp,%rax,1)
# [314] Dec(i);
	subl	$1,%r9d
	.balign 8,0x90
.Lj93:
# [317] temp[i] := Char(Ord('0') + (Value mod 10));
	movq	%r8,%r10
	movq	$-3689348814741910323,%rax
	mulq	%r10
	shrq	$3,%rdx
	movl	$10,%eax
	imulq	%rax,%rdx
	subq	%rdx,%r10
	leaq	48(%r10),%rax
	movl	%r9d,%edx
	movb	%al,32(%rsp,%rdx,1)
# [318] Value := Value div 10;
	movq	%r8,%rdx
	movq	$-3689348814741910323,%rax
	mulq	%rdx
	shrq	$3,%rdx
	movq	%rdx,%r8
# [319] Dec(i);
	subl	$1,%r9d
# [320] until Value = 0;
	testq	%r8,%r8
	jne	.Lj93
# [322] Result := AnsiString(@temp[i + 1]);
	movslq	%r9d,%r9
	leaq	33(%rsp,%r9,1),%rdx
	call	fpc_ansistr_assign
# [323] end;
	nop
	leaq	72(%rsp),%rsp
	ret
.seh_endproc
.Lc63:

.section .text.n_sysutils_$$_uinttostr$qword$$ansistring,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING:
.Lc65:
.seh_proc SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING
# [325] begin
	leaq	-40(%rsp),%rsp
.Lc67:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
# Var Value located in register rdx
# Var Value located in register rdx
# [326] result := UIntToStrA(Value);
	call	SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
# [327] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc66:

.section .text.n_sysutils_$$_commandlinetoargva$pansichar$longint$$ppansichar,"x"
	.balign 16,0x90
.globl	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR:
.Lc68:
.seh_proc SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
# [349] begin
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
.Lc70:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rdx
# Var argv located in register rax
# Var _argv located in register rax
# Var len located in register eax
# Var i located in register eax
# Var j located in register eax
# Var a located in register r12b
# Var in_QM located in register al
# Var in_TEXT located in register al
# Var in_SPACE located in register al
# Var allocSize located in register eax
	movq	%rcx,%rbx
# Var CmdLine located in register rbx
	movq	%rdx,%rsi
# Var argc located in register rsi
# Var CmdLine located in register rbx
# [350] len := StrLen(CmdLine);
	movq	%rbx,%rcx
	call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
# Var len located in register eax
# [352] allocSize := ((len + 2) div 2) * SizeOf(Pointer) + SizeOf(Pointer);
	leal	2(%eax),%edx
	andl	$4294967294,%edx
	shll	$2,%edx
	leal	8(%edx),%edi
# Var allocSize located in register edi
# [354] argv := PPAnsiChar(GlobalAlloc(GMEM_FIXED, allocSize + (len + 2) * SizeOf(AnsiChar)));
	andl	%eax,%eax
	leaq	2(%rax),%rdx
	movl	%edi,%eax
	addq	%rax,%rdx
	xorl	%ecx,%ecx
	call	_$dll$kernel32$GlobalAlloc
# Var argv located in register rax
# [355] if argv = nil then
	testq	%rax,%rax
	jne	.Lj101
# [357] argc := 0;
	movl	$0,(%rsi)
# [358] Result := nil;
	xorl	%edx,%edx
# [359] Exit;
	jmp	.Lj98
	.balign 4,0x90
.Lj101:
# [362] _argv := PAnsiChar(PByte(argv) + allocSize);
	andl	%edi,%edi
	leaq	(%rdi,%rax),%rcx
# Var _argv located in register rcx
# [364] argc := 0;
	movl	$0,(%rsi)
# [365] argv[argc] := _argv;
	movslq	(%rsi),%r8
# Var _argv located in register rcx
	movq	%rcx,(%rax,%r8,8)
# Var in_QM located in register r13b
# [367] in_QM := False;
	xorb	%r13b,%r13b
# Var in_TEXT located in register r11b
# [368] in_TEXT := False;
	xorb	%r11b,%r11b
# Var in_SPACE located in register dil
# [369] in_SPACE := True;
	movb	$1,%dil
# Var i located in register r9d
# [370] i := 0;
	xorl	%r9d,%r9d
# Var j located in register r10d
# [371] j := 0;
	xorl	%r10d,%r10d
# [373] while CmdLine[i] <> #0 do
	jmp	.Lj103
	.balign 8,0x90
.Lj102:
# [375] a := CmdLine[i];
	movl	%r9d,%r8d
	movb	(%rbx,%r8,1),%r12b
# [376] if in_QM then
	testb	%r13b,%r13b
	je	.Lj106
# [378] if a = '"' then
	cmpb	$34,%r12b
	jne	.Lj108
# [379] in_QM := False
	xorb	%r13b,%r13b
	jmp	.Lj110
.Lj108:
# [382] _argv[j] := a;
	movl	%r10d,%r8d
	movb	%r12b,(%rcx,%r8,1)
# [383] Inc(j);
	addl	$1,%r10d
	jmp	.Lj110
.Lj106:
# [388] case a of
	movb	%r12b,%r8b
	cmpb	$9,%r8b
	jb	.Lj112
	subb	$10,%r8b
	jbe	.Lj114
	subb	$3,%r8b
	je	.Lj114
	subb	$19,%r8b
	je	.Lj114
	subb	$2,%r8b
	jne	.Lj112
	.balign 4,0x90
# [391] in_QM := True;
	movb	$1,%r13b
# [392] in_TEXT := True;
	movb	$1,%r11b
# [393] if in_SPACE then
	testb	%dil,%dil
	je	.Lj116
# [395] argv[argc] := @_argv[j];
	movslq	(%rsi),%r14
	movl	%r10d,%r8d
	addq	%rcx,%r8
	movq	%r8,(%rax,%r14,8)
# [396] Inc(argc);
	addl	$1,(%rsi)
	.balign 4,0x90
.Lj116:
# [398] in_SPACE := False;
	xorb	%dil,%dil
	jmp	.Lj111
	.balign 4,0x90
.Lj114:
# [402] if in_TEXT then
	testb	%r11b,%r11b
	je	.Lj118
# [404] _argv[j] := #0;
	movl	%r10d,%r8d
	movb	$0,(%rcx,%r8,1)
# [405] Inc(j);
	addl	$1,%r10d
	.balign 4,0x90
.Lj118:
# [407] in_TEXT := False;
	xorb	%r11b,%r11b
# [408] in_SPACE := True;
	movb	$1,%dil
	jmp	.Lj111
	.balign 4,0x90
.Lj112:
# [411] in_TEXT := True;
	movb	$1,%r11b
# [412] if in_SPACE then
	testb	%dil,%dil
	je	.Lj120
# [414] argv[argc] := @_argv[j];
	movslq	(%rsi),%r14
	movl	%r10d,%r8d
	addq	%rcx,%r8
	movq	%r8,(%rax,%r14,8)
# [415] Inc(argc);
	addl	$1,(%rsi)
	.balign 4,0x90
.Lj120:
# [417] _argv[j] := a;
	movl	%r10d,%r8d
	movb	%r12b,(%rcx,%r8,1)
# [418] Inc(j);
	addl	$1,%r10d
# [419] in_SPACE := False;
	xorb	%dil,%dil
	.balign 4,0x90
.Lj111:
.Lj110:
# [422] Inc(i);
	addl	$1,%r9d
.Lj103:
	movl	%r9d,%r8d
	cmpb	$0,(%rbx,%r8,1)
	jne	.Lj102
# [425] _argv[j] := #0;
	andl	%r10d,%r10d
	movb	$0,(%rcx,%r10,1)
# [426] argv[argc] := nil;
	movslq	(%rsi),%rcx
	movq	$0,(%rax,%rcx,8)
# Var argv located in register rax
# [428] Result := argv;
	movq	%rax,%rdx
.Lj98:
# [429] end;
	movq	%rdx,%rax
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
.Lc69:
# End asmlist al_procedures
# Begin asmlist al_typedconsts

.section .rodata.n__$SYSUTILS$_Ld1,"d"
	.balign 8
.globl	_$SYSUTILS$_Ld1
_$SYSUTILS$_Ld1:
	.ascii	"Error\000"

.section .rodata.n__$SYSUTILS$_Ld2,"d"
	.balign 8
.globl	_$SYSUTILS$_Ld2
_$SYSUTILS$_Ld2:
	.ascii	"Error: Char Array empty.\000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$SYSUTILS_$$_PPANSICHAR,"d"
	.balign 8
.globl	RTTI_$SYSUTILS_$$_PPANSICHAR
RTTI_$SYSUTILS_$$_PPANSICHAR:
	.byte	29,10
# [450] 
	.ascii	"PPAnsiChar"
	.quad	RTTI_$SYSTEM_$$_PANSICHAR$indirect
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_RTTI_$SYSUTILS_$$_PPANSICHAR,"d"
	.balign 8
.globl	RTTI_$SYSUTILS_$$_PPANSICHAR$indirect
RTTI_$SYSUTILS_$$_PPANSICHAR$indirect:
	.quad	RTTI_$SYSUTILS_$$_PPANSICHAR
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc71:
	.long	.Lc73-.Lc72
.Lc72:
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
.Lc73:
	.long	.Lc75-.Lc74
.Lc74:
	.secrel32	.Lc71
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
.Lc75:
	.long	.Lc77-.Lc76
.Lc76:
	.secrel32	.Lc71
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
.Lc77:
	.long	.Lc79-.Lc78
.Lc78:
	.secrel32	.Lc71
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc79:
	.long	.Lc81-.Lc80
.Lc80:
	.secrel32	.Lc71
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.byte	4
	.long	.Lc16-.Lc14
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc17-.Lc16
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc18-.Lc17
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc81:
	.long	.Lc83-.Lc82
.Lc82:
	.secrel32	.Lc71
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.byte	4
	.long	.Lc21-.Lc19
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc22-.Lc21
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc23-.Lc22
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc83:
	.long	.Lc85-.Lc84
.Lc84:
	.secrel32	.Lc71
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.byte	4
	.long	.Lc26-.Lc24
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc27-.Lc26
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc28-.Lc27
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc85:
	.long	.Lc87-.Lc86
.Lc86:
	.secrel32	.Lc71
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.byte	4
	.long	.Lc31-.Lc29
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc87:
	.long	.Lc89-.Lc88
.Lc88:
	.secrel32	.Lc71
	.quad	.Lc32
	.quad	.Lc33-.Lc32
	.byte	4
	.long	.Lc34-.Lc32
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc89:
	.long	.Lc91-.Lc90
.Lc90:
	.secrel32	.Lc71
	.quad	.Lc35
	.quad	.Lc36-.Lc35
	.byte	4
	.long	.Lc37-.Lc35
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc91:
	.long	.Lc93-.Lc92
.Lc92:
	.secrel32	.Lc71
	.quad	.Lc38
	.quad	.Lc39-.Lc38
	.byte	4
	.long	.Lc40-.Lc38
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc93:
	.long	.Lc95-.Lc94
.Lc94:
	.secrel32	.Lc71
	.quad	.Lc41
	.quad	.Lc42-.Lc41
	.byte	4
	.long	.Lc43-.Lc41
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc95:
	.long	.Lc97-.Lc96
.Lc96:
	.secrel32	.Lc71
	.quad	.Lc44
	.quad	.Lc45-.Lc44
	.byte	4
	.long	.Lc46-.Lc44
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc97:
	.long	.Lc99-.Lc98
.Lc98:
	.secrel32	.Lc71
	.quad	.Lc47
	.quad	.Lc48-.Lc47
	.byte	4
	.long	.Lc49-.Lc47
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc99:
	.long	.Lc101-.Lc100
.Lc100:
	.secrel32	.Lc71
	.quad	.Lc50
	.quad	.Lc51-.Lc50
	.byte	4
	.long	.Lc52-.Lc50
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc101:
	.long	.Lc103-.Lc102
.Lc102:
	.secrel32	.Lc71
	.quad	.Lc53
	.quad	.Lc54-.Lc53
	.byte	4
	.long	.Lc55-.Lc53
	.byte	14
	.uleb128	80
	.balign 4,0
.Lc103:
	.long	.Lc105-.Lc104
.Lc104:
	.secrel32	.Lc71
	.quad	.Lc56
	.quad	.Lc57-.Lc56
	.byte	4
	.long	.Lc58-.Lc56
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc105:
	.long	.Lc107-.Lc106
.Lc106:
	.secrel32	.Lc71
	.quad	.Lc59
	.quad	.Lc60-.Lc59
	.byte	4
	.long	.Lc61-.Lc59
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc107:
	.long	.Lc109-.Lc108
.Lc108:
	.secrel32	.Lc71
	.quad	.Lc62
	.quad	.Lc63-.Lc62
	.byte	4
	.long	.Lc64-.Lc62
	.byte	14
	.uleb128	80
	.balign 4,0
.Lc109:
	.long	.Lc111-.Lc110
.Lc110:
	.secrel32	.Lc71
	.quad	.Lc65
	.quad	.Lc66-.Lc65
	.byte	4
	.long	.Lc67-.Lc65
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc111:
	.long	.Lc113-.Lc112
.Lc112:
	.secrel32	.Lc71
	.quad	.Lc68
	.quad	.Lc69-.Lc68
	.byte	4
	.long	.Lc70-.Lc68
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc113:
# End asmlist al_dwarf_frame

