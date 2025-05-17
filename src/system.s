BITS 64
default rel
CPU x64

EXTERN	_$dll$kernel32$ReadConsoleA
EXTERN	_$dll$kernel32$AddVectoredExceptionHandler
EXTERN	_$dll$kernel32$RemoveVectoredExceptionHandler
EXTERN	_$dll$kernel32$RtlLookupFunctionEntry
EXTERN	_$dll$kernel32$RtlVirtualUnwind
EXTERN	_$dll$kernel32$RtlUnwindEx
EXTERN	_$dll$kernel32$WriteConsoleA
EXTERN	_$dll$kernel32$WriteConsoleW
EXTERN	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
EXTERN	_$dll$rtllib$xfreemem
EXTERN	XMM_$$_XGETMEM$QWORD$$POINTER
EXTERN	XMM_$$_XALLOCMEM$QWORD$$POINTER
EXTERN	XMM_$$_XMEMSIZE$POINTER$$QWORD
EXTERN	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
EXTERN	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
EXTERN	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
EXTERN	_$dll$user32$MessageBoxA
EXTERN	INITFINAL
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	_$dll$rtllib$GetBsr8bit
; Begin asmlist al_pure_assembler

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT:
..@c1061:
; [misc.inc]
; [63] asm
%LINE 63+0 misc.inc
		push	rbp
..@c1063:
..@c1064:
		mov	rbp,rsp
..@c1065:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [64] mov    eax, val
%LINE 64+0
		mov	eax,edx
; [65] lock   xchg [target], eax
%LINE 65+0
		lock		xchg	qword [rcx],eax
CPU x64

; [66] end;
%LINE 66+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1062:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64
SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64:
..@c1066:
; [69] asm
%LINE 69+0
		push	rbp
..@c1068:
..@c1069:
		mov	rbp,rsp
..@c1070:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [70] mov    rax, val
%LINE 70+0
		mov	rax,rdx
; [71] lock   xchg [target], rax
%LINE 71+0
		lock		xchg	qword [rcx],rax
CPU x64

; [72] end;
%LINE 72+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1067:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT:
..@c1071:
; [75] asm
%LINE 75+0
		push	rbp
..@c1073:
..@c1074:
		mov	rbp,rsp
..@c1075:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [76] mov eax, 1
%LINE 76+0
		mov	eax,1
; [77] lock xadd [target], eax
%LINE 77+0
		lock		xadd	qword [rcx],eax
; [78] inc eax
%LINE 78+0
		inc	eax
CPU x64

; [79] end;
%LINE 79+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1072:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64:
..@c1076:
; [82] asm
%LINE 82+0
		push	rbp
..@c1078:
..@c1079:
		mov	rbp,rsp
..@c1080:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [83] mov rax, 1
%LINE 83+0
		mov	rax,1
; [84] lock xadd [target], rax
%LINE 84+0
		lock		xadd	qword [rcx],rax
; [85] inc rax
%LINE 85+0
		inc	rax
CPU x64

; [86] end;
%LINE 86+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1077:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT:
..@c1081:
; [89] asm
%LINE 89+0
		push	rbp
..@c1083:
..@c1084:
		mov	rbp,rsp
..@c1085:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [90] mov eax, -1
%LINE 90+0
		mov	eax,-1
; [91] lock xadd [target], eax
%LINE 91+0
		lock		xadd	qword [rcx],eax
; [92] dec eax
%LINE 92+0
		dec	eax
CPU x64

; [93] end;
%LINE 93+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1082:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64:
..@c1086:
; [96] asm
%LINE 96+0
		push	rbp
..@c1088:
..@c1089:
		mov	rbp,rsp
..@c1090:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [97] mov rax, -1
%LINE 97+0
		mov	rax,-1
; [98] lock xadd [target], rax
%LINE 98+0
		lock		xadd	qword [rcx],rax
; [99] dec rax
%LINE 99+0
		dec	rax
CPU x64

; [100] end;
%LINE 100+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1087:

SECTION .text
	GLOBAL SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER
SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER:
..@c1271:
; [system.pas]
; [353] asm
%LINE 353+0 system.pas
CPU x64

; [354] movl   4(%esp),%eax
%LINE 354+0
		mov	eax,dword [esp+4]
; [355] movl   %eax,%fs:(0)
%LINE 355+0
		mov	dword [fs:0],eax
; [356] movl   %ebp,%eax
%LINE 356+0
		mov	eax,ebp
; [357] call   16(%esp)
%LINE 357+0
		call	[esp+16]
CPU x64

; [358] end;
%LINE 358+0
		ret
..@c1272:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT
SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT:
..@c1348:
; [611] asm
%LINE 611+0
CPU x64

; [612] movq     %rbx,jmp_buf.rbx(%rcx)
%LINE 612+0
		mov	qword [rcx],rbx
; [613] movq     %rbp,jmp_buf.rbp(%rcx)
%LINE 613+0
		mov	qword [rcx+8],rbp
; [614] movq     %r12,jmp_buf.r12(%rcx)
%LINE 614+0
		mov	qword [rcx+16],r12
; [615] movq     %r13,jmp_buf.r13(%rcx)
%LINE 615+0
		mov	qword [rcx+24],r13
; [616] movq     %r14,jmp_buf.r14(%rcx)
%LINE 616+0
		mov	qword [rcx+32],r14
; [617] movq     %r15,jmp_buf.r15(%rcx)
%LINE 617+0
		mov	qword [rcx+40],r15
; [618] movq     %rsi,jmp_buf.rsi(%rcx)
%LINE 618+0
		mov	qword [rcx+64],rsi
; [619] movq     %rdi,jmp_buf.rdi(%rcx)
%LINE 619+0
		mov	qword [rcx+72],rdi
; [620] leaq     8(%rsp),%rax
%LINE 620+0
		lea	rax,[rsp+8]
; [621] movq     %rax,jmp_buf.rsp(%rcx)
%LINE 621+0
		mov	qword [rcx+48],rax
; [622] movq     (%rsp),%rax
%LINE 622+0
		mov	rax,qword [rsp]
; [623] movq     %rax,jmp_buf.rip(%rcx)
%LINE 623+0
		mov	qword [rcx+56],rax
; [624] movdqu   %xmm6,jmp_buf.xmm6(%rcx)
%LINE 624+0
		movdqu	[rcx+80],xmm6
; [625] movdqu   %xmm7,jmp_buf.xmm7(%rcx)
%LINE 625+0
		movdqu	[rcx+96],xmm7
; [626] movdqu   %xmm8,jmp_buf.xmm8(%rcx)
%LINE 626+0
		movdqu	[rcx+112],xmm8
; [627] movdqu   %xmm9,jmp_buf.xmm9(%rcx)
%LINE 627+0
		movdqu	[rcx+128],xmm9
; [628] movdqu   %xmm10,jmp_buf.xmm10(%rcx)
%LINE 628+0
		movdqu	[rcx+144],xmm10
; [629] movdqu   %xmm11,jmp_buf.xmm11(%rcx)
%LINE 629+0
		movdqu	[rcx+160],xmm11
; [630] movdqu   %xmm12,jmp_buf.xmm12(%rcx)
%LINE 630+0
		movdqu	[rcx+176],xmm12
; [631] movdqu   %xmm13,jmp_buf.xmm13(%rcx)
%LINE 631+0
		movdqu	[rcx+192],xmm13
; [632] movdqu   %xmm14,jmp_buf.xmm14(%rcx)
%LINE 632+0
		movdqu	[rcx+208],xmm14
; [633] movdqu   %xmm15,jmp_buf.xmm15(%rcx)
%LINE 633+0
		movdqu	[rcx+224],xmm15
; [634] stmxcsr  jmp_buf.mxcsr(%rcx)
%LINE 634+0
		stmxcsr	dword [rcx+240]
; [635] fnstcw   jmp_buf.fpucw(%rcx)
%LINE 635+0
		fnstcw	word [rcx+244]
; [636] xorl     %eax,%eax
%LINE 636+0
		xor	eax,eax
CPU x64

; [637] end;
%LINE 637+0
		ret
..@c1349:

SECTION .text
	GLOBAL fpc_setjmp
fpc_setjmp:
	GLOBAL FPC_SETJMP
FPC_SETJMP:
..@c1350:
; [640] asm
%LINE 640+0
CPU x64

; [641] sub rsp, 32          // Shadow space f..r call
%LINE 641+0
		sub	rsp,32
; [642] call fpcsetjmp       // bar erwartet s in rcx
%LINE 642+0
		call	SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT
; [643] add rsp, 32          // Stack wieder freigeben
%LINE 643+0
		add	rsp,32
CPU x64

; [645] end;
%LINE 645+0
		ret
..@c1351:

SECTION .text
	GLOBAL SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT
SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT:
..@c1352:
; [663] asm
%LINE 663+0
CPU x64

; [680] cmpl     $1,%edx
%LINE 680+0
		cmp	edx,1
; [681] adcl     $0,%edx
%LINE 681+0
		adc	edx,0
; [682] movl     %edx,%eax
%LINE 682+0
		mov	eax,edx
; [683] movq     jmp_buf.rbx(%rcx),%rbx
%LINE 683+0
		mov	rbx,qword [rcx]
; [684] movq     jmp_buf.rbp(%rcx),%rbp
%LINE 684+0
		mov	rbp,qword [rcx+8]
; [685] movq     jmp_buf.r12(%rcx),%r12
%LINE 685+0
		mov	r12,qword [rcx+16]
; [686] movq     jmp_buf.r13(%rcx),%r13
%LINE 686+0
		mov	r13,qword [rcx+24]
; [687] movq     jmp_buf.r14(%rcx),%r14
%LINE 687+0
		mov	r14,qword [rcx+32]
; [688] movq     jmp_buf.r15(%rcx),%r15
%LINE 688+0
		mov	r15,qword [rcx+40]
; [689] movq     jmp_buf.rsi(%rcx),%rsi
%LINE 689+0
		mov	rsi,qword [rcx+64]
; [690] movq     jmp_buf.rdi(%rcx),%rdi
%LINE 690+0
		mov	rdi,qword [rcx+72]
; [691] movq     jmp_buf.rsp(%rcx),%rsp
%LINE 691+0
		mov	rsp,qword [rcx+48]
; [692] movdqu   jmp_buf.xmm6(%rcx),%xmm6
%LINE 692+0
		movdqu	xmm6,[rcx+80]
; [693] movdqu   jmp_buf.xmm7(%rcx),%xmm7
%LINE 693+0
		movdqu	xmm7,[rcx+96]
; [694] movdqu   jmp_buf.xmm8(%rcx),%xmm8
%LINE 694+0
		movdqu	xmm8,[rcx+112]
; [695] movdqu   jmp_buf.xmm9(%rcx),%xmm9
%LINE 695+0
		movdqu	xmm9,[rcx+128]
; [696] movdqu   jmp_buf.xmm10(%rcx),%xmm10
%LINE 696+0
		movdqu	xmm10,[rcx+144]
; [697] movdqu   jmp_buf.xmm11(%rcx),%xmm11
%LINE 697+0
		movdqu	xmm11,[rcx+160]
; [698] movdqu   jmp_buf.xmm12(%rcx),%xmm12
%LINE 698+0
		movdqu	xmm12,[rcx+176]
; [699] movdqu   jmp_buf.xmm13(%rcx),%xmm13
%LINE 699+0
		movdqu	xmm13,[rcx+192]
; [700] movdqu   jmp_buf.xmm14(%rcx),%xmm14
%LINE 700+0
		movdqu	xmm14,[rcx+208]
; [701] movdqu   jmp_buf.xmm15(%rcx),%xmm15
%LINE 701+0
		movdqu	xmm15,[rcx+224]
; [702] ldmxcsr  jmp_buf.mxcsr(%rcx)
%LINE 702+0
		ldmxcsr	dword [rcx+240]
; [703] fnclex
%LINE 703+0
		fnclex
; [704] fldcw    jmp_buf.fpucw(%rcx)
%LINE 704+0
		fldcw	word [rcx+244]
; [705] jmpq     jmp_buf.rip(%rcx)
%LINE 705+0
		jmp	[rcx+56]
CPU x64

; [707] end;
%LINE 707+0
		ret
..@c1353:

SECTION .text
	GLOBAL fpc_longjmp
fpc_longjmp:
	GLOBAL FPC_LONGJMP
FPC_LONGJMP:
..@c1354:
; [709] asm
%LINE 709+0
CPU x64

; [710] sub rsp, 64          // Shadow space f..r call
%LINE 710+0
		sub	rsp,64
; [711] call fpclongjmp      // bar erwartet s in rcx
%LINE 711+0
		call	SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT
; [712] add rsp, 64          // Stack wieder freigeben
%LINE 712+0
		add	rsp,64
CPU x64

; [713] end;
%LINE 713+0
		ret
..@c1355:

SECTION .text
SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT:
..@c1416:
; [915] asm
%LINE 915+0
		push	rbp
..@c1418:
..@c1419:
		mov	rbp,rsp
..@c1420:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [917] mov rax, -1
%LINE 917+0
		mov	rax,-1
; [918] lock xadd [Addend], rax
%LINE 918+0
		lock		xadd	qword [rcx],rax
; [919] dec rax
%LINE 919+0
		dec	rax
CPU x64

; [925] end;
%LINE 925+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1417:

SECTION .text
SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT:
..@c1421:
; [929] asm
%LINE 929+0
		push	rbp
..@c1423:
..@c1424:
		mov	rbp,rsp
..@c1425:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [931] mov rax, 1
%LINE 931+0
		mov	rax,1
; [932] lock xadd [Addend], rax
%LINE 932+0
		lock		xadd	qword [rcx],rax
; [933] inc rax
%LINE 933+0
		inc	rax
CPU x64

; [939] end;
%LINE 939+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1422:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
SYSTEM_$$_WAIT_FOR_ENTER:
..@c1:
; Temps allocated between rbp-16 and rbp-8
; [232] begin
%LINE 232+0 system.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rbx
; Var c located at rbp-4, size=OS_8
; Var d located at rbp-8, size=OS_32
; [233] writeln('press <enter>...');
%LINE 233+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld1]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [235] while true do begin
%LINE 235+0
		jmp	..@j6
..@j5:
; [236] ReadConsoleA(StdIn, @c, 1, @d, nil);
%LINE 236+0
		mov	qword [rsp+32],0
		lea	r9,[rbp-8]
		lea	rdx,[rbp-4]
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	r8d,1
		call	_$dll$kernel32$ReadConsoleA
; [237] if c = #13 then break;
%LINE 237+0
		cmp	byte [rbp-4],13
		je	..@j8
		jmp	..@j9
..@j8:
		jmp	..@j7
..@j9:
..@j6:
%LINE 235+0
		jmp	..@j5
..@j7:
; [239] end;
%LINE 239+0
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID:
..@c6:
; [objects.inc]
; [225] begin
%LINE 225+0 objects.inc
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [229] if Assigned(IIDRef) then GetIID := IIDRef^
%LINE 229+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		jne	..@j12
		jmp	..@j13
..@j12:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rax,qword [rax]
		mov	qword [rbp-16],rax
		jmp	..@j14
..@j13:
; [231] GetIID := nil;
%LINE 231+0
		mov	qword [rbp-16],0
..@j14:
; [233] end;
%LINE 233+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING:
..@c11:
; [236] begin
%LINE 236+0
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [240] if Assigned(IIDStrRef) then GetIIDStr := IIDStrRef^
%LINE 240+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax+24],0
		jne	..@j17
		jmp	..@j18
..@j17:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+24]
		mov	rax,qword [rax]
		mov	qword [rbp-16],rax
		jmp	..@j19
..@j18:
; [242] GetIIDStr := nil;
%LINE 242+0
		mov	qword [rbp-16],0
..@j19:
; [244] end;
%LINE 244+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c12:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c16:
; [251] begin
%LINE 251+0
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [252] if vParentRef <> nil then result := vParentRef^ else result := nil;
%LINE 252+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax+16],0
		jne	..@j22
		jmp	..@j23
..@j22:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+16]
		mov	rax,qword [rax]
		mov	qword [rbp-16],rax
		jmp	..@j24
..@j23:
		mov	qword [rbp-16],0
..@j24:
; [253] end;
%LINE 253+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c17:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c21:
; [260] begin
%LINE 260+0
		push	rbp
..@c23:
..@c24:
		mov	rbp,rsp
..@c25:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],1
		je	..@j27
		jmp	..@j28
..@j27:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j28:
		cmp	qword [rbp-16],0
		je	..@j29
		jmp	..@j30
..@j29:
		jmp	..@j25
..@j30:
..@j36:
		nop
..@j35:
		mov	qword [rbp-24],-1
; [261] end;
%LINE 261+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		jne	..@j38
		jmp	..@j39
..@j38:
		cmp	qword [rbp-8],0
		jne	..@j40
		jmp	..@j39
..@j40:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
..@j39:
%LINE 260+0
		jmp	..@j33
..@j32:
%LINE 261+0
		cmp	qword [rbp-8],0
		jne	..@j41
		jmp	..@j42
..@j41:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j42:
		call	fpc_reraise
%LINE 260+0
		call	FPC_DONEEXCEPTION
..@j43:
		nop
..@j33:
..@j25:
%LINE 261+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c22:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c26:
; [264] begin
%LINE 264+0
		push	rbp
..@c28:
..@c29:
		mov	rbp,rsp
..@c30:
		lea	rsp,[rsp-48]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],0
		jg	..@j46
		jmp	..@j47
..@j46:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
..@j47:
; [266] end;
%LINE 266+0
		cmp	qword [rbp-16],0
		jne	..@j48
		jmp	..@j49
..@j48:
		cmp	qword [rbp-8],0
		jne	..@j50
		jmp	..@j49
..@j50:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
..@j49:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c27:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c31:
; [271] begin
%LINE 271+0
		push	rbp
..@c33:
..@c34:
		mov	rbp,rsp
..@c35:
		lea	rsp,[rsp-64]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var p located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
; [272] GetMem(p, InstanceSize);
%LINE 272+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
		lea	rcx,[rbp-24]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [274] if p <> nil then InitInstance(p);
%LINE 274+0
		cmp	qword [rbp-24],0
		jne	..@j53
		jmp	..@j54
..@j53:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-8]
		call	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
..@j54:
; [275] result := TObject(p);
%LINE 275+0
		mov	rax,qword [rbp-24]
		mov	qword [rbp-16],rax
; [276] end;
%LINE 276+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c32:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c36:
; [279] begin
%LINE 279+0
		push	rbp
..@c38:
..@c39:
		mov	rbp,rsp
..@c40:
		lea	rsp,[rsp-48]
; Var $self located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [280] FreeMem(Pointer(Self));
%LINE 280+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [281] end;
%LINE 281+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c37:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT:
..@c41:
; [284] begin
%LINE 284+0
		push	rbp
..@c43:
..@c44:
		mov	rbp,rsp
..@c45:
		lea	rsp,[rsp-32]
; Var exceptobject located at rbp-8, size=OS_64
; Var exceptaddr located at rbp-16, size=OS_64
; Var $self located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_S32
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
; [285] result := 1;
%LINE 285+0
		mov	dword [rbp-28],1
; [286] end;
%LINE 286+0
		mov	eax,dword [rbp-28]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c42:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c46:
; [289] begin
%LINE 289+0
		push	rbp
..@c48:
..@c49:
		mov	rbp,rsp
..@c50:
		lea	rsp,[rsp-48]
; Var $self located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [291] if self <> nil then self.Destroy;
%LINE 291+0
		cmp	qword [rbp-8],0
		jne	..@j61
		jmp	..@j62
..@j61:
		mov	rax,qword [rbp-8]
		mov	rdx,1
		mov	rcx,qword [rbp-8]
		mov	r8,qword [rcx]
		mov	rcx,rax
		call	[r8+96]
..@j62:
; [292] end;
%LINE 292+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c47:

SECTION .text
	GLOBAL SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER:
..@c51:
; [301] begin
%LINE 301+0
		push	rbp
..@c53:
..@c54:
		mov	rbp,rsp
..@c55:
		lea	rsp,[rsp-48]
; Var objclass located at rbp-8, size=OS_64
; Var instance located at rbp-16, size=OS_64
; Var ovmt located at rbp-24, size=OS_64
; Var i located at rbp-28, size=OS_S32
; Var intftable located at rbp-40, size=OS_64
; Var Res located at rbp-48, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [302] ovmt := PVmt(objclass);
%LINE 302+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-24],rax
; [303] while assigned(ovmt) and {$ifdef VER3_0}(ovmt^.vIntfTable <> @emptyintf){$else}assigned(ovmt^.vIntfTable){$endif} do
%LINE 303+0
		jmp	..@j66
..@j65:
; [305] intftable:=ovmt^.vIntfTable;
%LINE 305+0
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax+80]
		mov	qword [rbp-40],rax
; [310] i:=intftable^.EntryCount;
%LINE 310+0
		mov	rax,qword [rbp-40]
		mov	eax,dword [rax]
		mov	dword [rbp-28],eax
; [311] Res:=@intftable^.Entries[0];
%LINE 311+0
		mov	rax,qword [rbp-40]
		lea	rax,[rax+8]
		mov	qword [rbp-48],rax
; [312] while i>0 do begin
%LINE 312+0
		jmp	..@j69
..@j68:
; [313] if Res^.IType = etStandard then
%LINE 313+0
		mov	rax,qword [rbp-48]
		cmp	dword [rax+32],0
		je	..@j71
		jmp	..@j72
..@j71:
; [314] ppointer(@(pbyte(instance)[Res^.IOffset]))^:=
%LINE 314+0
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rbp-48]
		mov	rax,qword [rax+16]
		lea	rdx,[rdx+rax*1]
; [315] pointer(Res^.VTable);
%LINE 315+0
		mov	rax,qword [rbp-48]
%LINE 314+0
		mov	rax,qword [rax+8]
		mov	qword [rdx],rax
..@j72:
; [316] inc(Res);
%LINE 316+0
		add	qword [rbp-48],40
; [317] dec(i);
%LINE 317+0
		dec	dword [rbp-28]
..@j69:
%LINE 312+0
		cmp	dword [rbp-28],0
		jg	..@j68
		jmp	..@j70
..@j70:
; [320] ovmt:=ovmt^.vParent;
%LINE 320+0
		mov	rax,qword [rbp-24]
		cmp	qword [rax+16],0
		jne	..@j73
		jmp	..@j74
..@j73:
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax+16]
		mov	rax,qword [rax]
		jmp	..@j75
..@j74:
		mov	rax,0
..@j75:
		mov	qword [rbp-24],rax
..@j66:
%LINE 303+0
		cmp	qword [rbp-24],0
		jne	..@j76
		jmp	..@j77
..@j76:
		mov	rax,qword [rbp-24]
		cmp	qword [rax+80],0
		jne	..@j78
		jmp	..@j77
..@j78:
		jmp	..@j65
..@j77:
		jmp	..@j67
..@j67:
; [322] end;
%LINE 322+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c52:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT:
..@c56:
; [331] begin
%LINE 331+0
		push	rbp
..@c58:
..@c59:
		mov	rbp,rsp
..@c60:
		lea	rsp,[rsp-64]
; Var Instance located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var vmt located at rbp-32, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [332] FillChar(Instance^, InstanceSize, 0);
%LINE 332+0
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
		mov	rcx,qword [rbp-8]
		mov	r8d,0
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; [333] PPointer(Instance)^ := Pointer(self);
%LINE 333+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	qword [rax],rdx
; [335] if PVmt(self)^.vIntfTable <> nil then
%LINE 335+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax+80],0
		jne	..@j81
		jmp	..@j82
..@j81:
; [336] InitInterfacePointers(self, Instance);
%LINE 336+0
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
..@j82:
; [345] result := TObject(Instance);
%LINE 345+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-24],rax
; [346] end;
%LINE 346+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c57:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS:
..@c61:
; [349] begin
%LINE 349+0
		push	rbp
..@c63:
..@c64:
		mov	rbp,rsp
..@c65:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [350] result := TClass(Pointer(Self));
%LINE 350+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-16],rax
; [351] end;
%LINE 351+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c62:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER:
..@c66:
; [354] begin
%LINE 354+0
		push	rbp
..@c68:
..@c69:
		mov	rbp,rsp
..@c70:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [355] result := PVmt(Self)^.vTypeInfo;
%LINE 355+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+56]
		mov	qword [rbp-16],rax
; [356] end;
%LINE 356+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c67:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING:
..@c71:
; [359] begin
%LINE 359+0
		push	rbp
..@c73:
..@c74:
		mov	rbp,rsp
..@c75:
		lea	rsp,[rsp-48]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [360] result := PVmt(Self)^.vClassName^;
%LINE 360+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rax+24]
		mov	rcx,qword [rbp-16]
		call	fpc_shortstr_to_shortstr
; [361] end;
%LINE 361+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c72:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS:
..@c76:
; [364] begin
%LINE 364+0
		push	rbp
..@c78:
..@c79:
		mov	rbp,rsp
..@c80:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [365] result := TClass(PVmt(Self)^.vParent);
%LINE 365+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax+16],0
		jne	..@j91
		jmp	..@j92
..@j91:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+16]
		mov	rax,qword [rax]
		jmp	..@j93
..@j92:
		mov	rax,0
..@j93:
		mov	qword [rbp-16],rax
; [366] end;
%LINE 366+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c77:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64:
..@c81:
; [369] begin
%LINE 369+0
		push	rbp
..@c83:
..@c84:
		mov	rbp,rsp
..@c85:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_S64
		mov	qword [rbp-8],rcx
; [370] result := PVmt(Self)^.vInstanceSize;
%LINE 370+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-16],rax
; [371] end;
%LINE 371+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c82:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN:
..@c86:
; [376] begin
%LINE 376+0
		push	rbp
..@c88:
..@c89:
		mov	rbp,rsp
..@c90:
		lea	rsp,[rsp-32]
; Var aclass located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
; Var vmt located at rbp-32, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [377] if aclass = nil then exit(false);
%LINE 377+0
		cmp	qword [rbp-8],0
		je	..@j98
		jmp	..@j99
..@j98:
		mov	byte [rbp-20],0
		jmp	..@j96
..@j99:
; [378] vmt := PVmt(Self);
%LINE 378+0
		mov	rax,qword [rbp-16]
		mov	qword [rbp-32],rax
; [379] while (vmt <> nil) and (vmt <> PVmt(aclass)) do vmt := vmt^.vParent;
%LINE 379+0
		jmp	..@j101
..@j100:
		mov	rax,qword [rbp-32]
		cmp	qword [rax+16],0
		jne	..@j103
		jmp	..@j104
..@j103:
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+16]
		mov	rax,qword [rax]
		jmp	..@j105
..@j104:
		mov	rax,0
..@j105:
		mov	qword [rbp-32],rax
..@j101:
		cmp	qword [rbp-32],0
		jne	..@j106
		jmp	..@j107
..@j106:
		mov	rax,qword [rbp-32]
		cmp	rax,qword [rbp-8]
		jne	..@j108
		jmp	..@j107
..@j108:
		jmp	..@j100
..@j107:
		jmp	..@j102
..@j102:
; [380] result := vmt = PVmt(aclass);
%LINE 380+0
		mov	rax,qword [rbp-32]
		cmp	rax,qword [rbp-8]
		sete	byte [rbp-20]
..@j96:
; [381] end;
%LINE 381+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c87:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c91:
; [384] begin
%LINE 384+0
		push	rbp
..@c93:
..@c94:
		mov	rbp,rsp
..@c95:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [385] end;
%LINE 385+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c92:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c96:
; [388] begin
%LINE 388+0
		push	rbp
..@c98:
..@c99:
		mov	rbp,rsp
..@c100:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [389] end;
%LINE 389+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c97:

SECTION .text
	GLOBAL SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
..@c101:
; [394] begin
%LINE 394+0
		push	rbp
..@c103:
..@c104:
		mov	rbp,rsp
..@c105:
		lea	rsp,[rsp-32]
; Var guid1 located at rbp-8, size=OS_64
; Var guid2 located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [396] (guid1.D1=guid2.D1) and
%LINE 396+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	eax,dword [rax]
		cmp	eax,dword [rdx]
		je	..@j115
		jmp	..@j116
..@j115:
; [397] (PDWORD(@guid1.D2)^=PDWORD(@guid2.D2)^) and
%LINE 397+0
		mov	rax,qword [rbp-8]
		lea	rcx,[rax+4]
		mov	rax,qword [rbp-16]
		lea	rdx,[rax+4]
		mov	eax,dword [rcx]
		cmp	eax,dword [rdx]
		je	..@j117
		jmp	..@j116
..@j117:
; [398] (PDWORD(@guid1.D4[0])^=PDWORD(@guid2.D4[0])^) and
%LINE 398+0
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+8]
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+8]
		mov	eax,dword [rdx]
		cmp	eax,dword [rcx]
		je	..@j118
		jmp	..@j116
..@j118:
; [399] (PDWORD(@guid1.D4[4])^=PDWORD(@guid2.D4[4])^);
%LINE 399+0
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+12]
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+12]
		mov	eax,dword [rdx]
		cmp	eax,dword [rcx]
		je	..@j119
		jmp	..@j116
..@j119:
; [395] result:=
%LINE 395+0
		mov	byte [rbp-20],1
		jmp	..@j120
..@j116:
		mov	byte [rbp-20],0
..@j120:
; [401] end;
%LINE 401+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c102:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
..@c106:
; [412] begin
%LINE 412+0
		push	rbp
..@c108:
..@c109:
		mov	rbp,rsp
..@c110:
		lea	rsp,[rsp-80]
; Var Instance located at rbp-8, size=OS_64
; Var IEntry located at rbp-16, size=OS_64
; Var obj located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_8
; Var Getter located at rbp-48, size=OS_128
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [413] Pointer(Obj) := nil;
%LINE 413+0
		mov	rax,qword [rbp-24]
		mov	qword [rax],0
; [414] Getter.Data := Instance;
%LINE 414+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-40],rax
; [415] if Assigned(IEntry) and Assigned(Instance) then case IEntry^.IType of
%LINE 415+0
		cmp	qword [rbp-16],0
		jne	..@j123
		jmp	..@j124
..@j123:
		cmp	qword [rbp-8],0
		jne	..@j125
		jmp	..@j124
..@j125:
		mov	rax,qword [rbp-16]
		mov	eax,dword [rax+32]
		test	eax,eax
		je	..@j128
		dec	eax
		je	..@j130
		dec	eax
		je	..@j132
		dec	eax
		je	..@j129
		dec	eax
		je	..@j131
		dec	eax
		je	..@j133
		dec	eax
		je	..@j129
		jmp	..@j127
..@j128:
; [417] Pointer(Obj) := pbyte(instance) + IEntry^.IOffset;
%LINE 417+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax+16]
		mov	rax,qword [rbp-8]
		lea	rdx,[rdx+rax]
		mov	rax,qword [rbp-24]
		mov	qword [rax],rdx
		jmp	..@j126
..@j129:
; [419] Pointer(obj) := PPointer(pbyte(Instance) + IEntry^.IOffset)^;
%LINE 419+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax+16]
		mov	rax,qword [rbp-8]
		lea	rax,[rdx+rax]
		mov	rdx,qword [rbp-24]
		mov	rax,qword [rax]
		mov	qword [rdx],rax
		jmp	..@j126
..@j130:
; [422] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
%LINE 422+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rax+16]
		mov	rax,qword [rdx]
		lea	rax,[rcx+rax]
		mov	rax,qword [rax]
		mov	qword [rbp-48],rax
; [423] TInterfaceGetter(Getter)(obj);
%LINE 423+0
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-40]
		call	[rbp-48]
		jmp	..@j126
..@j131:
; [427] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
%LINE 427+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rax+16]
		mov	rax,qword [rdx]
		lea	rax,[rcx+rax]
		mov	rax,qword [rax]
		mov	qword [rbp-48],rax
; [428] TObject(obj) := TClassGetter(Getter)();
%LINE 428+0
		mov	rcx,qword [rbp-40]
		call	[rbp-48]
		mov	rdx,qword [rbp-24]
		mov	qword [rdx],rax
		jmp	..@j126
..@j132:
; [432] Getter.code := IEntry^.IOffsetAsCodePtr;
%LINE 432+0
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax+16]
		mov	qword [rbp-48],rax
; [433] TInterfaceGetter(Getter)(obj);
%LINE 433+0
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-40]
		call	[rbp-48]
		jmp	..@j126
..@j133:
; [437] Getter.code := IEntry^.IOffsetAsCodePtr;
%LINE 437+0
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax+16]
		mov	qword [rbp-48],rax
; [438] TObject(obj) := TClassGetter(Getter)();
%LINE 438+0
		mov	rcx,qword [rbp-40]
		call	[rbp-48]
		mov	rdx,qword [rbp-24]
		mov	qword [rdx],rax
		jmp	..@j126
..@j127:
..@j126:
..@j124:
; [441] result := assigned(pointer(obj));
%LINE 441+0
		mov	rax,qword [rbp-24]
		cmp	qword [rax],0
		setne	byte [rbp-28]
; [442] end;
%LINE 442+0
		mov	al,byte [rbp-28]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c107:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN:
..@c111:
; [453] begin
%LINE 453+0
		push	rbp
..@c113:
..@c114:
		mov	rbp,rsp
..@c115:
		lea	rsp,[rsp-80]
; Var objclass located at rbp-8, size=OS_64
; Var iid located at rbp-16, size=OS_64
; Var obj located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_8
; Var IEntry located at rbp-40, size=OS_64
; Var Instance located at rbp-48, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [454] if IsGUIDEqual(IObjectInstance, iid) then begin
%LINE 454+0
		mov	rax,qword [rbp-16]
		mov	rdx,rax
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j136
		jmp	..@j137
..@j136:
; [455] TObject(Obj) := objclass;
%LINE 455+0
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-8]
		mov	qword [rax],rdx
; [456] Result := true;
%LINE 456+0
		mov	byte [rbp-28],1
; [457] Exit;
%LINE 457+0
		jmp	..@j134
..@j137:
; [460] Instance := objclass;
%LINE 460+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-48],rax
..@j138:
; [462] IEntry := Instance.GetInterfaceEntry(iid);
%LINE 462+0
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-48]
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	qword [rbp-40],rax
; [463] result := GetInterfaceByEntry(Instance, IEntry, obj);
%LINE 463+0
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-48]
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	byte [rbp-28],al
; [465] if (not result) or
%LINE 465+0
		cmp	byte [rbp-28],0
		je	..@j141
		jmp	..@j142
..@j142:
; [466] (IEntry^.IType in [etStandard, etFieldValue,
%LINE 466+0
		mov	rax,qword [rbp-40]
		mov	eax,dword [rax+32]
		cmp	eax,4
		jb	..@j144
..@j144:
		jc	..@j141
		jmp	..@j143
..@j141:
; [467] etStaticMethodResult, etVirtualMethodResult]) then Break;
%LINE 467+0
		jmp	..@j140
..@j143:
; [470] Instance := TObject(obj);
%LINE 470+0
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	qword [rbp-48],rax
; [471] until false;
%LINE 471+0
		jmp	..@j138
..@j140:
; [474] if result and (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._AddRef;
%LINE 474+0
		cmp	byte [rbp-28],0
		jne	..@j145
		jmp	..@j146
..@j145:
		mov	rax,qword [rbp-40]
		mov	eax,dword [rax+32]
		cmp	eax,0
		je	..@j148
		cmp	eax,3
		je	..@j148
..@j148:
		je	..@j147
		jmp	..@j146
..@j147:
		mov	rax,qword [rbp-24]
		mov	rcx,qword [rax]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	rax,qword [rax]
		call	[rax+8]
..@j146:
..@j134:
; [475] end;
%LINE 475+0
		mov	al,byte [rbp-28]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c112:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN:
..@c116:
; [477] begin
%LINE 477+0
		push	rbp
..@c118:
..@c119:
		mov	rbp,rsp
..@c120:
		lea	rsp,[rsp-64]
; Var iid located at rbp-8, size=OS_64
; Var obj located at rbp-16, size=OS_64
; Var $self located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_8
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
; [478] Exit(GetInterface_(self, iid, obj));
%LINE 478+0
		mov	rax,qword [rbp-16]
		mov	r8,rax
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-24]
		call	SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
		mov	byte [rbp-28],al
		jmp	..@j149
..@j149:
; [479] end;
%LINE 479+0
		mov	al,byte [rbp-28]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c117:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN:
..@c121:
; [494] begin
%LINE 494+0
		push	rbp
..@c123:
..@c124:
		mov	rbp,rsp
..@c125:
		lea	rsp,[rsp-80]
; Var objclass located at rbp-8, size=OS_64
; Var iid located at rbp-16, size=OS_64
; Var obj located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_8
; Var IEntry located at rbp-40, size=OS_64
; Var Instance located at rbp-48, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [495] if IsGUIDEqual(IObjectInstance, iid) then begin
%LINE 495+0
		mov	rax,qword [rbp-16]
		mov	rdx,rax
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j153
		jmp	..@j154
..@j153:
; [496] TObject(Obj) := objclass;
%LINE 496+0
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-8]
		mov	qword [rax],rdx
; [497] Result := true;
%LINE 497+0
		mov	byte [rbp-28],1
; [498] Exit;
%LINE 498+0
		jmp	..@j151
..@j154:
; [501] Instance := objclass;
%LINE 501+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-48],rax
..@j155:
; [503] IEntry := Instance.GetInterfaceEntry(iid);
%LINE 503+0
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-48]
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	qword [rbp-40],rax
; [504] result := GetInterfaceByEntry(Instance, IEntry, obj);
%LINE 504+0
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-48]
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	byte [rbp-28],al
; [506] if (not result) or
%LINE 506+0
		cmp	byte [rbp-28],0
		je	..@j158
		jmp	..@j159
..@j159:
; [507] (IEntry^.IType in [etStandard, etFieldValue,
%LINE 507+0
		mov	rax,qword [rbp-40]
		mov	eax,dword [rax+32]
		cmp	eax,4
		jb	..@j161
..@j161:
		jc	..@j158
		jmp	..@j160
..@j158:
; [508] etStaticMethodResult, etVirtualMethodResult]) then Break;
%LINE 508+0
		jmp	..@j157
..@j160:
; [511] Instance := TObject(obj);
%LINE 511+0
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	qword [rbp-48],rax
; [512] until false;
%LINE 512+0
		jmp	..@j155
..@j157:
; [515] if result and not (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._Release;
%LINE 515+0
		cmp	byte [rbp-28],0
		jne	..@j162
		jmp	..@j163
..@j162:
		mov	rax,qword [rbp-40]
		mov	eax,dword [rax+32]
		cmp	eax,0
		je	..@j165
		cmp	eax,3
		je	..@j165
..@j165:
		jne	..@j164
		jmp	..@j163
..@j164:
		mov	rax,qword [rbp-24]
		mov	rcx,qword [rax]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	rax,qword [rax]
		call	[rax+16]
..@j163:
..@j151:
; [516] end;
%LINE 516+0
		mov	al,byte [rbp-28]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c122:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN:
..@c126:
; [518] begin
%LINE 518+0
		push	rbp
..@c128:
..@c129:
		mov	rbp,rsp
..@c130:
		lea	rsp,[rsp-64]
; Var iid located at rbp-8, size=OS_64
; Var obj located at rbp-16, size=OS_64
; Var $self located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_8
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
; [519] Exit(GetInterfaceWeak_(self, iid, obj));
%LINE 519+0
		mov	rax,qword [rbp-16]
		mov	r8,rax
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-24]
		call	SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
		mov	byte [rbp-28],al
		jmp	..@j166
..@j166:
; [520] end;
%LINE 520+0
		mov	al,byte [rbp-28]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c127:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY:
..@c131:
; Temps allocated between rbp-56 and rbp-48
; [536] begin
%LINE 536+0
		push	rbp
..@c133:
..@c134:
		mov	rbp,rsp
..@c135:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
; Var objclass located at rbp-8, size=OS_64
; Var iid located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var i located at rbp-28, size=OS_S32
; Var intftable located at rbp-40, size=OS_64
; Var ovmt located at rbp-48, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [537] ovmt := PVmt(objclass);
%LINE 537+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-48],rax
; [538] while Assigned(ovmt) and Assigned(ovmt^.vIntftable) do begin
%LINE 538+0
		jmp	..@j171
..@j170:
; [539] intftable := ovmt^.vIntfTable;
%LINE 539+0
		mov	rax,qword [rbp-48]
		mov	rax,qword [rax+80]
		mov	qword [rbp-40],rax
; [540] for i := 0 to intftable^.EntryCount-1 do begin
%LINE 540+0
		mov	rax,qword [rbp-40]
		mov	rax,qword [rax]
		lea	rbx,[rax-1]
		cmp	ebx,0
		jge	..@j173
		jmp	..@j174
..@j173:
		mov	dword [rbp-28],-1
..@j175:
		mov	eax,dword [rbp-28]
		lea	eax,[eax+1]
		mov	dword [rbp-28],eax
; [541] result := @intftable^.Entries[i];
%LINE 541+0
		mov	rdx,qword [rbp-40]
		mov	eax,dword [rbp-28]
		imul	rax,rax,40
		lea	rax,[rdx+rax+8]
		mov	qword [rbp-24],rax
; [542] if assigned(Result^.iid) and IsGUIDEqual(Result^.iid^, iid) then Exit;
%LINE 542+0
		mov	rax,qword [rbp-24]
		cmp	qword [rax],0
		jne	..@j178
		jmp	..@j179
..@j178:
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	rax,qword [rax]
		jmp	..@j180
..@j179:
		mov	rax,0
..@j180:
		test	rax,rax
		jne	..@j181
		jmp	..@j182
..@j181:
		mov	rax,qword [rbp-24]
		cmp	qword [rax],0
		jne	..@j184
		jmp	..@j185
..@j184:
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	rcx,qword [rax]
		jmp	..@j186
..@j185:
		mov	rcx,0
..@j186:
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j183
		jmp	..@j182
..@j183:
		jmp	..@j168
..@j182:
%LINE 540+0
		cmp	ebx,dword [rbp-28]
		jle	..@j177
		jmp	..@j175
..@j177:
..@j174:
; [544] ovmt := ovmt^.vParent;
%LINE 544+0
		mov	rax,qword [rbp-48]
		cmp	qword [rax+16],0
		jne	..@j187
		jmp	..@j188
..@j187:
		mov	rax,qword [rbp-48]
		mov	rax,qword [rax+16]
		mov	rax,qword [rax]
		jmp	..@j189
..@j188:
		mov	rax,0
..@j189:
		mov	qword [rbp-48],rax
..@j171:
%LINE 538+0
		cmp	qword [rbp-48],0
		jne	..@j190
		jmp	..@j191
..@j190:
		mov	rax,qword [rbp-48]
		cmp	qword [rax+80],0
		jne	..@j192
		jmp	..@j191
..@j192:
		jmp	..@j170
..@j191:
		jmp	..@j172
..@j172:
; [546] result := nil;
%LINE 546+0
		mov	qword [rbp-24],0
..@j168:
; [547] end;
%LINE 547+0
		mov	rax,qword [rbp-24]
		mov	rbx,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c132:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY:
..@c136:
; [549] begin
%LINE 549+0
		push	rbp
..@c138:
..@c139:
		mov	rbp,rsp
..@c140:
		lea	rsp,[rsp-64]
; Var iid located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [550] Exit(GetInterfaceEntry_(self, iid));
%LINE 550+0
		mov	rax,qword [rbp-8]
		mov	rdx,rax
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
		mov	qword [rbp-24],rax
		jmp	..@j193
..@j193:
; [551] end;
%LINE 551+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c137:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT:
..@c141:
; [567] begin
%LINE 567+0
		push	rbp
..@c143:
..@c144:
		mov	rbp,rsp
..@c145:
		lea	rsp,[rsp-64]
; Var iid located at rbp-8, size=OS_64
; Var obj located at rbp-16, size=OS_64
; Var $self located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_S32
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
; [568] if GetInterface(iid, obj) then result := S_OK else result := LongInt(E_NOINTERFACE);
%LINE 568+0
		mov	rax,qword [rbp-16]
		mov	r8,rax
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j197
		jmp	..@j198
..@j197:
		mov	dword [rbp-28],0
		jmp	..@j199
..@j198:
		mov	dword [rbp-28],-2147467262
..@j199:
; [569] end;
%LINE 569+0
		mov	eax,dword [rbp-28]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c142:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
..@c146:
; [572] begin
%LINE 572+0
		push	rbp
..@c148:
..@c149:
		mov	rbp,rsp
..@c150:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_S32
		mov	qword [rbp-8],rcx
; [574] inc(FRefCount);
%LINE 574+0
		mov	rax,qword [rbp-8]
		inc	dword [rax+8]
; [575] result := FRefCount;
%LINE 575+0
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax+8]
		mov	dword [rbp-12],eax
; [576] end;
%LINE 576+0
		mov	eax,dword [rbp-12]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c147:

SECTION .text
SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000241:
..@c151:
; [596] end;
%LINE 596+0
		push	rbp
..@c153:
..@c154:
		mov	rbp,rcx
..@c155:
		lea	rsp,[rsp-32]
; [579] begin
%LINE 579+0
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c152:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
..@c156:
; Temps allocated between rbp-536 and rbp-12
		push	rbp
..@c158:
..@c159:
		mov	rbp,rsp
..@c160:
		lea	rsp,[rsp-576]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-24],0
..@j210:
		nop
..@j206:
; [581] dec(FRefCount);
%LINE 581+0
		mov	rax,qword [rbp-8]
		dec	dword [rax+8]
; [582] result := FRefCount;
%LINE 582+0
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax+8]
		mov	dword [rbp-12],eax
; [583] if result = 0 then begin
%LINE 583+0
		cmp	dword [rbp-12],0
		je	..@j211
		jmp	..@j212
..@j211:
; [585] inc(FDestroyCount);
%LINE 585+0
		mov	rax,qword [rbp-8]
		inc	dword [rax+12]
; [586] if FDestroyCount = 1 then begin
%LINE 586+0
		mov	rax,qword [rbp-8]
		cmp	dword [rax+12],1
		je	..@j213
		jmp	..@j214
..@j213:
; [587] if copy(ClassName, 1, 9) = '$Capturer' then begin
%LINE 587+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		lea	rdx,[rbp-536]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	rdx,[rbp-536]
		mov	r9,9
		mov	r8,1
		lea	rcx,[rbp-280]
		call	fpc_shortstr_copy
		lea	rdx,[rbp-280]
		mov	r8d,0
		lea	rcx,[rbp-24]
		call	fpc_shortstr_to_ansistr
		mov	rcx,qword [rbp-24]
		lea	rdx,[..@d2]
		call	fpc_ansistr_compare_equal
		test	rax,rax
		je	..@j215
		jmp	..@j216
..@j215:
; [590] exit;
%LINE 590+0
		jmp	..@j208
..@j216:
; [593] self.Destroy;
%LINE 593+0
		mov	rcx,qword [rbp-8]
		mov	rdx,1
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		call	[rax+96]
..@j214:
..@j212:
..@j208:
%LINE 579+0
		nop
..@j207:
		mov	rcx,rbp
		call	SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000241
%LINE 596+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c157:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY
SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY:
..@c161:
; [599] begin
%LINE 599+0
		push	rbp
..@c163:
..@c164:
		mov	rbp,rsp
..@c165:
		lea	rsp,[rsp-48]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],0
		jg	..@j219
		jmp	..@j220
..@j219:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
..@j220:
; [600] FRefCount := 0;
%LINE 600+0
		mov	rax,qword [rbp-16]
		mov	dword [rax+8],0
; [601] FDestroyCount := 0;
%LINE 601+0
		mov	rax,qword [rbp-16]
		mov	dword [rax+12],0
; [602] inherited Destroy;
%LINE 602+0
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [603] end;
%LINE 603+0
		cmp	qword [rbp-16],0
		jne	..@j221
		jmp	..@j222
..@j221:
		cmp	qword [rbp-8],0
		jne	..@j223
		jmp	..@j222
..@j223:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
..@j222:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c162:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION:
..@c166:
; [606] begin
%LINE 606+0
		push	rbp
..@c168:
..@c169:
		mov	rbp,rsp
..@c170:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [609] dec(FRefCount);
%LINE 609+0
		mov	rax,qword [rbp-8]
		dec	dword [rax+8]
; [610] end;
%LINE 610+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c167:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION:
..@c171:
; [613] begin
%LINE 613+0
		push	rbp
..@c173:
..@c174:
		mov	rbp,rsp
..@c175:
		lea	rsp,[rsp-48]
; Var $self located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [614] if FRefCount <> 0 then HandleError(204);
%LINE 614+0
		mov	rax,qword [rbp-8]
		cmp	dword [rax+8],0
		jne	..@j228
		jmp	..@j229
..@j228:
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j229:
; [615] end;
%LINE 615+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c172:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c176:
; [618] begin
%LINE 618+0
		push	rbp
..@c178:
..@c179:
		mov	rbp,rsp
..@c180:
		lea	rsp,[rsp-48]
; Var $self located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [619] result := inherited NewInstance;
%LINE 619+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
		mov	qword [rbp-16],rax
; [620] if result <> nil then TInterfacedObject(result).FRefCount := 1;
%LINE 620+0
		cmp	qword [rbp-16],0
		jne	..@j232
		jmp	..@j233
..@j232:
		mov	rax,qword [rbp-16]
		mov	dword [rax+8],1
..@j233:
; [621] end;
%LINE 621+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c177:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c181:
; [628] begin
%LINE 628+0
		push	rbp
..@c183:
..@c184:
		mov	rbp,rsp
..@c185:
		lea	rsp,[rsp-32]
; Var aLeft located at rbp-8, size=OS_64
; Var aRight located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [629] result := (aLeft.Data = aRight.Data) and (aLeft.Code = aRight.Code);
%LINE 629+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		je	..@j236
		jmp	..@j237
..@j236:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		je	..@j238
		jmp	..@j237
..@j238:
		mov	byte [rbp-20],1
		jmp	..@j239
..@j237:
		mov	byte [rbp-20],0
..@j239:
; [630] end;
%LINE 630+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c182:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c186:
; [633] begin
%LINE 633+0
		push	rbp
..@c188:
..@c189:
		mov	rbp,rsp
..@c190:
		lea	rsp,[rsp-32]
; Var aLeft located at rbp-8, size=OS_64
; Var aRight located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [634] result := (aLeft.Data <> aRight.Data) or (aLeft.Code <> aRight.Code);
%LINE 634+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		jne	..@j242
		jmp	..@j243
..@j243:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		jne	..@j242
		jmp	..@j244
..@j242:
		mov	byte [rbp-20],1
		jmp	..@j245
..@j244:
		mov	byte [rbp-20],0
..@j245:
; [635] end;
%LINE 635+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c187:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN:
..@c191:
; [638] begin
%LINE 638+0
		push	rbp
..@c193:
..@c194:
		mov	rbp,rsp
..@c195:
		lea	rsp,[rsp-32]
; Var aLeft located at rbp-8, size=OS_64
; Var aRight located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [639] result := (PtrUInt(aLeft.Data) > PtrUInt(aRight.Data)) or
%LINE 639+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		ja	..@j248
		jmp	..@j249
..@j249:
; [640] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) > PtrUInt(aRight.Code)));
%LINE 640+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		je	..@j251
		jmp	..@j252
..@j251:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		ja	..@j253
		jmp	..@j252
..@j253:
		jmp	..@j248
..@j252:
		jmp	..@j250
..@j248:
%LINE 639+0
		mov	byte [rbp-20],1
		jmp	..@j254
..@j250:
		mov	byte [rbp-20],0
..@j254:
; [641] end;
%LINE 641+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c192:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c196:
; [644] begin
%LINE 644+0
		push	rbp
..@c198:
..@c199:
		mov	rbp,rsp
..@c200:
		lea	rsp,[rsp-32]
; Var aLeft located at rbp-8, size=OS_64
; Var aRight located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [645] result := (aLeft > aRight) or (aLeft = aRight);
%LINE 645+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		ja	..@j257
		jmp	..@j258
..@j258:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		je	..@j260
		jmp	..@j261
..@j260:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		ja	..@j262
		jmp	..@j261
..@j262:
		jmp	..@j257
..@j261:
		jmp	..@j259
..@j257:
		mov	al,1
		jmp	..@j263
..@j259:
		mov	al,0
..@j263:
		test	al,al
		jne	..@j264
		jmp	..@j265
..@j265:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		je	..@j267
		jmp	..@j268
..@j267:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		je	..@j269
		jmp	..@j268
..@j269:
		mov	al,1
		jmp	..@j270
..@j268:
		mov	al,0
..@j270:
		test	al,al
		jne	..@j264
		jmp	..@j266
..@j264:
		mov	byte [rbp-20],1
		jmp	..@j271
..@j266:
		mov	byte [rbp-20],0
..@j271:
; [646] end;
%LINE 646+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c197:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN:
..@c201:
; [649] begin
%LINE 649+0
		push	rbp
..@c203:
..@c204:
		mov	rbp,rsp
..@c205:
		lea	rsp,[rsp-32]
; Var aLeft located at rbp-8, size=OS_64
; Var aRight located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [650] Result := (PtrUInt(aLeft.Data) < PtrUInt(aRight.Data)) or
%LINE 650+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		jb	..@j274
		jmp	..@j275
..@j275:
; [651] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) < PtrUInt(aRight.Code)));
%LINE 651+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		je	..@j277
		jmp	..@j278
..@j277:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		jb	..@j279
		jmp	..@j278
..@j279:
		jmp	..@j274
..@j278:
		jmp	..@j276
..@j274:
%LINE 650+0
		mov	byte [rbp-20],1
		jmp	..@j280
..@j276:
		mov	byte [rbp-20],0
..@j280:
; [652] end;
%LINE 652+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c202:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c206:
; [655] begin
%LINE 655+0
		push	rbp
..@c208:
..@c209:
		mov	rbp,rsp
..@c210:
		lea	rsp,[rsp-32]
; Var aLeft located at rbp-8, size=OS_64
; Var aRight located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [656] result := (aLeft < aRight) or (aLeft = aRight);
%LINE 656+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		jb	..@j283
		jmp	..@j284
..@j284:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		je	..@j286
		jmp	..@j287
..@j286:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		jb	..@j288
		jmp	..@j287
..@j288:
		jmp	..@j283
..@j287:
		jmp	..@j285
..@j283:
		mov	al,1
		jmp	..@j289
..@j285:
		mov	al,0
..@j289:
		test	al,al
		jne	..@j290
		jmp	..@j291
..@j291:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rdx+8]
		je	..@j293
		jmp	..@j294
..@j293:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rax]
		cmp	rax,qword [rdx]
		je	..@j295
		jmp	..@j294
..@j295:
		mov	al,1
		jmp	..@j296
..@j294:
		mov	al,0
..@j296:
		test	al,al
		jne	..@j290
		jmp	..@j292
..@j290:
		mov	byte [rbp-20],1
		jmp	..@j297
..@j292:
		mov	byte [rbp-20],0
..@j297:
; [657] end;
%LINE 657+0
		mov	al,byte [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c207:

SECTION .text
	GLOBAL fpc_intf_assign
fpc_intf_assign:
	GLOBAL FPC_INTF_ASSIGN
FPC_INTF_ASSIGN:
..@c211:
; [664] begin
%LINE 664+0
		push	rbp
..@c213:
..@c214:
		mov	rbp,rsp
..@c215:
		lea	rsp,[rsp-48]
; Var d located at rbp-8, size=OS_64
; Var s located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [665] if s <> nil then IUnknown(s)._AddRef;
%LINE 665+0
		cmp	qword [rbp-16],0
		jne	..@j300
		jmp	..@j301
..@j300:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+8]
..@j301:
; [666] if d <> nil then IUnknown(d)._Release;
%LINE 666+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		jne	..@j302
		jmp	..@j303
..@j302:
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rax,qword [rax]
		call	[rax+16]
..@j303:
; [667] d := s;
%LINE 667+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	qword [rax],rdx
; [668] end;
%LINE 668+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c212:

SECTION .text
	GLOBAL SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN
SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN:
..@c216:
; [675] begin
%LINE 675+0
		push	rbp
..@c218:
..@c219:
		mov	rbp,rsp
..@c220:
		lea	rsp,[rsp-80]
; Var s located at rbp-8, size=OS_64
; Var iid located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var tmpi located at rbp-32, size=OS_64
; Var tmpi2 located at rbp-40, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
; [676] if s = nil then exit(nil);
%LINE 676+0
		cmp	qword [rbp-8],0
		je	..@j306
		jmp	..@j307
..@j306:
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_intf_assign
		jmp	..@j304
..@j307:
; [677] tmpi := nil;
%LINE 677+0
		mov	qword [rbp-32],0
; [678] tmpi2 := nil;
%LINE 678+0
		mov	qword [rbp-40],0
; [679] if not ((TObject(s).GetInterfaceWeak(IUnknown, tmpi2) and (IUnknown(tmpi2).QueryInterface(iid, tmpi) = S_OK)) or TObject(s).GetInterface(iid, tmpi)) then
%LINE 679+0
		lea	rdx,[_$SYSTEM$_Ld3]
		lea	r8,[rbp-40]
		mov	rcx,qword [rbp-8]
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j308
		jmp	..@j309
..@j308:
		mov	rdx,qword [rbp-16]
		lea	r8,[rbp-32]
		mov	rcx,qword [rbp-40]
		mov	rax,qword [rbp-40]
		mov	rax,qword [rax]
		call	[rax]
		test	eax,eax
		je	..@j310
		jmp	..@j309
..@j309:
		mov	rdx,qword [rbp-16]
		lea	r8,[rbp-32]
		mov	rcx,qword [rbp-8]
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j310
		jmp	..@j311
..@j311:
; [680] HandleError(219);
%LINE 680+0
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j310:
; [681] result := nil;
%LINE 681+0
		mov	rcx,qword [rbp-24]
		mov	rdx,0
		call	fpc_intf_assign
; [682] pointer(result) := tmpi;
%LINE 682+0
		mov	rdx,qword [rbp-24]
		mov	rax,qword [rbp-32]
		mov	qword [rdx],rax
..@j304:
; [683] end;
%LINE 683+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c217:

SECTION .text
	GLOBAL fpc_class_as_intf
fpc_class_as_intf:
..@c221:
; [685] begin
%LINE 685+0
		push	rbp
..@c223:
..@c224:
		mov	rbp,rsp
..@c225:
		lea	rsp,[rsp-32]
; Var s located at rbp-8, size=OS_64
; Var iid located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
; [686] end;
%LINE 686+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c222:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER:
..@c226:
; [700] begin
%LINE 700+0
		push	rbp
..@c228:
..@c229:
		mov	rbp,rsp
..@c230:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var aclass located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var tmpo located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [701] if s = nil then exit(nil);
%LINE 701+0
		cmp	qword [rbp-8],0
		je	..@j316
		jmp	..@j317
..@j316:
		mov	qword [rbp-24],0
		jmp	..@j314
..@j317:
; [702] if not ((IUnknown(s).QueryInterface(IObjectInstance, tmpo) = S_OK) and tmpo.InheritsFrom(aclass)) then
%LINE 702+0
		lea	rax,[rbp-32]
		lea	rdx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		mov	rcx,qword [rbp-8]
		mov	r8,qword [rbp-8]
		mov	r9,qword [r8]
		mov	r8,rax
		call	[r9]
		test	eax,eax
		je	..@j318
		jmp	..@j319
..@j318:
		mov	rax,qword [rbp-32]
		mov	rcx,qword [rax]
		mov	rdx,qword [rbp-16]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j320
		jmp	..@j319
..@j319:
; [703] HandleError(219);
%LINE 703+0
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j320:
; [704] result := tmpo;
%LINE 704+0
		mov	rax,qword [rbp-32]
		mov	qword [rbp-24],rax
..@j314:
; [705] end;
%LINE 705+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c227:

SECTION .text
	GLOBAL fpc_intf_as_class
fpc_intf_as_class:
	GLOBAL FPC_INTF_AS_CLASS
FPC_INTF_AS_CLASS:
..@c231:
; [707] begin
%LINE 707+0
		push	rbp
..@c233:
..@c234:
		mov	rbp,rsp
..@c235:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var aclass located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [708] Exit(fpcintfasclass(s, aclass));
%LINE 708+0
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	rdx,rax
		call	SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
		mov	qword [rbp-24],rax
		jmp	..@j321
..@j321:
; [709] end;
%LINE 709+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c232:

SECTION .text
	GLOBAL fpc_intf_cast
fpc_intf_cast:
	GLOBAL FPC_INTF_CAST
FPC_INTF_CAST:
..@c236:
; [720] begin
%LINE 720+0
		push	rbp
..@c238:
..@c239:
		mov	rbp,rsp
..@c240:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var iid located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
; [721] msgdebug('@@todo: fpc_intf_cast');
%LINE 721+0
		lea	rax,[..@d4]
		mov	rcx,rax
		call	SYSTEM_$$_MSGDEBUG$ANSISTRING
; [722] end;
%LINE 722+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c237:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFDECRREF$POINTER
SYSTEM_$$_FPCINTFDECRREF$POINTER:
..@c241:
; [726] begin
%LINE 726+0
		push	rbp
..@c243:
..@c244:
		mov	rbp,rsp
..@c245:
		lea	rsp,[rsp-48]
; Var i located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [727] if i <> nil then begin
%LINE 727+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		jne	..@j327
		jmp	..@j328
..@j327:
; [728] IUnknown(i)._Release;
%LINE 728+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rax,qword [rax]
		call	[rax+16]
; [729] i := nil;
%LINE 729+0
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
..@j328:
; [731] end;
%LINE 731+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c242:

SECTION .text
	GLOBAL fpc_intf_decr_ref
fpc_intf_decr_ref:
	GLOBAL FPC_INTF_DECR_REF
FPC_INTF_DECR_REF:
..@c246:
; [733] begin
%LINE 733+0
		push	rbp
..@c248:
..@c249:
		mov	rbp,rsp
..@c250:
		lea	rsp,[rsp-48]
; Var i located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [734] fpcintfdecrref(i);
%LINE 734+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FPCINTFDECRREF$POINTER
; [735] end;
%LINE 735+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c247:

SECTION .text
	GLOBAL fpc_intf_incr_ref
fpc_intf_incr_ref:
	GLOBAL FPC_INTF_INCR_REF
FPC_INTF_INCR_REF:
..@c251:
; [748] begin
%LINE 748+0
		push	rbp
..@c253:
..@c254:
		mov	rbp,rsp
..@c255:
		lea	rsp,[rsp-48]
; Var i located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [749] if i <> nil then IUnknown(i)._AddRef;
%LINE 749+0
		cmp	qword [rbp-8],0
		jne	..@j333
		jmp	..@j334
..@j333:
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+8]
..@j334:
; [750] end;
%LINE 750+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c252:

SECTION .text
	GLOBAL SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
..@c256:
; Temps allocated between rbp-88 and rbp-80
; [exceptions.inc]
; [175] begin
%LINE 175+0 exceptions.inc
		push	rbp
..@c258:
..@c259:
		mov	rbp,rsp
..@c260:
		lea	rsp,[rsp-128]
		mov	qword [rbp-88],rbx
; Var rec located at rbp-8, size=OS_64
; Var imagebase located at rbp-16, size=OS_64
; Var filterRva located at rbp-24, size=OS_32
; Var errcode located at rbp-32, size=OS_S32
; Var $result located at rbp-40, size=OS_64
; Var exclass located at rbp-48, size=OS_64
; Var i located at rbp-52, size=OS_S32
; Var filter located at rbp-64, size=OS_64
; Var p located at rbp-72, size=OS_64
; Var curfilt located at rbp-80, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-24],r8d
		mov	dword [rbp-32],r9d
; [176] result := nil;
%LINE 176+0
		mov	qword [rbp-40],0
; [178] if rec.ExceptionCode = FPC_EXCEPTION_CODE then
%LINE 178+0
		mov	rax,qword [rbp-8]
		cmp	dword [rax],-532262845
		je	..@j337
		jmp	..@j338
..@j337:
; [179] TObject(rec.ExceptionInformation[1]).ClassType
%LINE 179+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+40]
		mov	rcx,qword [rax]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
		jmp	..@j339
..@j338:
; [180] else if ExceptClsProc <> nil then begin
%LINE 180+0
		cmp	qword [TC_$SYSTEM_$$_EXCEPTCLSPROC],0
		jne	..@j340
		jmp	..@j341
..@j340:
; [181] exclass := TClass(TExceptClsProc(ExceptClsProc)(errcode));
%LINE 181+0
		mov	ecx,dword [rbp-32]
		call	TC_$SYSTEM_$$_EXCEPTCLSPROC
		mov	qword [rbp-48],rax
		jmp	..@j342
..@j341:
; [183] exit; // cant proceed
%LINE 183+0
		jmp	..@j335
..@j342:
..@j339:
; [186] filter := pointer(imagebase+filterRva);
%LINE 186+0
		mov	eax,dword [rbp-24]
		add	rax,qword [rbp-16]
		mov	qword [rbp-64],rax
; [187] for i := 0 to PLongint(filter)^-1 do begin
%LINE 187+0
		mov	rax,qword [rbp-64]
		mov	eax,dword [rax]
		lea	ebx,[eax-1]
		cmp	ebx,0
		jge	..@j343
		jmp	..@j344
..@j343:
		mov	dword [rbp-52],-1
..@j345:
		mov	eax,dword [rbp-52]
		lea	eax,[eax+1]
		mov	dword [rbp-52],eax
; [188] curfilt := @PFilterRec(filter+sizeof(LongInt))[i];
%LINE 188+0
		mov	rax,qword [rbp-64]
		lea	rdx,[rax+4]
		movsxd	rax,dword [rbp-52]
		lea	rax,[rdx+rax*8]
		mov	qword [rbp-80],rax
; [190] p := pointer(imagebase+curfilt^.RvaHandler);
%LINE 190+0
		mov	rax,qword [rbp-80]
		mov	eax,dword [rax+4]
		add	rax,qword [rbp-16]
		mov	qword [rbp-72],rax
; [192] if curfilt^.RvaClass = $FFFFFFFF then exit(p);
%LINE 192+0
		mov	rax,qword [rbp-80]
		cmp	dword [rax],-1
		je	..@j348
		jmp	..@j349
..@j348:
		mov	rax,qword [rbp-72]
		mov	qword [rbp-40],rax
		jmp	..@j335
..@j349:
; [195] if exclass.InheritsFrom(TClass(imagebase+curfilt^.RvaClass)) then exit(p);
%LINE 195+0
		mov	rax,qword [rbp-80]
		mov	edx,dword [rax]
		add	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-48]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j350
		jmp	..@j351
..@j350:
		mov	rax,qword [rbp-72]
		mov	qword [rbp-40],rax
		jmp	..@j335
..@j351:
%LINE 187+0
		cmp	ebx,dword [rbp-52]
		jle	..@j347
		jmp	..@j345
..@j347:
..@j344:
..@j335:
; [201] end;
%LINE 201+0
		mov	rax,qword [rbp-40]
		mov	rbx,qword [rbp-88]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c257:

SECTION .text
SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
..@c261:
; [207] begin
%LINE 207+0
		push	rbp
..@c263:
..@c264:
		mov	rbp,rsp
..@c265:
		lea	rsp,[rsp-80]
; Var rec located at rbp-8, size=OS_64
; Var imagebase located at rbp-16, size=OS_64
; Var filterRva located at rbp-24, size=OS_32
; Var errcode located at rbp-32, size=OS_S32
; Var $result located at rbp-40, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-24],r8d
		mov	dword [rbp-32],r9d
; [208] Exit(FilterException_(rec, imageBase, filterRva, errcode));
%LINE 208+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	r9d,dword [rbp-32]
		mov	r8d,dword [rbp-24]
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
		mov	qword [rbp-40],rax
		jmp	..@j352
..@j352:
; [209] end;
%LINE 209+0
		mov	rax,qword [rbp-40]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c262:

SECTION .text
	GLOBAL SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT
SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT:
..@c266:
; [229] begin
%LINE 229+0
		push	rbp
..@c268:
..@c269:
		mov	rbp,rsp
..@c270:
		lea	rsp,[rsp-16]
; Var rec located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_S32
		mov	qword [rbp-8],rcx
; [231] case rec.ExceptionCode of
%LINE 231+0
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax]
		cmp	eax,-1073741819
		jb	..@j357
		sub	eax,-1073741819
		je	..@j367
		sub	eax,24
		je	..@j366
		sub	eax,111
		je	..@j360
		dec	eax
		je	..@j363
		dec	eax
		je	..@j359
		sub	eax,1
		jb	..@j357
		sub	eax,1
		jbe	..@j364
		dec	eax
		je	..@j362
		dec	eax
		je	..@j364
		dec	eax
		je	..@j363
		dec	eax
		je	..@j358
		dec	eax
		je	..@j365
		dec	eax
		je	..@j369
		sub	eax,103
		je	..@j361
		sub	eax,61
		je	..@j368
		sub	eax,378
		jb	..@j357
		sub	eax,1
		jbe	..@j370
		jmp	..@j357
..@j358:
; [232] STATUS_INTEGER_DIVIDE_BY_ZERO:        result := 200;  // reDivByZero
%LINE 232+0
		mov	dword [rbp-12],200
		jmp	..@j356
..@j359:
; [233] STATUS_FLOAT_DIVIDE_BY_ZERO:          result := -208; // !!reZeroDivide
%LINE 233+0
		mov	dword [rbp-12],-208
		jmp	..@j356
..@j360:
; [234] STATUS_ARRAY_BOUNDS_EXCEEDED:         result := 201;  // reRangeError
%LINE 234+0
		mov	dword [rbp-12],201
		jmp	..@j356
..@j361:
; [235] STATUS_STACK_OVERFLOW:                result := 202;  // reStackOverflow
%LINE 235+0
		mov	dword [rbp-12],202
		jmp	..@j356
..@j362:
; [236] STATUS_FLOAT_OVERFLOW:                result := -205; // reOverflow
%LINE 236+0
		mov	dword [rbp-12],-205
		jmp	..@j356
..@j363:
; [238] STATUS_FLOAT_UNDERFLOW:               result := -206; // reUnderflow
%LINE 238+0
		mov	dword [rbp-12],-206
		jmp	..@j356
..@j364:
; [241] STATUS_FLOAT_STACK_CHECK:             result := -207; // reInvalidOp
%LINE 241+0
		mov	dword [rbp-12],-207
		jmp	..@j356
..@j365:
; [242] STATUS_INTEGER_OVERFLOW:              result := 215;  // reIntOverflow
%LINE 242+0
		mov	dword [rbp-12],215
		jmp	..@j356
..@j366:
; [243] STATUS_ILLEGAL_INSTRUCTION:           result := -216;
%LINE 243+0
		mov	dword [rbp-12],-216
		jmp	..@j356
..@j367:
; [244] STATUS_ACCESS_VIOLATION:              result := 216;  // reAccessViolation
%LINE 244+0
		mov	dword [rbp-12],216
		jmp	..@j356
..@j368:
; [245] STATUS_CONTROL_C_EXIT:                result := 217;  // reControlBreak
%LINE 245+0
		mov	dword [rbp-12],217
		jmp	..@j356
..@j369:
; [246] STATUS_PRIVILEGED_INSTRUCTION:        result := 218;  // rePrivilegedInstruction
%LINE 246+0
		mov	dword [rbp-12],218
		jmp	..@j356
..@j370:
; [248] STATUS_FLOAT_MULTIPLE_FAULTS:         result := -255; // indicate FPU reset
%LINE 248+0
		mov	dword [rbp-12],-255
		jmp	..@j356
..@j357:
; [250] result := 255; // reExternalException
%LINE 250+0
		mov	dword [rbp-12],255
..@j356:
; [252] end;
%LINE 252+0
		mov	eax,dword [rbp-12]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c267:

SECTION .text
SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT:
..@c271:
; [254] begin
%LINE 254+0
		push	rbp
..@c273:
..@c274:
		mov	rbp,rsp
..@c275:
		lea	rsp,[rsp-48]
; Var rec located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_S32
		mov	qword [rbp-8],rcx
; [255] Exit(RunErrorCode_(rec));
%LINE 255+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT
		mov	dword [rbp-12],eax
		jmp	..@j371
..@j371:
; [256] end;
%LINE 256+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c272:

SECTION .text
	GLOBAL SYSTEM_$$_TRANSLATEMXCSR_$LONGWORD$LONGINT
SYSTEM_$$_TRANSLATEMXCSR_$LONGWORD$LONGINT:
..@c276:
; [268] begin
%LINE 268+0
		push	rbp
..@c278:
..@c279:
		mov	rbp,rsp
..@c280:
		lea	rsp,[rsp-16]
; Var mxcsr located at rbp-8, size=OS_32
; Var code located at rbp-16, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
; [271] if (mxcsr and 1) <> 0 then code := -207
%LINE 271+0
		mov	eax,dword [rbp-8]
		and	eax,1
		test	eax,eax
		jne	..@j375
		jmp	..@j376
..@j375:
		mov	rax,qword [rbp-16]
		mov	dword [rax],-207
		jmp	..@j377
..@j376:
; [273] else if (mxcsr and 2) <> 0 then code := -206
%LINE 273+0
		mov	eax,dword [rbp-8]
		and	eax,2
		test	eax,eax
		jne	..@j378
		jmp	..@j379
..@j378:
		mov	rax,qword [rbp-16]
		mov	dword [rax],-206
		jmp	..@j380
..@j379:
; [275] else if (mxcsr and 4) <> 0 then code := -208
%LINE 275+0
		mov	eax,dword [rbp-8]
		and	eax,4
		test	eax,eax
		jne	..@j381
		jmp	..@j382
..@j381:
		mov	rax,qword [rbp-16]
		mov	dword [rax],-208
		jmp	..@j383
..@j382:
; [277] else if (mxcsr and 8) <> 0 then code := -205
%LINE 277+0
		mov	eax,dword [rbp-8]
		and	eax,8
		test	eax,eax
		jne	..@j384
		jmp	..@j385
..@j384:
		mov	rax,qword [rbp-16]
		mov	dword [rax],-205
		jmp	..@j386
..@j385:
; [279] else if (mxcsr and 16) <> 0 then code := -206
%LINE 279+0
		mov	eax,dword [rbp-8]
		and	eax,16
		test	eax,eax
		jne	..@j387
		jmp	..@j388
..@j387:
		mov	rax,qword [rbp-16]
		mov	dword [rax],-206
		jmp	..@j389
..@j388:
; [281] else if (mxcsr and 32) <> 0 then code := -207
%LINE 281+0
		mov	eax,dword [rbp-8]
		and	eax,32
		test	eax,eax
		jne	..@j390
		jmp	..@j391
..@j390:
		mov	rax,qword [rbp-16]
		mov	dword [rax],-207
		jmp	..@j392
..@j391:
; [283] code := -255;
%LINE 283+0
		mov	rax,qword [rbp-16]
		mov	dword [rax],-255
..@j392:
..@j389:
..@j386:
..@j383:
..@j380:
..@j377:
; [284] end;
%LINE 284+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c277:

SECTION .text
SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT:
..@c281:
; [286] begin
%LINE 286+0
		push	rbp
..@c283:
..@c284:
		mov	rbp,rsp
..@c285:
		lea	rsp,[rsp-48]
; Var mxcsr located at rbp-8, size=OS_32
; Var code located at rbp-16, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
; [287] TranslateMxcsr_(mxcsr, code);
%LINE 287+0
		mov	rax,qword [rbp-16]
		mov	rdx,rax
		mov	ecx,dword [rbp-8]
		call	SYSTEM_$$_TRANSLATEMXCSR_$LONGWORD$LONGINT
; [288] end;
%LINE 288+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c282:

SECTION .text
SYSTEM_$$_JUMPTOHANDLESIGNAL:
..@c286:
; Temps allocated between rbp-8 and rbp+0
; [exceptions64.inc]
; [233] begin
%LINE 233+0 exceptions64.inc
		push	rbp
..@c288:
..@c289:
		mov	rbp,rsp
..@c290:
		lea	rsp,[rsp-48]
		mov	qword [rbp-8],rbx
; [234] writeln('JumpToHandleSignal');
%LINE 234+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld5]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [285] end;
%LINE 285+0
		mov	rbx,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c287:

SECTION .text
	GLOBAL SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
..@c291:
; Temps allocated between rbp-56 and rbp-44
; [306] begin
%LINE 306+0
		push	rbp
..@c293:
..@c294:
		mov	rbp,rsp
..@c295:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
; Var exrec located at rbp-8, size=OS_64
; Var exframe located at rbp-16, size=OS_64
; Var excontext located at rbp-24, size=OS_64
; Var dispatch located at rbp-32, size=OS_64
; Var $result located at rbp-36, size=OS_S32
; Var frame located at rbp-40, size=OS_S32
; Var ret located at rbp-44, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [307] writeln('signals_exception_handler');
%LINE 307+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld6]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [309] frame := excontext^.rbp;
%LINE 309+0
		mov	rax,qword [rbp-24]
		mov	eax,dword [rax+160]
		mov	dword [rbp-40],eax
; [311] ret := 1;
%LINE 311+0
		mov	dword [rbp-44],1
; [313] writeln('exrec^.ExceptionCode = ', exrec^.ExceptionCode);
%LINE 313+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld7]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rax,qword [rbp-8]
		mov	r8d,dword [rax]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_uint
		mov	rcx,rbx
		call	fpc_writeln_end
; [319] ret := CallSignal(SIGSEGV, frame, false);
%LINE 319+0
		mov	r8d,dword [rbp-40]
		mov	r9b,0
		mov	edx,291
		mov	rcx,rbp
		call	SYSTEM$_$SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B
		mov	dword [rbp-44],eax
; [321] result := ret;
%LINE 321+0
		mov	eax,dword [rbp-44]
		mov	dword [rbp-36],eax
; [322] end;
%LINE 322+0
		mov	eax,dword [rbp-36]
		mov	rbx,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c292:

SECTION .text
SYSTEM$_$SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B:
..@c296:
; [294] begin
%LINE 294+0
		push	rbp
..@c298:
..@c299:
		mov	rbp,rsp
..@c300:
		lea	rsp,[rsp-48]
; Var sigtype located at rbp-8, size=OS_S32
; Var frame located at rbp-16, size=OS_S32
; Var must_reset_fpu located at rbp-24, size=OS_8
; Var $parentfp located at rbp-32, size=OS_64
; Var $result located at rbp-36, size=OS_S32
		mov	qword [rbp-32],rcx
		mov	dword [rbp-8],edx
		mov	dword [rbp-16],r8d
		mov	byte [rbp-24],r9b
; [295] if ex_level >= ex_max_level then exit;
%LINE 295+0
		cmp	byte [TC_$SYSTEM_$$_EX_LEVEL],16
		jae	..@j401
		jmp	..@j402
..@j401:
		jmp	..@j399
..@j402:
; [296] ex_rip[ex_level] := excontext^.Rip;
%LINE 296+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax-24]
		movzx	edx,byte [TC_$SYSTEM_$$_EX_LEVEL]
		lea	rcx,[U_$SYSTEM_$$_EX_RIP]
		mov	rax,qword [rax+248]
		mov	qword [rcx+rdx*8],rax
; [297] except_signal[ex_level] := sigtype;
%LINE 297+0
		movzx	ecx,byte [TC_$SYSTEM_$$_EX_LEVEL]
		movsxd	rax,dword [rbp-8]
		lea	rdx,[U_$SYSTEM_$$_EXCEPT_SIGNAL]
		mov	qword [rdx+rcx*8],rax
; [298] reset_fpu[ex_level] := must_reset_fpu;
%LINE 298+0
		movzx	edx,byte [TC_$SYSTEM_$$_EX_LEVEL]
		lea	rcx,[U_$SYSTEM_$$_RESET_FPU]
		mov	al,byte [rbp-24]
		mov	byte [rcx+rdx*1],al
; [299] inc(ex_level);
%LINE 299+0
		inc	byte [TC_$SYSTEM_$$_EX_LEVEL]
; [300] excontext^.rip := ptruint(@JumpToHandleSignal);
%LINE 300+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax-24]
		lea	rdx,[SYSTEM_$$_JUMPTOHANDLESIGNAL]
		mov	qword [rax+248],rdx
; [301] exrec^.ExceptionCode := 0;
%LINE 301+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax-8]
		mov	dword [rax],0
; [302] result := 0;
%LINE 302+0
		mov	dword [rbp-36],0
..@j399:
; [303] end;
%LINE 303+0
		mov	eax,dword [rbp-36]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c297:

SECTION .text
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
..@c301:
; [328] begin
%LINE 328+0
		push	rbp
..@c303:
..@c304:
		mov	rbp,rsp
..@c305:
		lea	rsp,[rsp-80]
; Var exrec located at rbp-8, size=OS_64
; Var exframe located at rbp-16, size=OS_64
; Var excontext located at rbp-24, size=OS_64
; Var dispatch located at rbp-32, size=OS_64
; Var $result located at rbp-36, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [329] Exit(signals_exception_handler_(exrec, exframe, excontext, dispatch));
%LINE 329+0
		mov	rax,qword [rbp-32]
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r9,rax
		call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
		mov	dword [rbp-36],eax
		jmp	..@j403
..@j403:
; [330] end;
%LINE 330+0
		mov	eax,dword [rbp-36]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c302:

SECTION .text
SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT:
..@c306:
; Temps allocated between rbp-24 and rbp-12
; [344] begin
%LINE 344+0
		push	rbp
..@c308:
..@c309:
		mov	rbp,rsp
..@c310:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var ex located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_S32
		mov	qword [rbp-8],rcx
; [345] writeln('syswin_x64_exception_handler');
%LINE 345+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld8]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [347] result := signals_exception_handler(@ex^.ExceptionRecord, nil, @ex^.ContextRecord, nil);
%LINE 347+0
		mov	rax,qword [rbp-8]
		lea	r8,[rax+8]
		mov	rcx,qword [rbp-8]
		mov	r9,0
		mov	rdx,0
		call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
		mov	dword [rbp-12],eax
; [349] wait_for_enter;
%LINE 349+0
		call	SYSTEM_$$_WAIT_FOR_ENTER
; [350] end;
%LINE 350+0
		mov	eax,dword [rbp-12]
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c307:

SECTION .text
	GLOBAL SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS:
..@c311:
; [356] begin
%LINE 356+0
		push	rbp
..@c313:
..@c314:
		mov	rbp,rsp
..@c315:
		lea	rsp,[rsp-32]
; [359] vectored_exception_handler := AddVectoredExceptionHandler(1{1 = higher priotity}, @syswin_x64_exception_handler);
%LINE 359+0
		lea	rax,[SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT]
		mov	rdx,rax
		mov	ecx,1
		call	_$dll$kernel32$AddVectoredExceptionHandler
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],rax
; [360] end;
%LINE 360+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c312:

SECTION .text
	GLOBAL SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS
SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS:
..@c316:
; [363] begin
%LINE 363+0
		push	rbp
..@c318:
..@c319:
		mov	rbp,rsp
..@c320:
		lea	rsp,[rsp-32]
; [365] if vectored_exception_handler <> nil then
%LINE 365+0
		cmp	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
		jne	..@j411
		jmp	..@j412
..@j411:
; [366] if RemoveVectoredExceptionHandler(vectored_exception_handler) then
%LINE 366+0
		mov	rax,qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER]
		mov	rcx,rax
		call	_$dll$kernel32$RemoveVectoredExceptionHandler
		test	eax,eax
		jne	..@j413
		jmp	..@j414
..@j413:
; [367] vectored_exception_handler := nil;
%LINE 367+0
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
..@j414:
..@j412:
; [368] end;
%LINE 368+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c317:

SECTION .text
SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT:
..@c321:
; [372] begin
%LINE 372+0
		push	rbp
..@c323:
..@c324:
		mov	rbp,rsp
..@c325:
		lea	rsp,[rsp-64]
; Var rec located at rbp-8, size=OS_64
; Var context located at rbp-16, size=OS_64
; Var $result located at rbp-20, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [373] result := RunErrorCode(rec);
%LINE 373+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT
		mov	dword [rbp-20],eax
; [374] if (result = -255) then TranslateMxcsr(context.MxCsr, result);
%LINE 374+0
		cmp	dword [rbp-20],-255
		je	..@j417
		jmp	..@j418
..@j417:
		mov	rax,qword [rbp-16]
		mov	ecx,dword [rax+52]
		lea	rdx,[rbp-20]
		call	SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT
..@j418:
; [375] end;
%LINE 375+0
		mov	eax,dword [rbp-20]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c322:

SECTION .text
SYSTEM_$$_SYSRESETFPU:
..@c326:
; [381] begin
%LINE 381+0
		push	rbp
..@c328:
..@c329:
		mov	rbp,rsp
..@c330:
		lea	rsp,[rsp-16]
; Var localmxcsr located at rbp-4, size=OS_32
; Var localfpucw located at rbp-8, size=OS_16
; [382] localfpucw := Default8087CW;
%LINE 382+0
		mov	ax,word [TC_$SYSTEM_$$_DEFAULT8087CW]
		mov	word [rbp-8],ax
; [383] localmxcsr := DefaultMXCSR;
%LINE 383+0
		mov	eax,dword [TC_$SYSTEM_$$_DEFAULTMXCSR]
		mov	dword [rbp-4],eax
CPU x64

; [385] fninit
%LINE 385+0
		fninit
; [386] fwait
%LINE 386+0
		DB	09bh
; [387] fldcw   localfpucw
%LINE 387+0
		fldcw	word [rbp-8]
; [388] ldmxcsr localmxcsr
%LINE 388+0
		ldmxcsr	dword [rbp-4]
CPU x64

; [390] end;
%LINE 390+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c327:

SECTION .text
	GLOBAL SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT
SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT:
..@c331:
; Temps allocated between rbp-1440 and rbp-288
; [405] begin
%LINE 405+0
		push	rbp
..@c333:
..@c334:
		mov	rbp,rsp
..@c335:
		lea	rsp,[rsp-1504]
		mov	qword [rbp-1440],rdi
		mov	qword [rbp-1432],rsi
; Var Context located at rbp-8, size=OS_64
; Var StartingFrame located at rbp-16, size=OS_64
; Var Frames located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_S32
; Var UnwindHistory located at rbp-248, size=OS_NO
; Var RuntimeFunction located at rbp-256, size=OS_64
; Var HandlerData located at rbp-264, size=OS_64
; Var EstablisherFrame located at rbp-272, size=OS_64
; Var ImageBase located at rbp-280, size=OS_64
; Var FrameCount located at rbp-284, size=OS_S32
; Var FrameBufSize located at rbp-288, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	rax,qword [rbp-8]
		lea	rdi,[rbp-1424]
		mov	rsi,rax
		mov	rcx,1136
		rep
		movsb
; [406] FillChar(UnwindHistory, sizeof(UNWIND_HISTORY_TABLE), 0);
%LINE 406+0
		lea	rcx,[rbp-248]
		mov	r8d,0
		mov	rdx,216
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; [407] UnwindHistory.Unwind := 1;
%LINE 407+0
		mov	byte [rbp-242],1
; [409] FrameCount := 0;
%LINE 409+0
		mov	dword [rbp-284],0
; [410] FrameBufSize := 0;
%LINE 410+0
		mov	dword [rbp-288],0
; [411] Frames := nil;
%LINE 411+0
		mov	rax,qword [rbp-24]
		mov	qword [rax],0
..@j423:
; [413] RuntimeFunction := RtlLookupFunctionEntry(context.Rip, ImageBase, @UnwindHistory);
%LINE 413+0
		lea	r8,[rbp-248]
		mov	rcx,qword [rbp-1176]
		lea	rdx,[rbp-280]
		call	_$dll$kernel32$RtlLookupFunctionEntry
		mov	qword [rbp-256],rax
; [415] if Assigned(RuntimeFunction) then RtlVirtualUnwind(UNW_FLAG_NHANDLER, ImageBase, context.Rip,
%LINE 415+0
		cmp	qword [rbp-256],0
		jne	..@j426
		jmp	..@j427
..@j426:
		mov	qword [rsp+56],0
		lea	rax,[rbp-1424]
		mov	qword [rsp+32],rax
; [416] RuntimeFunction, Context, @HandlerData, @EstablisherFrame, nil)
%LINE 416+0
		lea	rax,[rbp-272]
%LINE 415+0
		mov	qword [rsp+48],rax
%LINE 416+0
		lea	rax,[rbp-264]
%LINE 415+0
		mov	qword [rsp+40],rax
		mov	r8,qword [rbp-1176]
		mov	r9,qword [rbp-256]
		mov	rdx,qword [rbp-280]
		mov	ecx,0
		call	_$dll$kernel32$RtlVirtualUnwind
		jmp	..@j428
..@j427:
; [418] Context.Rip := PQWord(Context.Rsp)^;
%LINE 418+0
		mov	rax,qword [rbp-1272]
		mov	rax,qword [rax]
		mov	qword [rbp-1176],rax
; [419] Inc(Context.Rsp, sizeof(Pointer));
%LINE 419+0
		add	qword [rbp-1272],8
..@j428:
; [422] if (context.Rip = 0) or (FrameCount >= RaiseMaxFrameCount) then break;
%LINE 422+0
		cmp	qword [rbp-1176],0
		je	..@j429
		jmp	..@j430
..@j430:
		mov	eax,dword [rbp-284]
		cmp	eax,dword [TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT]
		jge	..@j429
		jmp	..@j431
..@j429:
		jmp	..@j425
..@j431:
; [424] if (Pointer(context.Rbp) > StartingFrame) or (FrameCount > 0) then begin
%LINE 424+0
		mov	rax,qword [rbp-1264]
		cmp	rax,qword [rbp-16]
		ja	..@j432
		jmp	..@j433
..@j433:
		cmp	dword [rbp-284],0
		jg	..@j432
		jmp	..@j434
..@j432:
; [425] if (FrameCount >= FrameBufSize) then begin
%LINE 425+0
		mov	eax,dword [rbp-284]
		cmp	eax,dword [rbp-288]
		jge	..@j435
		jmp	..@j436
..@j435:
; [426] Inc(FrameBufSize, 16);
%LINE 426+0
		add	dword [rbp-288],16
; [427] ReallocMem(Frames, FrameBufSize * sizeof(Pointer));
%LINE 427+0
		movsxd	rdx,dword [rbp-288]
		shl	rdx,3
		mov	rcx,qword [rbp-24]
		call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
..@j436:
; [429] Frames[FrameCount] := Pointer(context.Rip);
%LINE 429+0
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		movsxd	rcx,dword [rbp-284]
		mov	rdx,qword [rbp-1176]
		mov	qword [rax+rcx*8],rdx
; [430] Inc(FrameCount);
%LINE 430+0
		inc	dword [rbp-284]
..@j434:
; [432] until false;
%LINE 432+0
		jmp	..@j423
..@j425:
; [433] Result := FrameCount;
%LINE 433+0
		mov	eax,dword [rbp-284]
		mov	dword [rbp-28],eax
; [434] end;
%LINE 434+0
		mov	eax,dword [rbp-28]
		mov	rdi,qword [rbp-1440]
		mov	rsi,qword [rbp-1432]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c332:

SECTION .text
SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT:
..@c336:
; Temps allocated between rbp-1184 and rbp-28
; [439] begin
%LINE 439+0
		push	rbp
..@c338:
..@c339:
		mov	rbp,rsp
..@c340:
		lea	rsp,[rsp-1216]
		mov	qword [rbp-1184],rdi
		mov	qword [rbp-1176],rsi
; Var Context located at rbp-8, size=OS_64
; Var StartingFrame located at rbp-16, size=OS_64
; Var Frames located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	rax,qword [rbp-8]
		lea	rdi,[rbp-1168]
		mov	rsi,rax
		mov	rcx,1136
		rep
		movsb
; [440] Exit(GetBacktrace_(Context, StartingFrame, Frames));
%LINE 440+0
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		lea	rcx,[rbp-1168]
		call	SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT
		mov	dword [rbp-28],eax
		jmp	..@j437
..@j437:
; [441] end;
%LINE 441+0
		mov	eax,dword [rbp-28]
		mov	rdi,qword [rbp-1184]
		mov	rsi,qword [rbp-1176]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c337:

SECTION .text
	GLOBAL SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
..@c341:
; [469] begin
%LINE 469+0
		push	rbp
..@c343:
..@c344:
		mov	rbp,rsp
..@c345:
		lea	rsp,[rsp-112]
; Var rec located at rbp-8, size=OS_64
; Var context located at rbp-16, size=OS_64
; Var obj located at rbp-24, size=OS_64
; Var AcceptNull located at rbp-32, size=OS_8
; Var $result located at rbp-36, size=OS_8
; Var adr located at rbp-48, size=OS_64
; Var exc located at rbp-56, size=OS_64
; Var Frames located at rbp-64, size=OS_64
; Var FrameCount located at rbp-68, size=OS_S32
; Var code located at rbp-72, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	byte [rbp-32],r9b
; [470] Adr := Pointer(rec.ExceptionInformation[0]);
%LINE 470+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+32]
		mov	qword [rbp-48],rax
; [471] Obj := TObject(rec.ExceptionInformation[1]);
%LINE 471+0
		mov	rdx,qword [rbp-24]
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+40]
		mov	qword [rdx],rax
; [472] Framecount := longint(PtrUInt(rec.ExceptionInformation[2]));
%LINE 472+0
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax+48]
		mov	dword [rbp-68],eax
; [473] Frames := Pointer(rec.ExceptionInformation[3]);
%LINE 473+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+56]
		mov	qword [rbp-64],rax
; [475] if rec.ExceptionCode <> FPC_EXCEPTION_CODE then begin
%LINE 475+0
		mov	rax,qword [rbp-8]
		cmp	dword [rax],-532262845
		jne	..@j441
		jmp	..@j442
..@j441:
; [476] Obj := nil;
%LINE 476+0
		mov	rax,qword [rbp-24]
		mov	qword [rax],0
; [477] Result := false;
%LINE 477+0
		mov	byte [rbp-36],0
; [478] code := RunErrorCodeSEH(rec, context);
%LINE 478+0
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
		mov	dword [rbp-72],eax
; [479] if Assigned(ExceptObjProc) then Obj := TObject(TExceptObjProc(ExceptObjProc)(abs(code), rec));
%LINE 479+0
		cmp	qword [TC_$SYSTEM_$$_EXCEPTOBJPROC],0
		jne	..@j443
		jmp	..@j444
..@j443:
		mov	ecx,dword [rbp-72]
		mov	eax,ecx
		neg	eax
		cmovns	ecx,eax
		mov	rdx,qword [rbp-8]
		call	TC_$SYSTEM_$$_EXCEPTOBJPROC
		mov	rdx,qword [rbp-24]
		mov	qword [rdx],rax
..@j444:
; [480] if (Obj = nil) and (not AcceptNull) then Exit;
%LINE 480+0
		mov	rax,qword [rbp-24]
		cmp	qword [rax],0
		je	..@j445
		jmp	..@j446
..@j445:
		cmp	byte [rbp-32],0
		je	..@j447
		jmp	..@j446
..@j447:
		jmp	..@j439
..@j446:
; [481] adr := rec.ExceptionAddress;
%LINE 481+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax+16]
		mov	qword [rbp-48],rax
; [482] FrameCount := GetBacktrace(context, nil, Frames);
%LINE 482+0
		mov	rcx,qword [rbp-16]
		lea	r8,[rbp-64]
		mov	rdx,0
		call	SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT
		mov	dword [rbp-68],eax
; [483] if code < 0 then SysResetFPU;
%LINE 483+0
		cmp	dword [rbp-72],0
		jl	..@j448
		jmp	..@j449
..@j448:
		call	SYSTEM_$$_SYSRESETFPU
..@j449:
..@j442:
; [486] New(exc);
%LINE 486+0
		mov	rcx,40
		call	fpc_getmem
		mov	qword [rbp-56],rax
; [487] exc^.FObject := Obj;
%LINE 487+0
		mov	rdx,qword [rbp-56]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	qword [rdx],rax
; [488] exc^.Addr := adr;
%LINE 488+0
		mov	rax,qword [rbp-56]
		mov	rdx,qword [rbp-48]
		mov	qword [rax+8],rdx
; [489] exc^.Frames := Frames;
%LINE 489+0
		mov	rax,qword [rbp-56]
		mov	rdx,qword [rbp-64]
		mov	qword [rax+32],rdx
; [490] exc^.FrameCount := FrameCount;
%LINE 490+0
		mov	rdx,qword [rbp-56]
		mov	eax,dword [rbp-68]
		mov	dword [rdx+28],eax
; [491] exc^.Refcount := 0;
%LINE 491+0
		mov	rax,qword [rbp-56]
		mov	dword [rax+24],0
; [492] exc^.Next := ExceptObjectStack;
%LINE 492+0
		mov	rax,qword [rbp-56]
		mov	rdx,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		mov	qword [rax+16],rdx
; [493] ExceptObjectStack := exc;
%LINE 493+0
		mov	rax,qword [rbp-56]
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [494] Result := true;
%LINE 494+0
		mov	byte [rbp-36],1
..@j439:
; [495] end;
%LINE 495+0
		mov	al,byte [rbp-36]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c342:

SECTION .text
SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
..@c346:
; [497] begin
%LINE 497+0
		push	rbp
..@c348:
..@c349:
		mov	rbp,rsp
..@c350:
		lea	rsp,[rsp-80]
; Var rec located at rbp-8, size=OS_64
; Var context located at rbp-16, size=OS_64
; Var obj located at rbp-24, size=OS_64
; Var AcceptNull located at rbp-32, size=OS_8
; Var $result located at rbp-36, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	byte [rbp-32],r9b
; [498] Exit(PushException_(rec, context, obj, AcceptNull));
%LINE 498+0
		mov	rax,qword [rbp-24]
		mov	r8,rax
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r9b,byte [rbp-32]
		call	SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
		mov	byte [rbp-36],al
		jmp	..@j450
..@j450:
; [499] end;
%LINE 499+0
		mov	al,byte [rbp-36]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c347:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT
SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT:
..@c351:
; [517] begin
%LINE 517+0
		push	rbp
..@c353:
..@c354:
		mov	rbp,rsp
..@c355:
		lea	rsp,[rsp-48]
; Var $result located at rbp-8, size=OS_64
; Var hp located at rbp-16, size=OS_64
; [518] hp := ExceptObjectStack;
%LINE 518+0
		mov	rax,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		mov	qword [rbp-16],rax
; [519] if hp = nil then
%LINE 519+0
		cmp	qword [rbp-16],0
		je	..@j454
		jmp	..@j455
..@j454:
; [520] halt(1)
%LINE 520+0
		mov	ecx,1
		call	SYSTEM_$$_HALT$LONGINT
		jmp	..@j456
..@j455:
; [522] if hp^.refcount = 0 then result := hp^.FObject else result := nil;
%LINE 522+0
		mov	rax,qword [rbp-16]
		cmp	dword [rax+24],0
		je	..@j457
		jmp	..@j458
..@j457:
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		mov	qword [rbp-8],rax
		jmp	..@j459
..@j458:
		mov	qword [rbp-8],0
..@j459:
; [523] ExceptObjectStack := hp^.next;
%LINE 523+0
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax+16]
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [524] if assigned(hp^.frames) then freemem(hp^.frames);
%LINE 524+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax+32],0
		jne	..@j460
		jmp	..@j461
..@j460:
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rax+32]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j461:
; [525] dispose(hp);
%LINE 525+0
		mov	rcx,qword [rbp-16]
		call	fpc_freemem
; [526] erroraddr := nil;
%LINE 526+0
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],0
..@j456:
; [528] end;
%LINE 528+0
		mov	rax,qword [rbp-8]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c352:

SECTION .text
	GLOBAL fpc_popobjectstack
fpc_popobjectstack:
	GLOBAL FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
..@c356:
; [530] begin
%LINE 530+0
		push	rbp
..@c358:
..@c359:
		mov	rbp,rsp
..@c360:
		lea	rsp,[rsp-48]
; Var $result located at rbp-8, size=OS_64
; [531] Exit(fpc_popobjectstack_);
%LINE 531+0
		call	SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT
		mov	qword [rbp-8],rax
		jmp	..@j462
..@j462:
; [532] end;
%LINE 532+0
		mov	rax,qword [rbp-8]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c357:

SECTION .text
	GLOBAL SYSTEM_$$___FPC_SPECIFIC_HANDLER_$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER_$crc71B92073:
..@c361:
; Temps allocated between rbp-88 and rbp-80
; [557] begin
%LINE 557+0
		push	rbp
..@c363:
..@c364:
		mov	rbp,rsp
..@c365:
		lea	rsp,[rsp-144]
		mov	qword [rbp-88],rbx
; Var rec located at rbp-8, size=OS_64
; Var frame located at rbp-16, size=OS_64
; Var context located at rbp-24, size=OS_64
; Var dispatch located at rbp-32, size=OS_64
; Var $result located at rbp-36, size=OS_32
; Var TargetRva located at rbp-40, size=OS_32
; Var ControlRva located at rbp-44, size=OS_32
; Var scope located at rbp-56, size=OS_64
; Var scopeIdx located at rbp-60, size=OS_32
; Var TargetAddr located at rbp-72, size=OS_64
; Var obj located at rbp-80, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [558] writeln('__FPC_specific_handler');
%LINE 558+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld9]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [559] result := ExceptionContinueSearch;
%LINE 559+0
		mov	dword [rbp-36],1
; [560] ControlRva := dispatch.ControlPc - dispatch.ImageBase;
%LINE 560+0
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rax,qword [rax]
		mov	rdx,qword [rdx+8]
		sub	rax,rdx
		mov	dword [rbp-44],eax
; [561] ScopeIdx := dispatch.ScopeIndex;
%LINE 561+0
		mov	rax,qword [rbp-32]
		mov	eax,dword [rax+72]
		mov	dword [rbp-60],eax
; [562] if (rec.ExceptionFlags and EXCEPTION_UNWIND) = 0 then begin
%LINE 562+0
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax+4]
		and	eax,6
		test	eax,eax
		je	..@j466
		jmp	..@j467
..@j466:
; [563] while ScopeIdx < PDWord(dispatch.HandlerData)^ do begin
%LINE 563+0
		jmp	..@j469
..@j468:
; [564] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
%LINE 564+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+56]
		lea	rdx,[rax+4]
		mov	eax,dword [rbp-60]
		shl	rax,4
		lea	rax,[rdx+rax]
		mov	qword [rbp-56],rax
; [567] if (ControlRva >= scope^.RvaEnd) and (ControlRva < scope^.RvaHandler) and ((scope^.Typ = SCOPE_CATCHALL) or (scope^.Typ > SCOPE_IMPLICIT)) then
%LINE 567+0
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+8]
		cmp	eax,dword [rbp-44]
		jbe	..@j471
		jmp	..@j472
..@j471:
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+12]
		cmp	eax,dword [rbp-44]
		ja	..@j473
		jmp	..@j472
..@j473:
		mov	rax,qword [rbp-56]
		cmp	dword [rax],1
		je	..@j475
		jmp	..@j476
..@j476:
		mov	rax,qword [rbp-56]
		cmp	dword [rax],2
		ja	..@j475
		jmp	..@j477
..@j475:
		jmp	..@j474
..@j477:
		jmp	..@j472
..@j474:
; [568] internal_popobjectstack.Free
%LINE 568+0
		call	FPC_POPOBJECTSTACK
		mov	rbx,rax
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		jmp	..@j478
..@j472:
; [569] else if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and (scope^.Typ <> SCOPE_FINALLY) then begin
%LINE 569+0
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+4]
		cmp	eax,dword [rbp-44]
		jbe	..@j479
		jmp	..@j480
..@j479:
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+8]
		cmp	eax,dword [rbp-44]
		ja	..@j481
		jmp	..@j480
..@j481:
		mov	rax,qword [rbp-56]
		cmp	dword [rax],0
		jne	..@j482
		jmp	..@j480
..@j482:
; [570] if scope^.Typ > SCOPE_IMPLICIT then begin
%LINE 570+0
		mov	rax,qword [rbp-56]
		cmp	dword [rax],2
		ja	..@j483
		jmp	..@j484
..@j483:
; [571] TargetAddr := FilterException(rec, dispatch.ImageBase, scope^.Typ, abs(RunErrorCodeSEH(rec, context)));
%LINE 571+0
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
		mov	r9d,eax
		mov	eax,r9d
		neg	eax
		cmovns	r9d,eax
		mov	rax,qword [rbp-56]
		mov	r8d,dword [rax]
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rax+8]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
		mov	qword [rbp-72],rax
; [572] if TargetAddr = nil then begin
%LINE 572+0
		cmp	qword [rbp-72],0
		je	..@j485
		jmp	..@j486
..@j485:
; [573] inc(ScopeIdx);
%LINE 573+0
		inc	dword [rbp-60]
; [574] continue;
%LINE 574+0
		jmp	..@j469
..@j486:
		jmp	..@j487
..@j484:
; [577] TargetAddr := Pointer(scope^.RvaEnd + dispatch.ImageBase);
%LINE 577+0
		mov	rax,qword [rbp-56]
		mov	edx,dword [rax+8]
		mov	rax,qword [rbp-32]
		add	rdx,qword [rax+8]
		mov	qword [rbp-72],rdx
..@j487:
; [579] if not PushException(rec, context, obj, Scope^.Typ = SCOPE_IMPLICIT) then exit;
%LINE 579+0
		mov	rax,qword [rbp-56]
		cmp	dword [rax],2
		sete	r9b
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-8]
		lea	r8,[rbp-80]
		call	SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j488
		jmp	..@j489
..@j488:
		jmp	..@j464
..@j489:
; [583] RtlUnwindEx(@frame, TargetAddr, @rec, obj, dispatch.ContextRecord, dispatch.HistoryTable);
%LINE 583+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+64]
		mov	qword [rsp+40],rax
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+40]
		mov	qword [rsp+32],rax
		mov	r8,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		mov	r9,qword [rbp-80]
		mov	rdx,qword [rbp-72]
		call	_$dll$kernel32$RtlUnwindEx
..@j480:
..@j478:
; [585] inc(ScopeIdx);
%LINE 585+0
		inc	dword [rbp-60]
..@j469:
%LINE 563+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+56]
		mov	eax,dword [rax]
		cmp	eax,dword [rbp-60]
		ja	..@j468
		jmp	..@j470
..@j470:
		jmp	..@j490
..@j467:
; [588] TargetRva := dispatch.TargetIp - dispatch.ImageBase;
%LINE 588+0
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rax,qword [rax+32]
		mov	rdx,qword [rdx+8]
		sub	rax,rdx
		mov	dword [rbp-40],eax
; [590] while ScopeIdx < PDword(dispatch.HandlerData)^ do begin
%LINE 590+0
		jmp	..@j492
..@j491:
; [591] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
%LINE 591+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+56]
		lea	rdx,[rax+4]
		mov	eax,dword [rbp-60]
		shl	rax,4
		lea	rax,[rdx+rax]
		mov	qword [rbp-56],rax
; [592] if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and ((scope^.Typ = SCOPE_FINALLY) or (scope^.Typ = SCOPE_IMPLICIT)) then begin
%LINE 592+0
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+4]
		cmp	eax,dword [rbp-44]
		jbe	..@j494
		jmp	..@j495
..@j494:
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+8]
		cmp	eax,dword [rbp-44]
		ja	..@j496
		jmp	..@j495
..@j496:
		mov	rax,qword [rbp-56]
		cmp	dword [rax],0
		je	..@j498
		jmp	..@j499
..@j499:
		mov	rax,qword [rbp-56]
		cmp	dword [rax],2
		je	..@j498
		jmp	..@j500
..@j498:
		jmp	..@j497
..@j500:
		jmp	..@j495
..@j497:
; [593] if (TargetRva >= scope^.RvaStart) and (TargetRva < scope^.RvaEnd) and ((rec.ExceptionFlags and EXCEPTION_TARGET_UNWIND) <> 0) then exit;
%LINE 593+0
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+4]
		cmp	eax,dword [rbp-40]
		jbe	..@j501
		jmp	..@j502
..@j501:
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+8]
		cmp	eax,dword [rbp-40]
		ja	..@j503
		jmp	..@j502
..@j503:
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax+4]
		and	eax,32
		test	eax,eax
		jne	..@j504
		jmp	..@j502
..@j504:
		jmp	..@j464
..@j502:
; [595] dispatch.ScopeIndex := ScopeIdx + 1;
%LINE 595+0
		mov	rdx,qword [rbp-32]
		mov	eax,dword [rbp-60]
		lea	eax,[eax+1]
		mov	dword [rdx+72],eax
; [597] TUnwindProc(dispatch.ImageBase + scope^.RvaHandler)(context.Rbp);
%LINE 597+0
		mov	rax,qword [rbp-24]
		mov	rcx,qword [rax+160]
		mov	rax,qword [rbp-56]
		mov	eax,dword [rax+12]
		mov	rdx,qword [rbp-32]
		add	rax,qword [rdx+8]
		call	rax
..@j495:
; [599] inc(ScopeIdx);
%LINE 599+0
		inc	dword [rbp-60]
..@j492:
%LINE 590+0
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+56]
		mov	eax,dword [rax]
		cmp	eax,dword [rbp-60]
		ja	..@j491
		jmp	..@j493
..@j493:
..@j490:
..@j464:
; [602] end;
%LINE 602+0
		mov	eax,dword [rbp-36]
		mov	rbx,qword [rbp-88]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c362:

SECTION .text
	GLOBAL SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073:
	GLOBAL __FPC_specific_handler
__FPC_specific_handler:
..@c366:
; [608] begin
%LINE 608+0
		push	rbp
..@c368:
..@c369:
		mov	rbp,rsp
..@c370:
		lea	rsp,[rsp-80]
; Var rec located at rbp-8, size=OS_64
; Var frame located at rbp-16, size=OS_64
; Var context located at rbp-24, size=OS_64
; Var dispatch located at rbp-32, size=OS_64
; Var $result located at rbp-36, size=OS_32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [609] Exit(__FPC_specific_handler(rec, frame, context, dispatch));
%LINE 609+0
		mov	rax,qword [rbp-32]
		mov	r9,rax
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
		mov	dword [rbp-36],eax
		jmp	..@j505
..@j505:
; [610] end;
%LINE 610+0
		mov	eax,dword [rbp-36]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c367:

SECTION .text
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
..@c371:
; Temps allocated between rbp-8 and rbp+0
; [630] begin
%LINE 630+0
		push	rbp
..@c373:
..@c374:
		mov	rbp,rsp
..@c375:
		lea	rsp,[rsp-48]
		mov	qword [rbp-8],rbx
; [631] internal_popobjectstack.Free;
%LINE 631+0
		call	FPC_POPOBJECTSTACK
		mov	rbx,rax
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [632] end;
%LINE 632+0
		mov	rbx,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c372:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
	GLOBAL FPC_RERAISE
FPC_RERAISE:
..@c376:
; [635] begin
%LINE 635+0
		push	rbp
..@c378:
..@c379:
		mov	rbp,rsp
..@c380:
; [636] end;
%LINE 636+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c377:

SECTION .text
	GLOBAL fpc_raise_nested
fpc_raise_nested:
	GLOBAL FPC_RAISE_NESTED
FPC_RAISE_NESTED:
..@c381:
; [639] begin
%LINE 639+0
		push	rbp
..@c383:
..@c384:
		mov	rbp,rsp
..@c385:
; [640] end;
%LINE 640+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c382:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER
SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER:
..@c386:
; Temps allocated between rbp-32 and rbp-24
; [647] begin
%LINE 647+0
		push	rbp
..@c388:
..@c389:
		mov	rbp,rsp
..@c390:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
; Var obj located at rbp-8, size=OS_64
; Var anaddr located at rbp-16, size=OS_64
; Var aframe located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [648] writeln('fpc_raiseexception');
%LINE 648+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld10]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [650] if obj = nil then writeln('obj nil');
%LINE 650+0
		cmp	qword [rbp-8],0
		je	..@j515
		jmp	..@j516
..@j515:
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld11]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j516:
; [651] if anaddr = nil then writeln('anaddr nil');
%LINE 651+0
		cmp	qword [rbp-16],0
		je	..@j517
		jmp	..@j518
..@j517:
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld12]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j518:
; [652] if aframe = nil then writeln('aframe nil');
%LINE 652+0
		cmp	qword [rbp-24],0
		je	..@j519
		jmp	..@j520
..@j519:
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld13]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j520:
; [654] if obj <> nil then begin
%LINE 654+0
		cmp	qword [rbp-8],0
		jne	..@j521
		jmp	..@j522
..@j521:
; [655] writeln('exception message = ', TTestException(obj).test);
%LINE 655+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld14]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rax,qword [rbp-8]
		mov	r8,qword [rax+8]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_ansistr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j522:
; [657] end;
%LINE 657+0
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c387:

SECTION .text
	GLOBAL fpc_raiseexception
fpc_raiseexception:
	GLOBAL FPC_RAISEEXCEPTION
FPC_RAISEEXCEPTION:
..@c391:
; [662] begin
%LINE 662+0
		push	rbp
..@c393:
..@c394:
		mov	rbp,rsp
..@c395:
		lea	rsp,[rsp-64]
; Var obj located at rbp-8, size=OS_64
; Var anaddr located at rbp-16, size=OS_64
; Var aframe located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [663] fpc_raiseexception_(obj, anaddr, aframe);
%LINE 663+0
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r8,rax
		call	SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER
; [664] end;
%LINE 664+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c392:

SECTION .text
	GLOBAL fpc_initialize
fpc_initialize:
	GLOBAL FPC_INITIALIZE
FPC_INITIALIZE:
..@c396:
; Temps allocated between rbp-24 and rbp-16
; [rtti.inc]
; [35] begin
%LINE 35+0 rtti.inc
		push	rbp
..@c398:
..@c399:
		mov	rbp,rsp
..@c400:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var data located at rbp-8, size=OS_64
; Var typeinfo located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [36] writeln('fpc_initialize');
%LINE 36+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld15]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [37] end;
%LINE 37+0
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c397:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
	GLOBAL FPC_FINALIZE
FPC_FINALIZE:
..@c401:
; Temps allocated between rbp-24 and rbp-16
; [40] begin
%LINE 40+0
		push	rbp
..@c403:
..@c404:
		mov	rbp,rsp
..@c405:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var data located at rbp-8, size=OS_64
; Var typeinfo located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [41] writeln('fpc_finalize');
%LINE 41+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld16]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [43] case PTypeKind(typeinfo)^ of
%LINE 43+0
		mov	rax,qword [rbp-16]
		mov	eax,dword [rax]
		cmp	eax,14
		jb	..@j530
		sub	eax,14
		je	..@j531
		jmp	..@j530
..@j531:
; [44] tkInterface: writeln('decrease refcount of interfaced object');
%LINE 44+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld17]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
		jmp	..@j529
..@j530:
..@j529:
; [46] end;
%LINE 46+0
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c402:

SECTION .text
	GLOBAL fpc_addref
fpc_addref:
	GLOBAL FPC_ADDREF
FPC_ADDREF:
..@c406:
; Temps allocated between rbp-24 and rbp-16
; [49] begin
%LINE 49+0
		push	rbp
..@c408:
..@c409:
		mov	rbp,rsp
..@c410:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var data located at rbp-8, size=OS_64
; Var typeinfo located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [50] writeln('fpc_addref');
%LINE 50+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld18]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [51] end;
%LINE 51+0
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c407:

SECTION .text
	GLOBAL fpc_decref
fpc_decref:
	GLOBAL FPC_DECREF
FPC_DECREF:
..@c411:
; Temps allocated between rbp-24 and rbp-16
; [54] begin
%LINE 54+0
		push	rbp
..@c413:
..@c414:
		mov	rbp,rsp
..@c415:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var data located at rbp-8, size=OS_64
; Var typeinfo located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [55] writeln('fpc_decref');
%LINE 55+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld19]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [56] end;
%LINE 56+0
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c412:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c416:
; [io.inc]
; [85] begin
%LINE 85+0 io.inc
		push	rbp
..@c418:
..@c419:
		mov	rbp,rsp
..@c420:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_64
; [86] result := nil;
%LINE 86+0
		mov	qword [rbp-8],0
; [87] end;
%LINE 87+0
		mov	rax,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c417:

SECTION .text
	GLOBAL fpc_get_output
fpc_get_output:
..@c421:
; [90] begin
%LINE 90+0
		push	rbp
..@c423:
..@c424:
		mov	rbp,rsp
..@c425:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_64
; [91] result := nil;
%LINE 91+0
		mov	qword [rbp-8],0
; [92] end;
%LINE 92+0
		mov	rax,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c422:

SECTION .text
	GLOBAL fpc_write_end
fpc_write_end:
..@c426:
; [95] begin
%LINE 95+0
		push	rbp
..@c428:
..@c429:
		mov	rbp,rsp
..@c430:
		lea	rsp,[rsp-16]
; Var f located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [96] end;
%LINE 96+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c427:

SECTION .text
SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000264:
..@c431:
; [104] end;
%LINE 104+0
		push	rbp
..@c433:
..@c434:
		mov	rbp,rcx
..@c435:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-16]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [101] begin
%LINE 101+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c432:

SECTION .text
	GLOBAL fpc_writeln_end
fpc_writeln_end:
..@c436:
		push	rbp
..@c438:
..@c439:
		mov	rbp,rsp
..@c440:
		lea	rsp,[rsp-64]
; Var f located at rbp-8, size=OS_64
; Var s located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],0
..@j550:
		nop
..@j546:
; [102] s := LineEnding;
%LINE 102+0
		lea	rax,[rbp-16]
		lea	rdx,[..@d20]
		mov	rcx,rax
		call	fpc_ansistr_assign
; [103] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 103+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-16]
		test	r8,r8
		je	..@j551
		mov	r8,qword [r8-8]
..@j551:
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleA
..@j548:
%LINE 101+0
		nop
..@j547:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000264
%LINE 104+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c437:

SECTION .text
	GLOBAL fpc_write_text_char
fpc_write_text_char:
	GLOBAL FPC_WRITE_TEXT_CHAR
FPC_WRITE_TEXT_CHAR:
..@c441:
; [107] begin
%LINE 107+0
		push	rbp
..@c443:
..@c444:
		mov	rbp,rsp
..@c445:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var t located at rbp-16, size=OS_64
; Var c located at rbp-24, size=OS_8
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
; [108] WriteConsoleA(StdOut, @c, 1, nil, nil);
%LINE 108+0
		mov	qword [rsp+32],0
		lea	rax,[rbp-24]
		mov	rdx,rax
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		mov	r8d,1
		call	_$dll$kernel32$WriteConsoleA
; [109] end;
%LINE 109+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c442:

SECTION .text
	GLOBAL fpc_write_text_widechar
fpc_write_text_widechar:
..@c446:
; [112] begin
%LINE 112+0
		push	rbp
..@c448:
..@c449:
		mov	rbp,rsp
..@c450:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var t located at rbp-16, size=OS_64
; Var c located at rbp-24, size=OS_16
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	word [rbp-24],r8w
; [113] WriteConsoleW(StdOut, @c, 1, nil, nil);
%LINE 113+0
		mov	qword [rsp+32],0
		lea	rax,[rbp-24]
		mov	rdx,rax
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		mov	r8d,1
		call	_$dll$kernel32$WriteConsoleW
; [114] end;
%LINE 114+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c447:

SECTION .text
	GLOBAL fpc_write_text_shortstr
fpc_write_text_shortstr:
	GLOBAL FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
..@c451:
; [117] begin
%LINE 117+0
		push	rbp
..@c453:
..@c454:
		mov	rbp,rsp
..@c455:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var f located at rbp-16, size=OS_64
; Var s located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [118] WriteConsoleA(StdOut, @s[1], ord(s[0]), nil, nil);
%LINE 118+0
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-24]
		movzx	r8d,byte [rax]
		mov	rax,qword [rbp-24]
		lea	rdx,[rax+1]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleA
; [119] end;
%LINE 119+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c452:

SECTION .text
	GLOBAL fpc_write_text_ansistr
fpc_write_text_ansistr:
	GLOBAL FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
..@c456:
; [127] begin
%LINE 127+0
		push	rbp
..@c458:
..@c459:
		mov	rbp,rsp
..@c460:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var f located at rbp-16, size=OS_64
; Var s located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [128] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 128+0
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-24]
		test	rax,rax
		je	..@j560
		mov	rax,qword [rax-8]
..@j560:
		mov	r8d,eax
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleA
; [129] end;
%LINE 129+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c457:

SECTION .text
	GLOBAL fpc_write_text_widestr
fpc_write_text_widestr:
..@c461:
; [132] begin
%LINE 132+0
		push	rbp
..@c463:
..@c464:
		mov	rbp,rsp
..@c465:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var f located at rbp-16, size=OS_64
; Var s located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [133] if pointer(s) = nil then exit;
%LINE 133+0
		cmp	qword [rbp-24],0
		je	..@j563
		jmp	..@j564
..@j563:
		jmp	..@j561
..@j564:
; [134] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
%LINE 134+0
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-24]
		test	rax,rax
		je	..@j565
		mov	eax,dword [rax-4]
		shr	rax,1
..@j565:
		mov	r8d,eax
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleW
..@j561:
; [135] end;
%LINE 135+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c462:

SECTION .text
	GLOBAL fpc_write_text_unicodestr
fpc_write_text_unicodestr:
..@c466:
; [138] begin
%LINE 138+0
		push	rbp
..@c468:
..@c469:
		mov	rbp,rsp
..@c470:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var f located at rbp-16, size=OS_64
; Var s located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [139] if pointer(s) = nil then exit;
%LINE 139+0
		cmp	qword [rbp-24],0
		je	..@j568
		jmp	..@j569
..@j568:
		jmp	..@j566
..@j569:
; [140] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
%LINE 140+0
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-24]
		test	rax,rax
		je	..@j570
		mov	rax,qword [rax-8]
..@j570:
		mov	r8d,eax
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleW
..@j566:
; [141] end;
%LINE 141+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c467:

SECTION .text
	GLOBAL fpc_read_end
fpc_read_end:
	GLOBAL FPC_READ_END
FPC_READ_END:
..@c471:
; [144] begin
%LINE 144+0
		push	rbp
..@c473:
..@c474:
		mov	rbp,rsp
..@c475:
		lea	rsp,[rsp-16]
; Var f located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [145] end;
%LINE 145+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c472:

SECTION .text
SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000265:
..@c476:
; [152] end;
%LINE 152+0
		push	rbp
..@c478:
..@c479:
		mov	rbp,rcx
..@c480:
		lea	rsp,[rsp-32]
; [150] begin
%LINE 150+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c477:

SECTION .text
SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING:
..@c481:
		push	rbp
..@c483:
..@c484:
		mov	rbp,rsp
..@c485:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var d located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j581:
		nop
..@j577:
; [151] WriteConsoleA(StdOut, @s[1], length(s), @d, nil);
%LINE 151+0
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j582
		mov	rax,qword [rax-8]
..@j582:
		mov	r8d,eax
		lea	r9,[rbp-12]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		call	_$dll$kernel32$WriteConsoleA
..@j579:
%LINE 150+0
		nop
..@j578:
		mov	rcx,rbp
		call	SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000265
%LINE 152+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c482:

SECTION .text
SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000267:
..@c486:
; [171] end;
%LINE 171+0
		push	rbp
..@c488:
..@c489:
		mov	rbp,rcx
..@c490:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-24]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [159] begin
%LINE 159+0
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c487:

SECTION .text
SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING:
..@c491:
; Temps allocated between rbp-32 and rbp-24
		push	rbp
..@c493:
..@c494:
		mov	rbp,rsp
..@c495:
		lea	rsp,[rsp-80]
; Var r located at rbp-8, size=OS_64
; Var c located at rbp-12, size=OS_8
; Var d located at rbp-16, size=OS_32
; Var s located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
		mov	qword [rbp-24],0
		mov	qword [rbp-32],0
..@j591:
		nop
..@j587:
; [160] s := '';
%LINE 160+0
		lea	rcx,[rbp-24]
		mov	rdx,0
		call	fpc_ansistr_assign
; [161] while true do begin
%LINE 161+0
		jmp	..@j593
..@j592:
; [162] ReadConsoleA(StdIn, @c, 1, @d, nil);
%LINE 162+0
		mov	qword [rsp+32],0
		lea	r9,[rbp-16]
		lea	rdx,[rbp-12]
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	r8d,1
		call	_$dll$kernel32$ReadConsoleA
; [163] if c = #13 then begin
%LINE 163+0
		cmp	byte [rbp-12],13
		je	..@j595
		jmp	..@j596
..@j595:
; [165] break;
%LINE 165+0
		jmp	..@j594
..@j596:
; [167] s := s + c;
%LINE 167+0
		movzx	edx,byte [rbp-12]
		mov	r8d,0
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		mov	r9d,0
		call	fpc_ansistr_concat
..@j593:
%LINE 161+0
		jmp	..@j592
..@j594:
; [169] r := s;
%LINE 169+0
		mov	rcx,qword [rbp-8]
		mov	rdx,qword [rbp-24]
		call	fpc_ansistr_assign
; [170] int_write_to_console(#13#10);
%LINE 170+0
		lea	rcx,[..@d20]
		call	SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING
..@j589:
%LINE 159+0
		nop
..@j588:
		mov	rcx,rbp
		call	SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000267
%LINE 171+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c492:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c496:
; [174] begin
%LINE 174+0
		push	rbp
..@c498:
..@c499:
		mov	rbp,rsp
..@c500:
		lea	rsp,[rsp-16]
; Var f located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [181] end;
%LINE 181+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c497:

SECTION .text
SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$0000026B:
..@c501:
; [189] end;
%LINE 189+0
		push	rbp
..@c503:
..@c504:
		mov	rbp,rcx
..@c505:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [186] begin
%LINE 186+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c502:

SECTION .text
	GLOBAL fpc_read_text_shortstr
fpc_read_text_shortstr:
	GLOBAL FPC_READ_TEXT_SHORTSTR
FPC_READ_TEXT_SHORTSTR:
..@c506:
; Temps allocated between rbp-40 and rbp-32
		push	rbp
..@c508:
..@c509:
		mov	rbp,rsp
..@c510:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var f located at rbp-8, size=OS_64
; Var s located at rbp-16, size=OS_64
; Var cp located at rbp-24, size=OS_32
; Var t located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-24],r8d
		mov	qword [rbp-32],0
..@j607:
		nop
..@j603:
; [187] int_read_from_console(t);
%LINE 187+0
		lea	rax,[rbp-32]
		mov	rbx,rax
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
; [188] s := t;
%LINE 188+0
		mov	rcx,qword [rbp-16]
		mov	rdx,qword [rbp-32]
		call	fpc_ansistr_to_shortstr
..@j605:
%LINE 186+0
		nop
..@j604:
		mov	rcx,rbp
		call	SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$0000026B
%LINE 189+0
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c507:

SECTION .text
SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000026D:
..@c511:
; [197] end;
%LINE 197+0
		push	rbp
..@c513:
..@c514:
		mov	rbp,rcx
..@c515:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [194] begin
%LINE 194+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c512:

SECTION .text
	GLOBAL fpc_read_text_ansistr
fpc_read_text_ansistr:
	GLOBAL FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
..@c516:
; Temps allocated between rbp-40 and rbp-32
		push	rbp
..@c518:
..@c519:
		mov	rbp,rsp
..@c520:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var f located at rbp-8, size=OS_64
; Var s located at rbp-16, size=OS_64
; Var cp located at rbp-24, size=OS_32
; Var t located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-24],r8d
		mov	rax,qword [rbp-16]
		mov	qword [rax],0
		mov	qword [rbp-32],0
..@j616:
		nop
..@j612:
; [195] int_read_from_console(t);
%LINE 195+0
		lea	rbx,[rbp-32]
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
; [196] s := t;
%LINE 196+0
		mov	rcx,qword [rbp-16]
		mov	rdx,qword [rbp-32]
		call	fpc_ansistr_assign
..@j614:
%LINE 194+0
		nop
..@j613:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000026D
%LINE 197+0
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c517:

SECTION .text
SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000026E:
..@c521:
; [205] end;
%LINE 205+0
		push	rbp
..@c523:
..@c524:
		mov	rbp,rcx
..@c525:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [202] begin
%LINE 202+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c522:

SECTION .text
	GLOBAL fpc_write_text_sint
fpc_write_text_sint:
..@c526:
		push	rbp
..@c528:
..@c529:
		mov	rbp,rsp
..@c530:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var t located at rbp-16, size=OS_64
; Var l located at rbp-24, size=OS_S64
; Var s located at rbp-32, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],0
..@j625:
		nop
..@j621:
; [203] s := itoa(l);
%LINE 203+0
		mov	eax,dword [rbp-24]
		mov	edx,10
		mov	ecx,eax
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-32]
		mov	r8d,0
		call	fpc_pchar_to_ansistr
; [204] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 204+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-32]
		test	r8,r8
		je	..@j626
		mov	r8,qword [r8-8]
..@j626:
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleA
..@j623:
%LINE 202+0
		nop
..@j622:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000026E
%LINE 205+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c527:

SECTION .text
SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000026F:
..@c531:
; [213] end;
%LINE 213+0
		push	rbp
..@c533:
..@c534:
		mov	rbp,rcx
..@c535:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [210] begin
%LINE 210+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c532:

SECTION .text
	GLOBAL fpc_write_text_uint
fpc_write_text_uint:
..@c536:
		push	rbp
..@c538:
..@c539:
		mov	rbp,rsp
..@c540:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var t located at rbp-16, size=OS_64
; Var l located at rbp-24, size=OS_64
; Var s located at rbp-32, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],0
..@j635:
		nop
..@j631:
; [211] s := itoa(l);
%LINE 211+0
		mov	eax,dword [rbp-24]
		mov	edx,10
		mov	ecx,eax
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-32]
		mov	r8d,0
		call	fpc_pchar_to_ansistr
; [212] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 212+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-32]
		test	r8,r8
		je	..@j636
		mov	r8,qword [r8-8]
..@j636:
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleA
..@j633:
%LINE 210+0
		nop
..@j632:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000026F
%LINE 213+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c537:

SECTION .text
SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$00000270:
..@c541:
; [223] end;
%LINE 223+0
		push	rbp
..@c543:
..@c544:
		mov	rbp,rcx
..@c545:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [220] begin
%LINE 220+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c542:

SECTION .text
	GLOBAL fpc_write_text_qword
fpc_write_text_qword:
..@c546:
		push	rbp
..@c548:
..@c549:
		mov	rbp,rsp
..@c550:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var t located at rbp-16, size=OS_64
; Var q located at rbp-24, size=OS_64
; Var s located at rbp-32, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],0
..@j645:
		nop
..@j641:
; [221] s := itoa(q); // @@todo: itoa64 / signed / unsigned
%LINE 221+0
		mov	eax,dword [rbp-24]
		mov	edx,10
		mov	ecx,eax
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-32]
		mov	r8d,0
		call	fpc_pchar_to_ansistr
; [222] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 222+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-32]
		test	r8,r8
		je	..@j646
		mov	r8,qword [r8-8]
..@j646:
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleA
..@j643:
%LINE 220+0
		nop
..@j642:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$00000270
%LINE 223+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c547:

SECTION .text
SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$00000271:
..@c551:
; [232] end;
%LINE 232+0
		push	rbp
..@c553:
..@c554:
		mov	rbp,rcx
..@c555:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [228] begin
%LINE 228+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c552:

SECTION .text
	GLOBAL fpc_write_text_boolean
fpc_write_text_boolean:
..@c556:
		push	rbp
..@c558:
..@c559:
		mov	rbp,rsp
..@c560:
		lea	rsp,[rsp-80]
; Var len located at rbp-8, size=OS_S32
; Var t located at rbp-16, size=OS_64
; Var b located at rbp-24, size=OS_8
; Var s located at rbp-32, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
		mov	qword [rbp-32],0
..@j655:
		nop
..@j651:
; [230] if b then s := 'TRUE' else s := 'FALSE';
%LINE 230+0
		cmp	byte [rbp-24],0
		jne	..@j656
		jmp	..@j657
..@j656:
		lea	rax,[rbp-32]
		lea	rdx,[..@d21]
		mov	rcx,rax
		call	fpc_ansistr_assign
		jmp	..@j658
..@j657:
		lea	rcx,[rbp-32]
		lea	rdx,[..@d22]
		call	fpc_ansistr_assign
..@j658:
; [231] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 231+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-32]
		test	r8,r8
		je	..@j659
		mov	r8,qword [r8-8]
..@j659:
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		mov	r9,0
		call	_$dll$kernel32$WriteConsoleA
..@j653:
%LINE 228+0
		nop
..@j652:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$00000271
%LINE 232+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c557:

SECTION .text
	GLOBAL fpc_shortstr_setlength
fpc_shortstr_setlength:
	GLOBAL FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
..@c561:
; [strings.inc]
; [102] begin
%LINE 102+0 strings.inc
		push	rbp
..@c563:
..@c564:
		mov	rbp,rsp
..@c565:
		lea	rsp,[rsp-16]
; Var s located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [103] if len > 255 then len := 255;
%LINE 103+0
		cmp	qword [rbp-16],255
		jg	..@j662
		jmp	..@j663
..@j662:
		mov	qword [rbp-16],255
..@j663:
; [104] s[0] := chr(len);
%LINE 104+0
		mov	rdx,qword [rbp-8]
		mov	al,byte [rbp-16]
		mov	byte [rdx],al
; [105] end;
%LINE 105+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c562:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING:
..@c566:
; [111] begin
%LINE 111+0
		push	rbp
..@c568:
..@c569:
		mov	rbp,rsp
..@c570:
		lea	rsp,[rsp-64]
; Var s2 located at rbp-8, size=OS_64
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
; Var len located at rbp-28, size=OS_S32
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [112] len := length(s2);
%LINE 112+0
		mov	rax,qword [rbp-8]
		movzx	eax,byte [rax]
		mov	dword [rbp-28],eax
; [113] setlength(result, len);
%LINE 113+0
		movsxd	rdx,dword [rbp-28]
		mov	rcx,qword [rbp-24]
		mov	r8d,0
		call	fpc_ansistr_setlength
; [114] move(s2[1], result[1], len);
%LINE 114+0
		mov	rcx,qword [rbp-24]
		call	fpc_ansistr_unique
		mov	rdx,rax
		movsxd	r8,dword [rbp-28]
		mov	rax,qword [rbp-8]
		lea	rcx,[rax+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [115] end;
%LINE 115+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c567:

SECTION .text
	GLOBAL fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
..@c571:
; [117] begin
%LINE 117+0
		push	rbp
..@c573:
..@c574:
		mov	rbp,rsp
..@c575:
		lea	rsp,[rsp-64]
; Var s2 located at rbp-8, size=OS_64
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [118] result := fpcshortstrtoansistr(s2,cp);
%LINE 118+0
		mov	rax,qword [rbp-8]
		mov	rdx,rax
		mov	rcx,qword [rbp-24]
		mov	r8d,dword [rbp-16]
		call	SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
; [119] end;
%LINE 119+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c572:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING:
..@c576:
; [133] begin
%LINE 133+0
		push	rbp
..@c578:
..@c579:
		mov	rbp,rsp
..@c580:
		lea	rsp,[rsp-64]
; Var res located at rbp-8, size=OS_64
; Var sstr located at rbp-16, size=OS_64
; Var l located at rbp-20, size=OS_32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [134] l := pbyte(@sstr[0])^;
%LINE 134+0
		mov	rax,qword [rbp-16]
		movzx	eax,byte [rax]
		mov	dword [rbp-20],eax
; [135] setlength(res, l);
%LINE 135+0
		mov	edx,dword [rbp-20]
		mov	rcx,qword [rbp-8]
		call	fpc_shortstr_setlength
; [136] move(sstr[1], res[1], l);
%LINE 136+0
		mov	r8d,dword [rbp-20]
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+1]
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [137] end;
%LINE 137+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c577:

SECTION .text
	GLOBAL fpc_shortstr_to_shortstr
fpc_shortstr_to_shortstr:
	GLOBAL FPC_SHORTSTR_TO_SHORTSTR
FPC_SHORTSTR_TO_SHORTSTR:
..@c581:
; [139] begin
%LINE 139+0
		push	rbp
..@c583:
..@c584:
		mov	rbp,rsp
..@c585:
		lea	rsp,[rsp-48]
; Var res located at rbp-8, size=OS_64
; Var sstr located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [140] fpc_shortstr_toshortstr(res, sstr);
%LINE 140+0
		mov	rax,qword [rbp-16]
		mov	rdx,rax
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
; [141] end;
%LINE 141+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c582:

SECTION .text
	GLOBAL fpc_val_sint_shortstr
fpc_val_sint_shortstr:
	GLOBAL FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
..@c586:
; Temps allocated between rbp-40 and rbp-32
; [152] begin
%LINE 152+0
		push	rbp
..@c588:
..@c589:
		mov	rbp,rsp
..@c590:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var destsize located at rbp-8, size=OS_S64
; Var s located at rbp-16, size=OS_64
; Var code located at rbp-24, size=OS_64
; Var $result located at rbp-32, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [153] writeln('fpc_val_sint_shortstr');
%LINE 153+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld23]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [154] end;
%LINE 154+0
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c587:

SECTION .text
	GLOBAL fpc_shortstr_sint
fpc_shortstr_sint:
	GLOBAL FPC_SHORTSTR_SINT
FPC_SHORTSTR_SINT:
..@c591:
; Temps allocated between rbp-32 and rbp-24
; [157] begin
%LINE 157+0
		push	rbp
..@c593:
..@c594:
		mov	rbp,rsp
..@c595:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
; Var v located at rbp-8, size=OS_S64
; Var len located at rbp-16, size=OS_S64
; Var s located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [158] writeln('fpc_shortstr_sint');
%LINE 158+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld24]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [159] end;
%LINE 159+0
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c592:

SECTION .text
	GLOBAL fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
	GLOBAL FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
..@c596:
; [162] begin
%LINE 162+0
		push	rbp
..@c598:
..@c599:
		mov	rbp,rsp
..@c600:
		lea	rsp,[rsp-48]
; Var res located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [163] setlength(res, length(s2));
%LINE 163+0
		mov	rax,qword [rbp-16]
		test	rax,rax
		je	..@j678
		mov	rax,qword [rax-8]
..@j678:
		mov	rdx,rax
		mov	rcx,qword [rbp-8]
		call	fpc_shortstr_setlength
; [164] move(s2[1], res[1], length(s2));
%LINE 164+0
		mov	r8,qword [rbp-16]
		test	r8,r8
		je	..@j679
		mov	r8,qword [r8-8]
..@j679:
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+1]
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [165] end;
%LINE 165+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c597:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING:
..@c601:
; [171] begin
%LINE 171+0
		push	rbp
..@c603:
..@c604:
		mov	rbp,rsp
..@c605:
		lea	rsp,[rsp-80]
; Var dests located at rbp-8, size=OS_64
; Var s1 located at rbp-16, size=OS_64
; Var s2 located at rbp-24, size=OS_64
; Var len located at rbp-28, size=OS_S32
; Var cap located at rbp-32, size=OS_S32
; Var m located at rbp-36, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [172] len := 0;
%LINE 172+0
		mov	dword [rbp-28],0
; [173] cap := 255;
%LINE 173+0
		mov	dword [rbp-32],255
; [175] move(s1[1], dests[1], length(s1));
%LINE 175+0
		mov	rax,qword [rbp-16]
		movzx	r8d,byte [rax]
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+1]
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [176] len := length(s1);
%LINE 176+0
		mov	rax,qword [rbp-16]
		movzx	eax,byte [rax]
		mov	dword [rbp-28],eax
; [178] dec(cap, length(s1));
%LINE 178+0
		mov	rax,qword [rbp-16]
		movzx	eax,byte [rax]
		sub	dword [rbp-32],eax
; [179] if cap > 0 then begin
%LINE 179+0
		cmp	dword [rbp-32],0
		jg	..@j682
		jmp	..@j683
..@j682:
; [181] m := length(s2);
%LINE 181+0
		mov	rax,qword [rbp-24]
		movzx	eax,byte [rax]
		mov	dword [rbp-36],eax
; [182] if m > cap then m := cap;
%LINE 182+0
		mov	eax,dword [rbp-36]
		cmp	eax,dword [rbp-32]
		jg	..@j684
		jmp	..@j685
..@j684:
		mov	eax,dword [rbp-32]
		mov	dword [rbp-36],eax
..@j685:
; [183] move(s2[1], dests[length(s1)+1], m);
%LINE 183+0
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rbp-16]
		movzx	eax,byte [rax]
		lea	eax,[eax+1]
		movzx	eax,al
		lea	rdx,[rdx+rax*1]
		movsxd	r8,dword [rbp-36]
		mov	rax,qword [rbp-24]
		lea	rcx,[rax+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [184] inc(len, m);
%LINE 184+0
		mov	eax,dword [rbp-36]
		add	dword [rbp-28],eax
..@j683:
; [187] dests[0] := chr(len);
%LINE 187+0
		mov	rdx,qword [rbp-8]
		mov	al,byte [rbp-28]
		mov	byte [rdx],al
; [188] end;
%LINE 188+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c602:

SECTION .text
	GLOBAL fpc_shortstr_concat
fpc_shortstr_concat:
..@c606:
; [190] begin
%LINE 190+0
		push	rbp
..@c608:
..@c609:
		mov	rbp,rsp
..@c610:
		lea	rsp,[rsp-64]
; Var dests located at rbp-8, size=OS_64
; Var s1 located at rbp-16, size=OS_64
; Var s2 located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [191] fpcshortstrconcat(dests, s1, s2);
%LINE 191+0
		mov	rax,qword [rbp-24]
		mov	r8,rax
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
; [192] end;
%LINE 192+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c607:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING:
..@c611:
; [204] begin
%LINE 204+0
		push	rbp
..@c613:
..@c614:
		mov	rbp,rsp
..@c615:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var index located at rbp-16, size=OS_S64
; Var count located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	qword [rbp-24],r9
; [205] if count < 0 then count := 0;
%LINE 205+0
		cmp	qword [rbp-24],0
		jl	..@j690
		jmp	..@j691
..@j690:
		mov	qword [rbp-24],0
..@j691:
; [206] if index > 1 then dec(index) else index := 0;
%LINE 206+0
		cmp	qword [rbp-16],1
		jg	..@j692
		jmp	..@j693
..@j692:
		dec	qword [rbp-16]
		jmp	..@j694
..@j693:
		mov	qword [rbp-16],0
..@j694:
; [207] if index > length(s) then
%LINE 207+0
		mov	rax,qword [rbp-8]
		movzx	eax,byte [rax]
		cmp	rax,qword [rbp-16]
		jl	..@j695
		jmp	..@j696
..@j695:
; [208] count := 0
%LINE 208+0
		mov	qword [rbp-24],0
		jmp	..@j697
..@j696:
; [209] else if count > length(s)-index then
%LINE 209+0
		mov	rax,qword [rbp-8]
		movzx	eax,byte [rax]
		sub	rax,qword [rbp-16]
		cmp	rax,qword [rbp-24]
		jl	..@j698
		jmp	..@j699
..@j698:
; [210] count := length(s)-index;
%LINE 210+0
		mov	rax,qword [rbp-8]
		movzx	eax,byte [rax]
		sub	rax,qword [rbp-16]
		mov	qword [rbp-24],rax
..@j699:
..@j697:
; [211] result[0] := chr(count);
%LINE 211+0
		mov	rax,qword [rbp-32]
		mov	dl,byte [rbp-24]
		mov	byte [rax],dl
; [212] move(s[index+1], result[1], count);
%LINE 212+0
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rbp-16]
		lea	rax,[rax+1]
		movzx	eax,al
		lea	rcx,[rdx+rax*1]
		mov	rax,qword [rbp-32]
		lea	rdx,[rax+1]
		mov	r8,qword [rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [213] end;
%LINE 213+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c612:

SECTION .text
	GLOBAL fpc_shortstr_copy
fpc_shortstr_copy:
..@c616:
; [215] begin
%LINE 215+0
		push	rbp
..@c618:
..@c619:
		mov	rbp,rsp
..@c620:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var index located at rbp-16, size=OS_S64
; Var count located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	qword [rbp-24],r9
; [216] result := fpcshortstrcopy(s, index, count);
%LINE 216+0
		mov	rax,qword [rbp-8]
		mov	rdx,rax
		mov	rcx,qword [rbp-32]
		mov	r9,qword [rbp-24]
		mov	r8,qword [rbp-16]
		call	SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
; [217] end;
%LINE 217+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c617:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER:
..@c621:
; [229] begin
%LINE 229+0
		push	rbp
..@c623:
..@c624:
		mov	rbp,rsp
..@c625:
		lea	rsp,[rsp-48]
; Var dests located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [230] if dests = s2 then exit;
%LINE 230+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	rax,qword [rbp-16]
		je	..@j704
		jmp	..@j705
..@j704:
		jmp	..@j702
..@j705:
; [231] if s2 <> nil then
%LINE 231+0
		cmp	qword [rbp-16],0
		jne	..@j706
		jmp	..@j707
..@j706:
; [232] if PAnsiRec(s2-AnsiFirstOff)^.Ref > 0 then
%LINE 232+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax-16],0
		jg	..@j708
		jmp	..@j709
..@j708:
; [234] inc(PAnsiRec(s2-AnsiFirstOff)^.Ref);
%LINE 234+0
		mov	rax,qword [rbp-16]
		inc	qword [rax-16]
..@j709:
..@j707:
; [236] fpc_ansistr_decr_ref(dests);
%LINE 236+0
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_decr_ref
; [238] dests := s2;
%LINE 238+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	qword [rax],rdx
..@j702:
; [239] end;
%LINE 239+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c622:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c626:
; [241] begin
%LINE 241+0
		push	rbp
..@c628:
..@c629:
		mov	rbp,rsp
..@c630:
		lea	rsp,[rsp-48]
; Var dests located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [242] fpcansistrassign(dests, s2);
%LINE 242+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
; [243] end;
%LINE 243+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c627:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD:
..@c631:
; [258] begin
%LINE 258+0
		push	rbp
..@c633:
..@c634:
		mov	rbp,rsp
..@c635:
		lea	rsp,[rsp-80]
; Var S located at rbp-8, size=OS_64
; Var l located at rbp-16, size=OS_S64
; Var cp located at rbp-24, size=OS_32
; Var Temp located at rbp-32, size=OS_64
; Var lens located at rbp-40, size=OS_S64
; Var lena located at rbp-48, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-24],r8d
; [259] if (l > 0) then begin
%LINE 259+0
		cmp	qword [rbp-16],0
		jg	..@j714
		jmp	..@j715
..@j714:
; [260] if Pointer(S) = nil then begin
%LINE 260+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j716
		jmp	..@j717
..@j716:
; [261] Pointer(S) := new_ansistring(L);
%LINE 261+0
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
; [263] cp := 0;
%LINE 263+0
		mov	dword [rbp-24],0
; [264] PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage := cp;
%LINE 264+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	edx,dword [rbp-24]
		mov	dword [rax-32],edx
		jmp	..@j718
..@j717:
; [265] end else if PAnsiRec(Pointer(S) - AnsiFirstOff)^.Ref = 1 then begin
%LINE 265+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	qword [rax-16],1
		je	..@j719
		jmp	..@j720
..@j719:
; [266] Temp := Pointer(s) - AnsiFirstOff;
%LINE 266+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax-32]
		mov	qword [rbp-32],rax
; [268] lens := 4;
%LINE 268+0
		mov	qword [rbp-40],4
; [269] lena := AnsiFirstOff + L + sizeof(ansichar);
%LINE 269+0
		mov	rax,qword [rbp-16]
		lea	rax,[rax+32]
		lea	rax,[rax+1]
		mov	qword [rbp-48],rax
; [271] if (lena > lens) or ((lens > 32) and (lena <= SizeInt(SizeUint(lens) div 2))) then pointer(s) := xreallocmem(temp, 4) + AnsiFirstOff;
%LINE 271+0
		mov	rax,qword [rbp-48]
		cmp	rax,qword [rbp-40]
		jg	..@j721
		jmp	..@j722
..@j722:
		cmp	qword [rbp-40],32
		jg	..@j724
		jmp	..@j725
..@j724:
		mov	rax,qword [rbp-40]
		shr	rax,1
		cmp	rax,qword [rbp-48]
		jge	..@j726
		jmp	..@j725
..@j726:
		jmp	..@j721
..@j725:
		jmp	..@j723
..@j721:
		lea	rcx,[rbp-32]
		mov	rdx,4
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
		lea	rax,[rax+32]
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
..@j723:
		jmp	..@j727
..@j720:
; [274] Temp := new_ansistring(4);
%LINE 274+0
		mov	rcx,4
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbp-32],rax
; [275] PAnsiRec(Pointer(Temp) - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
%LINE 275+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-32]
		mov	eax,dword [rax-32]
		mov	dword [rdx-32],eax
; [278] lens := PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len + 1;
%LINE 278+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rax,qword [rax-8]
		lea	rax,[rax+1]
		mov	qword [rbp-40],rax
; [279] if l < lens then lens := l;
%LINE 279+0
		mov	rax,qword [rbp-16]
		cmp	rax,qword [rbp-40]
		jl	..@j728
		jmp	..@j729
..@j728:
		mov	rax,qword [rbp-16]
		mov	qword [rbp-40],rax
..@j729:
; [280] Move(Pointer(S)^, Temp^, lens);
%LINE 280+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	rdx,qword [rbp-32]
		mov	r8,qword [rbp-40]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [281] fpc_ansistr_decr_ref(Pointer(s));
%LINE 281+0
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_decr_ref
; [282] Pointer(S) := Temp;
%LINE 282+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-32]
		mov	qword [rax],rdx
..@j727:
..@j718:
; [285] pbyte(Pointer(S) + l)^ := 0;
%LINE 285+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-16]
		lea	rax,[rax+rdx]
		mov	byte [rax],0
; [286] PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len := l;
%LINE 286+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-16]
		mov	qword [rax-8],rdx
		jmp	..@j730
..@j715:
; [288] fpc_ansistr_decr_ref(Pointer(S));
%LINE 288+0
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_decr_ref
..@j730:
; [289] end;
%LINE 289+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c632:

SECTION .text
	GLOBAL fpc_ansistr_setlength
fpc_ansistr_setlength:
	GLOBAL FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
..@c636:
; [291] begin
%LINE 291+0
		push	rbp
..@c638:
..@c639:
		mov	rbp,rsp
..@c640:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var l located at rbp-16, size=OS_S64
; Var cp located at rbp-24, size=OS_32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-24],r8d
; [292] fpcansistrsetlength(S, l, cp);
%LINE 292+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	r8d,dword [rbp-24]
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
; [293] end;
%LINE 293+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c637:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRDECRREF$POINTER
SYSTEM_$$_FPCANSISTRDECRREF$POINTER:
..@c641:
; [307] begin
%LINE 307+0
		push	rbp
..@c643:
..@c644:
		mov	rbp,rsp
..@c645:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
; Var p located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [308] if s = nil then exit;
%LINE 308+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j735
		jmp	..@j736
..@j735:
		jmp	..@j733
..@j736:
; [309] p := PAnsiRec(s-AnsiFirstOff);
%LINE 309+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax-32]
		mov	qword [rbp-16],rax
; [310] s := nil;
%LINE 310+0
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
; [311] if p^.ref < 0 then exit;
%LINE 311+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax+16],0
		jl	..@j737
		jmp	..@j738
..@j737:
		jmp	..@j733
..@j738:
; [315] dec(p^.Ref);
%LINE 315+0
		mov	rax,qword [rbp-16]
		dec	qword [rax+16]
; [316] if p^.Ref <= 0 then FreeMem(p);
%LINE 316+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax+16],0
		jle	..@j739
		jmp	..@j740
..@j739:
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j740:
..@j733:
; [317] end;
%LINE 317+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c642:

SECTION .text
	GLOBAL fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
	GLOBAL FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
..@c646:
; [319] begin
%LINE 319+0
		push	rbp
..@c648:
..@c649:
		mov	rbp,rsp
..@c650:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [320] fpcansistrdecrref(s);
%LINE 320+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FPCANSISTRDECRREF$POINTER
; [321] end;
%LINE 321+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c647:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRINCRREF$POINTER
SYSTEM_$$_FPCANSISTRINCRREF$POINTER:
..@c651:
; [336] begin
%LINE 336+0
		push	rbp
..@c653:
..@c654:
		mov	rbp,rsp
..@c655:
		lea	rsp,[rsp-16]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [337] if s = nil then exit;
%LINE 337+0
		cmp	qword [rbp-8],0
		je	..@j745
		jmp	..@j746
..@j745:
		jmp	..@j743
..@j746:
; [338] if PAnsiRec(s-AnsiFirstOff)^.Ref < 0 then exit;
%LINE 338+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax-16],0
		jl	..@j747
		jmp	..@j748
..@j747:
		jmp	..@j743
..@j748:
; [340] inc(PAnsiRec(s-AnsiFirstOff)^.Ref);
%LINE 340+0
		mov	rax,qword [rbp-8]
		inc	qword [rax-16]
..@j743:
; [342] end;
%LINE 342+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c652:

SECTION .text
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
..@c656:
; [344] begin
%LINE 344+0
		push	rbp
..@c658:
..@c659:
		mov	rbp,rsp
..@c660:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [345] fpcansistrincrref(s);
%LINE 345+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FPCANSISTRINCRREF$POINTER
; [346] end;
%LINE 346+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c657:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD:
..@c661:
; [358] begin
%LINE 358+0
		push	rbp
..@c663:
..@c664:
		mov	rbp,rsp
..@c665:
		lea	rsp,[rsp-64]
; Var dests located at rbp-8, size=OS_64
; Var s1 located at rbp-16, size=OS_64
; Var s2 located at rbp-24, size=OS_64
; Var cp located at rbp-32, size=OS_32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	dword [rbp-32],r9d
; [359] pointer(dests) := new_ansistring(length(s1)+length(s2));
%LINE 359+0
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		je	..@j753
		mov	rdx,qword [rdx-8]
..@j753:
		mov	rax,qword [rbp-24]
		test	rax,rax
		je	..@j754
		mov	rax,qword [rax-8]
..@j754:
		lea	rcx,[rdx+rax]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
; [360] move(s1[1], dests[1], length(s1));
%LINE 360+0
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8,qword [rbp-16]
		test	r8,r8
		je	..@j755
		mov	r8,qword [r8-8]
..@j755:
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [361] move(s2[1], dests[length(s1)+1], length(s2));
%LINE 361+0
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_unique
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		je	..@j756
		mov	rdx,qword [rdx-8]
..@j756:
		lea	rdx,[rdx+1]
		lea	rdx,[rax+rdx*1-1]
		mov	r8,qword [rbp-24]
		test	r8,r8
		je	..@j757
		mov	r8,qword [r8-8]
..@j757:
		mov	rcx,qword [rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [362] end;
%LINE 362+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c662:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c666:
; [364] begin
%LINE 364+0
		push	rbp
..@c668:
..@c669:
		mov	rbp,rsp
..@c670:
		lea	rsp,[rsp-64]
; Var dests located at rbp-8, size=OS_64
; Var s1 located at rbp-16, size=OS_64
; Var s2 located at rbp-24, size=OS_64
; Var cp located at rbp-32, size=OS_32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	dword [rbp-32],r9d
; [365] fpcansistrconcat(dests, s1, s2, cp);
%LINE 365+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	r9d,dword [rbp-32]
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
; [366] end;
%LINE 366+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c667:

SECTION .text
	GLOBAL fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
..@c671:
; Temps allocated between rbp-40 and rbp-32
; [377] begin
%LINE 377+0
		push	rbp
..@c673:
..@c674:
		mov	rbp,rsp
..@c675:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var dests located at rbp-8, size=OS_64
; Var sarr located at rbp-16, size=OS_64
; Var cp located at rbp-24, size=OS_32
; Var $highSARR located at rbp-32, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-32],r8
		mov	dword [rbp-24],r9d
; [378] writeln('fpc_ansistr_concat_multi');
%LINE 378+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld25]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [379] end;
%LINE 379+0
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c672:

SECTION .text
	GLOBAL SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER:
..@c676:
; [386] begin
%LINE 386+0
		push	rbp
..@c678:
..@c679:
		mov	rbp,rsp
..@c680:
		lea	rsp,[rsp-64]
; Var S located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var SNew located at rbp-24, size=OS_64
; Var L located at rbp-32, size=OS_S64
		mov	qword [rbp-8],rcx
; [387] L := PAnsiRec(Pointer(S) - AnsiFirstOff)^.len;
%LINE 387+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rax,qword [rax-8]
		mov	qword [rbp-32],rax
; [388] SNew := new_ansistring(L);
%LINE 388+0
		mov	rcx,qword [rbp-32]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbp-24],rax
; [389] Move(Pointer(S)^, SNew^, L + 1);
%LINE 389+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	rax,qword [rbp-32]
		lea	r8,[rax+1]
		mov	rdx,qword [rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [390] PAnsiRec(SNew - AnsiFirstOff)^.len := L;
%LINE 390+0
		mov	rdx,qword [rbp-24]
		mov	rax,qword [rbp-32]
		mov	qword [rdx-8],rax
; [391] PAnsiRec(SNew - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
%LINE 391+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-24]
		mov	eax,dword [rax-32]
		mov	dword [rdx-32],eax
; [393] pointer(S) := SNew;
%LINE 393+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-24]
		mov	qword [rax],rdx
; [394] pointer(result) := SNew;
%LINE 394+0
		mov	rax,qword [rbp-24]
		mov	qword [rbp-16],rax
; [395] end;
%LINE 395+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c677:

SECTION .text
SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
..@c681:
; [397] begin
%LINE 397+0
		push	rbp
..@c683:
..@c684:
		mov	rbp,rsp
..@c685:
		lea	rsp,[rsp-48]
; Var S located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [398] result := fpctruelyansistrunique(s);
%LINE 398+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
		mov	qword [rbp-16],rax
; [399] end;
%LINE 399+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c682:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
	GLOBAL FPC_ANSISTR_UNIQUE
FPC_ANSISTR_UNIQUE:
..@c686:
; [410] begin
%LINE 410+0
		push	rbp
..@c688:
..@c689:
		mov	rbp,rsp
..@c690:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [411] pointer(result) := pointer(s);
%LINE 411+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-16],rax
; [412] if (result <> nil) and (PAnsiRec(result - AnsiFirstOff)^.Ref <> 1) then result := fpc_truely_ansistr_unique(s);
%LINE 412+0
		cmp	qword [rbp-16],0
		jne	..@j768
		jmp	..@j769
..@j768:
		mov	rax,qword [rbp-16]
		cmp	qword [rax-16],1
		jne	..@j770
		jmp	..@j769
..@j770:
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
		mov	qword [rbp-16],rax
..@j769:
; [413] end;
%LINE 413+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c687:

SECTION .text
	GLOBAL fpc_ansistr_sint
fpc_ansistr_sint:
	GLOBAL FPC_ANSISTR_VALSINT
FPC_ANSISTR_VALSINT:
..@c691:
; Temps allocated between rbp-40 and rbp-32
; [416] begin
%LINE 416+0
		push	rbp
..@c693:
..@c694:
		mov	rbp,rsp
..@c695:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var v located at rbp-8, size=OS_S64
; Var len located at rbp-16, size=OS_S64
; Var s located at rbp-24, size=OS_64
; Var cp located at rbp-32, size=OS_32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	dword [rbp-32],r9d
		mov	rax,qword [rbp-24]
		mov	qword [rax],0
; [417] writeln('fpc_ansistr_sint');
%LINE 417+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld26]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [418] end;
%LINE 418+0
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c692:

SECTION .text
	GLOBAL SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING:
..@c696:
; [422] begin
%LINE 422+0
		push	rbp
..@c698:
..@c699:
		mov	rbp,rsp
..@c700:
		lea	rsp,[rsp-64]
; Var c located at rbp-8, size=OS_8
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	byte [rbp-8],dl
		mov	dword [rbp-16],r8d
; [423] pointer(result) := new_ansistring(1);
%LINE 423+0
		mov	rax,1
		mov	rcx,rax
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	rdx,qword [rbp-24]
		mov	qword [rdx],rax
; [424] move(c, result[1], 1);
%LINE 424+0
		mov	rcx,qword [rbp-24]
		call	fpc_ansistr_unique
		mov	rdx,rax
		lea	rcx,[rbp-8]
		mov	r8,1
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [425] end;
%LINE 425+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c697:

SECTION .text
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c701:
; [427] begin
%LINE 427+0
		push	rbp
..@c703:
..@c704:
		mov	rbp,rsp
..@c705:
		lea	rsp,[rsp-64]
; Var c located at rbp-8, size=OS_8
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	byte [rbp-8],dl
		mov	dword [rbp-16],r8d
; [428] Exit(fpcchartoansistr(c, cp));
%LINE 428+0
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	r8d,dword [rbp-16]
		movzx	edx,byte [rbp-8]
		call	SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
		jmp	..@j775
..@j775:
; [429] end;
%LINE 429+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c702:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64:
..@c706:
; [442] begin
%LINE 442+0
		push	rbp
..@c708:
..@c709:
		mov	rbp,rsp
..@c710:
		lea	rsp,[rsp-64]
; Var s1 located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [443] if pointer(s1) = pointer(s2) then exit(0);
%LINE 443+0
		mov	rax,qword [rbp-8]
		cmp	rax,qword [rbp-16]
		je	..@j779
		jmp	..@j780
..@j779:
		mov	qword [rbp-24],0
		jmp	..@j777
..@j780:
; [444] if (pointer(s1) = nil) or (pointer(s2) = nil) then exit(-1);
%LINE 444+0
		cmp	qword [rbp-8],0
		je	..@j781
		jmp	..@j782
..@j782:
		cmp	qword [rbp-16],0
		je	..@j781
		jmp	..@j783
..@j781:
		mov	qword [rbp-24],-1
		jmp	..@j777
..@j783:
; [445] if length(s1) <> length(s2) then exit(-1);
%LINE 445+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j784
		mov	rax,qword [rax-8]
..@j784:
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		je	..@j785
		mov	rdx,qword [rdx-8]
..@j785:
		cmp	rax,rdx
		jne	..@j786
		jmp	..@j787
..@j786:
		mov	qword [rbp-24],-1
		jmp	..@j777
..@j787:
; [446] result := CompareByte(s1[1], s2[1], length(s1));
%LINE 446+0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j788
		mov	r8,qword [r8-8]
..@j788:
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		mov	qword [rbp-24],rax
..@j777:
; [447] end;
%LINE 447+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c707:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c711:
; [449] begin
%LINE 449+0
		push	rbp
..@c713:
..@c714:
		mov	rbp,rsp
..@c715:
		lea	rsp,[rsp-64]
; Var s1 located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [450] result := fpcansistrcompareequal(s1, s2);
%LINE 450+0
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	rdx,rax
		call	SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
		mov	qword [rbp-24],rax
; [451] end;
%LINE 451+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c712:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING:
..@c716:
; [465] begin
%LINE 465+0
		push	rbp
..@c718:
..@c719:
		mov	rbp,rsp
..@c720:
		lea	rsp,[rsp-80]
; Var s located at rbp-8, size=OS_64
; Var index located at rbp-16, size=OS_S64
; Var size located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_64
; Var ResultAddress located at rbp-40, size=OS_64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	qword [rbp-24],r9
; [466] ResultAddress:=Nil;
%LINE 466+0
		mov	qword [rbp-40],0
; [467] dec(index);
%LINE 467+0
		dec	qword [rbp-16]
; [468] if Index < 0 then
%LINE 468+0
		cmp	qword [rbp-16],0
		jl	..@j793
		jmp	..@j794
..@j793:
; [469] Index := 0;
%LINE 469+0
		mov	qword [rbp-16],0
..@j794:
; [472] if (Size>Length(S)) or
%LINE 472+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j795
		mov	rax,qword [rax-8]
..@j795:
		cmp	rax,qword [rbp-24]
		jl	..@j796
		jmp	..@j797
..@j797:
; [473] (Index+Size>Length(S)) then
%LINE 473+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-24]
		lea	rax,[rax+rdx]
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j799
		mov	rdx,qword [rdx-8]
..@j799:
		cmp	rax,rdx
		jg	..@j796
		jmp	..@j798
..@j796:
; [474] Size:=Length(S)-Index;
%LINE 474+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j800
		mov	rax,qword [rax-8]
..@j800:
		sub	rax,qword [rbp-16]
		mov	qword [rbp-24],rax
..@j798:
; [475] If Size>0 then
%LINE 475+0
		cmp	qword [rbp-24],0
		jg	..@j801
		jmp	..@j802
..@j801:
; [477] ResultAddress:=new_ansistring(size);
%LINE 477+0
		mov	rcx,qword [rbp-24]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbp-40],rax
; [478] if ResultAddress<>Nil then
%LINE 478+0
		cmp	qword [rbp-40],0
		jne	..@j803
		jmp	..@j804
..@j803:
; [480] Move(Pointer(Pointer(S)+index)^,ResultAddress^,Size);
%LINE 480+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		lea	rcx,[rax+rdx]
		mov	rdx,qword [rbp-40]
		mov	r8,qword [rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [481] PByte(ResultAddress+Size)^:=0;
%LINE 481+0
		mov	rax,qword [rbp-40]
		mov	rdx,qword [rbp-24]
		lea	rax,[rax+rdx]
		mov	byte [rax],0
; [482] PAnsiRec(ResultAddress-AnsiFirstOff)^.Len:=Size;
%LINE 482+0
		mov	rax,qword [rbp-40]
		mov	rdx,qword [rbp-24]
		mov	qword [rax-8],rdx
; [483] PAnsiRec(ResultAddress-AnsiFirstOff)^.CodePage:=PAnsiRec(Pointer(S)-AnsiFirstOff)^.CodePage;
%LINE 483+0
		mov	rdx,qword [rbp-40]
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax-32]
		mov	dword [rdx-32],eax
..@j804:
..@j802:
; [486] fpc_ansistr_decr_ref(Pointer(fpcansistrcopy));
%LINE 486+0
		mov	rcx,qword [rbp-32]
		call	FPC_ANSISTR_DECR_REF
; [487] Pointer(fpcansistrCopy):=ResultAddress;
%LINE 487+0
		mov	rdx,qword [rbp-32]
		mov	rax,qword [rbp-40]
		mov	qword [rdx],rax
; [488] end;
%LINE 488+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c717:

SECTION .text
	GLOBAL fpc_ansistr_copy
fpc_ansistr_copy:
..@c721:
; [498] begin
%LINE 498+0
		push	rbp
..@c723:
..@c724:
		mov	rbp,rsp
..@c725:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var index located at rbp-16, size=OS_S64
; Var size located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	qword [rbp-24],r9
; [499] result := fpcansistrcopy(s, index, size);
%LINE 499+0
		mov	rax,qword [rbp-32]
		mov	rcx,rax
		mov	r9,qword [rbp-24]
		mov	r8,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
; [500] end;
%LINE 500+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c722:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER:
..@c726:
; [512] begin
%LINE 512+0
		push	rbp
..@c728:
..@c729:
		mov	rbp,rsp
..@c730:
		lea	rsp,[rsp-48]
; Var s1 located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [513] if s1 = s2 then exit;
%LINE 513+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	rax,qword [rbp-16]
		je	..@j809
		jmp	..@j810
..@j809:
		jmp	..@j807
..@j810:
; [514] if s2 <> nil then begin
%LINE 514+0
		cmp	qword [rbp-16],0
		jne	..@j811
		jmp	..@j812
..@j811:
; [515] setlength(widestring(s1), length(widestring(s2)));
%LINE 515+0
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		je	..@j813
		mov	edx,dword [rdx-4]
		shr	rdx,1
..@j813:
		mov	rcx,qword [rbp-8]
		call	fpc_widestr_setlength
; [516] move(s2^, s1^, length(widestring(s1))+1*sizeof(WideChar));
%LINE 516+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		test	rax,rax
		je	..@j814
		mov	eax,dword [rax-4]
		shr	rax,1
..@j814:
		lea	r8,[rax+2]
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
		jmp	..@j815
..@j812:
; [518] fpc_widestr_decr_ref(s1); // will set s1 to nil
%LINE 518+0
		mov	rcx,qword [rbp-8]
		call	fpc_widestr_decr_ref
..@j815:
..@j807:
; [519] end;
%LINE 519+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c727:

SECTION .text
	GLOBAL fpc_widestr_assign
fpc_widestr_assign:
	GLOBAL FPC_WIDESTR_ASSIGN
FPC_WIDESTR_ASSIGN:
..@c731:
; [521] begin
%LINE 521+0
		push	rbp
..@c733:
..@c734:
		mov	rbp,rsp
..@c735:
		lea	rsp,[rsp-48]
; Var s1 located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [522] fpcwidestrassign(s1, s2);
%LINE 522+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
; [523] end;
%LINE 523+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c732:

SECTION .text
	GLOBAL fpc_widestr_setlength
fpc_widestr_setlength:
	GLOBAL FPC_WIDESTR_SETLENGTH
FPC_WIDESTR_SETLENGTH:
..@c736:
; [534] begin
%LINE 534+0
		push	rbp
..@c738:
..@c739:
		mov	rbp,rsp
..@c740:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
; Var l located at rbp-16, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [535] pointer(s) := new_widestring(l);
%LINE 535+0
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
; [536] end;
%LINE 536+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c737:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
SYSTEM_$$_FPCWIDESTRDECRREF$POINTER:
..@c741:
; [540] Begin
%LINE 540+0
		push	rbp
..@c743:
..@c744:
		mov	rbp,rsp
..@c745:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [541] if s = nil then exit;
%LINE 541+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j822
		jmp	..@j823
..@j822:
		jmp	..@j820
..@j823:
; [542] dec(s, WideFirstOff);
%LINE 542+0
		mov	rax,qword [rbp-8]
		sub	qword [rax],4
; [543] xfreemem(s);
%LINE 543+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		call	_$dll$rtllib$xfreemem
; [544] s := nil;
%LINE 544+0
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
..@j820:
; [545] end;
%LINE 545+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c742:

SECTION .text
	GLOBAL fpc_widestr_decr_ref
fpc_widestr_decr_ref:
	GLOBAL FPC_WIDESTR_DECR_REF
FPC_WIDESTR_DECR_REF:
..@c746:
; [547] begin
%LINE 547+0
		push	rbp
..@c748:
..@c749:
		mov	rbp,rsp
..@c750:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [548] fpcwidestrdecrref(s);
%LINE 548+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
; [549] end;
%LINE 549+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c747:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
SYSTEM_$$_FPCWIDESTRINCRREF$POINTER:
..@c751:
; [566] Begin
%LINE 566+0
		push	rbp
..@c753:
..@c754:
		mov	rbp,rsp
..@c755:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
; Var p located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [567] if s = nil then exit;
%LINE 567+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j828
		jmp	..@j829
..@j828:
		jmp	..@j826
..@j829:
; [568] p := new_widestring(length(WideString(s)));
%LINE 568+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		test	rcx,rcx
		je	..@j830
		mov	ecx,dword [rcx-4]
		shr	rcx,1
..@j830:
		call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
		mov	qword [rbp-16],rax
; [569] move(s^, p^, (length(WideString(s))+1)*sizeof(widechar));
%LINE 569+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		test	rax,rax
		je	..@j831
		mov	eax,dword [rax-4]
		shr	rax,1
..@j831:
		lea	r8,[rax+1]
		shl	r8,1
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [570] s := p;
%LINE 570+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	qword [rax],rdx
..@j826:
; [571] end;
%LINE 571+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c752:

SECTION .text
	GLOBAL fpc_widestr_incr_ref
fpc_widestr_incr_ref:
	GLOBAL FPC_WIDESTR_INCR_REF
FPC_WIDESTR_INCR_REF:
..@c756:
; [573] begin
%LINE 573+0
		push	rbp
..@c758:
..@c759:
		mov	rbp,rsp
..@c760:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [574] fpcwidestrincrref(s);
%LINE 574+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
; [575] end;
%LINE 575+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c757:

SECTION .text
	GLOBAL fpc_pchar_to_shortstr
fpc_pchar_to_shortstr:
	GLOBAL FPC_PCHAR_TO_SHORTSTR
FPC_PCHAR_TO_SHORTSTR:
..@c761:
; Temps allocated between rbp-24 and rbp-16
; [593] begin
%LINE 593+0
		push	rbp
..@c763:
..@c764:
		mov	rbp,rsp
..@c765:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var res located at rbp-8, size=OS_64
; Var p located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [594] writeln('fpc_pchar_to_shortstr');
%LINE 594+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld27]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [595] end;
%LINE 595+0
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c762:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING:
..@c766:
; [601] begin
%LINE 601+0
		push	rbp
..@c768:
..@c769:
		mov	rbp,rsp
..@c770:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
; Var l located at rbp-28, size=OS_32
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [602] l := strlen(p);
%LINE 602+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	dword [rbp-28],eax
; [603] pointer(result) := new_ansistring(l);
%LINE 603+0
		mov	ecx,dword [rbp-28]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	rdx,qword [rbp-24]
		mov	qword [rdx],rax
; [604] move(p^, result[1], l);
%LINE 604+0
		mov	rcx,qword [rbp-24]
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8d,dword [rbp-28]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [605] end;
%LINE 605+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c767:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c771:
; [607] begin
%LINE 607+0
		push	rbp
..@c773:
..@c774:
		mov	rbp,rsp
..@c775:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [608] result := fpcpchartoansistr(p, cp);
%LINE 608+0
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	r8d,dword [rbp-16]
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
; [609] end;
%LINE 609+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c772:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING:
..@c776:
; [627] begin
%LINE 627+0
		push	rbp
..@c778:
..@c779:
		mov	rbp,rsp
..@c780:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var len located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [628] result := '';
%LINE 628+0
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_widestr_assign
; [629] if p = nil then exit;
%LINE 629+0
		cmp	qword [rbp-8],0
		je	..@j842
		jmp	..@j843
..@j842:
		jmp	..@j840
..@j843:
; [630] len := IndexWord(p^, -1, 0);
%LINE 630+0
		mov	rcx,qword [rbp-8]
		mov	r8d,0
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	qword [rbp-24],rax
; [631] setlength(result, len);
%LINE 631+0
		mov	rcx,qword [rbp-16]
		mov	rdx,qword [rbp-24]
		call	fpc_widestr_setlength
; [632] if len > 0 then move(p^, result[1], len*2);
%LINE 632+0
		cmp	qword [rbp-24],0
		jg	..@j844
		jmp	..@j845
..@j844:
		mov	r8,qword [rbp-24]
		shl	r8,1
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j845:
..@j840:
; [633] end;
%LINE 633+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c777:

SECTION .text
	GLOBAL fpc_pwidechar_to_widestr
fpc_pwidechar_to_widestr:
..@c781:
; [635] begin
%LINE 635+0
		push	rbp
..@c783:
..@c784:
		mov	rbp,rsp
..@c785:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [636] result := fpcpwidechartowidestr(p);
%LINE 636+0
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
; [637] end;
%LINE 637+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c782:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING:
..@c786:
; Temps allocated between rbp-48 and rbp-40
; [651] begin
%LINE 651+0
		push	rbp
..@c788:
..@c789:
		mov	rbp,rsp
..@c790:
		lea	rsp,[rsp-80]
		mov	qword [rbp-48],rbx
; Var p located at rbp-8, size=OS_64
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
; Var len located at rbp-32, size=OS_S64
; Var i located at rbp-40, size=OS_S64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [652] result := '';
%LINE 652+0
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_ansistr_assign
; [653] if p = nil then exit;
%LINE 653+0
		cmp	qword [rbp-8],0
		je	..@j850
		jmp	..@j851
..@j850:
		jmp	..@j848
..@j851:
; [654] len := IndexWord(p^, -1, 0);
%LINE 654+0
		mov	rcx,qword [rbp-8]
		mov	r8d,0
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	qword [rbp-32],rax
; [655] setlength(result, len);
%LINE 655+0
		mov	rcx,qword [rbp-24]
		mov	rdx,qword [rbp-32]
		mov	r8d,0
		call	fpc_ansistr_setlength
; [656] if len > 0 then begin
%LINE 656+0
		cmp	qword [rbp-32],0
		jg	..@j852
		jmp	..@j853
..@j852:
; [657] for i := 0 to len-1 do begin
%LINE 657+0
		mov	rax,qword [rbp-32]
		lea	rbx,[rax-1]
		cmp	rbx,0
		jge	..@j854
		jmp	..@j855
..@j854:
		mov	qword [rbp-40],-1
..@j856:
		mov	rax,qword [rbp-40]
		lea	rax,[rax+1]
		mov	qword [rbp-40],rax
; [659] result[1+i] := PAnsiChar(p+i)^;
%LINE 659+0
		mov	rcx,qword [rbp-24]
		call	fpc_ansistr_unique
		mov	rdx,qword [rbp-40]
		lea	rcx,[rdx+1]
		mov	rdx,qword [rbp-40]
		shl	rdx,1
		add	rdx,qword [rbp-8]
		mov	dl,byte [rdx]
		mov	byte [rax+rcx*1-1],dl
%LINE 657+0
		cmp	rbx,qword [rbp-40]
		jle	..@j858
		jmp	..@j856
..@j858:
..@j855:
..@j853:
..@j848:
; [662] end;
%LINE 662+0
		mov	rbx,qword [rbp-48]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c787:

SECTION .text
	GLOBAL fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
..@c791:
; [664] begin
%LINE 664+0
		push	rbp
..@c793:
..@c794:
		mov	rbp,rsp
..@c795:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [665] result := fpcpwidechartoansistr(p, cp);
%LINE 665+0
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	r8d,dword [rbp-16]
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
; [666] end;
%LINE 666+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c792:

SECTION .text
	GLOBAL fpc_uchar_to_ansistr
fpc_uchar_to_ansistr:
..@c796:
; Temps allocated between rbp-32 and rbp-24
; [681] begin
%LINE 681+0
		push	rbp
..@c798:
..@c799:
		mov	rbp,rsp
..@c800:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
; Var c located at rbp-8, size=OS_16
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	word [rbp-8],dx
		mov	dword [rbp-16],r8d
; [682] writeln('fpc_uchar_to_ansistr');
%LINE 682+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld28]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [683] end;
%LINE 683+0
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c797:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD:
..@c801:
; [691] begin
%LINE 691+0
		push	rbp
..@c803:
..@c804:
		mov	rbp,rsp
..@c805:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
; [692] result := 0;
%LINE 692+0
		mov	dword [rbp-12],0
; [693] if p = nil then exit;
%LINE 693+0
		cmp	qword [rbp-8],0
		je	..@j865
		jmp	..@j866
..@j865:
		jmp	..@j863
..@j866:
; [694] while (p+result)^ <> #0 do inc(result);
%LINE 694+0
		jmp	..@j868
..@j867:
		inc	dword [rbp-12]
..@j868:
		mov	eax,dword [rbp-12]
		add	rax,qword [rbp-8]
		cmp	byte [rax],0
		jne	..@j867
		jmp	..@j869
..@j869:
..@j863:
; [695] end;
%LINE 695+0
		mov	eax,dword [rbp-12]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c802:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN$PCHAR$$LONGWORD:
..@c806:
; [697] begin
%LINE 697+0
		push	rbp
..@c808:
..@c809:
		mov	rbp,rsp
..@c810:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
; [698] Exit(strlen_(p));
%LINE 698+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
		mov	dword [rbp-12],eax
		jmp	..@j870
..@j870:
; [699] end;
%LINE 699+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c807:

SECTION .text
SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$0000027B:
..@c811:
; [719] end;
%LINE 719+0
		push	rbp
..@c813:
..@c814:
		mov	rbp,rcx
..@c815:
		lea	rsp,[rsp-32]
; [717] begin
%LINE 717+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c812:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD
SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD:
..@c816:
		push	rbp
..@c818:
..@c819:
		mov	rbp,rsp
..@c820:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j880:
		nop
..@j876:
; [718] result := length(s);
%LINE 718+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j881
		mov	rax,qword [rax-8]
..@j881:
		mov	dword [rbp-12],eax
..@j878:
%LINE 717+0
		nop
..@j877:
		mov	rcx,rbp
		call	SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$0000027B
%LINE 719+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c817:

SECTION .text
	GLOBAL SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
SYSTEM_$$_NEWANSISTRING$INT64$$POINTER:
..@c821:
; [724] begin
%LINE 724+0
		push	rbp
..@c823:
..@c824:
		mov	rbp,rsp
..@c825:
		lea	rsp,[rsp-48]
; Var len located at rbp-8, size=OS_S64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [725] result := GetMem(len+(AnsiFirstOff+SizeOf(AnsiChar)));
%LINE 725+0
		mov	rax,qword [rbp-8]
		lea	rcx,[rax+33]
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
		mov	qword [rbp-16],rax
; [726] if result = nil then exit;
%LINE 726+0
		cmp	qword [rbp-16],0
		je	..@j884
		jmp	..@j885
..@j884:
		jmp	..@j882
..@j885:
; [727] PAnsiRec(result)^.len := len;
%LINE 727+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	qword [rax+24],rdx
; [728] PAnsiRec(result)^.ref := 1;
%LINE 728+0
		mov	rax,qword [rbp-16]
		mov	qword [rax+16],1
; [729] PAnsiRec(result)^.codepage := DefaultSystemCodePage;
%LINE 729+0
		mov	rax,qword [rbp-16]
		mov	dword [rax],1250
; [730] PAnsiRec(result)^.elementsize := SizeOf(AnsiChar);
%LINE 730+0
		mov	rax,qword [rbp-16]
		mov	word [rax+4],1
; [731] inc(result, AnsiFirstOff);
%LINE 731+0
		add	qword [rbp-16],32
; [732] PAnsiChar(result)^ := #0; // null terminated
%LINE 732+0
		mov	rax,qword [rbp-16]
		mov	byte [rax],0
..@j882:
; [733] end;
%LINE 733+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c822:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER:
..@c826:
; [735] begin
%LINE 735+0
		push	rbp
..@c828:
..@c829:
		mov	rbp,rsp
..@c830:
		lea	rsp,[rsp-48]
; Var len located at rbp-8, size=OS_S64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [736] result := newansistring(len);
%LINE 736+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
		mov	qword [rbp-16],rax
; [737] end;
%LINE 737+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c827:

SECTION .text
	GLOBAL SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER:
..@c831:
; [750] begin
%LINE 750+0
		push	rbp
..@c833:
..@c834:
		mov	rbp,rsp
..@c835:
		lea	rsp,[rsp-48]
; Var len located at rbp-8, size=OS_S64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [751] result := GetMem(len * sizeof(widechar) + WideRecLen);
%LINE 751+0
		mov	rax,qword [rbp-8]
		shl	rax,1
		lea	rcx,[rax+6]
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
		mov	qword [rbp-16],rax
; [752] if result = nil then exit;
%LINE 752+0
		cmp	qword [rbp-16],0
		je	..@j890
		jmp	..@j891
..@j890:
		jmp	..@j888
..@j891:
; [753] PWideRec(result)^.Len := len * 2;
%LINE 753+0
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rbp-8]
		shl	rax,1
		mov	dword [rdx],eax
; [754] PWideRec(result)^.First := #0;
%LINE 754+0
		mov	rax,qword [rbp-16]
		mov	word [rax+4],0
; [755] inc(result, WideFirstOff);
%LINE 755+0
		add	qword [rbp-16],4
..@j888:
; [756] end;
%LINE 756+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c832:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER:
..@c836:
; [758] begin
%LINE 758+0
		push	rbp
..@c838:
..@c839:
		mov	rbp,rsp
..@c840:
		lea	rsp,[rsp-48]
; Var len located at rbp-8, size=OS_S64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [759] result := newwidestring(len);
%LINE 759+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
		mov	qword [rbp-16],rax
; [760] end;
%LINE 760+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c837:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027C:
..@c841:
; [776] end;
%LINE 776+0
		push	rbp
..@c843:
..@c844:
		mov	rbp,rcx
..@c845:
		lea	rsp,[rsp-32]
; [772] begin
%LINE 772+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c842:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING:
..@c846:
		push	rbp
..@c848:
..@c849:
		mov	rbp,rsp
..@c850:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j902:
		nop
..@j898:
; [773] pointer(result) := new_ansistring(length(s));
%LINE 773+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j903
		mov	rax,qword [rax-8]
..@j903:
		mov	rcx,rax
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	rdx,qword [rbp-16]
		mov	qword [rdx],rax
; [774] setlength(result, length(s));
%LINE 774+0
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j904
		mov	rdx,qword [rdx-8]
..@j904:
		mov	rcx,qword [rbp-16]
		mov	r8d,0
		call	fpc_ansistr_setlength
; [775] move(s[1], result[1], length(s));
%LINE 775+0
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j905
		mov	r8,qword [r8-8]
..@j905:
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j900:
%LINE 772+0
		nop
..@j899:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027C
%LINE 776+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c847:

SECTION .text
SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027E:
..@c851:
; [780] end;
%LINE 780+0
		push	rbp
..@c853:
..@c854:
		mov	rbp,rcx
..@c855:
		lea	rsp,[rsp-32]
; [778] begin
%LINE 778+0
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c852:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING:
..@c856:
; Temps allocated between rbp-24 and rbp-16
		push	rbp
..@c858:
..@c859:
		mov	rbp,rsp
..@c860:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-24],0
..@j914:
		nop
..@j910:
; [779] makeuniqueansistring(s);
%LINE 779+0
		mov	rax,qword [rbp-8]
		lea	rcx,[rbp-24]
		mov	rdx,rax
		call	SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
..@j912:
%LINE 778+0
		nop
..@j911:
		mov	rcx,rbp
		call	SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027E
%LINE 780+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c857:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000027F:
..@c861:
; [800] end;
%LINE 800+0
		push	rbp
..@c863:
..@c864:
		mov	rbp,rcx
..@c865:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [795] begin
%LINE 795+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c862:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER:
..@c866:
		push	rbp
..@c868:
..@c869:
		mov	rbp,rsp
..@c870:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var a located at rbp-24, size=OS_64
; Var s located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-32],0
..@j923:
		nop
..@j919:
; [796] a := PAnsiRec(p-AnsiFirstOff);
%LINE 796+0
		mov	rax,qword [rbp-8]
		lea	rax,[rax-32]
		mov	qword [rbp-24],rax
; [797] pointer(s) := new_ansistring(a^.len);
%LINE 797+0
		mov	rax,qword [rbp-24]
		mov	rcx,qword [rax+24]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbp-32],rax
; [798] move(a, s[1], a^.len);
%LINE 798+0
		lea	rcx,[rbp-32]
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	rax,qword [rbp-24]
		mov	r8,qword [rax+24]
		lea	rcx,[rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [799] pointer(result) := pointer(a+AnsiFirstOff);
%LINE 799+0
		mov	rax,qword [rbp-24]
		lea	rax,[rax+1024]
		mov	qword [rbp-16],rax
..@j921:
%LINE 795+0
		nop
..@j920:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000027F
%LINE 800+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c867:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER:
..@c871:
; [802] begin
%LINE 802+0
		push	rbp
..@c873:
..@c874:
		mov	rbp,rsp
..@c875:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [803] result := makeuniqueansistring(p);
%LINE 803+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
		mov	qword [rbp-16],rax
; [804] end;
%LINE 804+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c872:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT:
..@c876:
; [820] begin
%LINE 820+0
		push	rbp
..@c878:
..@c879:
		mov	rbp,rsp
..@c880:
		lea	rsp,[rsp-32]
; Var str located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_S32
; Var i located at rbp-16, size=OS_S32
; Var c located at rbp-20, size=OS_8
		mov	qword [rbp-8],rcx
; [821] result := 0;
%LINE 821+0
		mov	dword [rbp-12],0
; [822] i := 0;
%LINE 822+0
		mov	dword [rbp-16],0
; [823] while true do begin
%LINE 823+0
		jmp	..@j929
..@j928:
; [824] c := (str+i)^;
%LINE 824+0
		movsxd	rax,dword [rbp-16]
		add	rax,qword [rbp-8]
		mov	al,byte [rax]
		mov	byte [rbp-20],al
; [825] if c = #0 then break;
%LINE 825+0
		cmp	byte [rbp-20],0
		je	..@j931
		jmp	..@j932
..@j931:
		jmp	..@j930
..@j932:
; [826] inc(i);
%LINE 826+0
		inc	dword [rbp-16]
; [827] result := result*10 + ord(c)-ord('0');
%LINE 827+0
		mov	eax,dword [rbp-12]
		imul	edx,eax,10
		movzx	eax,byte [rbp-20]
		lea	eax,[edx+eax]
		sub	eax,48
		mov	dword [rbp-12],eax
..@j929:
%LINE 823+0
		jmp	..@j928
..@j930:
; [829] end;
%LINE 829+0
		mov	eax,dword [rbp-12]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c877:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI$PANSICHAR$$LONGINT:
..@c881:
; [831] begin
%LINE 831+0
		push	rbp
..@c883:
..@c884:
		mov	rbp,rsp
..@c885:
		lea	rsp,[rsp-48]
; Var str located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_S32
		mov	qword [rbp-8],rcx
; [832] result := atoi_exp(str);
%LINE 832+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
		mov	dword [rbp-12],eax
; [833] end;
%LINE 833+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c882:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR:
..@c886:
; [865] begin
%LINE 865+0
		push	rbp
..@c888:
..@c889:
		mov	rbp,rsp
..@c890:
		lea	rsp,[rsp-80]
; Var num located at rbp-8, size=OS_S32
; Var base located at rbp-16, size=OS_S32
; Var $result located at rbp-24, size=OS_64
; Var i located at rbp-28, size=OS_S32
; Var rem located at rbp-32, size=OS_S32
; Var neg located at rbp-36, size=OS_8
		mov	dword [rbp-8],ecx
		mov	dword [rbp-16],edx
; [847] procedure reverse(str: pansichar; len: integer);
%LINE 847+0
		mov	al,byte [TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg]
		mov	byte [rbp-36],al
; [866] result := '0';
%LINE 866+0
		lea	rax,[..@d29]
		mov	qword [rbp-24],rax
; [868] if num = 0 then exit;
%LINE 868+0
		cmp	dword [rbp-8],0
		je	..@j939
		jmp	..@j940
..@j939:
		jmp	..@j935
..@j940:
; [870] if num < 0 then begin
%LINE 870+0
		cmp	dword [rbp-8],0
		jl	..@j941
		jmp	..@j942
..@j941:
; [872] if base <> 10 then exit;
%LINE 872+0
		cmp	dword [rbp-16],10
		jne	..@j943
		jmp	..@j944
..@j943:
		jmp	..@j935
..@j944:
; [873] neg := true;
%LINE 873+0
		mov	byte [rbp-36],1
; [874] num := -num;
%LINE 874+0
		movsxd	rax,dword [rbp-8]
		neg	rax
		mov	dword [rbp-8],eax
..@j942:
; [877] result := AllocMem(32);
%LINE 877+0
		mov	rcx,32
		call	SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
		mov	qword [rbp-24],rax
; [879] i := 0;
%LINE 879+0
		mov	dword [rbp-28],0
; [880] while num <> 0 do begin
%LINE 880+0
		jmp	..@j946
..@j945:
; [881] rem := num mod base;
%LINE 881+0
		movsxd	rax,dword [rbp-8]
		movsxd	rcx,dword [rbp-16]
		cqo
		idiv	rcx
		mov	dword [rbp-32],edx
; [882] if rem > 9 then result[i] := chr((rem-10)+ord('a')) else result[i] := chr(rem+ord('0'));
%LINE 882+0
		cmp	dword [rbp-32],9
		jg	..@j948
		jmp	..@j949
..@j948:
		mov	rcx,qword [rbp-24]
		movsxd	rdx,dword [rbp-28]
		mov	eax,dword [rbp-32]
		lea	eax,[eax-10]
		lea	eax,[eax+97]
		mov	byte [rcx+rdx*1],al
		jmp	..@j950
..@j949:
		mov	rcx,qword [rbp-24]
		movsxd	rdx,dword [rbp-28]
		mov	eax,dword [rbp-32]
		lea	eax,[eax+48]
		mov	byte [rcx+rdx*1],al
..@j950:
; [883] inc(i);
%LINE 883+0
		inc	dword [rbp-28]
; [884] num := num div base;
%LINE 884+0
		movsxd	rax,dword [rbp-8]
		movsxd	rcx,dword [rbp-16]
		cqo
		idiv	rcx
		mov	dword [rbp-8],eax
..@j946:
%LINE 880+0
		cmp	dword [rbp-8],0
		jne	..@j945
		jmp	..@j947
..@j947:
; [887] if neg then begin
%LINE 887+0
		cmp	byte [rbp-36],0
		jne	..@j951
		jmp	..@j952
..@j951:
; [888] result[i] := '-';
%LINE 888+0
		mov	rdx,qword [rbp-24]
		movsxd	rax,dword [rbp-28]
		mov	byte [rdx+rax*1],45
; [889] inc(i);
%LINE 889+0
		inc	dword [rbp-28]
..@j952:
; [892] result[i] := #0;
%LINE 892+0
		mov	rdx,qword [rbp-24]
		movsxd	rax,dword [rbp-28]
		mov	byte [rdx+rax*1],0
; [894] ReAllocMem(result, 32);
%LINE 894+0
		lea	rcx,[rbp-24]
		mov	rdx,32
		call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
; [896] reverse(result, i);
%LINE 896+0
		mov	r8d,dword [rbp-28]
		mov	rdx,qword [rbp-24]
		mov	rcx,rbp
		call	SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT
..@j935:
; [897] end;
%LINE 897+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c887:

SECTION .text
SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT:
..@c891:
; [851] begin
%LINE 851+0
		push	rbp
..@c893:
..@c894:
		mov	rbp,rsp
..@c895:
		lea	rsp,[rsp-48]
; Var str located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_S32
; Var $parentfp located at rbp-24, size=OS_64
; Var st located at rbp-28, size=OS_S32
; Var en located at rbp-32, size=OS_S32
; Var tmp located at rbp-36, size=OS_8
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [852] st := 0;
%LINE 852+0
		mov	dword [rbp-28],0
; [853] en := len-1;
%LINE 853+0
		mov	eax,dword [rbp-16]
		lea	eax,[eax-1]
		mov	dword [rbp-32],eax
; [854] while st < en do begin
%LINE 854+0
		jmp	..@j954
..@j953:
; [855] tmp := str[st];
%LINE 855+0
		mov	rax,qword [rbp-8]
		movsxd	rdx,dword [rbp-28]
		mov	al,byte [rax+rdx*1]
		mov	byte [rbp-36],al
; [856] str[st] := str[en];
%LINE 856+0
		mov	r8,qword [rbp-8]
		movsxd	rcx,dword [rbp-28]
		mov	rdx,qword [rbp-8]
		movsxd	rax,dword [rbp-32]
		mov	al,byte [rdx+rax*1]
		mov	byte [r8+rcx*1],al
; [857] str[en] := tmp;
%LINE 857+0
		mov	rax,qword [rbp-8]
		movsxd	rdx,dword [rbp-32]
		mov	cl,byte [rbp-36]
		mov	byte [rax+rdx*1],cl
; [858] inc(st);
%LINE 858+0
		inc	dword [rbp-28]
; [859] dec(en);
%LINE 859+0
		dec	dword [rbp-32]
..@j954:
%LINE 854+0
		mov	eax,dword [rbp-28]
		cmp	eax,dword [rbp-32]
		jl	..@j953
		jmp	..@j955
..@j955:
; [861] end;
%LINE 861+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c892:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR:
..@c896:
; [899] begin
%LINE 899+0
		push	rbp
..@c898:
..@c899:
		mov	rbp,rsp
..@c900:
		lea	rsp,[rsp-64]
; Var num located at rbp-8, size=OS_S32
; Var base located at rbp-16, size=OS_S32
; Var $result located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	dword [rbp-16],edx
; [900] result := itoa_exp(num, base);
%LINE 900+0
		mov	eax,dword [rbp-16]
		mov	ecx,dword [rbp-8]
		mov	edx,eax
		call	SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
		mov	qword [rbp-24],rax
; [901] end;
%LINE 901+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c897:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN:
..@c901:
; [unicode.inc]
; [39] begin
%LINE 39+0 unicode.inc
		push	rbp
..@c903:
..@c904:
		mov	rbp,rsp
..@c905:
		lea	rsp,[rsp-48]
; Var cur located at rbp-8, size=OS_64
; Var curend located at rbp-16, size=OS_64
; Var codepoint located at rbp-24, size=OS_64
; Var size located at rbp-32, size=OS_64
; Var $result located at rbp-36, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [40] if (curend <> nil) and not (cur < curend) then exit(false);
%LINE 40+0
		cmp	qword [rbp-16],0
		jne	..@j960
		jmp	..@j961
..@j960:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	rax,qword [rbp-16]
		jae	..@j962
		jmp	..@j961
..@j962:
		mov	byte [rbp-36],0
		jmp	..@j958
..@j961:
; [41] if cur^ = #0 then exit(false);
%LINE 41+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	byte [rax],0
		je	..@j963
		jmp	..@j964
..@j963:
		mov	byte [rbp-36],0
		jmp	..@j958
..@j964:
; [42] if (byte(cur^) and $f0 = $f0) then begin
%LINE 42+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		je	..@j965
		jmp	..@j966
..@j965:
; [44] if (curend <> nil) and (cur+4 > curend) then exit(false);
%LINE 44+0
		cmp	qword [rbp-16],0
		jne	..@j967
		jmp	..@j968
..@j967:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax+4]
		cmp	rax,qword [rbp-16]
		ja	..@j969
		jmp	..@j968
..@j969:
		mov	byte [rbp-36],0
		jmp	..@j958
..@j968:
; [46] or ((byte((cur+1)^) and $3f) shl 12)
%LINE 46+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
; [45] codepoint := ((byte(cur^) and $07) shl 18)
%LINE 45+0
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		movzx	dx,byte [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
%LINE 46+0
		or	eax,edx
; [47] or ((byte((cur+2)^) and $3f) shl 6)
%LINE 47+0
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
; [48] or ((byte((cur+3)^) and $3f));
%LINE 48+0
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		movzx	dx,byte [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
%LINE 45+0
		mov	rdx,qword [rbp-24]
		mov	dword [rdx],eax
; [49] size := 4;
%LINE 49+0
		mov	rax,qword [rbp-32]
		mov	byte [rax],4
		jmp	..@j970
..@j966:
; [51] else if (byte(cur^) and $e0 = $e0) then begin
%LINE 51+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		je	..@j971
		jmp	..@j972
..@j971:
; [53] if (curend <> nil) and (cur+3 > curend) then exit(false);
%LINE 53+0
		cmp	qword [rbp-16],0
		jne	..@j973
		jmp	..@j974
..@j973:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax+3]
		cmp	rax,qword [rbp-16]
		ja	..@j975
		jmp	..@j974
..@j975:
		mov	byte [rbp-36],0
		jmp	..@j958
..@j974:
; [55] or ((byte((cur+1)^) and $3f) shl 6)
%LINE 55+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
; [54] codepoint := ((byte(cur^) and $0f) shl 12)
%LINE 54+0
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		movzx	dx,byte [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
%LINE 55+0
		or	eax,edx
; [56] or ((byte((cur+2)^) and $3f));
%LINE 56+0
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
%LINE 54+0
		mov	rdx,qword [rbp-24]
		mov	dword [rdx],eax
; [57] size := 3;
%LINE 57+0
		mov	rax,qword [rbp-32]
		mov	byte [rax],3
		jmp	..@j976
..@j972:
; [59] else if (byte(cur^) and $c0 = $c0) then begin
%LINE 59+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		je	..@j977
		jmp	..@j978
..@j977:
; [61] if (curend <> nil) and (cur+2 > curend) then exit(false);
%LINE 61+0
		cmp	qword [rbp-16],0
		jne	..@j979
		jmp	..@j980
..@j979:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax+2]
		cmp	rax,qword [rbp-16]
		ja	..@j981
		jmp	..@j980
..@j981:
		mov	byte [rbp-36],0
		jmp	..@j958
..@j980:
; [62] codepoint := ((byte(cur^) and $1f) shl 6)
%LINE 62+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	ax,byte [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
; [63] or ((byte((cur+1)^) and $3f));
%LINE 63+0
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		movzx	dx,byte [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
%LINE 62+0
		mov	rdx,qword [rbp-24]
		mov	dword [rdx],eax
; [64] size := 2;
%LINE 64+0
		mov	rax,qword [rbp-32]
		mov	byte [rax],2
		jmp	..@j982
..@j978:
; [68] codepoint := byte(cur^);
%LINE 68+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	eax,byte [rax]
		mov	rdx,qword [rbp-24]
		mov	dword [rdx],eax
; [69] size := 1;
%LINE 69+0
		mov	rax,qword [rbp-32]
		mov	byte [rax],1
..@j982:
..@j976:
..@j970:
; [71] inc(cur, size);
%LINE 71+0
		mov	rax,qword [rbp-32]
		movzx	eax,byte [rax]
		mov	rdx,qword [rbp-8]
		add	qword [rdx],rax
; [72] result := true;
%LINE 72+0
		mov	byte [rbp-36],1
..@j958:
; [73] end;
%LINE 73+0
		mov	al,byte [rbp-36]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c902:

SECTION .text
SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000285:
..@c906:
; [94] end;
%LINE 94+0
		push	rbp
..@c908:
..@c909:
		mov	rbp,rcx
..@c910:
		lea	rsp,[rsp-32]
; [76] begin
%LINE 76+0
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c907:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING
SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING:
..@c911:
; Temps allocated between rbp-24 and rbp-16
		push	rbp
..@c913:
..@c914:
		mov	rbp,rsp
..@c915:
		lea	rsp,[rsp-64]
; Var codepoint located at rbp-8, size=OS_32
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	dword [rbp-8],edx
		mov	qword [rbp-24],0
..@j991:
		nop
..@j987:
; [77] if codepoint <= $7F then
%LINE 77+0
		cmp	dword [rbp-8],127
		jbe	..@j992
		jmp	..@j993
..@j992:
; [78] result := ansichar(codepoint)
%LINE 78+0
		movzx	eax,byte [rbp-8]
		mov	rcx,qword [rbp-16]
		mov	r8d,0
		mov	edx,eax
		call	fpc_char_to_ansistr
		jmp	..@j994
..@j993:
; [79] else if codepoint <= $7ff then begin
%LINE 79+0
		cmp	dword [rbp-8],2047
		jbe	..@j995
		jmp	..@j996
..@j995:
; [80] result := ansichar($c0 or (codepoint shr 6));
%LINE 80+0
		mov	edx,dword [rbp-8]
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		mov	rcx,qword [rbp-16]
		mov	r8d,0
		call	fpc_char_to_ansistr
; [81] result := result + ansichar($80 or (codepoint and $3f));
%LINE 81+0
		mov	edx,dword [rbp-8]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
		jmp	..@j997
..@j996:
; [83] else if codepoint <= $ffff then begin
%LINE 83+0
		cmp	dword [rbp-8],65535
		jbe	..@j998
		jmp	..@j999
..@j998:
; [84] result := ansichar($e0 or (codepoint shr 12));
%LINE 84+0
		mov	edx,dword [rbp-8]
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		mov	rcx,qword [rbp-16]
		mov	r8d,0
		call	fpc_char_to_ansistr
; [85] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
%LINE 85+0
		mov	edx,dword [rbp-8]
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
; [86] result := result + ansichar($80 or (codepoint and $3f));
%LINE 86+0
		mov	edx,dword [rbp-8]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
		jmp	..@j1000
..@j999:
; [89] result := ansichar($f0 or (codepoint shr 18));
%LINE 89+0
		mov	edx,dword [rbp-8]
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		mov	rcx,qword [rbp-16]
		mov	r8d,0
		call	fpc_char_to_ansistr
; [90] result := result + ansichar($80 or ((codepoint shr 12) and $3f));
%LINE 90+0
		mov	edx,dword [rbp-8]
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
; [91] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
%LINE 91+0
		mov	edx,dword [rbp-8]
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
; [92] result := result + ansichar($80 or (codepoint and $3f));
%LINE 92+0
		mov	edx,dword [rbp-8]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
..@j1000:
..@j997:
..@j994:
..@j989:
%LINE 76+0
		nop
..@j988:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000285
%LINE 94+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c912:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN:
..@c916:
; [97] begin
%LINE 97+0
		push	rbp
..@c918:
..@c919:
		mov	rbp,rsp
..@c920:
		lea	rsp,[rsp-48]
; Var cur located at rbp-8, size=OS_64
; Var curend located at rbp-16, size=OS_64
; Var codepoint located at rbp-24, size=OS_64
; Var size located at rbp-32, size=OS_64
; Var $result located at rbp-36, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [98] if (curend <> nil) and not (cur < curend) then exit(false);
%LINE 98+0
		cmp	qword [rbp-16],0
		jne	..@j1003
		jmp	..@j1004
..@j1003:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	rax,qword [rbp-16]
		jae	..@j1005
		jmp	..@j1004
..@j1005:
		mov	byte [rbp-36],0
		jmp	..@j1001
..@j1004:
; [99] if cur^ = #0 then exit(false);
%LINE 99+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	word [rax],0
		je	..@j1006
		jmp	..@j1007
..@j1006:
		mov	byte [rbp-36],0
		jmp	..@j1001
..@j1007:
; [100] codepoint := dword(cur^);
%LINE 100+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	eax,word [rax]
		mov	rdx,qword [rbp-24]
		mov	dword [rdx],eax
; [101] size := 1;
%LINE 101+0
		mov	rax,qword [rbp-32]
		mov	byte [rax],1
; [103] if (codepoint >= $d800) and (codepoint <= $dbff) then begin
%LINE 103+0
		mov	rax,qword [rbp-24]
		cmp	dword [rax],55296
		jae	..@j1008
		jmp	..@j1009
..@j1008:
		mov	rax,qword [rbp-24]
		cmp	dword [rax],56319
		jbe	..@j1010
		jmp	..@j1009
..@j1010:
; [104] if (curend = nil) or ((cur+1 <= curend) and (dword((cur+1)^) >= $dc00) and (dword((cur+1)^) <= $dfff)) then begin
%LINE 104+0
		cmp	qword [rbp-16],0
		je	..@j1011
		jmp	..@j1012
..@j1012:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax+2]
		cmp	rax,qword [rbp-16]
		jbe	..@j1014
		jmp	..@j1015
..@j1014:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	eax,word [rax+2]
		cmp	eax,56320
		jae	..@j1016
		jmp	..@j1015
..@j1016:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	eax,word [rax+2]
		cmp	eax,57343
		jbe	..@j1017
		jmp	..@j1015
..@j1017:
		jmp	..@j1011
..@j1015:
		jmp	..@j1013
..@j1011:
; [105] codepoint := ((codepoint-$d800) shl 10)+(dword((cur+1)^)-$dc00)+$10000;
%LINE 105+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movzx	eax,word [rax+2]
		and	eax,-1
		sub	rax,56320
		mov	rdx,qword [rbp-24]
		mov	edx,dword [rdx]
		sub	rdx,55296
		shl	rdx,10
		lea	rax,[rax+rdx]
		lea	rax,[rax+65536]
		mov	rdx,qword [rbp-24]
		mov	dword [rdx],eax
; [106] size := 2;
%LINE 106+0
		mov	rax,qword [rbp-32]
		mov	byte [rax],2
..@j1013:
..@j1009:
; [109] inc(cur, size);
%LINE 109+0
		mov	rax,qword [rbp-32]
		movzx	eax,byte [rax]
		mov	rdx,qword [rbp-8]
		shl	rax,1
		add	qword [rdx],rax
; [110] result := true;
%LINE 110+0
		mov	byte [rbp-36],1
..@j1001:
; [111] end;
%LINE 111+0
		mov	al,byte [rbp-36]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c917:

SECTION .text
SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000286:
..@c921:
; [120] end;
%LINE 120+0
		push	rbp
..@c923:
..@c924:
		mov	rbp,rcx
..@c925:
		lea	rsp,[rsp-32]
; [114] begin
%LINE 114+0
		lea	rcx,[rbp-24]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c922:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING
SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING:
..@c926:
; Temps allocated between rbp-24 and rbp-16
		push	rbp
..@c928:
..@c929:
		mov	rbp,rsp
..@c930:
		lea	rsp,[rsp-64]
; Var codepoint located at rbp-8, size=OS_32
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	dword [rbp-8],edx
		mov	qword [rbp-24],0
..@j1026:
		nop
..@j1022:
; [115] if codepoint > $ffff then begin
%LINE 115+0
		cmp	dword [rbp-8],65535
		ja	..@j1027
		jmp	..@j1028
..@j1027:
; [116] result := widechar($d800+((codepoint-$10000) shr 10));
%LINE 116+0
		mov	eax,dword [rbp-8]
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		mov	rcx,qword [rbp-16]
		call	fpc_uchar_to_unicodestr
; [117] result := result + widechar($dc00+((codepoint-$10000) and $3ff));
%LINE 117+0
		mov	eax,dword [rbp-8]
		lea	eax,[eax-65536]
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-24]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-24]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		call	fpc_unicodestr_concat
		jmp	..@j1029
..@j1028:
; [119] result := widechar(codepoint);
%LINE 119+0
		movzx	edx,word [rbp-8]
		mov	rcx,qword [rbp-16]
		call	fpc_uchar_to_unicodestr
..@j1029:
..@j1024:
%LINE 114+0
		nop
..@j1023:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000286
%LINE 120+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c927:

SECTION .text
SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000287:
..@c931:
; [144] end;
%LINE 144+0
		push	rbp
..@c933:
..@c934:
		mov	rbp,rcx
..@c935:
		lea	rsp,[rsp-32]
; [128] begin
%LINE 128+0
		lea	rcx,[rbp-72]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-56]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c932:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING:
..@c936:
; Temps allocated between rbp-72 and rbp-48
		push	rbp
..@c938:
..@c939:
		mov	rbp,rsp
..@c940:
		lea	rsp,[rsp-112]
; Var utf8 located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var i located at rbp-20, size=OS_S32
; Var cur located at rbp-32, size=OS_64
; Var curend located at rbp-40, size=OS_64
; Var codepoint located at rbp-44, size=OS_32
; Var size located at rbp-48, size=OS_8
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-72],0
		mov	qword [rbp-56],0
..@j1038:
		nop
..@j1034:
; [129] curend := @utf8[1]+length(utf8);
%LINE 129+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1039
		mov	rdx,qword [rdx-8]
..@j1039:
		lea	rax,[rax+rdx]
		mov	qword [rbp-40],rax
; [130] result := '';
%LINE 130+0
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	fpc_unicodestr_assign
; [131] i := 1;
%LINE 131+0
		mov	dword [rbp-20],1
; [132] while i <= length(utf8) do begin
%LINE 132+0
		jmp	..@j1041
..@j1040:
; [133] cur := @utf8[i];
%LINE 133+0
		mov	rax,qword [rbp-8]
		movsxd	rdx,dword [rbp-20]
		lea	rax,[rax+rdx*1-1]
		mov	qword [rbp-32],rax
; [134] if utf8decode(cur, curend, codepoint, size) then begin
%LINE 134+0
		cmp	qword [rbp-40],0
		jne	..@j1044
		jmp	..@j1045
..@j1044:
		mov	rax,qword [rbp-32]
		cmp	rax,qword [rbp-40]
		jae	..@j1046
		jmp	..@j1045
..@j1046:
		mov	cl,0
		jmp	..@j1043
..@j1045:
		mov	rax,qword [rbp-32]
		cmp	byte [rax],0
		je	..@j1047
		jmp	..@j1048
..@j1047:
		mov	cl,0
		jmp	..@j1043
..@j1048:
		mov	rax,qword [rbp-32]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		je	..@j1049
		jmp	..@j1050
..@j1049:
		cmp	qword [rbp-40],0
		jne	..@j1051
		jmp	..@j1052
..@j1051:
		mov	rax,qword [rbp-32]
		lea	rax,[rax+4]
		cmp	rax,qword [rbp-40]
		ja	..@j1053
		jmp	..@j1052
..@j1053:
		mov	cl,0
		jmp	..@j1043
..@j1052:
		mov	rax,qword [rbp-32]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
		or	eax,edx
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-44],eax
		mov	byte [rbp-48],4
		jmp	..@j1054
..@j1050:
		mov	rax,qword [rbp-32]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		je	..@j1055
		jmp	..@j1056
..@j1055:
		cmp	qword [rbp-40],0
		jne	..@j1057
		jmp	..@j1058
..@j1057:
		mov	rax,qword [rbp-32]
		lea	rax,[rax+3]
		cmp	rax,qword [rbp-40]
		ja	..@j1059
		jmp	..@j1058
..@j1059:
		mov	cl,0
		jmp	..@j1043
..@j1058:
		mov	rax,qword [rbp-32]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
		or	eax,edx
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-44],eax
		mov	byte [rbp-48],3
		jmp	..@j1060
..@j1056:
		mov	rax,qword [rbp-32]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		je	..@j1061
		jmp	..@j1062
..@j1061:
		cmp	qword [rbp-40],0
		jne	..@j1063
		jmp	..@j1064
..@j1063:
		mov	rax,qword [rbp-32]
		lea	rax,[rax+2]
		cmp	rax,qword [rbp-40]
		ja	..@j1065
		jmp	..@j1064
..@j1065:
		mov	cl,0
		jmp	..@j1043
..@j1064:
		mov	rax,qword [rbp-32]
		movzx	ax,byte [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-44],eax
		mov	byte [rbp-48],2
		jmp	..@j1066
..@j1062:
		mov	rax,qword [rbp-32]
		movzx	eax,byte [rax]
		mov	dword [rbp-44],eax
		mov	byte [rbp-48],1
..@j1066:
..@j1060:
..@j1054:
		movzx	eax,byte [rbp-48]
		add	qword [rbp-32],rax
		mov	cl,1
..@j1043:
		test	cl,cl
		jne	..@j1067
		jmp	..@j1068
..@j1067:
; [136] result := result + utf16encode(codepoint);
%LINE 136+0
		mov	eax,dword [rbp-44]
		mov	dword [rbp-60],eax
		cmp	dword [rbp-60],65535
		ja	..@j1069
		jmp	..@j1070
..@j1069:
		mov	eax,dword [rbp-60]
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		lea	rcx,[rbp-56]
		call	fpc_uchar_to_unicodestr
		mov	eax,dword [rbp-60]
		lea	eax,[eax-65536]
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-72]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-72]
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		call	fpc_unicodestr_concat
		jmp	..@j1071
..@j1070:
		movzx	edx,word [rbp-60]
		lea	rcx,[rbp-56]
		call	fpc_uchar_to_unicodestr
..@j1071:
		mov	r8,qword [rbp-56]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		call	fpc_unicodestr_concat
; [137] inc(i, size);
%LINE 137+0
		movzx	eax,byte [rbp-48]
		add	dword [rbp-20],eax
		jmp	..@j1072
..@j1068:
; [139] result := result + '?';
%LINE 139+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		lea	r8,[..@d30]
		call	fpc_unicodestr_concat
; [140] inc(cur);
%LINE 140+0
		inc	qword [rbp-32]
; [141] inc(i);
%LINE 141+0
		inc	dword [rbp-20]
..@j1072:
..@j1041:
%LINE 132+0
		movsxd	rax,dword [rbp-20]
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1073
		mov	rdx,qword [rdx-8]
..@j1073:
		cmp	rax,rdx
		jle	..@j1040
		jmp	..@j1042
..@j1042:
..@j1036:
%LINE 128+0
		nop
..@j1035:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000287
%LINE 144+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c937:

SECTION .text
SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000288:
..@c941:
; [161] end;
%LINE 161+0
		push	rbp
..@c943:
..@c944:
		mov	rbp,rcx
..@c945:
		lea	rsp,[rsp-32]
; [152] begin
%LINE 152+0
		lea	rcx,[rbp-64]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-48]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c942:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING:
..@c946:
; Temps allocated between rbp-64 and rbp-40
		push	rbp
..@c948:
..@c949:
		mov	rbp,rsp
..@c950:
		lea	rsp,[rsp-96]
; Var utf8 located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var i located at rbp-20, size=OS_S32
; Var cur located at rbp-32, size=OS_64
; Var codepoint located at rbp-36, size=OS_32
; Var size located at rbp-40, size=OS_8
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-64],0
		mov	qword [rbp-48],0
..@j1082:
		nop
..@j1078:
; [153] cur := utf8;
%LINE 153+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [154] result := '';
%LINE 154+0
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	fpc_unicodestr_assign
; [155] i := 1;
%LINE 155+0
		mov	dword [rbp-20],1
; [156] while utf8decode(cur, nil, codepoint, size) do begin
%LINE 156+0
		jmp	..@j1084
..@j1083:
; [158] result := result + utf16encode(codepoint);
%LINE 158+0
		mov	eax,dword [rbp-36]
		mov	dword [rbp-52],eax
		cmp	dword [rbp-52],65535
		ja	..@j1086
		jmp	..@j1087
..@j1086:
		mov	eax,dword [rbp-52]
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		lea	rcx,[rbp-48]
		call	fpc_uchar_to_unicodestr
		mov	eax,dword [rbp-52]
		lea	eax,[eax-65536]
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-64]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-64]
		mov	rdx,qword [rbp-48]
		lea	rcx,[rbp-48]
		call	fpc_unicodestr_concat
		jmp	..@j1088
..@j1087:
		movzx	edx,word [rbp-52]
		lea	rcx,[rbp-48]
		call	fpc_uchar_to_unicodestr
..@j1088:
		mov	r8,qword [rbp-48]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		call	fpc_unicodestr_concat
; [159] inc(i, size);
%LINE 159+0
		movzx	eax,byte [rbp-40]
		add	dword [rbp-20],eax
..@j1084:
%LINE 156+0
		mov	rax,qword [rbp-32]
		cmp	byte [rax],0
		je	..@j1090
		jmp	..@j1091
..@j1090:
		mov	cl,0
		jmp	..@j1089
..@j1091:
		mov	rax,qword [rbp-32]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		je	..@j1092
		jmp	..@j1093
..@j1092:
		mov	rax,qword [rbp-32]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
		or	eax,edx
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-36],eax
		mov	byte [rbp-40],4
		jmp	..@j1094
..@j1093:
		mov	rax,qword [rbp-32]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		je	..@j1095
		jmp	..@j1096
..@j1095:
		mov	rax,qword [rbp-32]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
		or	eax,edx
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-36],eax
		mov	byte [rbp-40],3
		jmp	..@j1097
..@j1096:
		mov	rax,qword [rbp-32]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		je	..@j1098
		jmp	..@j1099
..@j1098:
		mov	rax,qword [rbp-32]
		movzx	ax,byte [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-32]
		movzx	dx,byte [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-36],eax
		mov	byte [rbp-40],2
		jmp	..@j1100
..@j1099:
		mov	rax,qword [rbp-32]
		movzx	eax,byte [rax]
		mov	dword [rbp-36],eax
		mov	byte [rbp-40],1
..@j1100:
..@j1097:
..@j1094:
		movzx	eax,byte [rbp-40]
		add	qword [rbp-32],rax
		mov	cl,1
..@j1089:
		test	cl,cl
		jne	..@j1083
		jmp	..@j1085
..@j1085:
..@j1080:
%LINE 152+0
		nop
..@j1079:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000288
%LINE 161+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c947:

SECTION .text
SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000289:
..@c951:
; [185] end;
%LINE 185+0
		push	rbp
..@c953:
..@c954:
		mov	rbp,rcx
..@c955:
		lea	rsp,[rsp-32]
; [169] begin
%LINE 169+0
		lea	rcx,[rbp-72]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-56]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c952:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING:
..@c956:
; Temps allocated between rbp-72 and rbp-48
		push	rbp
..@c958:
..@c959:
		mov	rbp,rsp
..@c960:
		lea	rsp,[rsp-112]
; Var utf16 located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var i located at rbp-20, size=OS_S32
; Var cur located at rbp-32, size=OS_64
; Var curend located at rbp-40, size=OS_64
; Var codepoint located at rbp-44, size=OS_32
; Var size located at rbp-48, size=OS_8
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		mov	rcx,qword [rbp-8]
		call	fpc_unicodestr_incr_ref
		mov	qword [rbp-72],0
		mov	qword [rbp-56],0
..@j1109:
		nop
..@j1105:
; [170] curend := @utf16[1]+(length(utf16)*2);
%LINE 170+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j1110
		mov	rax,qword [rax-8]
..@j1110:
		shl	rax,1
		mov	rdx,qword [rbp-8]
		lea	rax,[rax+rdx]
		mov	qword [rbp-40],rax
; [171] result := '';
%LINE 171+0
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	fpc_ansistr_assign
; [172] i := 1;
%LINE 172+0
		mov	dword [rbp-20],1
; [173] while i <= length(utf16) do begin
%LINE 173+0
		jmp	..@j1112
..@j1111:
; [174] cur := @utf16[i];
%LINE 174+0
		mov	rax,qword [rbp-8]
		movsxd	rdx,dword [rbp-20]
		lea	rax,[rax+rdx*2-2]
		mov	qword [rbp-32],rax
; [175] if utf16decode(cur, curend, codepoint, size) then begin
%LINE 175+0
		cmp	qword [rbp-40],0
		jne	..@j1115
		jmp	..@j1116
..@j1115:
		mov	rax,qword [rbp-32]
		cmp	rax,qword [rbp-40]
		jae	..@j1117
		jmp	..@j1116
..@j1117:
		mov	cl,0
		jmp	..@j1114
..@j1116:
		mov	rax,qword [rbp-32]
		cmp	word [rax],0
		je	..@j1118
		jmp	..@j1119
..@j1118:
		mov	cl,0
		jmp	..@j1114
..@j1119:
		mov	rax,qword [rbp-32]
		movzx	eax,word [rax]
		mov	dword [rbp-44],eax
		mov	byte [rbp-48],1
		cmp	dword [rbp-44],55296
		jae	..@j1120
		jmp	..@j1121
..@j1120:
		cmp	dword [rbp-44],56319
		jbe	..@j1122
		jmp	..@j1121
..@j1122:
		cmp	qword [rbp-40],0
		je	..@j1123
		jmp	..@j1124
..@j1124:
		mov	rax,qword [rbp-32]
		lea	rax,[rax+2]
		cmp	rax,qword [rbp-40]
		jbe	..@j1126
		jmp	..@j1127
..@j1126:
		mov	rax,qword [rbp-32]
		movzx	eax,word [rax+2]
		cmp	eax,56320
		jae	..@j1128
		jmp	..@j1127
..@j1128:
		mov	rax,qword [rbp-32]
		movzx	eax,word [rax+2]
		cmp	eax,57343
		jbe	..@j1129
		jmp	..@j1127
..@j1129:
		jmp	..@j1123
..@j1127:
		jmp	..@j1125
..@j1123:
		mov	rax,qword [rbp-32]
		movzx	eax,word [rax+2]
		and	eax,-1
		sub	rax,56320
		mov	edx,dword [rbp-44]
		sub	rdx,55296
		shl	rdx,10
		lea	rax,[rax+rdx]
		lea	rax,[rax+65536]
		mov	dword [rbp-44],eax
		mov	byte [rbp-48],2
..@j1125:
..@j1121:
		movzx	eax,byte [rbp-48]
		shl	rax,1
		add	qword [rbp-32],rax
		mov	cl,1
..@j1114:
		test	cl,cl
		jne	..@j1130
		jmp	..@j1131
..@j1130:
; [177] result := result + utf8encode(codepoint);
%LINE 177+0
		mov	eax,dword [rbp-44]
		mov	dword [rbp-60],eax
		cmp	dword [rbp-60],127
		jbe	..@j1132
		jmp	..@j1133
..@j1132:
		mov	r8d,0
		movzx	edx,byte [rbp-60]
		lea	rcx,[rbp-56]
		call	fpc_char_to_ansistr
		jmp	..@j1134
..@j1133:
		cmp	dword [rbp-60],2047
		jbe	..@j1135
		jmp	..@j1136
..@j1135:
		mov	edx,dword [rbp-60]
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-56]
		call	fpc_char_to_ansistr
		mov	edx,dword [rbp-60]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-72]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-72]
		mov	r9d,0
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		call	fpc_ansistr_concat
		jmp	..@j1137
..@j1136:
		cmp	dword [rbp-60],65535
		jbe	..@j1138
		jmp	..@j1139
..@j1138:
		mov	edx,dword [rbp-60]
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-56]
		call	fpc_char_to_ansistr
		mov	edx,dword [rbp-60]
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-72]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-72]
		mov	r9d,0
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		call	fpc_ansistr_concat
		mov	edx,dword [rbp-60]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-72]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-72]
		mov	r9d,0
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		call	fpc_ansistr_concat
		jmp	..@j1140
..@j1139:
		mov	edx,dword [rbp-60]
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-56]
		call	fpc_char_to_ansistr
		mov	edx,dword [rbp-60]
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-72]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-72]
		mov	r9d,0
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		call	fpc_ansistr_concat
		mov	edx,dword [rbp-60]
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-72]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-72]
		mov	r9d,0
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		call	fpc_ansistr_concat
		mov	edx,dword [rbp-60]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-72]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-72]
		mov	r9d,0
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		call	fpc_ansistr_concat
..@j1140:
..@j1137:
..@j1134:
		mov	r8,qword [rbp-56]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
; [178] inc(i, size);
%LINE 178+0
		movzx	eax,byte [rbp-48]
		add	dword [rbp-20],eax
		jmp	..@j1141
..@j1131:
; [180] result := result + '?';
%LINE 180+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		lea	r8,[..@d31]
		call	fpc_ansistr_concat
; [181] inc(cur);
%LINE 181+0
		add	qword [rbp-32],2
; [182] inc(i);
%LINE 182+0
		inc	dword [rbp-20]
..@j1141:
..@j1112:
%LINE 173+0
		movsxd	rax,dword [rbp-20]
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1142
		mov	rdx,qword [rdx-8]
..@j1142:
		cmp	rax,rdx
		jle	..@j1111
		jmp	..@j1113
..@j1113:
..@j1107:
%LINE 169+0
		nop
..@j1106:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000289
%LINE 185+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c957:

SECTION .text
SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$0000028A:
..@c961:
; [202] end;
%LINE 202+0
		push	rbp
..@c963:
..@c964:
		mov	rbp,rcx
..@c965:
		lea	rsp,[rsp-32]
; [193] begin
%LINE 193+0
		lea	rcx,[rbp-64]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-48]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c962:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING:
..@c966:
; Temps allocated between rbp-64 and rbp-40
		push	rbp
..@c968:
..@c969:
		mov	rbp,rsp
..@c970:
		lea	rsp,[rsp-96]
; Var utf16 located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var i located at rbp-20, size=OS_S32
; Var cur located at rbp-32, size=OS_64
; Var codepoint located at rbp-36, size=OS_32
; Var size located at rbp-40, size=OS_8
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-64],0
		mov	qword [rbp-48],0
..@j1151:
		nop
..@j1147:
; [194] cur := utf16;
%LINE 194+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [195] result := '';
%LINE 195+0
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	fpc_ansistr_assign
; [196] i := 1;
%LINE 196+0
		mov	dword [rbp-20],1
; [197] while utf16decode(cur, nil, codepoint, size) do begin
%LINE 197+0
		jmp	..@j1153
..@j1152:
; [199] result := result + utf8encode(codepoint);
%LINE 199+0
		mov	eax,dword [rbp-36]
		mov	dword [rbp-52],eax
		cmp	dword [rbp-52],127
		jbe	..@j1155
		jmp	..@j1156
..@j1155:
		mov	r8d,0
		movzx	edx,byte [rbp-52]
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		jmp	..@j1157
..@j1156:
		cmp	dword [rbp-52],2047
		jbe	..@j1158
		jmp	..@j1159
..@j1158:
		mov	edx,dword [rbp-52]
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	edx,dword [rbp-52]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-64]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-64]
		mov	r9d,0
		mov	rdx,qword [rbp-48]
		lea	rcx,[rbp-48]
		call	fpc_ansistr_concat
		jmp	..@j1160
..@j1159:
		cmp	dword [rbp-52],65535
		jbe	..@j1161
		jmp	..@j1162
..@j1161:
		mov	edx,dword [rbp-52]
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	edx,dword [rbp-52]
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-64]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-64]
		mov	r9d,0
		mov	rdx,qword [rbp-48]
		lea	rcx,[rbp-48]
		call	fpc_ansistr_concat
		mov	edx,dword [rbp-52]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-64]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-64]
		mov	r9d,0
		mov	rdx,qword [rbp-48]
		lea	rcx,[rbp-48]
		call	fpc_ansistr_concat
		jmp	..@j1163
..@j1162:
		mov	edx,dword [rbp-52]
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	edx,dword [rbp-52]
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-64]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-64]
		mov	r9d,0
		mov	rdx,qword [rbp-48]
		lea	rcx,[rbp-48]
		call	fpc_ansistr_concat
		mov	edx,dword [rbp-52]
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-64]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-64]
		mov	r9d,0
		mov	rdx,qword [rbp-48]
		lea	rcx,[rbp-48]
		call	fpc_ansistr_concat
		mov	edx,dword [rbp-52]
		and	edx,63
		or	edx,128
		movzx	edx,dl
		mov	r8d,0
		lea	rcx,[rbp-64]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-64]
		mov	r9d,0
		mov	rdx,qword [rbp-48]
		lea	rcx,[rbp-48]
		call	fpc_ansistr_concat
..@j1163:
..@j1160:
..@j1157:
		mov	r8,qword [rbp-48]
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-16]
		mov	r9d,0
		call	fpc_ansistr_concat
; [200] inc(i, size);
%LINE 200+0
		movzx	eax,byte [rbp-40]
		add	dword [rbp-20],eax
..@j1153:
%LINE 197+0
		mov	rax,qword [rbp-32]
		cmp	word [rax],0
		je	..@j1165
		jmp	..@j1166
..@j1165:
		mov	cl,0
		jmp	..@j1164
..@j1166:
		mov	rax,qword [rbp-32]
		movzx	eax,word [rax]
		mov	dword [rbp-36],eax
		mov	byte [rbp-40],1
		cmp	dword [rbp-36],55296
		jae	..@j1167
		jmp	..@j1168
..@j1167:
		cmp	dword [rbp-36],56319
		jbe	..@j1169
		jmp	..@j1168
..@j1169:
		mov	rax,qword [rbp-32]
		movzx	eax,word [rax+2]
		and	eax,-1
		sub	rax,56320
		mov	edx,dword [rbp-36]
		sub	rdx,55296
		shl	rdx,10
		lea	rax,[rax+rdx]
		lea	rax,[rax+65536]
		mov	dword [rbp-36],eax
		mov	byte [rbp-40],2
..@j1168:
		movzx	eax,byte [rbp-40]
		shl	rax,1
		add	qword [rbp-32],rax
		mov	cl,1
..@j1164:
		test	cl,cl
		jne	..@j1152
		jmp	..@j1154
..@j1154:
..@j1149:
%LINE 193+0
		nop
..@j1148:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$0000028A
%LINE 202+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c967:

SECTION .text
	GLOBAL SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN
SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN:
..@c971:
; [205] begin
%LINE 205+0
		push	rbp
..@c973:
..@c974:
		mov	rbp,rsp
..@c975:
		lea	rsp,[rsp-16]
; Var u located at rbp-8, size=OS_32
; Var $result located at rbp-12, size=OS_8
		mov	dword [rbp-8],ecx
; [206] result := ((u <= 127) and ((u = 10) or (u = 13) or (u = $85))) or ((u = $2028) or (u = $2029));
%LINE 206+0
		cmp	dword [rbp-8],127
		jbe	..@j1172
		jmp	..@j1173
..@j1172:
		cmp	dword [rbp-8],10
		je	..@j1175
		jmp	..@j1176
..@j1176:
		cmp	dword [rbp-8],13
		je	..@j1175
		jmp	..@j1177
..@j1177:
		cmp	dword [rbp-8],133
		je	..@j1175
		jmp	..@j1178
..@j1175:
		jmp	..@j1174
..@j1178:
		jmp	..@j1173
..@j1173:
		cmp	dword [rbp-8],8232
		je	..@j1180
		jmp	..@j1181
..@j1181:
		cmp	dword [rbp-8],8233
		je	..@j1180
		jmp	..@j1182
..@j1180:
		jmp	..@j1174
..@j1182:
		jmp	..@j1179
..@j1174:
		mov	byte [rbp-12],1
		jmp	..@j1183
..@j1179:
		mov	byte [rbp-12],0
..@j1183:
; [207] end;
%LINE 207+0
		mov	al,byte [rbp-12]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c972:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64
SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64:
..@c976:
; [214] begin
%LINE 214+0
		push	rbp
..@c978:
..@c979:
		mov	rbp,rsp
..@c980:
		lea	rsp,[rsp-32]
; Var utf8 located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_S64
; Var cur located at rbp-24, size=OS_64
; Var codepoint located at rbp-28, size=OS_32
; Var size located at rbp-32, size=OS_8
		mov	qword [rbp-8],rcx
; [215] cur := utf8;
%LINE 215+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-24],rax
; [216] result := 0;
%LINE 216+0
		mov	qword [rbp-16],0
; [217] while utf8decode(cur, nil, codepoint, size) do begin
%LINE 217+0
		jmp	..@j1187
..@j1186:
; [218] inc(result);
%LINE 218+0
		inc	qword [rbp-16]
..@j1187:
%LINE 217+0
		mov	rax,qword [rbp-24]
		cmp	byte [rax],0
		je	..@j1190
		jmp	..@j1191
..@j1190:
		mov	cl,0
		jmp	..@j1189
..@j1191:
		mov	rax,qword [rbp-24]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		je	..@j1192
		jmp	..@j1193
..@j1192:
		mov	rax,qword [rbp-24]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
		mov	rdx,qword [rbp-24]
		movzx	dx,byte [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
		or	eax,edx
		mov	rdx,qword [rbp-24]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
		mov	rdx,qword [rbp-24]
		movzx	dx,byte [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-28],eax
		mov	byte [rbp-32],4
		jmp	..@j1194
..@j1193:
		mov	rax,qword [rbp-24]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		je	..@j1195
		jmp	..@j1196
..@j1195:
		mov	rax,qword [rbp-24]
		movzx	ax,byte [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-24]
		movzx	dx,byte [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
		or	eax,edx
		mov	rdx,qword [rbp-24]
		movzx	dx,byte [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-28],eax
		mov	byte [rbp-32],3
		jmp	..@j1197
..@j1196:
		mov	rax,qword [rbp-24]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		je	..@j1198
		jmp	..@j1199
..@j1198:
		mov	rax,qword [rbp-24]
		movzx	ax,byte [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-24]
		movzx	dx,byte [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-28],eax
		mov	byte [rbp-32],2
		jmp	..@j1200
..@j1199:
		mov	rax,qword [rbp-24]
		movzx	eax,byte [rax]
		mov	dword [rbp-28],eax
		mov	byte [rbp-32],1
..@j1200:
..@j1197:
..@j1194:
		movzx	eax,byte [rbp-32]
		add	qword [rbp-24],rax
		mov	cl,1
..@j1189:
		test	cl,cl
		jne	..@j1186
		jmp	..@j1188
..@j1188:
; [220] end;
%LINE 220+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c977:

SECTION .text
SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER:
..@c981:
; [ustrings.inc]
; [41] begin
%LINE 41+0 ustrings.inc
		push	rbp
..@c983:
..@c984:
		mov	rbp,rsp
..@c985:
		lea	rsp,[rsp-48]
; Var len located at rbp-8, size=OS_S64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [42] GetMem(result, len*2+sizeof(tunicoderec)+2); {2 for #0}
%LINE 42+0
		mov	rax,qword [rbp-8]
		shl	rax,1
		lea	rax,[rax+24]
		lea	rdx,[rax+2]
		lea	rcx,[rbp-16]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [43] punicoderec(result)^.len := len;
%LINE 43+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	qword [rax+16],rdx
; [44] punicoderec(result)^.ref := 1;
%LINE 44+0
		mov	rax,qword [rbp-16]
		mov	qword [rax+8],1
; [45] punicoderec(result)^.codepage := DefaultUnicodeCodePage;
%LINE 45+0
		mov	rax,qword [rbp-16]
		mov	dword [rax],1200
; [46] punicoderec(result)^.elementsize := 2;
%LINE 46+0
		mov	rax,qword [rbp-16]
		mov	word [rax+4],2
; [47] inc(result, ufirstoff);
%LINE 47+0
		add	qword [rbp-16],24
; [48] PUnicodeChar(result)^ := #0;
%LINE 48+0
		mov	rax,qword [rbp-16]
		mov	word [rax],0
; [49] end;
%LINE 49+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c982:

SECTION .text
	GLOBAL fpc_unicodestr_assign
fpc_unicodestr_assign:
	GLOBAL FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
..@c986:
; [52] begin
%LINE 52+0
		push	rbp
..@c988:
..@c989:
		mov	rbp,rsp
..@c990:
		lea	rsp,[rsp-48]
; Var s1 located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [53] if s2 <> nil then
%LINE 53+0
		cmp	qword [rbp-16],0
		jne	..@j1205
		jmp	..@j1206
..@j1205:
; [54] if punicoderec(s2-ufirstoff)^.ref > 0 then
%LINE 54+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax-16],0
		jg	..@j1207
		jmp	..@j1208
..@j1207:
; [55] inc(punicoderec(s2-ufirstoff)^.ref);
%LINE 55+0
		mov	rax,qword [rbp-16]
		inc	qword [rax-16]
..@j1208:
..@j1206:
; [56] fpc_unicodestr_decr_ref(s1);
%LINE 56+0
		mov	rcx,qword [rbp-8]
		call	fpc_unicodestr_decr_ref
; [57] s1 := s2;
%LINE 57+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		mov	qword [rax],rdx
; [58] end;
%LINE 58+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c987:

SECTION .text
SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$0000028C:
..@c991:
; [77] end;
%LINE 77+0
		push	rbp
..@c993:
..@c994:
		mov	rbp,rcx
..@c995:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-24]
		mov	rcx,rax
		call	fpc_unicodestr_decr_ref
; [64] begin
%LINE 64+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c992:

SECTION .text
	GLOBAL fpc_unicodestr_setlength
fpc_unicodestr_setlength:
	GLOBAL FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
..@c996:
		push	rbp
..@c998:
..@c999:
		mov	rbp,rsp
..@c1000:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var l located at rbp-16, size=OS_S64
; Var u located at rbp-24, size=OS_64
; Var n located at rbp-32, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],0
..@j1217:
		nop
..@j1213:
; [65] if l = 0 then begin
%LINE 65+0
		cmp	qword [rbp-16],0
		je	..@j1218
		jmp	..@j1219
..@j1218:
; [66] fpc_unicodestr_decr_ref(pointer(s));
%LINE 66+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	fpc_unicodestr_decr_ref
; [67] exit;
%LINE 67+0
		jmp	..@j1215
..@j1219:
; [69] pointer(u) := newunicodestring(l);
%LINE 69+0
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
		mov	qword [rbp-24],rax
; [70] if pointer(s) <> nil then begin
%LINE 70+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		jne	..@j1220
		jmp	..@j1221
..@j1220:
; [71] n := length(s)+1; // inc terminator
%LINE 71+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		test	rax,rax
		je	..@j1222
		mov	rax,qword [rax-8]
..@j1222:
		lea	rax,[rax+1]
		mov	qword [rbp-32],rax
; [72] if n > l then n := l;
%LINE 72+0
		mov	rax,qword [rbp-32]
		cmp	rax,qword [rbp-16]
		jg	..@j1223
		jmp	..@j1224
..@j1223:
		mov	rax,qword [rbp-16]
		mov	qword [rbp-32],rax
..@j1224:
; [73] move(pointer(s)^, pointer(u)^, n*2);
%LINE 73+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	r8,qword [rbp-32]
		shl	r8,1
		mov	rdx,qword [rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [74] fpc_unicodestr_decr_ref(pointer(s));
%LINE 74+0
		mov	rcx,qword [rbp-8]
		call	fpc_unicodestr_decr_ref
..@j1221:
; [76] s := u;
%LINE 76+0
		mov	rcx,qword [rbp-8]
		mov	rdx,qword [rbp-24]
		call	fpc_unicodestr_assign
..@j1215:
%LINE 64+0
		nop
..@j1214:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$0000028C
%LINE 77+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c997:

SECTION .text
SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000028D:
..@c1001:
; [95] end;
%LINE 95+0
		push	rbp
..@c1003:
..@c1004:
		mov	rbp,rcx
..@c1005:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-32]
		mov	rcx,rax
		call	fpc_unicodestr_decr_ref
; [82] begin
%LINE 82+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c1002:

SECTION .text
	GLOBAL fpc_unicodestr_concat
fpc_unicodestr_concat:
..@c1006:
		push	rbp
..@c1008:
..@c1009:
		mov	rbp,rsp
..@c1010:
		lea	rsp,[rsp-64]
; Var dests located at rbp-8, size=OS_64
; Var s1 located at rbp-16, size=OS_64
; Var s2 located at rbp-24, size=OS_64
; Var u located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],0
..@j1233:
		nop
..@j1229:
; [83] if s1 = '' then begin
%LINE 83+0
		cmp	qword [rbp-16],0
		je	..@j1234
		jmp	..@j1235
..@j1234:
; [84] dests := s2;
%LINE 84+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	rdx,qword [rbp-24]
		call	fpc_unicodestr_assign
; [85] exit;
%LINE 85+0
		jmp	..@j1231
..@j1235:
; [87] if s2 = '' then begin
%LINE 87+0
		cmp	qword [rbp-24],0
		je	..@j1236
		jmp	..@j1237
..@j1236:
; [88] dests := s1;
%LINE 88+0
		mov	rcx,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		call	fpc_unicodestr_assign
; [89] exit;
%LINE 89+0
		jmp	..@j1231
..@j1237:
; [91] setlength(u, length(s1)+length(s2));
%LINE 91+0
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		je	..@j1238
		mov	rdx,qword [rdx-8]
..@j1238:
		mov	rax,qword [rbp-24]
		test	rax,rax
		je	..@j1239
		mov	rax,qword [rax-8]
..@j1239:
		lea	rdx,[rdx+rax]
		lea	rcx,[rbp-32]
		call	fpc_unicodestr_setlength
; [92] move(pointer(s1)^, pointer(u)^, length(s1)*2);
%LINE 92+0
		mov	r8,qword [rbp-16]
		test	r8,r8
		je	..@j1240
		mov	r8,qword [r8-8]
..@j1240:
		shl	r8,1
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [93] move(pointer(s2)^, (pointer(u)+(length(s1)*2))^, length(s2)*2);
%LINE 93+0
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		je	..@j1241
		mov	rdx,qword [rdx-8]
..@j1241:
		shl	rdx,1
		add	rdx,qword [rbp-32]
		mov	r8,qword [rbp-24]
		test	r8,r8
		je	..@j1242
		mov	r8,qword [r8-8]
..@j1242:
		shl	r8,1
		mov	rcx,qword [rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [94] dests := u;
%LINE 94+0
		mov	rcx,qword [rbp-8]
		mov	rdx,qword [rbp-32]
		call	fpc_unicodestr_assign
..@j1231:
%LINE 82+0
		nop
..@j1230:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000028D
%LINE 95+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c1007:

SECTION .text
	GLOBAL fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
..@c1011:
; Temps allocated between rbp-56 and rbp-44
; [101] begin
%LINE 101+0
		push	rbp
..@c1013:
..@c1014:
		mov	rbp,rsp
..@c1015:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
; Var dests located at rbp-8, size=OS_64
; Var sarr located at rbp-16, size=OS_64
; Var $highSARR located at rbp-24, size=OS_S64
; Var l located at rbp-32, size=OS_S64
; Var p located at rbp-40, size=OS_S64
; Var i located at rbp-44, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [102] l := 0;
%LINE 102+0
		mov	qword [rbp-32],0
; [103] for i := 0 to high(sarr) do begin
%LINE 103+0
		mov	ecx,dword [rbp-24]
		cmp	ecx,0
		jge	..@j1245
		jmp	..@j1246
..@j1245:
		mov	dword [rbp-44],-1
..@j1247:
		mov	eax,dword [rbp-44]
		lea	eax,[eax+1]
		mov	dword [rbp-44],eax
; [104] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then l := l + length(sarr[i]);
%LINE 104+0
		mov	rax,qword [rbp-16]
		movsxd	rdx,dword [rbp-44]
		cmp	qword [rax+rdx*8],0
		jne	..@j1250
		jmp	..@j1251
..@j1250:
		mov	rax,qword [rbp-16]
		movsxd	rdx,dword [rbp-44]
		cmp	qword [rax+rdx*8],0
		jne	..@j1252
		jmp	..@j1251
..@j1252:
		mov	rax,qword [rbp-16]
		movsxd	rdx,dword [rbp-44]
		mov	rax,qword [rax+rdx*8]
		test	rax,rax
		je	..@j1253
		mov	rax,qword [rax-8]
..@j1253:
		add	rax,qword [rbp-32]
		mov	qword [rbp-32],rax
..@j1251:
%LINE 103+0
		cmp	ecx,dword [rbp-44]
		jle	..@j1249
		jmp	..@j1247
..@j1249:
..@j1246:
; [106] setlength(dests, l);
%LINE 106+0
		mov	rcx,qword [rbp-8]
		mov	rdx,qword [rbp-32]
		call	fpc_unicodestr_setlength
; [107] p := 1;
%LINE 107+0
		mov	qword [rbp-40],1
; [108] for i := 0 to high(sarr) do begin
%LINE 108+0
		mov	ebx,dword [rbp-24]
		cmp	ebx,0
		jge	..@j1254
		jmp	..@j1255
..@j1254:
		mov	dword [rbp-44],-1
..@j1256:
		mov	eax,dword [rbp-44]
		lea	eax,[eax+1]
		mov	dword [rbp-44],eax
; [109] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then begin
%LINE 109+0
		mov	rax,qword [rbp-16]
		movsxd	rdx,dword [rbp-44]
		cmp	qword [rax+rdx*8],0
		jne	..@j1259
		jmp	..@j1260
..@j1259:
		mov	rdx,qword [rbp-16]
		movsxd	rax,dword [rbp-44]
		cmp	qword [rdx+rax*8],0
		jne	..@j1261
		jmp	..@j1260
..@j1261:
; [110] move(pointer(sarr[i])^, pointer(@dests[p])^, length(sarr[i]));
%LINE 110+0
		mov	rax,qword [rbp-16]
		movsxd	rdx,dword [rbp-44]
		mov	r8,qword [rax+rdx*8]
		test	r8,r8
		je	..@j1262
		mov	r8,qword [r8-8]
..@j1262:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-40]
		lea	rdx,[rax+rdx*2-2]
		mov	rax,qword [rbp-16]
		movsxd	rcx,dword [rbp-44]
		mov	rcx,qword [rax+rcx*8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [111] inc(p, length(sarr[i]));
%LINE 111+0
		mov	rax,qword [rbp-16]
		movsxd	rdx,dword [rbp-44]
		mov	rax,qword [rax+rdx*8]
		test	rax,rax
		je	..@j1263
		mov	rax,qword [rax-8]
..@j1263:
		add	qword [rbp-40],rax
..@j1260:
%LINE 108+0
		cmp	ebx,dword [rbp-44]
		jle	..@j1258
		jmp	..@j1256
..@j1258:
..@j1255:
; [114] end;
%LINE 114+0
		mov	rbx,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1012:

SECTION .text
	GLOBAL fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
	GLOBAL FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
..@c1016:
; [117] begin
%LINE 117+0
		push	rbp
..@c1018:
..@c1019:
		mov	rbp,rsp
..@c1020:
		lea	rsp,[rsp-16]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [118] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
%LINE 118+0
		cmp	qword [rbp-8],0
		je	..@j1266
		jmp	..@j1267
..@j1267:
		mov	rax,qword [rbp-8]
		cmp	qword [rax-16],0
		jl	..@j1266
		jmp	..@j1268
..@j1266:
		jmp	..@j1264
..@j1268:
; [119] inc(punicoderec(s-ufirstoff)^.ref);
%LINE 119+0
		mov	rax,qword [rbp-8]
		inc	qword [rax-16]
..@j1264:
; [120] end;
%LINE 120+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1017:

SECTION .text
	GLOBAL fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
	GLOBAL FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
..@c1021:
; [123] begin
%LINE 123+0
		push	rbp
..@c1023:
..@c1024:
		mov	rbp,rsp
..@c1025:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [124] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
%LINE 124+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j1271
		jmp	..@j1272
..@j1272:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	qword [rax-16],0
		jl	..@j1271
		jmp	..@j1273
..@j1271:
		jmp	..@j1269
..@j1273:
; [125] dec(punicoderec(s-ufirstoff)^.ref);
%LINE 125+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		dec	qword [rax-16]
; [126] if punicoderec(s-ufirstoff)^.ref <= 0 then FreeMem(s-ufirstoff);
%LINE 126+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		cmp	qword [rax-16],0
		jle	..@j1274
		jmp	..@j1275
..@j1274:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rcx,[rax-24]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1275:
; [127] s := nil;
%LINE 127+0
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
..@j1269:
; [128] end;
%LINE 128+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1022:

SECTION .text
SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000028E:
..@c1026:
; [137] end;
%LINE 137+0
		push	rbp
..@c1028:
..@c1029:
		mov	rbp,rcx
..@c1030:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-24]
		mov	rcx,rax
		call	fpc_unicodestr_decr_ref
; [133] begin
%LINE 133+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c1027:

SECTION .text
	GLOBAL fpc_unicodestr_unique
fpc_unicodestr_unique:
	GLOBAL FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
..@c1031:
		push	rbp
..@c1033:
..@c1034:
		mov	rbp,rsp
..@c1035:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var u located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-24],0
..@j1284:
		nop
..@j1280:
; [134] pointer(u) := newunicodestring(punicoderec(s-ufirstoff)^.len);
%LINE 134+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rcx,qword [rax-8]
		call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
		mov	qword [rbp-24],rax
; [135] move(s^, pointer(u)^, punicoderec(s-ufirstoff)^.len);
%LINE 135+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	r8,qword [rax-8]
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	rdx,qword [rbp-24]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [136] s := pointer(u);
%LINE 136+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-24]
		mov	qword [rax],rdx
..@j1282:
%LINE 133+0
		nop
..@j1281:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000028E
%LINE 137+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c1032:

SECTION .text
	GLOBAL fpc_unicodestr_copy
fpc_unicodestr_copy:
..@c1036:
; [140] begin
%LINE 140+0
		push	rbp
..@c1038:
..@c1039:
		mov	rbp,rsp
..@c1040:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var index located at rbp-16, size=OS_S64
; Var size located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	qword [rbp-24],r9
; [141] dec(index);
%LINE 141+0
		dec	qword [rbp-16]
; [142] if index < 0 then index := 0;
%LINE 142+0
		cmp	qword [rbp-16],0
		jl	..@j1287
		jmp	..@j1288
..@j1287:
		mov	qword [rbp-16],0
..@j1288:
; [143] if (size > length(s)) or (size+index > length(s)) then size := length(s)-index;
%LINE 143+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j1289
		mov	rax,qword [rax-8]
..@j1289:
		cmp	rax,qword [rbp-24]
		jl	..@j1290
		jmp	..@j1291
..@j1291:
		mov	rdx,qword [rbp-24]
		mov	rax,qword [rbp-16]
		lea	rax,[rdx+rax]
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1293
		mov	rdx,qword [rdx-8]
..@j1293:
		cmp	rax,rdx
		jg	..@j1290
		jmp	..@j1292
..@j1290:
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j1294
		mov	rax,qword [rax-8]
..@j1294:
		sub	rax,qword [rbp-16]
		mov	qword [rbp-24],rax
..@j1292:
; [144] setlength(result, size);
%LINE 144+0
		mov	rcx,qword [rbp-32]
		mov	rdx,qword [rbp-24]
		call	fpc_unicodestr_setlength
; [145] move((pointer(s)+(index*2))^, pointer(result)^, size*2);
%LINE 145+0
		mov	rcx,qword [rbp-16]
		shl	rcx,1
		add	rcx,qword [rbp-8]
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rax]
		mov	r8,qword [rbp-24]
		shl	r8,1
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [146] end;
%LINE 146+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1037:

SECTION .text
	GLOBAL fpc_uchar_to_unicodestr
fpc_uchar_to_unicodestr:
..@c1041:
; [149] begin
%LINE 149+0
		push	rbp
..@c1043:
..@c1044:
		mov	rbp,rsp
..@c1045:
		lea	rsp,[rsp-48]
; Var c located at rbp-8, size=OS_16
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	word [rbp-8],dx
; [150] setlength(result, 1);
%LINE 150+0
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		mov	rdx,1
		call	fpc_unicodestr_setlength
; [151] pwidechar(@result[1])^ := c;
%LINE 151+0
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		mov	dx,word [rbp-8]
		mov	word [rax],dx
; [152] end;
%LINE 152+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1042:

SECTION .text
	GLOBAL fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
..@c1046:
; [155] begin
%LINE 155+0
		push	rbp
..@c1048:
..@c1049:
		mov	rbp,rsp
..@c1050:
		lea	rsp,[rsp-64]
; Var s2 located at rbp-8, size=OS_64
; Var cp located at rbp-16, size=OS_32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [156] result := utf16toutf8(s2);
%LINE 156+0
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
; [157] end;
%LINE 157+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1047:

SECTION .text
	GLOBAL fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
..@c1051:
; [162] begin
%LINE 162+0
		push	rbp
..@c1053:
..@c1054:
		mov	rbp,rsp
..@c1055:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var s located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [163] if p = nil then exit('');
%LINE 163+0
		cmp	qword [rbp-8],0
		je	..@j1301
		jmp	..@j1302
..@j1301:
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_unicodestr_assign
		jmp	..@j1299
..@j1302:
; [164] s := IndexWord(p, -1, 0);
%LINE 164+0
		lea	rcx,[rbp-8]
		mov	r8d,0
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	qword [rbp-24],rax
; [165] setlength(result, s);
%LINE 165+0
		mov	rcx,qword [rbp-16]
		mov	rdx,qword [rbp-24]
		call	fpc_unicodestr_setlength
; [166] move(p^, pointer(result)^, s*2);
%LINE 166+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	r8,qword [rbp-24]
		shl	r8,1
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j1299:
; [167] end;
%LINE 167+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1052:

SECTION .text
	GLOBAL fpc_widestr_to_unicodestr
fpc_widestr_to_unicodestr:
..@c1056:
; [170] begin
%LINE 170+0
		push	rbp
..@c1058:
..@c1059:
		mov	rbp,rsp
..@c1060:
		lea	rsp,[rsp-48]
; Var s2 located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [171] setlength(result, length(s2));
%LINE 171+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j1305
		mov	eax,dword [rax-4]
		shr	rax,1
..@j1305:
		mov	rdx,rax
		mov	rcx,qword [rbp-16]
		call	fpc_unicodestr_setlength
; [172] move(pointer(s2)^, pointer(result)^, length(s2)*2);
%LINE 172+0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j1306
		mov	r8d,dword [r8-4]
		shr	r8,1
..@j1306:
		shl	r8,1
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [173] end;
%LINE 173+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1057:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$LONGINT
SYSTEM_$$_INCLOCKED$LONGINT:
..@c1091:
; [misc.inc]
; [103] begin
%LINE 103+0 misc.inc
		push	rbp
..@c1093:
..@c1094:
		mov	rbp,rsp
..@c1095:
		lea	rsp,[rsp-48]
; Var target located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [104] if IsMultithread then AtomicIncrement(target) else inc(target);
%LINE 104+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j1321
		jmp	..@j1322
..@j1321:
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
		jmp	..@j1323
..@j1322:
		mov	rax,qword [rbp-8]
		inc	dword [rax]
..@j1323:
; [105] end;
%LINE 105+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1092:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$INT64
SYSTEM_$$_INCLOCKED$INT64:
..@c1096:
; [108] begin
%LINE 108+0
		push	rbp
..@c1098:
..@c1099:
		mov	rbp,rsp
..@c1100:
		lea	rsp,[rsp-48]
; Var target located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [109] if IsMultithread then AtomicIncrement(target) else inc(target);
%LINE 109+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j1326
		jmp	..@j1327
..@j1326:
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
		jmp	..@j1328
..@j1327:
		mov	rax,qword [rbp-8]
		inc	qword [rax]
..@j1328:
; [110] end;
%LINE 110+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1097:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN:
..@c1101:
; [113] begin
%LINE 113+0
		push	rbp
..@c1103:
..@c1104:
		mov	rbp,rsp
..@c1105:
		lea	rsp,[rsp-48]
; Var target located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_8
		mov	qword [rbp-8],rcx
; [114] if IsMultithread then
%LINE 114+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j1331
		jmp	..@j1332
..@j1331:
; [115] result := AtomicDecrement(target) = 0
%LINE 115+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
		test	eax,eax
		sete	byte [rbp-12]
		jmp	..@j1333
..@j1332:
; [117] dec(target);
%LINE 117+0
		mov	rax,qword [rbp-8]
		dec	dword [rax]
; [118] result := target = 0;
%LINE 118+0
		mov	rax,qword [rbp-8]
		cmp	dword [rax],0
		sete	byte [rbp-12]
..@j1333:
; [120] end;
%LINE 120+0
		mov	al,byte [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1102:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN
SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN:
..@c1106:
; [123] begin
%LINE 123+0
		push	rbp
..@c1108:
..@c1109:
		mov	rbp,rsp
..@c1110:
		lea	rsp,[rsp-48]
; Var target located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_8
		mov	qword [rbp-8],rcx
; [124] if IsMultithread then
%LINE 124+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j1336
		jmp	..@j1337
..@j1336:
; [125] result := AtomicDecrement(target) = 0
%LINE 125+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
		test	rax,rax
		sete	byte [rbp-12]
		jmp	..@j1338
..@j1337:
; [127] dec(target);
%LINE 127+0
		mov	rax,qword [rbp-8]
		dec	qword [rax]
; [128] result := target = 0;
%LINE 128+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		sete	byte [rbp-12]
..@j1338:
; [130] end;
%LINE 130+0
		mov	al,byte [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1107:

SECTION .text
	GLOBAL SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD
SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD:
..@c1111:
; [173] begin
%LINE 173+0
		push	rbp
..@c1113:
..@c1114:
		mov	rbp,rsp
..@c1115:
		lea	rsp,[rsp-32]
; Var primary located at rbp-8, size=OS_16
; Var sub located at rbp-16, size=OS_16
; Var $result located at rbp-20, size=OS_16
		mov	word [rbp-8],cx
		mov	word [rbp-16],dx
; [174] result := (primary and $3FF) or (sub shl 10);
%LINE 174+0
		movzx	eax,word [rbp-8]
		and	eax,1023
		movzx	edx,word [rbp-16]
		shl	edx,10
		or	eax,edx
		mov	word [rbp-20],ax
; [175] end;
%LINE 175+0
		movzx	eax,word [rbp-20]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1112:

SECTION .text
	GLOBAL SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64:
..@c1116:
; Temps allocated between rbp-48 and rbp-40
; [180] begin
%LINE 180+0
		push	rbp
..@c1118:
..@c1119:
		mov	rbp,rsp
..@c1120:
		lea	rsp,[rsp-80]
		mov	qword [rbp-48],rbx
; Var needle located at rbp-8, size=OS_64
; Var haystack located at rbp-16, size=OS_64
; Var offset located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_S64
; Var i located at rbp-40, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [181] result := -1;
%LINE 181+0
		mov	qword [rbp-32],-1
; [182] for i := offset to length(haystack)-length(needle)+1 do
%LINE 182+0
		mov	rax,qword [rbp-16]
		test	rax,rax
		je	..@j1343
		mov	rax,qword [rax-8]
..@j1343:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1344
		mov	rdx,qword [rdx-8]
..@j1344:
		sub	rax,rdx
		lea	rbx,[rax+1]
		cmp	rbx,qword [rbp-24]
		jge	..@j1345
		jmp	..@j1346
..@j1345:
		mov	rax,qword [rbp-24]
		lea	rax,[rax-1]
		mov	qword [rbp-40],rax
..@j1347:
		mov	rax,qword [rbp-40]
		lea	rax,[rax+1]
		mov	qword [rbp-40],rax
; [183] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
%LINE 183+0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j1350
		mov	r8,qword [r8-8]
..@j1350:
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rbp-40]
		lea	rdx,[rdx+rax*1-1]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		je	..@j1351
		jmp	..@j1352
..@j1351:
; [184] exit(i);
%LINE 184+0
		mov	rax,qword [rbp-40]
		mov	qword [rbp-32],rax
		jmp	..@j1341
..@j1352:
%LINE 182+0
		cmp	rbx,qword [rbp-40]
		jle	..@j1349
		jmp	..@j1347
..@j1349:
..@j1346:
..@j1341:
; [185] end;
%LINE 185+0
		mov	rax,qword [rbp-32]
		mov	rbx,qword [rbp-48]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1117:

SECTION .text
	GLOBAL SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64
SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64:
..@c1121:
; Temps allocated between rbp-48 and rbp-40
; [190] begin
%LINE 190+0
		push	rbp
..@c1123:
..@c1124:
		mov	rbp,rsp
..@c1125:
		lea	rsp,[rsp-80]
		mov	qword [rbp-48],rbx
; Var needle located at rbp-8, size=OS_64
; Var haystack located at rbp-16, size=OS_64
; Var offset located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_S64
; Var i located at rbp-40, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [191] result := -1;
%LINE 191+0
		mov	qword [rbp-32],-1
; [192] for i := offset to length(haystack)-length(needle)+1 do
%LINE 192+0
		mov	rax,qword [rbp-16]
		test	rax,rax
		je	..@j1355
		mov	rax,qword [rax-8]
..@j1355:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1356
		mov	rdx,qword [rdx-8]
..@j1356:
		sub	rax,rdx
		lea	rbx,[rax+1]
		cmp	rbx,qword [rbp-24]
		jge	..@j1357
		jmp	..@j1358
..@j1357:
		mov	rax,qword [rbp-24]
		lea	rax,[rax-1]
		mov	qword [rbp-40],rax
..@j1359:
		mov	rax,qword [rbp-40]
		lea	rax,[rax+1]
		mov	qword [rbp-40],rax
; [193] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
%LINE 193+0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j1362
		mov	r8,qword [r8-8]
..@j1362:
		mov	rdx,qword [rbp-16]
		mov	rax,qword [rbp-40]
		lea	rdx,[rdx+rax*2-2]
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		je	..@j1363
		jmp	..@j1364
..@j1363:
; [194] exit(i);
%LINE 194+0
		mov	rax,qword [rbp-40]
		mov	qword [rbp-32],rax
		jmp	..@j1353
..@j1364:
%LINE 192+0
		cmp	rbx,qword [rbp-40]
		jle	..@j1361
		jmp	..@j1359
..@j1361:
..@j1358:
..@j1353:
; [195] end;
%LINE 195+0
		mov	rax,qword [rbp-32]
		mov	rbx,qword [rbp-48]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1122:

SECTION .text
SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000028F:
..@c1126:
; [200] end;
%LINE 200+0
		push	rbp
..@c1128:
..@c1129:
		mov	rbp,rcx
..@c1130:
		lea	rsp,[rsp-32]
; [198] begin
%LINE 198+0
		lea	rcx,[rbp-64]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-48]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c1127:

SECTION .text
	GLOBAL SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64
SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64:
..@c1131:
; Temps allocated between rbp-88 and rbp-32
		push	rbp
..@c1133:
..@c1134:
		mov	rbp,rsp
..@c1135:
		lea	rsp,[rsp-128]
		mov	qword [rbp-88],rbx
		mov	qword [rbp-80],rsi
; Var needle located at rbp-8, size=OS_64
; Var haystack located at rbp-16, size=OS_64
; Var offset located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-64],0
		mov	qword [rbp-48],0
..@j1373:
		nop
..@j1369:
; [199] result := pos(unicodestring(needle), unicodestring(haystack), offset);
%LINE 199+0
		mov	rdx,qword [rbp-16]
		lea	rcx,[rbp-48]
		call	fpc_widestr_to_unicodestr
		mov	rax,qword [rbp-48]
		mov	qword [rbp-40],rax
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-64]
		call	fpc_widestr_to_unicodestr
		mov	rax,qword [rbp-64]
		mov	qword [rbp-56],rax
		mov	rsi,-1
		mov	rax,qword [rbp-40]
		test	rax,rax
		je	..@j1375
		mov	rax,qword [rax-8]
..@j1375:
		mov	rdx,qword [rbp-56]
		test	rdx,rdx
		je	..@j1376
		mov	rdx,qword [rdx-8]
..@j1376:
		sub	rax,rdx
		lea	rbx,[rax+1]
		cmp	rbx,qword [rbp-24]
		jge	..@j1377
		jmp	..@j1378
..@j1377:
		mov	rax,qword [rbp-24]
		lea	rax,[rax-1]
		mov	qword [rbp-72],rax
..@j1379:
		mov	rax,qword [rbp-72]
		lea	rax,[rax+1]
		mov	qword [rbp-72],rax
		mov	rcx,qword [rbp-56]
		mov	r8,qword [rbp-56]
		test	r8,r8
		je	..@j1382
		mov	r8,qword [r8-8]
..@j1382:
		mov	rax,qword [rbp-40]
		mov	rdx,qword [rbp-72]
		lea	rdx,[rax+rdx*2-2]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		je	..@j1383
		jmp	..@j1384
..@j1383:
		mov	rsi,qword [rbp-72]
		jmp	..@j1374
..@j1384:
		cmp	rbx,qword [rbp-72]
		jle	..@j1381
		jmp	..@j1379
..@j1381:
..@j1378:
..@j1374:
		mov	qword [rbp-32],rsi
..@j1371:
%LINE 198+0
		nop
..@j1370:
		mov	rcx,rbp
		call	SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000028F
%LINE 200+0
		mov	rax,qword [rbp-32]
		mov	rbx,qword [rbp-88]
		mov	rsi,qword [rbp-80]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c1132:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$QWORD$$POINTER
SYSTEM_$$_GETMEM$QWORD$$POINTER:
..@c1136:
; [heap.inc]
; [85] begin
%LINE 85+0 heap.inc
		push	rbp
..@c1138:
..@c1139:
		mov	rbp,rsp
..@c1140:
		lea	rsp,[rsp-48]
; Var size located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [86] result := xgetmem(size);
%LINE 86+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	qword [rbp-16],rax
; [87] end;
%LINE 87+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1137:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER:
..@c1141:
; [90] begin
%LINE 90+0
		push	rbp
..@c1143:
..@c1144:
		mov	rbp,rsp
..@c1145:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var size located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [91] result := xgetmem(size);
%LINE 91+0
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	qword [rbp-24],rax
; [92] p := result;
%LINE 92+0
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rbp-24]
		mov	qword [rdx],rax
; [93] end;
%LINE 93+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1142:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER$$QWORD
SYSTEM_$$_FREEMEM$POINTER$$QWORD:
..@c1146:
; [96] begin
%LINE 96+0
		push	rbp
..@c1148:
..@c1149:
		mov	rbp,rsp
..@c1150:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [97] Exit(xfreemem(p));
%LINE 97+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	_$dll$rtllib$xfreemem
		mov	qword [rbp-16],rax
		jmp	..@j1389
..@j1389:
; [98] end;
%LINE 98+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1147:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD
SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD:
..@c1151:
; [101] begin
%LINE 101+0
		push	rbp
..@c1153:
..@c1154:
		mov	rbp,rsp
..@c1155:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var size located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [102] Exit(xfreemem(p));
%LINE 102+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	_$dll$rtllib$xfreemem
		mov	qword [rbp-24],rax
		jmp	..@j1391
..@j1391:
; [103] end;
%LINE 103+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1152:

SECTION .text
	GLOBAL SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
SYSTEM_$$_ALLOCMEM$QWORD$$POINTER:
..@c1156:
; [106] begin
%LINE 106+0
		push	rbp
..@c1158:
..@c1159:
		mov	rbp,rsp
..@c1160:
		lea	rsp,[rsp-48]
; Var size located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [107] Exit(xallocmem(size));
%LINE 107+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XALLOCMEM$QWORD$$POINTER
		mov	qword [rbp-16],rax
		jmp	..@j1393
..@j1393:
; [108] end;
%LINE 108+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1157:

SECTION .text
	GLOBAL SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER:
..@c1161:
; [111] begin
%LINE 111+0
		push	rbp
..@c1163:
..@c1164:
		mov	rbp,rsp
..@c1165:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var size located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [112] Exit(xreallocmem(p, size));
%LINE 112+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	rdx,qword [rbp-16]
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
		mov	qword [rbp-24],rax
		jmp	..@j1395
..@j1395:
; [113] end;
%LINE 113+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1162:

SECTION .text
	GLOBAL SYSTEM_$$_MEMSIZE$POINTER$$QWORD
SYSTEM_$$_MEMSIZE$POINTER$$QWORD:
..@c1166:
; [116] begin
%LINE 116+0
		push	rbp
..@c1168:
..@c1169:
		mov	rbp,rsp
..@c1170:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [117] Exit(xmemsize(p));
%LINE 117+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XMEMSIZE$POINTER$$QWORD
		mov	qword [rbp-16],rax
		jmp	..@j1397
..@j1397:
; [118] end;
%LINE 118+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1167:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$QWORD
SYSTEM_$$_MOVE$formal$formal$QWORD:
..@c1171:
; [124] begin
%LINE 124+0
		push	rbp
..@c1173:
..@c1174:
		mov	rbp,rsp
..@c1175:
		lea	rsp,[rsp-64]
; Var src located at rbp-8, size=OS_64
; Var dst located at rbp-16, size=OS_64
; Var count located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [125] xmovemem(@src, @dst, count);
%LINE 125+0
		mov	rax,qword [rbp-16]
		mov	rdx,rax
		mov	rcx,qword [rbp-8]
		mov	r8,qword [rbp-24]
		call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
; [126] end;
%LINE 126+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1172:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c1176:
; [130] begin
%LINE 130+0
		push	rbp
..@c1178:
..@c1179:
		mov	rbp,rsp
..@c1180:
		lea	rsp,[rsp-64]
; Var x located at rbp-8, size=OS_64
; Var count located at rbp-16, size=OS_64
; Var value located at rbp-24, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
; [131] xfillmem(@x, count, ord(value));
%LINE 131+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		movzx	r8d,byte [rbp-24]
		mov	rdx,qword [rbp-16]
		call	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
; [132] end;
%LINE 132+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1177:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE:
..@c1181:
; [135] begin
%LINE 135+0
		push	rbp
..@c1183:
..@c1184:
		mov	rbp,rsp
..@c1185:
		lea	rsp,[rsp-64]
; Var x located at rbp-8, size=OS_64
; Var count located at rbp-16, size=OS_64
; Var value located at rbp-24, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
; [136] xfillmem(@x, count, value);
%LINE 136+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		movzx	r8d,byte [rbp-24]
		mov	rdx,qword [rbp-16]
		call	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
; [137] end;
%LINE 137+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1182:

SECTION .text
	GLOBAL SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE
SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE:
..@c1186:
; [140] begin
%LINE 140+0
		push	rbp
..@c1188:
..@c1189:
		mov	rbp,rsp
..@c1190:
		lea	rsp,[rsp-64]
; Var x located at rbp-8, size=OS_64
; Var count located at rbp-16, size=OS_64
; Var value located at rbp-24, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
; [141] xfillmem(@x, count, value);
%LINE 141+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		movzx	r8d,byte [rbp-24]
		mov	rdx,qword [rbp-16]
		call	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
; [142] end;
%LINE 142+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1187:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64
SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64:
..@c1191:
; [148] begin
%LINE 148+0
		push	rbp
..@c1193:
..@c1194:
		mov	rbp,rsp
..@c1195:
		lea	rsp,[rsp-48]
; Var buf located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_S64
; Var b located at rbp-24, size=OS_8
; Var $result located at rbp-32, size=OS_S64
; Var i located at rbp-40, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
; [149] result := -1;
%LINE 149+0
		mov	qword [rbp-32],-1
; [150] i := 0;
%LINE 150+0
		mov	qword [rbp-40],0
; [151] while (i < len) or (len = -1){len may not be given} do begin
%LINE 151+0
		jmp	..@j1410
..@j1409:
; [152] if pbyte(pointer(buf)+i)^ = b then exit(i);
%LINE 152+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-40]
		lea	rax,[rax+rdx]
		mov	al,byte [rax]
		cmp	al,byte [rbp-24]
		je	..@j1412
		jmp	..@j1413
..@j1412:
		mov	rax,qword [rbp-40]
		mov	qword [rbp-32],rax
		jmp	..@j1407
..@j1413:
; [153] inc(i);
%LINE 153+0
		inc	qword [rbp-40]
..@j1410:
%LINE 151+0
		mov	rax,qword [rbp-40]
		cmp	rax,qword [rbp-16]
		jl	..@j1414
		jmp	..@j1415
..@j1415:
		cmp	qword [rbp-16],-1
		je	..@j1414
		jmp	..@j1416
..@j1414:
		jmp	..@j1409
..@j1416:
		jmp	..@j1411
..@j1411:
..@j1407:
; [155] end;
%LINE 155+0
		mov	rax,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1192:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64
SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64:
..@c1196:
; [162] begin
%LINE 162+0
		push	rbp
..@c1198:
..@c1199:
		mov	rbp,rsp
..@c1200:
		lea	rsp,[rsp-48]
; Var buf located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_S64
; Var b located at rbp-24, size=OS_8
; Var $result located at rbp-32, size=OS_S64
; Var i located at rbp-40, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
; [163] result := -1;
%LINE 163+0
		mov	qword [rbp-32],-1
; [164] i := 0;
%LINE 164+0
		mov	qword [rbp-40],0
; [165] while (i < len) or (len = -1){len may not be given} do begin
%LINE 165+0
		jmp	..@j1420
..@j1419:
; [166] if pchar(pointer(buf)+i)^ = b then exit(i);
%LINE 166+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-40]
		lea	rax,[rax+rdx]
		mov	al,byte [rax]
		cmp	al,byte [rbp-24]
		je	..@j1422
		jmp	..@j1423
..@j1422:
		mov	rax,qword [rbp-40]
		mov	qword [rbp-32],rax
		jmp	..@j1417
..@j1423:
; [167] inc(i);
%LINE 167+0
		inc	qword [rbp-40]
..@j1420:
%LINE 165+0
		mov	rax,qword [rbp-40]
		cmp	rax,qword [rbp-16]
		jl	..@j1424
		jmp	..@j1425
..@j1425:
		cmp	qword [rbp-16],-1
		je	..@j1424
		jmp	..@j1426
..@j1424:
		jmp	..@j1419
..@j1426:
		jmp	..@j1421
..@j1421:
..@j1417:
; [169] end;
%LINE 169+0
		mov	rax,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1197:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64:
..@c1201:
; [176] begin
%LINE 176+0
		push	rbp
..@c1203:
..@c1204:
		mov	rbp,rsp
..@c1205:
		lea	rsp,[rsp-48]
; Var buf located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_S64
; Var w located at rbp-24, size=OS_16
; Var $result located at rbp-32, size=OS_S64
; Var i located at rbp-40, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	word [rbp-24],r8w
; [177] result := -1;
%LINE 177+0
		mov	qword [rbp-32],-1
; [178] i := 0;
%LINE 178+0
		mov	qword [rbp-40],0
; [179] while (i < len) or (len = -1){len may not be given} do begin
%LINE 179+0
		jmp	..@j1430
..@j1429:
; [180] if pword(pointer(buf)+i)^ = w then exit(i div 2);
%LINE 180+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rax]
		mov	rax,qword [rbp-40]
		lea	rax,[rdx+rax]
		mov	ax,word [rax]
		cmp	ax,word [rbp-24]
		je	..@j1432
		jmp	..@j1433
..@j1432:
		mov	rdx,qword [rbp-40]
		mov	rax,rdx
		shr	rax,63
		add	rdx,rax
		sar	rdx,1
		mov	qword [rbp-32],rdx
		jmp	..@j1427
..@j1433:
; [181] inc(i, 2);
%LINE 181+0
		add	qword [rbp-40],2
..@j1430:
%LINE 179+0
		mov	rax,qword [rbp-40]
		cmp	rax,qword [rbp-16]
		jl	..@j1434
		jmp	..@j1435
..@j1435:
		cmp	qword [rbp-16],-1
		je	..@j1434
		jmp	..@j1436
..@j1434:
		jmp	..@j1429
..@j1436:
		jmp	..@j1431
..@j1431:
..@j1427:
; [183] end;
%LINE 183+0
		mov	rax,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1202:

SECTION .text
	GLOBAL SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64:
..@c1206:
; [190] begin
%LINE 190+0
		push	rbp
..@c1208:
..@c1209:
		mov	rbp,rsp
..@c1210:
		lea	rsp,[rsp-80]
; Var buf1 located at rbp-8, size=OS_64
; Var buf2 located at rbp-16, size=OS_64
; Var len located at rbp-24, size=OS_64
; Var $result located at rbp-32, size=OS_S64
; Var u located at rbp-40, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [191] u := xmemdiffat(@buf1, @buf2, len);
%LINE 191+0
		mov	rax,qword [rbp-16]
		mov	rdx,rax
		mov	rcx,qword [rbp-8]
		mov	r8,qword [rbp-24]
		call	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
		mov	qword [rbp-40],rax
; [192] if u = len then result := 0 else result := pbyte(@buf1+u)^-pbyte(@buf2+u)^;
%LINE 192+0
		mov	rax,qword [rbp-40]
		cmp	rax,qword [rbp-24]
		je	..@j1439
		jmp	..@j1440
..@j1439:
		mov	qword [rbp-32],0
		jmp	..@j1441
..@j1440:
		mov	rax,qword [rbp-8]
		add	rax,qword [rbp-40]
		movzx	edx,byte [rax]
		mov	rax,qword [rbp-16]
		add	rax,qword [rbp-40]
		movzx	eax,byte [rax]
		sub	rdx,rax
		mov	qword [rbp-32],rdx
..@j1441:
; [193] end;
%LINE 193+0
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1207:

SECTION .text
	GLOBAL SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64:
..@c1211:
; [198] begin
%LINE 198+0
		push	rbp
..@c1213:
..@c1214:
		mov	rbp,rsp
..@c1215:
		lea	rsp,[rsp-64]
; Var buf1 located at rbp-8, size=OS_64
; Var buf2 located at rbp-16, size=OS_64
; Var len located at rbp-24, size=OS_64
; Var $result located at rbp-32, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [199] result := CompareByte(buf1, buf2, len);
%LINE 199+0
		mov	rax,qword [rbp-16]
		mov	rdx,rax
		mov	rcx,qword [rbp-8]
		mov	r8,qword [rbp-24]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		mov	qword [rbp-32],rax
; [200] end;
%LINE 200+0
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1212:

SECTION .text
	GLOBAL fpc_getmem
fpc_getmem:
	GLOBAL FPC_GETMEM
FPC_GETMEM:
..@c1216:
; [206] begin
%LINE 206+0
		push	rbp
..@c1218:
..@c1219:
		mov	rbp,rsp
..@c1220:
		lea	rsp,[rsp-48]
; Var size located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [207] result := GetMem(size);
%LINE 207+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
		mov	qword [rbp-16],rax
; [208] end;
%LINE 208+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1217:

SECTION .text
	GLOBAL fpc_freemem
fpc_freemem:
	GLOBAL FPC_FREEMEM
FPC_FREEMEM:
..@c1221:
; [211] begin
%LINE 211+0
		push	rbp
..@c1223:
..@c1224:
		mov	rbp,rsp
..@c1225:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [212] FreeMem(p);
%LINE 212+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [213] end;
%LINE 213+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1222:

SECTION .text
SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$00000290:
..@c1226:
; [system.pas]
; [265] end;
%LINE 265+0 system.pas
		push	rbp
..@c1228:
..@c1229:
		mov	rbp,rcx
..@c1230:
		lea	rsp,[rsp-32]
; [263] begin
%LINE 263+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c1227:

SECTION .text
	GLOBAL SYSTEM_$$_MSGDEBUG$ANSISTRING
SYSTEM_$$_MSGDEBUG$ANSISTRING:
..@c1231:
		push	rbp
..@c1233:
..@c1234:
		mov	rbp,rsp
..@c1235:
		lea	rsp,[rsp-48]
; Var msg located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j1456:
		nop
..@j1452:
; [264] MessageBoxA(0, @msg[1], 'DEBUG', 0);
%LINE 264+0
		mov	rax,qword [rbp-8]
		mov	rdx,rax
		mov	r9d,0
		lea	r8,[_$SYSTEM$_Ld32]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
..@j1454:
%LINE 263+0
		nop
..@j1453:
		mov	rcx,rbp
		call	SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$00000290
%LINE 265+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c1232:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c1236:
; Temps allocated between rbp-16 and rbp-4
; [289] begin
%LINE 289+0
		push	rbp
..@c1238:
..@c1239:
		mov	rbp,rsp
..@c1240:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var i located at rbp-4, size=OS_S32
; [290] for i := 1 to InitFinalTable.TableCount do begin
%LINE 290+0
		mov	ebx,dword [INITFINAL]
		cmp	ebx,1
		jge	..@j1459
		jmp	..@j1460
..@j1459:
		mov	dword [rbp-4],0
..@j1461:
		mov	eax,dword [rbp-4]
		lea	eax,[eax+1]
		mov	dword [rbp-4],eax
; [291] if InitFinalTable.Procs[i].InitProc <> nil then begin
%LINE 291+0
		mov	eax,dword [rbp-4]
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax],0
		jne	..@j1464
		jmp	..@j1465
..@j1464:
; [292] InitFinalTable.Procs[i].InitProc();
%LINE 292+0
		mov	eax,dword [rbp-4]
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax]
..@j1465:
%LINE 290+0
		cmp	ebx,dword [rbp-4]
		jle	..@j1463
		jmp	..@j1461
..@j1463:
..@j1460:
; [295] end;
%LINE 295+0
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1237:

SECTION .text
	GLOBAL fpc_copy
fpc_copy:
	GLOBAL FPC_COPY
FPC_COPY:
..@c1241:
; [305] begin
%LINE 305+0
		push	rbp
..@c1243:
..@c1244:
		mov	rbp,rsp
..@c1245:
		lea	rsp,[rsp-32]
; Var Src located at rbp-8, size=OS_64
; Var Dest located at rbp-16, size=OS_64
; Var TypeInfo located at rbp-24, size=OS_64
; Var $result located at rbp-32, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [306] result:=sizeof(pointer);
%LINE 306+0
		mov	qword [rbp-32],8
; [307] end;
%LINE 307+0
		mov	rax,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1242:

SECTION .text
	GLOBAL fpc_copy_proc
fpc_copy_proc:
..@c1246:
; [310] begin
%LINE 310+0
		push	rbp
..@c1248:
..@c1249:
		mov	rbp,rsp
..@c1250:
		lea	rsp,[rsp-64]
; Var Src located at rbp-8, size=OS_64
; Var Dest located at rbp-16, size=OS_64
; Var TypeInfo located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [311] fpc_copy_internal(src,dest,typeinfo);
%LINE 311+0
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r8,rax
		call	FPC_COPY
; [312] end;
%LINE 312+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1247:

SECTION .text
	GLOBAL fpc_finalizeunits
fpc_finalizeunits:
	GLOBAL FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
..@c1251:
; Temps allocated between rbp-16 and rbp-4
; [319] begin
%LINE 319+0
		push	rbp
..@c1253:
..@c1254:
		mov	rbp,rsp
..@c1255:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var i located at rbp-4, size=OS_S32
; [320] for i := 1 to InitFinalTable.TableCount do begin
%LINE 320+0
		mov	ebx,dword [INITFINAL]
		cmp	ebx,1
		jge	..@j1472
		jmp	..@j1473
..@j1472:
		mov	dword [rbp-4],0
..@j1474:
		mov	eax,dword [rbp-4]
		lea	eax,[eax+1]
		mov	dword [rbp-4],eax
; [321] if InitFinalTable.Procs[i].FinalProc <> nil then begin
%LINE 321+0
		mov	eax,dword [rbp-4]
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax+8],0
		jne	..@j1477
		jmp	..@j1478
..@j1477:
; [322] InitFinalTable.Procs[i].FinalProc();
%LINE 322+0
		mov	eax,dword [rbp-4]
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax+8]
..@j1478:
%LINE 320+0
		cmp	ebx,dword [rbp-4]
		jle	..@j1476
		jmp	..@j1474
..@j1476:
..@j1473:
; [325] end;
%LINE 325+0
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1252:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c1256:
; [332] begin
%LINE 332+0
		push	rbp
..@c1258:
..@c1259:
		mov	rbp,rsp
..@c1260:
		lea	rsp,[rsp-32]
; [333] is_library := true;
%LINE 333+0
		mov	byte [operatingsystem_islibrary],1
; [334] fpc_initializeunits;
%LINE 334+0
		call	FPC_INITIALIZEUNITS
; [335] end;
%LINE 335+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1257:

SECTION .text
	GLOBAL SYSTEM_$$_HALT$LONGINT
SYSTEM_$$_HALT$LONGINT:
..@c1261:
; [338] Begin
%LINE 338+0
		push	rbp
..@c1263:
..@c1264:
		mov	rbp,rsp
..@c1265:
		lea	rsp,[rsp-48]
; Var err located at rbp-8, size=OS_S32
		mov	dword [rbp-8],ecx
; [339] internal_do_exit;
%LINE 339+0
		call	FPC_DO_EXIT
; [340] end;
%LINE 340+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1262:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c1266:
; [343] begin
%LINE 343+0
		push	rbp
..@c1268:
..@c1269:
		mov	rbp,rsp
..@c1270:
		lea	rsp,[rsp-32]
; [344] fpc_finalizeunits;
%LINE 344+0
		call	FPC_FINALIZEUNITS
; [345] ExitProcess(ExitCode);
%LINE 345+0
		mov	eax,dword [operatingsystem_result]
		mov	ecx,eax
		call	_$dll$kernel32$ExitProcess
; [346] end;
%LINE 346+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1267:

SECTION .text
	GLOBAL _fpc_leave
_fpc_leave:
	GLOBAL _FPC_leave
_FPC_leave:
..@c1273:
; [360] begin
%LINE 360+0
		push	rbp
..@c1275:
..@c1276:
		mov	rbp,rsp
..@c1277:
		lea	rsp,[rsp-64]
; Var a1 located at rbp-8, size=OS_64
; Var a2 located at rbp-16, size=OS_64
; Var a3 located at rbp-24, size=OS_64
; Var a4 located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [361] _fpc__leave(a1, a2, a3, a4);
%LINE 361+0
		mov	rax,qword [rbp-32]
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r9,rax
		call	SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER
; [362] end;
%LINE 362+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1274:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
	GLOBAL FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
..@c1278:
; [373] begin
%LINE 373+0
		push	rbp
..@c1280:
..@c1281:
		mov	rbp,rsp
..@c1282:
; [374] end;
%LINE 374+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1279:

SECTION .text
	GLOBAL SYSTEM_$$_BSRBYTE$BYTE$$BYTE
SYSTEM_$$_BSRBYTE$BYTE$$BYTE:
..@c1283:
; [390] begin
%LINE 390+0
		push	rbp
..@c1285:
..@c1286:
		mov	rbp,rsp
..@c1287:
		lea	rsp,[rsp-64]
; Var avalue located at rbp-8, size=OS_8
; Var $result located at rbp-12, size=OS_8
; Var bsr located at rbp-24, size=OS_64
		mov	byte [rbp-8],cl
; [391] bsr := GetBsr8bit;
%LINE 391+0
		call	_$dll$rtllib$GetBsr8bit
		mov	qword [rbp-24],rax
; [392] result := bsr^[AValue];
%LINE 392+0
		mov	rdx,qword [rbp-24]
		movzx	eax,byte [rbp-8]
		mov	al,byte [rdx+rax*1]
		mov	byte [rbp-12],al
; [393] end;
%LINE 393+0
		movzx	eax,byte [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1284:

SECTION .text
	GLOBAL SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL:
..@c1288:
; [399] begin
%LINE 399+0
		push	rbp
..@c1290:
..@c1291:
		mov	rbp,rsp
..@c1292:
		lea	rsp,[rsp-48]
; Var AValue located at rbp-8, size=OS_32
; Var $result located at rbp-12, size=OS_32
; Var tmp located at rbp-16, size=OS_32
		mov	dword [rbp-8],ecx
; [400] result:=ord(AValue>$FFFF)*16;
%LINE 400+0
		cmp	dword [rbp-8],65535
		seta	al
		movzx	eax,al
		shl	eax,4
		mov	dword [rbp-12],eax
; [401] tmp:=AValue shr result;
%LINE 401+0
		mov	eax,dword [rbp-12]
		mov	edx,dword [rbp-8]
		mov	ecx,eax
		and	ecx,-1
		shr	edx,cl
		mov	dword [rbp-16],edx
; [402] result:=result or (ord(tmp>$FF)*8);
%LINE 402+0
		cmp	dword [rbp-16],255
		seta	al
		movzx	eax,al
		shl	eax,3
		or	eax,dword [rbp-12]
		mov	dword [rbp-12],eax
; [403] tmp:=tmp shr (result and 8);
%LINE 403+0
		mov	eax,dword [rbp-12]
		and	eax,8
		and	eax,-1
		mov	edx,dword [rbp-16]
		mov	ecx,eax
		and	ecx,-1
		shr	edx,cl
		mov	dword [rbp-16],edx
; [404] result:=result or BsrByte(byte(tmp));
%LINE 404+0
		movzx	ecx,byte [rbp-16]
		call	SYSTEM_$$_BSRBYTE$BYTE$$BYTE
		movzx	eax,al
		or	eax,dword [rbp-12]
		mov	dword [rbp-12],eax
; [405] end;
%LINE 405+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1289:

SECTION .text
	GLOBAL SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL:
..@c1293:
; [407] begin
%LINE 407+0
		push	rbp
..@c1295:
..@c1296:
		mov	rbp,rsp
..@c1297:
		lea	rsp,[rsp-48]
; Var avalue located at rbp-8, size=OS_32
; Var $result located at rbp-12, size=OS_32
		mov	dword [rbp-8],ecx
; [408] result := BsrDWord_(AValue);
%LINE 408+0
		mov	eax,dword [rbp-8]
		mov	ecx,eax
		call	SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL
		mov	dword [rbp-12],eax
; [409] end;
%LINE 409+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1294:

SECTION .text
	GLOBAL SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL:
..@c1298:
; [423] begin
%LINE 423+0
		push	rbp
..@c1300:
..@c1301:
		mov	rbp,rsp
..@c1302:
		lea	rsp,[rsp-48]
; Var AValue located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_32
; Var tmp located at rbp-16, size=OS_32
		mov	qword [rbp-8],rcx
; [424] result:=32;
%LINE 424+0
		mov	dword [rbp-12],32
; [425] tmp:=hi(AValue);
%LINE 425+0
		mov	rax,qword [rbp-8]
		shr	rax,32
		mov	dword [rbp-16],eax
; [426] if (tmp=0) then
%LINE 426+0
		cmp	dword [rbp-16],0
		je	..@j1499
		jmp	..@j1500
..@j1499:
; [428] tmp:=lo(AValue);
%LINE 428+0
		mov	eax,dword [rbp-8]
		mov	dword [rbp-16],eax
; [429] result:=0;
%LINE 429+0
		mov	dword [rbp-12],0
..@j1500:
; [431] result:=result or BsrDword(tmp);
%LINE 431+0
		mov	ecx,dword [rbp-16]
		call	SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
		or	eax,dword [rbp-12]
		mov	dword [rbp-12],eax
; [432] end;
%LINE 432+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1299:

SECTION .text
	GLOBAL SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL:
..@c1303:
; [434] begin
%LINE 434+0
		push	rbp
..@c1305:
..@c1306:
		mov	rbp,rsp
..@c1307:
		lea	rsp,[rsp-48]
; Var avalue located at rbp-8, size=OS_64
; Var $result located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
; [435] result := BsrQWord_(AValue);
%LINE 435+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL
		mov	dword [rbp-12],eax
; [436] end;
%LINE 436+0
		mov	eax,dword [rbp-12]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1304:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD
SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD:
..@c1308:
; [450] begin
%LINE 450+0
		push	rbp
..@c1310:
..@c1311:
		mov	rbp,rsp
..@c1312:
		lea	rsp,[rsp-80]
; Var n located at rbp-8, size=OS_64
; Var z located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var shift located at rbp-28, size=OS_S32
; Var lzz located at rbp-32, size=OS_S32
; Var lzn located at rbp-36, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [452] if (hi(z) = 0) and (hi(n) = 0) then begin
%LINE 452+0
		mov	rax,qword [rbp-16]
		shr	rax,32
		test	eax,eax
		je	..@j1505
		jmp	..@j1506
..@j1505:
		mov	rax,qword [rbp-8]
		shr	rax,32
		test	eax,eax
		je	..@j1507
		jmp	..@j1506
..@j1507:
; [453] fpcdivqword := Dword(z) div Dword(n);
%LINE 453+0
		mov	eax,dword [rbp-16]
		mov	ecx,dword [rbp-8]
		cqo
		idiv	rcx
		mov	qword [rbp-24],rax
; [454] exit;
%LINE 454+0
		jmp	..@j1503
..@j1506:
; [457] fpcdivqword:=0;
%LINE 457+0
		mov	qword [rbp-24],0
; [460] lzz:=BsrQWord(z);
%LINE 460+0
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
		mov	dword [rbp-32],eax
; [461] lzn:=BsrQWord(n);
%LINE 461+0
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
		mov	dword [rbp-36],eax
; [465] if lzn > lzz then exit;
%LINE 465+0
		mov	eax,dword [rbp-36]
		cmp	eax,dword [rbp-32]
		jg	..@j1508
		jmp	..@j1509
..@j1508:
		jmp	..@j1503
..@j1509:
; [467] shift:=lzz-lzn;
%LINE 467+0
		mov	eax,dword [rbp-32]
		mov	edx,dword [rbp-36]
		sub	eax,edx
		mov	dword [rbp-28],eax
; [468] n:=n shl shift;
%LINE 468+0
		movsxd	rcx,dword [rbp-28]
		mov	rax,qword [rbp-8]
		shl	rax,cl
		mov	qword [rbp-8],rax
; [469] for shift:=shift downto 0 do
%LINE 469+0
		cmp	dword [rbp-28],0
		jge	..@j1510
		jmp	..@j1511
..@j1510:
		mov	eax,dword [rbp-28]
		lea	eax,[eax+1]
		mov	dword [rbp-28],eax
..@j1512:
		mov	eax,dword [rbp-28]
		lea	eax,[eax-1]
		mov	dword [rbp-28],eax
; [471] if z>=n then
%LINE 471+0
		mov	rax,qword [rbp-16]
		cmp	rax,qword [rbp-8]
		jae	..@j1515
		jmp	..@j1516
..@j1515:
; [473] z:=z-n;
%LINE 473+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		sub	rax,rdx
		mov	qword [rbp-16],rax
; [474] fpcdivqword:=fpcdivqword+(qword(1) shl shift);
%LINE 474+0
		movsxd	rcx,dword [rbp-28]
		mov	rax,1
		shl	rax,cl
		add	rax,qword [rbp-24]
		mov	qword [rbp-24],rax
..@j1516:
; [476] n:=n shr 1;
%LINE 476+0
		mov	rax,qword [rbp-8]
		shr	rax,1
		mov	qword [rbp-8],rax
%LINE 469+0
		cmp	dword [rbp-28],0
		jle	..@j1514
		jmp	..@j1512
..@j1514:
..@j1511:
..@j1503:
; [478] end;
%LINE 478+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1309:

SECTION .text
	GLOBAL fpc_div_qword
fpc_div_qword:
	GLOBAL FPC_DIV_QWORD
FPC_DIV_QWORD:
..@c1313:
; [480] begin
%LINE 480+0
		push	rbp
..@c1315:
..@c1316:
		mov	rbp,rsp
..@c1317:
		lea	rsp,[rsp-64]
; Var n located at rbp-8, size=OS_64
; Var z located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [481] result := fpcdivqword(n, z);
%LINE 481+0
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	rdx,rax
		call	SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD
		mov	qword [rbp-24],rax
; [482] end;
%LINE 482+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1314:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64
SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64:
..@c1318:
; [497] begin
%LINE 497+0
		push	rbp
..@c1320:
..@c1321:
		mov	rbp,rsp
..@c1322:
		lea	rsp,[rsp-48]
; Var n located at rbp-8, size=OS_S64
; Var z located at rbp-16, size=OS_S64
; Var $result located at rbp-24, size=OS_S64
; Var sign located at rbp-28, size=OS_8
; Var q1 located at rbp-40, size=OS_64
; Var q2 located at rbp-48, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [502] sign := false;
%LINE 502+0
		mov	byte [rbp-28],0
; [503] if z < 0 then begin
%LINE 503+0
		cmp	qword [rbp-16],0
		jl	..@j1521
		jmp	..@j1522
..@j1521:
; [504] sign := not sign;
%LINE 504+0
		cmp	byte [rbp-28],0
		sete	byte [rbp-28]
; [505] q1 := qword(-z);
%LINE 505+0
		mov	rax,qword [rbp-16]
		neg	rax
		mov	qword [rbp-40],rax
		jmp	..@j1523
..@j1522:
; [508] q1 := z;
%LINE 508+0
		mov	rax,qword [rbp-16]
		mov	qword [rbp-40],rax
..@j1523:
; [510] if n < 0 then begin
%LINE 510+0
		cmp	qword [rbp-8],0
		jl	..@j1524
		jmp	..@j1525
..@j1524:
; [511] sign := not sign;
%LINE 511+0
		cmp	byte [rbp-28],0
		sete	byte [rbp-28]
; [512] q2 := qword(-n);
%LINE 512+0
		mov	rax,qword [rbp-8]
		neg	rax
		mov	qword [rbp-48],rax
		jmp	..@j1526
..@j1525:
; [515] q2 := n;
%LINE 515+0
		mov	rax,qword [rbp-8]
		mov	qword [rbp-48],rax
..@j1526:
; [517] if sign then
%LINE 517+0
		cmp	byte [rbp-28],0
		jne	..@j1527
		jmp	..@j1528
..@j1527:
; [518] result := -(q1 div q2)
%LINE 518+0
		mov	rax,qword [rbp-40]
		xor	rdx,rdx
		div	qword [rbp-48]
		neg	rax
		mov	qword [rbp-24],rax
		jmp	..@j1529
..@j1528:
; [520] result := q1 div q2;
%LINE 520+0
		mov	rax,qword [rbp-40]
		xor	rdx,rdx
		div	qword [rbp-48]
		mov	qword [rbp-24],rax
..@j1529:
; [521] end;
%LINE 521+0
		mov	rax,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1319:

SECTION .text
	GLOBAL fpc_div_int64
fpc_div_int64:
	GLOBAL FPC_DIV_INT64
FPC_DIV_INT64:
..@c1323:
; [523] begin
%LINE 523+0
		push	rbp
..@c1325:
..@c1326:
		mov	rbp,rsp
..@c1327:
		lea	rsp,[rsp-64]
; Var n located at rbp-8, size=OS_S64
; Var z located at rbp-16, size=OS_S64
; Var $result located at rbp-24, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [524] result := fpcdivint64(n, z);
%LINE 524+0
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	rdx,rax
		call	SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64
		mov	qword [rbp-24],rax
; [525] end;
%LINE 525+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1324:

SECTION .text
	GLOBAL SYSTEM_$$_FPCHANDLEERROR$LONGINT
SYSTEM_$$_FPCHANDLEERROR$LONGINT:
..@c1328:
; Temps allocated between rbp-16 and rbp-8
; [549] begin
%LINE 549+0
		push	rbp
..@c1330:
..@c1331:
		mov	rbp,rsp
..@c1332:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var errno located at rbp-8, size=OS_S32
		mov	dword [rbp-8],ecx
; [550] writeln('fpc_handleerror, errno = ', errno, ', meaning = ', errmap[errno]);
%LINE 550+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld70]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		movsxd	r8,dword [rbp-8]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_sint
		lea	r8,[_$SYSTEM$_Ld71]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	eax,dword [rbp-8]
		lea	rdx,[TC_$SYSTEM$_$FPCHANDLEERROR$LONGINT_$$_ERRMAP]
		mov	r8,qword [rdx+rax*8-1600]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_ansistr
		mov	rcx,rbx
		call	fpc_writeln_end
; [551] end;
%LINE 551+0
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1329:

SECTION .text
	GLOBAL fpc_handleerror
fpc_handleerror:
	GLOBAL FPC_HANDLEERROR
FPC_HANDLEERROR:
..@c1333:
; [553] begin
%LINE 553+0
		push	rbp
..@c1335:
..@c1336:
		mov	rbp,rsp
..@c1337:
		lea	rsp,[rsp-48]
; Var errno located at rbp-8, size=OS_S32
		mov	dword [rbp-8],ecx
; [554] fpchandleerror(errno);
%LINE 554+0
		mov	eax,dword [rbp-8]
		mov	ecx,eax
		call	SYSTEM_$$_FPCHANDLEERROR$LONGINT
; [555] end;
%LINE 555+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1334:

SECTION .text
	GLOBAL fpc_popaddrstack
fpc_popaddrstack:
	GLOBAL FPC_POPADDRSTACK
FPC_POPADDRSTACK:
..@c1338:
; Temps allocated between rbp-8 and rbp+0
; [567] begin
%LINE 567+0
		push	rbp
..@c1340:
..@c1341:
		mov	rbp,rsp
..@c1342:
		lea	rsp,[rsp-48]
		mov	qword [rbp-8],rbx
; [568] writeln('fpc_popaddrstack');
%LINE 568+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld72]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [569] end;
%LINE 569+0
		mov	rbx,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1339:

SECTION .text
	GLOBAL fpc_pushexceptaddr
fpc_pushexceptaddr:
	GLOBAL FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
..@c1343:
; Temps allocated between rbp-40 and rbp-32
; [572] begin
%LINE 572+0
		push	rbp
..@c1345:
..@c1346:
		mov	rbp,rsp
..@c1347:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var ft located at rbp-8, size=OS_S32
; Var _buf located at rbp-16, size=OS_64
; Var _newaddr located at rbp-24, size=OS_64
; Var $result located at rbp-32, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [573] writeln('fpc_pushexceptaddr');
%LINE 573+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld73]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [574] end;
%LINE 574+0
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1344:

SECTION .text
	GLOBAL SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER:
	GLOBAL FPC_BREAK_ERROR
FPC_BREAK_ERROR:
..@c1356:
; [726] begin
%LINE 726+0
		push	rbp
..@c1358:
..@c1359:
		mov	rbp,rsp
..@c1360:
		lea	rsp,[rsp-64]
; Var Errno located at rbp-8, size=OS_S32
; Var addr located at rbp-16, size=OS_64
; Var frame located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [727] if CodePointer(ErrorProc) <> nil then ErrorProc(Errno, addr, frame);
%LINE 727+0
		cmp	qword [TC_$SYSTEM_$$_ERRORPROC],0
		jne	..@j1550
		jmp	..@j1551
..@j1550:
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	ecx,dword [rbp-8]
		mov	r8,rax
		call	TC_$SYSTEM_$$_ERRORPROC
..@j1551:
; [728] ErrorCode := Word(Errno);
%LINE 728+0
		mov	ax,word [rbp-8]
		mov	word [TC_$SYSTEM_$$_ERRORCODE],ax
; [729] ErrorAddr := addr;
%LINE 729+0
		mov	rax,qword [rbp-16]
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],rax
; [730] ErrorBase := frame;
%LINE 730+0
		mov	rax,qword [rbp-24]
		mov	qword [FPC_ERRORBASE],rax
; [731] if ExceptAddrStack <> nil then raise TObject(nil) at addr, frame;
%LINE 731+0
		cmp	qword [U_$SYSTEM_$$_EXCEPTADDRSTACK],0
		jne	..@j1552
		jmp	..@j1553
..@j1552:
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,0
		call	fpc_raiseexception
..@j1553:
; [732] Halt(ErrorCode);
%LINE 732+0
		movzx	ecx,word [TC_$SYSTEM_$$_ERRORCODE]
		call	SYSTEM_$$_HALT$LONGINT
; [733] end;
%LINE 733+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1357:

SECTION .text
	GLOBAL fpc_overflow
fpc_overflow:
	GLOBAL FPC_OVERFLOW
FPC_OVERFLOW:
..@c1361:
; [736] begin
%LINE 736+0
		push	rbp
..@c1363:
..@c1364:
		mov	rbp,rsp
..@c1365:
		lea	rsp,[rsp-32]
; [737] Halt(215); // IntOverflow
%LINE 737+0
		mov	eax,215
		mov	ecx,eax
		call	SYSTEM_$$_HALT$LONGINT
; [738] end;
%LINE 738+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1362:

SECTION .text
SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$0000029D:
..@c1366:
; [743] end;
%LINE 743+0
		push	rbp
..@c1368:
..@c1369:
		mov	rbp,rcx
..@c1370:
		lea	rsp,[rsp-32]
; [741] begin
%LINE 741+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c1367:

SECTION .text
	GLOBAL SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION:
..@c1371:
		push	rbp
..@c1373:
..@c1374:
		mov	rbp,rsp
..@c1375:
		lea	rsp,[rsp-64]
; Var msg located at rbp-8, size=OS_64
; Var $vmt located at rbp-16, size=OS_64
; Var $self located at rbp-24, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-32, size=OS_S64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-8],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		cmp	qword [rbp-16],1
		je	..@j1560
		jmp	..@j1561
..@j1560:
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-24],rax
..@j1561:
		cmp	qword [rbp-24],0
		je	..@j1562
		jmp	..@j1563
..@j1562:
		jmp	..@j1556
..@j1563:
..@j1569:
		nop
..@j1568:
		mov	qword [rbp-32],-1
..@j1574:
		nop
..@j1570:
; [742] test := msg;
%LINE 742+0
		mov	rax,qword [rbp-24]
		lea	rcx,[rax+8]
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j1572:
%LINE 741+0
		nop
..@j1571:
		mov	rcx,rbp
		call	SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$0000029D
%LINE 743+0
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		jne	..@j1575
		jmp	..@j1576
..@j1575:
		cmp	qword [rbp-16],0
		jne	..@j1577
		jmp	..@j1576
..@j1577:
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+128]
..@j1576:
%LINE 741+0
		jmp	..@j1566
..@j1565:
%LINE 743+0
		cmp	qword [rbp-16],0
		jne	..@j1578
		jmp	..@j1579
..@j1578:
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+96]
..@j1579:
		call	fpc_reraise
%LINE 741+0
		call	FPC_DONEEXCEPTION
..@j1580:
		nop
..@j1566:
..@j1556:
%LINE 743+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	2,0
	DD	1

SECTION .text
..@c1372:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX
SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX:
..@c1376:
; Temps allocated between rbp-88 and rbp-80
; [756] begin
%LINE 756+0
		push	rbp
..@c1378:
..@c1379:
		mov	rbp,rsp
..@c1380:
		lea	rsp,[rsp-128]
		mov	qword [rbp-88],rbx
; Var p located at rbp-8, size=OS_64
; Var pti located at rbp-16, size=OS_64
; Var dimcount located at rbp-24, size=OS_S64
; Var dims located at rbp-32, size=OS_64
; Var elesize located at rbp-40, size=OS_S64
; Var eletype located at rbp-48, size=OS_64
; Var eletypemngd located at rbp-56, size=OS_64
; Var ti located at rbp-64, size=OS_64
; Var size located at rbp-72, size=OS_S64
; Var newp located at rbp-80, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [767] if dimcount > 1 then begin
%LINE 767+0
		cmp	qword [rbp-24],1
		jg	..@j1583
		jmp	..@j1584
..@j1583:
; [769] exit;
%LINE 769+0
		jmp	..@j1581
..@j1584:
; [772] if dims[0] < 0 then begin
%LINE 772+0
		mov	rax,qword [rbp-32]
		cmp	qword [rax],0
		jl	..@j1585
		jmp	..@j1586
..@j1585:
..@j1586:
; [777] if dims[0] = 0 then begin
%LINE 777+0
		mov	rax,qword [rbp-32]
		cmp	qword [rax],0
		je	..@j1587
		jmp	..@j1588
..@j1587:
; [780] exit;
%LINE 780+0
		jmp	..@j1581
..@j1588:
; [783] ti := pointer(pti)+2+pbyte(pti)[1];
%LINE 783+0
		mov	rax,qword [rbp-16]
		movzx	edx,byte [rax+1]
		mov	rax,qword [rbp-16]
		lea	rax,[rax+2]
		lea	rax,[rdx+rax]
		mov	qword [rbp-64],rax
; [784] elesize := psizeuint(ti)^;
%LINE 784+0
		mov	rax,qword [rbp-64]
		mov	rax,qword [rax]
		mov	qword [rbp-40],rax
; [786] eletype := pdynarraytypedata(ti)^.elType2^;
%LINE 786+0
		mov	rax,qword [rbp-64]
		mov	rax,qword [rax+8]
		mov	rax,qword [rax]
		mov	qword [rbp-48],rax
; [790] if assigned(pdynarraytypedata(ti)^.elType) then eletypemngd := pdynarraytypedata(ti)^.elType^ else eletypemngd := nil;
%LINE 790+0
		mov	rax,qword [rbp-64]
		cmp	qword [rax+20],0
		jne	..@j1589
		jmp	..@j1590
..@j1589:
		mov	rax,qword [rbp-64]
		mov	rax,qword [rax+20]
		mov	rax,qword [rax]
		mov	qword [rbp-56],rax
		jmp	..@j1591
..@j1590:
		mov	qword [rbp-56],0
..@j1591:
; [796] size := elesize*dims[0]+sizeof(tdynarray);
%LINE 796+0
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rax]
		mov	rax,qword [rbp-40]
		imul	rax,rdx
		jno	..@j1592
		call	FPC_OVERFLOW
..@j1592:
		add	rax,16
		jno	..@j1593
		call	FPC_OVERFLOW
..@j1593:
		mov	qword [rbp-72],rax
; [800] if not assigned(p) then begin
%LINE 800+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j1594
		jmp	..@j1595
..@j1594:
; [803] newp := xallocmem(size);
%LINE 803+0
		mov	rcx,qword [rbp-72]
		call	XMM_$$_XALLOCMEM$QWORD$$POINTER
		mov	qword [rbp-80],rax
		jmp	..@j1596
..@j1595:
; [810] writeln('array needs reallocation');
%LINE 810+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld74]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [811] writeln('@@todo to be implemented!');
%LINE 811+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld75]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j1596:
; [814] p := pointer(newp)+sizeof(tdynarray);
%LINE 814+0
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rbp-80]
		lea	rax,[rax+16]
		mov	qword [rdx],rax
; [816] newp^.refcount := 1;
%LINE 816+0
		mov	rax,qword [rbp-80]
		mov	qword [rax],1
; [817] newp^.high := dims[0]-1;
%LINE 817+0
		mov	rdx,qword [rbp-80]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		lea	rax,[rax-1]
		mov	qword [rdx+8],rax
..@j1581:
; [818] end;
%LINE 818+0
		mov	rbx,qword [rbp-88]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1377:

SECTION .text
	GLOBAL fpc_dynarray_setlength
fpc_dynarray_setlength:
	GLOBAL FPC_DYNARR_SETLENGTH
FPC_DYNARR_SETLENGTH:
..@c1381:
; [820] begin
%LINE 820+0
		push	rbp
..@c1383:
..@c1384:
		mov	rbp,rsp
..@c1385:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var pti located at rbp-16, size=OS_64
; Var dimcount located at rbp-24, size=OS_S64
; Var dims located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [821] fpcdynarraysetlength(p, pti, dimcount, dims);
%LINE 821+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	r9,qword [rbp-32]
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX
; [822] end;
%LINE 822+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1382:

SECTION .text
	GLOBAL fpc_dynarray_length
fpc_dynarray_length:
	GLOBAL FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
..@c1386:
; [833] begin
%LINE 833+0
		push	rbp
..@c1388:
..@c1389:
		mov	rbp,rsp
..@c1390:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_S64
		mov	qword [rbp-8],rcx
; [834] if p = nil then exit(0);
%LINE 834+0
		cmp	qword [rbp-8],0
		je	..@j1601
		jmp	..@j1602
..@j1601:
		mov	qword [rbp-16],0
		jmp	..@j1599
..@j1602:
; [835] result := pdynarray(p-sizeof(tdynarray))^.high+1;
%LINE 835+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax-8]
		lea	rax,[rax+1]
		mov	qword [rbp-16],rax
..@j1599:
; [836] end;
%LINE 836+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1387:

SECTION .text
	GLOBAL fpc_dynarray_high
fpc_dynarray_high:
	GLOBAL FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
..@c1391:
; [839] begin
%LINE 839+0
		push	rbp
..@c1393:
..@c1394:
		mov	rbp,rsp
..@c1395:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_S64
		mov	qword [rbp-8],rcx
; [840] if p = nil then exit(0);
%LINE 840+0
		cmp	qword [rbp-8],0
		je	..@j1605
		jmp	..@j1606
..@j1605:
		mov	qword [rbp-16],0
		jmp	..@j1603
..@j1606:
; [841] result := pdynarray(p-sizeof(tdynarray))^.high;
%LINE 841+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax-8]
		mov	qword [rbp-16],rax
..@j1603:
; [842] end;
%LINE 842+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1392:

SECTION .text
	GLOBAL fpc_dynarray_incr_ref
fpc_dynarray_incr_ref:
	GLOBAL FPC_DYNARRAY_INCR_REF
FPC_DYNARRAY_INCR_REF:
..@c1396:
; [847] begin
%LINE 847+0
		push	rbp
..@c1398:
..@c1399:
		mov	rbp,rsp
..@c1400:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var d located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [848] if p = nil then exit;
%LINE 848+0
		cmp	qword [rbp-8],0
		je	..@j1609
		jmp	..@j1610
..@j1609:
		jmp	..@j1607
..@j1610:
; [849] d := pdynarray(p-sizeof(tdynarray));
%LINE 849+0
		mov	rax,qword [rbp-8]
		lea	rax,[rax-16]
		mov	qword [rbp-16],rax
; [850] if d^.refcount = 0 then
%LINE 850+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax],0
		je	..@j1611
		jmp	..@j1612
..@j1611:
; [852] HandleError(204)
%LINE 852+0
		mov	ecx,204
		call	FPC_HANDLEERROR
		jmp	..@j1613
..@j1612:
; [853] else if d^.refcount>0 then
%LINE 853+0
		mov	rax,qword [rbp-16]
		cmp	qword [rax],0
		jg	..@j1614
		jmp	..@j1615
..@j1614:
; [856] inc(d^.refcount);
%LINE 856+0
		mov	rax,qword [rbp-16]
		inc	qword [rax]
..@j1615:
..@j1613:
..@j1607:
; [857] end;
%LINE 857+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1397:

SECTION .text
	GLOBAL fpc_dynarray_clear
fpc_dynarray_clear:
	GLOBAL FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
..@c1401:
; [862] begin
%LINE 862+0
		push	rbp
..@c1403:
..@c1404:
		mov	rbp,rsp
..@c1405:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var ti located at rbp-16, size=OS_64
; Var d located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [863] if p = nil then exit;
%LINE 863+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j1618
		jmp	..@j1619
..@j1618:
		jmp	..@j1616
..@j1619:
; [864] d := pdynarray(p-sizeof(tdynarray));
%LINE 864+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax-16]
		mov	qword [rbp-24],rax
; [865] if d^.refcount = 0 then
%LINE 865+0
		mov	rax,qword [rbp-24]
		cmp	qword [rax],0
		je	..@j1620
		jmp	..@j1621
..@j1620:
; [867] HandleError(204);
%LINE 867+0
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j1621:
; [868] if d^.refcount > 0 then begin
%LINE 868+0
		mov	rax,qword [rbp-24]
		cmp	qword [rax],0
		jg	..@j1622
		jmp	..@j1623
..@j1622:
; [869] dec(d^.refcount); // todo: locked
%LINE 869+0
		mov	rax,qword [rbp-24]
		dec	qword [rax]
; [873] FreeMem(d);
%LINE 873+0
		mov	rcx,qword [rbp-24]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1623:
; [875] p := nil;
%LINE 875+0
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
..@j1616:
; [876] end;
%LINE 876+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1402:

SECTION .text
SYSTEM$_$fpc_chararray_to_ansistr$array_of_CHAR$BOOLEAN$$ANSISTRING_$$_fin$0000029E:
..@c1406:
; [910] end;
%LINE 910+0
		push	rbp
..@c1408:
..@c1409:
		mov	rbp,rcx
..@c1410:
		lea	rsp,[rsp-32]
; [881] begin
%LINE 881+0
		lea	rcx,[rbp-48]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c1407:

SECTION .text
	GLOBAL fpc_chararray_to_ansistr
fpc_chararray_to_ansistr:
..@c1411:
; Temps allocated between rbp-48 and rbp-40
		push	rbp
..@c1413:
..@c1414:
		mov	rbp,rsp
..@c1415:
		lea	rsp,[rsp-80]
; Var arr located at rbp-8, size=OS_64
; Var zerobased located at rbp-16, size=OS_8
; Var $highARR located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_64
; Var i located at rbp-40, size=OS_S64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-24],r8
		mov	byte [rbp-16],r9b
		mov	qword [rbp-48],0
..@j1632:
		nop
..@j1628:
; [882] result := '';
%LINE 882+0
		mov	rax,qword [rbp-32]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_ansistr_assign
; [884] if (zerobased) then
%LINE 884+0
		cmp	byte [rbp-16],0
		jne	..@j1633
		jmp	..@j1634
..@j1633:
; [886] i := 0;
%LINE 886+0
		mov	qword [rbp-40],0
..@j1635:
; [888] if (arr[i] = #0) Then
%LINE 888+0
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rbp-40]
		cmp	byte [rdx+rax*1],0
		je	..@j1638
		jmp	..@j1639
..@j1638:
; [890] i := 0;
%LINE 890+0
		mov	qword [rbp-40],0
; [891] exit;
%LINE 891+0
		jmp	..@j1630
		jmp	..@j1640
..@j1639:
; [894] result := result + arr[i];
%LINE 894+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-40]
		movzx	edx,byte [rax+rdx*1]
		mov	r8d,0
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-32]
		mov	r9d,0
		call	fpc_ansistr_concat
..@j1640:
; [896] inc(i);
%LINE 896+0
		inc	qword [rbp-40]
; [897] until i = Length(arr);
%LINE 897+0
		mov	rax,qword [rbp-24]
		lea	rax,[rax+1]
		cmp	rax,qword [rbp-40]
		je	..@j1637
		jmp	..@j1635
..@j1637:
		jmp	..@j1641
..@j1634:
; [900] i := 0;
%LINE 900+0
		mov	qword [rbp-40],0
..@j1642:
; [902] result := result + arr[i];
%LINE 902+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-40]
		movzx	edx,byte [rax+rdx*1]
		mov	r8d,0
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-32]
		mov	r9d,0
		call	fpc_ansistr_concat
; [903] inc(i);
%LINE 903+0
		inc	qword [rbp-40]
; [904] until i = high(arr)+1;
%LINE 904+0
		mov	rax,qword [rbp-24]
		lea	rax,[rax+1]
		cmp	rax,qword [rbp-40]
		je	..@j1644
		jmp	..@j1642
..@j1644:
..@j1641:
; [906] if i > 0 then
%LINE 906+0
		cmp	qword [rbp-40],0
		jg	..@j1645
		jmp	..@j1646
..@j1645:
; [908] Move (arr[0],Pointer(fpc_CharArray_To_AnsiStr)^,i);
%LINE 908+0
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-8]
		mov	r8,qword [rbp-40]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j1646:
..@j1630:
%LINE 881+0
		nop
..@j1629:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_chararray_to_ansistr$array_of_CHAR$BOOLEAN$$ANSISTRING_$$_fin$0000029E
%LINE 910+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c1412:

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1:
; [objects.inc]
; [566] function TInterfacedObject.QueryInterface(constref iid: TGUID; out obj): LongInt; stdcall;
%LINE 566+0 objects.inc
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
; [571] function TInterfacedObject._AddRef: LongInt; stdcall;
%LINE 571+0
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
; [578] function TInterfacedObject._Release: LongInt; stdcall;
%LINE 578+0
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

SECTION .text
	GLOBAL INIT$_$SYSTEM
INIT$_$SYSTEM:
	GLOBAL SYSTEM_$$_init$
SYSTEM_$$_init$:
..@c1426:
; [system.pas]
; [1022] initialization
%LINE 1022+0 system.pas
		push	rbp
..@c1428:
..@c1429:
		mov	rbp,rsp
..@c1430:
		lea	rsp,[rsp-32]
; [1023] install_exception_handlers;
%LINE 1023+0
		call	SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
; [1025] end.
%LINE 1025+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c1427:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
; [system_types.inc]
; [254] FPC_EMPTYCHAR: AnsiChar; public name 'FPC_EMPTYCHAR';
%LINE 254+0 system_types.inc
	GLOBAL FPC_EMPTYCHAR
FPC_EMPTYCHAR:	RESB	1

SECTION .bss
	ALIGNB 8
; [exceptions.inc]
; [152] ExceptAddrStack:   PExceptAddr;
%LINE 152+0 exceptions.inc
	GLOBAL U_$SYSTEM_$$_EXCEPTADDRSTACK
U_$SYSTEM_$$_EXCEPTADDRSTACK:	RESB	8

SECTION .bss
	ALIGNB 8
; [153] ExceptObjectStack: PExceptObject;
%LINE 153+0
	GLOBAL U_$SYSTEM_$$_EXCEPTOBJECTSTACK
U_$SYSTEM_$$_EXCEPTOBJECTSTACK:	RESB	8

SECTION .bss
	ALIGNB 8
; [system.pas]
; [200] StdIn, StdOut, StdErr: HANDLE;       // initialized in sysinitpas if app type is CONSOLE
%LINE 200+0 system.pas
	GLOBAL U_$SYSTEM_$$_STDIN
U_$SYSTEM_$$_STDIN:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_STDOUT
U_$SYSTEM_$$_STDOUT:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_STDERR
U_$SYSTEM_$$_STDERR:	RESB	8

SECTION .bss
	ALIGNB 8
; [201] EntryInformation: TEntryInformation; // @@todo: check if EntryInformation is used
%LINE 201+0
	GLOBAL U_$SYSTEM_$$_ENTRYINFORMATION
U_$SYSTEM_$$_ENTRYINFORMATION:	RESB	56

SECTION .bss
	ALIGNB 4
; [203] ExitCode: LongInt;           public name 'operatingsystem_result';
%LINE 203+0
	GLOBAL operatingsystem_result
operatingsystem_result:	RESB	4

SECTION .bss
	ALIGNB 8
; [exceptions64.inc]
; [226] ex_rip   : array[0..ex_max_level-1] of qword;
%LINE 226+0 exceptions64.inc
U_$SYSTEM_$$_EX_RIP:	RESB	128

SECTION .bss
	ALIGNB 8
; [227] except_signal : array[0..ex_max_level-1] of qword;
%LINE 227+0
U_$SYSTEM_$$_EXCEPT_SIGNAL:	RESB	128

SECTION .bss
; [228] reset_fpu    : array[0..ex_max_level-1] of boolean;
%LINE 228+0
U_$SYSTEM_$$_RESET_FPU:	RESB	16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d76,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; [system.pas]
%LINE 1025+0 system.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IID_$SYSTEM_$$_IUNKNOWN
IID_$SYSTEM_$$_IUNKNOWN	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IIDSTR_$SYSTEM_$$_IUNKNOWN
IIDSTR_$SYSTEM_$$_IUNKNOWN	DB	38
		DB	"{00000000-0000-0000-C000-000000000046}"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TINTERFACEDOBJECT
VMT_$SYSTEM_$$_TINTERFACEDOBJECT	DQ	24,-24,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d77,0,0,0,RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
	DQ	0,0,..@d79,0,SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY,SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TTESTEXCEPTION
VMT_$SYSTEM_$$_TTESTEXCEPTION	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d80,0,0,0,RTTI_$SYSTEM_$$_TTESTEXCEPTION
	DQ	INIT_$SYSTEM_$$_TTESTEXCEPTION,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .rodata
..@d33$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d33:
; [540] 'DivByZero',        'RangeError',      'StackOverflow',     '203',            '204',
%LINE 540+0 system.pas
		DB	"DivByZero",0

SECTION .rodata
..@d34$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d34:
		DB	"RangeError",0

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d35:
		DB	"StackOverflow",0

SECTION .rodata
..@d36$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d36:
		DB	"203",0

SECTION .rodata
..@d37$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d37:
		DB	"204",0

SECTION .rodata
..@d38$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d38:
; [541] 'Overflow',         'Underflow',       'InvalidOp',         'ZeroDivide',     '209',
%LINE 541+0
		DB	"Overflow",0

SECTION .rodata
..@d39$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d39:
		DB	"Underflow",0

SECTION .rodata
..@d40$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d40:
		DB	"InvalidOp",0

SECTION .rodata
..@d41$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d41:
		DB	"ZeroDivide",0

SECTION .rodata
..@d42$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d42:
		DB	"209",0

SECTION .rodata
..@d43$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d43:
; [542] 'ObjectCheckError', 'AbstractError',   'ExternalException', '213',            'BusError',
%LINE 542+0
		DB	"ObjectCheckError",0

SECTION .rodata
..@d44$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d44:
		DB	"AbstractError",0

SECTION .rodata
..@d45$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d45:
		DB	"ExternalException",0

SECTION .rodata
..@d46$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d46:
		DB	"213",0

SECTION .rodata
..@d47$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d47:
		DB	"BusError",0

SECTION .rodata
..@d48$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d48:
; [543] 'IntOverflow',      'AccessViolation', 'ControlC',          'Privilege',      'InvalidCast',
%LINE 543+0
		DB	"IntOverflow",0

SECTION .rodata
..@d49$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d49:
		DB	"AccessViolation",0

SECTION .rodata
..@d50$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d50:
		DB	"ControlC",0

SECTION .rodata
..@d51$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d51:
		DB	"Privilege",0

SECTION .rodata
..@d52$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d52:
		DB	"InvalidCast",0

SECTION .rodata
..@d53$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d53:
; [544] 'InvalidVarCast',   'InvalidVarOp',    'DispatchError',     'VarArrayCreate', 'VarNotArray',
%LINE 544+0
		DB	"InvalidVarCast",0

SECTION .rodata
..@d54$strlab:
	DW	0,1
	DD	0
	DQ	-1,12
..@d54:
		DB	"InvalidVarOp",0

SECTION .rodata
..@d55$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d55:
		DB	"DispatchError",0

SECTION .rodata
..@d56$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d56:
		DB	"VarArrayCreate",0

SECTION .rodata
..@d57$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d57:
		DB	"VarNotArray",0

SECTION .rodata
..@d58$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d58:
; [545] 'VarArrayBounds',   '226',             'AssertionFailed',   'IntfCastError',  'SafecallException',
%LINE 545+0
		DB	"VarArrayBounds",0

SECTION .rodata
..@d59$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d59:
		DB	"226",0

SECTION .rodata
..@d60$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d60:
		DB	"AssertionFailed",0

SECTION .rodata
..@d61$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d61:
		DB	"IntfCastError",0

SECTION .rodata
..@d62$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d62:
		DB	"SafecallException",0

SECTION .rodata
..@d63$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d63:
; [546] '230',              'iconvError',      'NoThreadSupport',   'SigQuit',        'MissingWStringManager',
%LINE 546+0
		DB	"230",0

SECTION .rodata
..@d64$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d64:
		DB	"iconvError",0

SECTION .rodata
..@d65$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d65:
		DB	"NoThreadSupport",0

SECTION .rodata
..@d66$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d66:
		DB	"SigQuit",0

SECTION .rodata
..@d67$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d67:
		DB	"MissingWStringManager",0

SECTION .rodata
..@d68$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d68:
; [547] 'NoDynLibsSupport', 'ThreadError'
%LINE 547+0
		DB	"NoDynLibsSupport",0

SECTION .rodata
..@d69$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d69:
; [548] );
%LINE 548+0
		DB	"ThreadError",0

SECTION .data
	ALIGN 8,DB 0
..@d76:
	DB	7
%LINE 1025+0
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d77:
	DB	17
		DB	"TInterfacedObject"

SECTION .data
	ALIGN 8,DB 0
..@d78:
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

SECTION .data
	ALIGN 8,DB 0
..@d79:
	DQ	1,IID_$SYSTEM_$$_IUNKNOWN$indirect,..@d78,16,IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
	DD	0
	DB	0,0,0,0

SECTION .data
	ALIGN 8,DB 0
..@d80:
	DB	14
		DB	"TTestException"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXITPROC
TC_$SYSTEM_$$_EXITPROC	DQ	0
; [49] ErrorAddr: CodePointer = nil;
%LINE 49+0 system.pas

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORADDR
TC_$SYSTEM_$$_ERRORADDR	DQ	0
; [50] ErrorCode: Word = 0;
%LINE 50+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORCODE
TC_$SYSTEM_$$_ERRORCODE	DW	0
; [51] ErrorBase: Pointer = nil; public name 'FPC_ERRORBASE';
%LINE 51+0

SECTION .data
	GLOBAL FPC_ERRORBASE
FPC_ERRORBASE	DQ	0
; [55] const
%LINE 55+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_IOBJECTINSTANCE
TC_$SYSTEM_$$_IOBJECTINSTANCE	DD	-652436748
	DW	15507,16911
	DB	163,3,191,91,168,43,253,35
; [objects.inc]
; [149] type
%LINE 149+0 objects.inc

SECTION .data
	GLOBAL TC_$SYSTEM_$$_DEFAULT8087CW
TC_$SYSTEM_$$_DEFAULT8087CW	DW	4914
; [exceptions.inc]
; [65] DefaultMXCSR: DWord = $1900;
%LINE 65+0 exceptions.inc

SECTION .data
	GLOBAL TC_$SYSTEM_$$_DEFAULTMXCSR
TC_$SYSTEM_$$_DEFAULTMXCSR	DD	6400
; [68] const
%LINE 68+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXCEPTOBJPROC
TC_$SYSTEM_$$_EXCEPTOBJPROC	DQ	0
; [157] ExceptClsProc: TExceptClsProc = nil;
%LINE 157+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXCEPTCLSPROC
TC_$SYSTEM_$$_EXCEPTCLSPROC	DQ	0
; [158] ErrorProc: TErrorProc = nil;
%LINE 158+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORPROC
TC_$SYSTEM_$$_ERRORPROC	DQ	0
; [exceptions64.inc]
; [11] type
%LINE 11+0 exceptions64.inc

SECTION .data
	GLOBAL TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT
TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT	DD	16
; [102] type
%LINE 102+0

SECTION .data
	GLOBAL operatingsystem_islibrary
operatingsystem_islibrary	DB	0
; [system.pas]
; [205] is_console: boolean = false; public name 'operatingsystem_isconsole';
%LINE 205+0 system.pas

SECTION .data
	GLOBAL operatingsystem_isconsole
operatingsystem_isconsole	DB	0
; [206] IsMultithread: boolean = false;
%LINE 206+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ISMULTITHREAD
TC_$SYSTEM_$$_ISMULTITHREAD	DB	0
; [208] Procedure fpc_Copy_proc (Src, Dest, TypeInfo : Pointer); compilerproc; inline;
%LINE 208+0

SECTION .rodata
_$SYSTEM$_Ld1:
%LINE 233+0
		DB	16,"press <enter>...",0

SECTION .rodata
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d2:
; [objects.inc]
%LINE 587+0 objects.inc
		DB	"$Capturer",0

SECTION .rodata
_$SYSTEM$_Ld3:
	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70
%LINE 679+0

SECTION .rodata
..@d4$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d4:
%LINE 721+0
		DB	"@@todo: fpc_intf_cast",0

SECTION .data
TC_$SYSTEM_$$_EX_LEVEL	DB	0
; [exceptions64.inc]
; [225] var
%LINE 225+0 exceptions64.inc

SECTION .rodata
_$SYSTEM$_Ld5:
%LINE 234+0
		DB	18,"JumpToHandleSignal",0

SECTION .rodata
_$SYSTEM$_Ld6:
%LINE 307+0
		DB	25,"signals_exception_handler",0

SECTION .rodata
_$SYSTEM$_Ld7:
%LINE 313+0
		DB	23,"exrec^.ExceptionCode = ",0

SECTION .rodata
_$SYSTEM$_Ld8:
%LINE 345+0
		DB	28,"syswin_x64_exception_handler",0

SECTION .data
TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER	DQ	0
; [355] procedure install_exception_handlers;
%LINE 355+0

SECTION .rodata
_$SYSTEM$_Ld9:
%LINE 558+0
		DB	22,"__FPC_specific_handler",0

SECTION .rodata
_$SYSTEM$_Ld10:
%LINE 648+0
		DB	18,"fpc_raiseexception",0

SECTION .rodata
_$SYSTEM$_Ld11:
%LINE 650+0
		DB	7,"obj nil",0

SECTION .rodata
_$SYSTEM$_Ld12:
%LINE 651+0
		DB	10,"anaddr nil",0

SECTION .rodata
_$SYSTEM$_Ld13:
%LINE 652+0
		DB	10,"aframe nil",0

SECTION .rodata
_$SYSTEM$_Ld14:
%LINE 655+0
		DB	20,"exception message = ",0

SECTION .rodata
_$SYSTEM$_Ld15:
; [rtti.inc]
%LINE 36+0 rtti.inc
		DB	14,"fpc_initialize",0

SECTION .rodata
_$SYSTEM$_Ld16:
%LINE 41+0
		DB	12,"fpc_finalize",0

SECTION .rodata
_$SYSTEM$_Ld17:
%LINE 44+0
		DB	"&decrease refcount of interfaced object",0

SECTION .rodata
_$SYSTEM$_Ld18:
%LINE 50+0
		DB	10,"fpc_addref",0

SECTION .rodata
_$SYSTEM$_Ld19:
%LINE 55+0
		DB	10,"fpc_decref",0

SECTION .rodata
..@d20$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d20:
; [io.inc]
%LINE 102+0 io.inc
		DB	13,10,0

SECTION .rodata
..@d21$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d21:
%LINE 230+0
		DB	"TRUE",0

SECTION .rodata
..@d22$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d22:
		DB	"FALSE",0

SECTION .rodata
_$SYSTEM$_Ld23:
; [strings.inc]
%LINE 153+0 strings.inc
		DB	21,"fpc_val_sint_shortstr",0

SECTION .rodata
_$SYSTEM$_Ld24:
%LINE 158+0
		DB	17,"fpc_shortstr_sint",0

SECTION .rodata
_$SYSTEM$_Ld25:
%LINE 378+0
		DB	24,"fpc_ansistr_concat_multi",0

SECTION .rodata
_$SYSTEM$_Ld26:
%LINE 417+0
		DB	16,"fpc_ansistr_sint",0

SECTION .rodata
_$SYSTEM$_Ld27:
%LINE 594+0
		DB	21,"fpc_pchar_to_shortstr",0

SECTION .rodata
_$SYSTEM$_Ld28:
%LINE 682+0
		DB	20,"fpc_uchar_to_ansistr",0

SECTION .data
TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg	DB	0
%LINE 865+0

SECTION .rodata
..@d29$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d29:
%LINE 866+0
		DB	"0",0

SECTION .rodata
..@d30$strlab:
	DW	1200,2
	DD	0
	DQ	-1,1
..@d30:
	DW	63,0
; [unicode.inc]
%LINE 139+0 unicode.inc

SECTION .rodata
..@d31$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d31:
%LINE 180+0
		DB	"?",0

SECTION .rodata
_$SYSTEM$_Ld32:
; [system.pas]
%LINE 264+0 system.pas
		DB	"DEBUG",0

SECTION .data
TC_$SYSTEM$_$FPCHANDLEERROR$LONGINT_$$_ERRMAP	DQ	..@d33,..@d34,..@d35,..@d36,..@d37,..@d38,..@d39,..@d40,..@d41,..@d42,..@d43
	DQ	..@d44,..@d45,..@d46,..@d47,..@d48,..@d49,..@d50,..@d51,..@d52,..@d53,..@d54
	DQ	..@d55,..@d56,..@d57,..@d58,..@d59,..@d60,..@d61,..@d62,..@d63,..@d64,..@d65
	DQ	..@d66,..@d67,..@d68,..@d69
%LINE 549+0

SECTION .rodata
_$SYSTEM$_Ld70:
%LINE 550+0
		DB	25,"fpc_handleerror, errno = ",0

SECTION .rodata
_$SYSTEM$_Ld71:
		DB	12,", meaning = ",0

SECTION .rodata
_$SYSTEM$_Ld72:
%LINE 568+0
		DB	16,"fpc_popaddrstack",0

SECTION .rodata
_$SYSTEM$_Ld73:
%LINE 573+0
		DB	18,"fpc_pushexceptaddr",0

SECTION .rodata
_$SYSTEM$_Ld74:
%LINE 810+0
		DB	24,"array needs reallocation",0

SECTION .rodata
_$SYSTEM$_Ld75:
%LINE 811+0
		DB	25,"@@todo to be implemented!",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal	DB	0,7
; [1026] 
%LINE 1026+0 system.pas
		DB	"$formal"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_typedformal
RTTI_$SYSTEM_$$_typedformal	DB	0,12
		DB	"$typedformal"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_void
RTTI_$SYSTEM_$$_void	DB	1,5
		DB	"$void"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINTER
RTTI_$SYSTEM_$$_POINTER	DB	29,7
		DB	"Pointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTE
RTTI_$SYSTEM_$$_BYTE	DB	1,4
		DB	"Byte"
	DB	1
	DD	0,255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTINT
RTTI_$SYSTEM_$$_SHORTINT	DB	1,8
		DB	"ShortInt"
	DB	0
	DD	-128,127

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORD
RTTI_$SYSTEM_$$_WORD	DB	1,4
		DB	"Word"
	DB	3
	DD	0,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALLINT
RTTI_$SYSTEM_$$_SMALLINT	DB	1,8
		DB	"SmallInt"
	DB	2
	DD	-32768,32767

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGWORD
RTTI_$SYSTEM_$$_LONGWORD	DB	1,8
		DB	"LongWord"
	DB	5
	DD	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGINT
RTTI_$SYSTEM_$$_LONGINT	DB	1,7
		DB	"LongInt"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORD
RTTI_$SYSTEM_$$_QWORD	DB	20,5
		DB	"QWord"
	DB	7
	DQ	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_INT64
RTTI_$SYSTEM_$$_INT64	DB	19,5
		DB	"Int64"
	DB	6
	DQ	-9223372036854775808,9223372036854775807

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_uint128
RTTI_$SYSTEM_$$_uint128	DB	1,8
		DB	"$uint128"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_int128
RTTI_$SYSTEM_$$_int128	DB	1,7
		DB	"$int128"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN
RTTI_$SYSTEM_$$_BOOLEAN	DB	18,7
		DB	"Boolean"
	DB	1
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN8
RTTI_$SYSTEM_$$_BOOLEAN8	DB	18,8
		DB	"Boolean8"
	DB	1
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN16
RTTI_$SYSTEM_$$_BOOLEAN16	DB	18,9
		DB	"Boolean16"
	DB	3
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN32
RTTI_$SYSTEM_$$_BOOLEAN32	DB	18,9
		DB	"Boolean32"
	DB	5
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN64
RTTI_$SYSTEM_$$_BOOLEAN64	DB	18,9
		DB	"Boolean64"
	DB	7
	DQ	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTEBOOL
RTTI_$SYSTEM_$$_BYTEBOOL	DB	18,8
		DB	"ByteBool"
	DB	0
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORDBOOL
RTTI_$SYSTEM_$$_WORDBOOL	DB	18,8
		DB	"WordBool"
	DB	2
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBOOL
RTTI_$SYSTEM_$$_LONGBOOL	DB	18,8
		DB	"LongBool"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORDBOOL
RTTI_$SYSTEM_$$_QWORDBOOL	DB	18,9
		DB	"QWordBool"
	DB	6
	DQ	-9223372036854775808,9223372036854775807

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CHAR
RTTI_$SYSTEM_$$_CHAR	DB	2,4
		DB	"Char"
	DB	1
	DD	0,255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDECHAR
RTTI_$SYSTEM_$$_WIDECHAR	DB	17,8
		DB	"WideChar"
	DB	3
	DD	0,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTSTRING
RTTI_$SYSTEM_$$_SHORTSTRING	DB	7,11
		DB	"ShortString"
	DB	255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_longstring
RTTI_$SYSTEM_$$_longstring	DB	8,11
		DB	"$longstring"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ANSISTRING
RTTI_$SYSTEM_$$_ANSISTRING	DB	9,10
		DB	"AnsiString"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDESTRING
RTTI_$SYSTEM_$$_WIDESTRING	DB	10,10
		DB	"WideString"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNICODESTRING
RTTI_$SYSTEM_$$_UNICODESTRING	DB	24,13
		DB	"UnicodeString"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OPENSTRING
RTTI_$SYSTEM_$$_OPENSTRING	DB	7,10
		DB	"OpenString"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SINGLE
RTTI_$SYSTEM_$$_SINGLE	DB	4,6
		DB	"Single"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_DOUBLE
RTTI_$SYSTEM_$$_DOUBLE	DB	4,6
		DB	"Double"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_s80real
RTTI_$SYSTEM_$$_s80real	DB	4,8
		DB	"$s80real"
	DB	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_sc80real
RTTI_$SYSTEM_$$_sc80real	DB	4,9
		DB	"$sc80real"
	DB	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CURRENCY
RTTI_$SYSTEM_$$_CURRENCY	DB	4,8
		DB	"Currency"
	DB	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_char_pointer
RTTI_$SYSTEM_$$_char_pointer	DB	29,13
		DB	"$char_pointer"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_widechar_pointer
RTTI_$SYSTEM_$$_widechar_pointer	DB	29,17
		DB	"$widechar_pointer"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_parentfp_void_pointer
RTTI_$SYSTEM_$$_parentfp_void_pointer	DB	29,22
		DB	"$parentfp_void_pointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARPOINTER
RTTI_$SYSTEM_$$_NEARPOINTER	DB	29,11
		DB	"NearPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARCSPOINTER
RTTI_$SYSTEM_$$_NEARCSPOINTER	DB	29,13
		DB	"NearCsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARDSPOINTER
RTTI_$SYSTEM_$$_NEARDSPOINTER	DB	29,13
		DB	"NearDsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARSSPOINTER
RTTI_$SYSTEM_$$_NEARSSPOINTER	DB	29,13
		DB	"NearSsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARESPOINTER
RTTI_$SYSTEM_$$_NEARESPOINTER	DB	29,13
		DB	"NearEsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARFSPOINTER
RTTI_$SYSTEM_$$_NEARFSPOINTER	DB	29,13
		DB	"NearFsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARGSPOINTER
RTTI_$SYSTEM_$$_NEARGSPOINTER	DB	29,13
		DB	"NearGsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_openchararray
RTTI_$SYSTEM_$$_openchararray	DB	12,4
		DB	"Char"
	DQ	0,0,RTTI_$SYSTEM_$$_CHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_file
RTTI_$SYSTEM_$$_file	DB	0,5
		DB	"$file"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_VARIANT
RTTI_$SYSTEM_$$_VARIANT	DB	11,7
		DB	"Variant"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OLEVARIANT
RTTI_$SYSTEM_$$_OLEVARIANT	DB	11,10
		DB	"OleVariant"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXT
RTTI_$SYSTEM_$$_TEXT	DB	0,4
		DB	"Text"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TYPEDFILE
RTTI_$SYSTEM_$$_TYPEDFILE	DB	0,9
		DB	"TypedFile"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$___vtbl_ptr_type
INIT_$SYSTEM_$$___vtbl_ptr_type	DB	13,16
		DB	"$__vtbl_ptr_type"
	DQ	0
	DD	40
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_pvmt
RTTI_$SYSTEM_$$_pvmt	DB	29,5
		DB	"$pvmt"
	DQ	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000037
RTTI_$SYSTEM_$$_def00000037	DB	29,0
	DQ	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000038
RTTI_$SYSTEM_$$_def00000038	DB	12,0
	DQ	8,1,RTTI_$SYSTEM_$$_POINTER$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$___vtbl_ptr_type
RTTI_$SYSTEM_$$___vtbl_ptr_type	DB	13,16
		DB	"$__vtbl_ptr_type"
	DQ	INIT_$SYSTEM_$$___vtbl_ptr_type
	DD	40,5
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8,RTTI_$SYSTEM_$$_pvmt$indirect
	DQ	16,RTTI_$SYSTEM_$$_def00000037$indirect,24,RTTI_$SYSTEM_$$_def00000038$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_vtblarray
RTTI_$SYSTEM_$$_vtblarray	DB	12,10
		DB	"$vtblarray"
	DQ	16,2,RTTI_$SYSTEM_$$_pvmt$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_methodpointer
INIT_$SYSTEM_$$_methodpointer	DB	13,14
		DB	"$methodpointer"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_methodpointer
RTTI_$SYSTEM_$$_methodpointer	DB	13,14
		DB	"$methodpointer"
	DQ	INIT_$SYSTEM_$$_methodpointer
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_nestedprocpointer
INIT_$SYSTEM_$$_nestedprocpointer	DB	13,18
		DB	"$nestedprocpointer"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_nestedprocpointer
RTTI_$SYSTEM_$$_nestedprocpointer	DB	13,18
		DB	"$nestedprocpointer"
	DQ	INIT_$SYSTEM_$$_nestedprocpointer
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TBYTELOOKUP
RTTI_$SYSTEM_$$_TBYTELOOKUP	DB	12,11
		DB	"TByteLookup"
	DQ	256,256,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTELOOKUP
RTTI_$SYSTEM_$$_PBYTELOOKUP	DB	29,11
		DB	"PByteLookup"
	DQ	RTTI_$SYSTEM_$$_TBYTELOOKUP$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CARDINAL
RTTI_$SYSTEM_$$_CARDINAL	DB	1,8
		DB	"Cardinal"
	DB	5
	DD	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_HRESULT
RTTI_$SYSTEM_$$_HRESULT	DB	1,7
		DB	"HRESULT"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCHAR
RTTI_$SYSTEM_$$_PCHAR	DB	29,5
		DB	"PChar"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPCHAR
RTTI_$SYSTEM_$$_PPCHAR	DB	29,6
		DB	"PPChar"
	DQ	RTTI_$SYSTEM_$$_PCHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSICHAR
RTTI_$SYSTEM_$$_PANSICHAR	DB	29,9
		DB	"PAnsiChar"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSISTRING
RTTI_$SYSTEM_$$_PANSISTRING	DB	29,11
		DB	"PAnsiString"
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDECHAR
RTTI_$SYSTEM_$$_PWIDECHAR	DB	29,9
		DB	"PWideChar"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPWIDECHAR
RTTI_$SYSTEM_$$_PPWIDECHAR	DB	29,10
		DB	"PPWideChar"
	DQ	RTTI_$SYSTEM_$$_PWIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTSTRING
RTTI_$SYSTEM_$$_PSHORTSTRING	DB	29,12
		DB	"PShortString"
	DQ	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RAWBYTESTRING
RTTI_$SYSTEM_$$_RAWBYTESTRING	DB	9,13
		DB	"RawByteString"
	DW	65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRAWBYTESTRING
RTTI_$SYSTEM_$$_PRAWBYTESTRING	DB	29,14
		DB	"PRawByteString"
	DQ	RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UTF8STRING
RTTI_$SYSTEM_$$_UTF8STRING	DB	9,10
		DB	"UTF8String"
	DW	65001

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUTF8STRING
RTTI_$SYSTEM_$$_PUTF8STRING	DB	29,11
		DB	"PUTF8String"
	DQ	RTTI_$SYSTEM_$$_UTF8STRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODECHAR
RTTI_$SYSTEM_$$_PUNICODECHAR	DB	29,12
		DB	"PUnicodeChar"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODESTRING
RTTI_$SYSTEM_$$_PUNICODESTRING	DB	29,14
		DB	"PUnicodeString"
	DQ	RTTI_$SYSTEM_$$_UNICODESTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSMALLINT
RTTI_$SYSTEM_$$_PSMALLINT	DB	29,9
		DB	"PSmallInt"
	DQ	RTTI_$SYSTEM_$$_SMALLINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTINT
RTTI_$SYSTEM_$$_PSHORTINT	DB	29,9
		DB	"PShortInt"
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTEGER
RTTI_$SYSTEM_$$_PINTEGER	DB	29,8
		DB	"PInteger"
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTE
RTTI_$SYSTEM_$$_PBYTE	DB	29,5
		DB	"PByte"
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORD
RTTI_$SYSTEM_$$_PWORD	DB	29,5
		DB	"PWord"
	DQ	RTTI_$SYSTEM_$$_WORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDWORD
RTTI_$SYSTEM_$$_PDWORD	DB	29,6
		DB	"PDWord"
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGWORD
RTTI_$SYSTEM_$$_PLONGWORD	DB	29,9
		DB	"PLongWord"
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGINT
RTTI_$SYSTEM_$$_PLONGINT	DB	29,8
		DB	"PLongint"
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCARDINAL
RTTI_$SYSTEM_$$_PCARDINAL	DB	29,9
		DB	"PCardinal"
	DQ	RTTI_$SYSTEM_$$_CARDINAL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORD
RTTI_$SYSTEM_$$_PQWORD	DB	29,6
		DB	"PQWord"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINT64
RTTI_$SYSTEM_$$_PINT64	DB	29,6
		DB	"PInt64"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUINT64
RTTI_$SYSTEM_$$_PUINT64	DB	29,7
		DB	"PUInt64"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRINT
RTTI_$SYSTEM_$$_PPTRINT	DB	29,7
		DB	"PPtrInt"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRUINT
RTTI_$SYSTEM_$$_PPTRUINT	DB	29,8
		DB	"PPtrUInt"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEINT
RTTI_$SYSTEM_$$_PSIZEINT	DB	29,8
		DB	"PSizeInt"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEUINT
RTTI_$SYSTEM_$$_PSIZEUINT	DB	29,9
		DB	"PSizeUInt"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSINGLE
RTTI_$SYSTEM_$$_PSINGLE	DB	29,7
		DB	"PSingle"
	DQ	RTTI_$SYSTEM_$$_SINGLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDOUBLE
RTTI_$SYSTEM_$$_PDOUBLE	DB	29,7
		DB	"PDouble"
	DQ	RTTI_$SYSTEM_$$_DOUBLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXTENDED
RTTI_$SYSTEM_$$_PEXTENDED	DB	29,9
		DB	"PExtended"
	DQ	RTTI_$SYSTEM_$$_DOUBLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN
RTTI_$SYSTEM_$$_PBOOLEAN	DB	29,8
		DB	"PBoolean"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN16
RTTI_$SYSTEM_$$_PBOOLEAN16	DB	29,10
		DB	"PBoolean16"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN16$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN32
RTTI_$SYSTEM_$$_PBOOLEAN32	DB	29,10
		DB	"PBoolean32"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN32$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN64
RTTI_$SYSTEM_$$_PBOOLEAN64	DB	29,10
		DB	"PBoolean64"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTEBOOL
RTTI_$SYSTEM_$$_PBYTEBOOL	DB	29,9
		DB	"PByteBool"
	DQ	RTTI_$SYSTEM_$$_BYTEBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORDBOOL
RTTI_$SYSTEM_$$_PWORDBOOL	DB	29,9
		DB	"PWordBool"
	DQ	RTTI_$SYSTEM_$$_WORDBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGBOOL
RTTI_$SYSTEM_$$_PLONGBOOL	DB	29,9
		DB	"PLongBool"
	DQ	RTTI_$SYSTEM_$$_LONGBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORDBOOL
RTTI_$SYSTEM_$$_PQWORDBOOL	DB	29,10
		DB	"PQWordBool"
	DQ	RTTI_$SYSTEM_$$_QWORDBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEINT
RTTI_$SYSTEM_$$_PNATIVEINT	DB	29,10
		DB	"PNativeInt"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEUINT
RTTI_$SYSTEM_$$_PNATIVEUINT	DB	29,11
		DB	"PNativeUInt"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCURRENCY
RTTI_$SYSTEM_$$_PCURRENCY	DB	29,9
		DB	"PCurrency"
	DQ	RTTI_$SYSTEM_$$_CURRENCY$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARIANT
RTTI_$SYSTEM_$$_PVARIANT	DB	29,8
		DB	"PVariant"
	DQ	RTTI_$SYSTEM_$$_VARIANT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINTER
RTTI_$SYSTEM_$$_PPOINTER	DB	29,8
		DB	"PPointer"
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATETIME
RTTI_$SYSTEM_$$_TDATETIME	DB	4,9
		DB	"TDateTime"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATE
RTTI_$SYSTEM_$$_TDATE	DB	4,5
		DB	"TDate"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTIME
RTTI_$SYSTEM_$$_TTIME	DB	4,5
		DB	"TTime"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TPROCEDURE
RTTI_$SYSTEM_$$_TPROCEDURE	DB	23,10
		DB	"TProcedure"
	DB	0,0
	DQ	0
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTEXT
RTTI_$SYSTEM_$$_PTEXT	DB	29,5
		DB	"PText"
	DQ	RTTI_$SYSTEM_$$_TEXT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCODEPOINTER
RTTI_$SYSTEM_$$_PCODEPOINTER	DB	29,12
		DB	"PCodePointer"
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILETEXTRECCHAR
RTTI_$SYSTEM_$$_PFILETEXTRECCHAR	DB	29,16
		DB	"PFileTextRecChar"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_JMP_BUF
INIT_$SYSTEM_$$_JMP_BUF	DB	13,7
		DB	"jmp_buf"
	DQ	0
	DD	248
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_def00000078
INIT_$SYSTEM_$$_def00000078	DB	13,0
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000078
RTTI_$SYSTEM_$$_def00000078	DB	13,0
	DQ	INIT_$SYSTEM_$$_def00000078
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_JMP_BUF
RTTI_$SYSTEM_$$_JMP_BUF	DB	13,7
		DB	"jmp_buf"
	DQ	INIT_$SYSTEM_$$_JMP_BUF
	DD	248,23
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	16,RTTI_$SYSTEM_$$_QWORD$indirect,24,RTTI_$SYSTEM_$$_QWORD$indirect,32
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,40,RTTI_$SYSTEM_$$_QWORD$indirect,48,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	56,RTTI_$SYSTEM_$$_QWORD$indirect,64,RTTI_$SYSTEM_$$_QWORD$indirect,72
	DQ	RTTI_$SYSTEM_$$_def00000078$indirect,80,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	96,RTTI_$SYSTEM_$$_def00000078$indirect,112,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	128,RTTI_$SYSTEM_$$_def00000078$indirect,144,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	160,RTTI_$SYSTEM_$$_def00000078$indirect,176,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	192,RTTI_$SYSTEM_$$_def00000078$indirect,208,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	224,RTTI_$SYSTEM_$$_LONGWORD$indirect,240,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	244,RTTI_$SYSTEM_$$_WORD$indirect,246

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PJMP_BUF
RTTI_$SYSTEM_$$_PJMP_BUF	DB	29,8
		DB	"pjmp_buf"
	DQ	RTTI_$SYSTEM_$$_JMP_BUF$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTADDR
INIT_$SYSTEM_$$_TEXCEPTADDR	DB	13,11
		DB	"TExceptAddr"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTADDR
RTTI_$SYSTEM_$$_TEXCEPTADDR	DB	13,11
		DB	"TExceptAddr"
	DQ	INIT_$SYSTEM_$$_TEXCEPTADDR
	DD	24,3
	DQ	RTTI_$SYSTEM_$$_PJMP_BUF$indirect,0,RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGINT$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTADDR
RTTI_$SYSTEM_$$_PEXCEPTADDR	DB	29,11
		DB	"PExceptAddr"
	DQ	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TGUID
INIT_$SYSTEM_$$_TGUID	DB	13,5
		DB	"TGUID"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000082
RTTI_$SYSTEM_$$_def00000082	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000083
RTTI_$SYSTEM_$$_def00000083	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000084
RTTI_$SYSTEM_$$_def00000084	DB	12,0
	DQ	6,6,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TGUID
RTTI_$SYSTEM_$$_TGUID	DB	13,5
		DB	"TGUID"
	DQ	INIT_$SYSTEM_$$_TGUID
	DD	16,14
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	6,RTTI_$SYSTEM_$$_def00000082$indirect,8,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_def00000083$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4
	DQ	RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_BYTE$indirect,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DQ	9,RTTI_$SYSTEM_$$_def00000084$indirect,10

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PGUID
RTTI_$SYSTEM_$$_PGUID	DB	29,5
		DB	"PGUID"
	DQ	RTTI_$SYSTEM_$$_TGUID$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TLINEENDSTR
RTTI_$SYSTEM_$$_TLINEENDSTR	DB	7,11
		DB	"TLineEndStr"
	DB	3

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTBUF
RTTI_$SYSTEM_$$_TEXTBUF	DB	12,7
		DB	"TextBuf"
	DQ	256,256,RTTI_$SYSTEM_$$_CHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXTREC
INIT_$SYSTEM_$$_TEXTREC	DB	13,7
		DB	"TextRec"
	DQ	0
	DD	904
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000088
RTTI_$SYSTEM_$$_def00000088	DB	29,0
	DQ	RTTI_$SYSTEM_$$_TEXTBUF$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000089
RTTI_$SYSTEM_$$_def00000089	DB	12,0
	DQ	32,32,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000008A
RTTI_$SYSTEM_$$_def0000008A	DB	12,0
	DQ	512,256,RTTI_$SYSTEM_$$_WIDECHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTREC
RTTI_$SYSTEM_$$_TEXTREC	DB	13,7
		DB	"TextRec"
	DQ	INIT_$SYSTEM_$$_TEXTREC
	DD	904,17
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_LONGINT$indirect,8,RTTI_$SYSTEM_$$_INT64$indirect
	DQ	16,RTTI_$SYSTEM_$$_INT64$indirect,24,RTTI_$SYSTEM_$$_INT64$indirect,32
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,40,RTTI_$SYSTEM_$$_def00000088$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_POINTER$indirect,72,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	80,RTTI_$SYSTEM_$$_def00000089$indirect,88,RTTI_$SYSTEM_$$_def0000008A$indirect
	DQ	120,RTTI_$SYSTEM_$$_TLINEENDSTR$indirect,632,RTTI_$SYSTEM_$$_TEXTBUF$indirect
	DQ	636,RTTI_$SYSTEM_$$_LONGWORD$indirect,892,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	896

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TANSIREC
INIT_$SYSTEM_$$_TANSIREC	DB	13,8
		DB	"TAnsiRec"
	DQ	0
	DD	32
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSIREC
RTTI_$SYSTEM_$$_TANSIREC	DB	13,8
		DB	"TAnsiRec"
	DQ	INIT_$SYSTEM_$$_TANSIREC
	DD	32,5
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	8,RTTI_$SYSTEM_$$_INT64$indirect,16,RTTI_$SYSTEM_$$_INT64$indirect,24

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSIREC
RTTI_$SYSTEM_$$_PANSIREC	DB	29,8
		DB	"PAnsiRec"
	DQ	RTTI_$SYSTEM_$$_TANSIREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TWIDEREC
INIT_$SYSTEM_$$_TWIDEREC	DB	13,8
		DB	"TWideRec"
	DQ	0
	DD	6
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TWIDEREC
RTTI_$SYSTEM_$$_TWIDEREC	DB	13,8
		DB	"TWideRec"
	DQ	INIT_$SYSTEM_$$_TWIDEREC
	DD	6,2
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WIDECHAR$indirect
	DQ	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDEREC
RTTI_$SYSTEM_$$_PWIDEREC	DB	29,8
		DB	"PWideRec"
	DQ	RTTI_$SYSTEM_$$_TWIDEREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_FILEREC
INIT_$SYSTEM_$$_FILEREC	DB	13,7
		DB	"FileRec"
	DQ	0
	DD	632
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000093
RTTI_$SYSTEM_$$_def00000093	DB	12,0
	DQ	64,64,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000094
RTTI_$SYSTEM_$$_def00000094	DB	12,0
	DQ	32,32,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000095
RTTI_$SYSTEM_$$_def00000095	DB	12,0
	DQ	512,256,RTTI_$SYSTEM_$$_WIDECHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_FILEREC
RTTI_$SYSTEM_$$_FILEREC	DB	13,7
		DB	"FileRec"
	DQ	INIT_$SYSTEM_$$_FILEREC
	DD	632,6
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_LONGINT$indirect,8,RTTI_$SYSTEM_$$_INT64$indirect
	DQ	16,RTTI_$SYSTEM_$$_def00000093$indirect,24,RTTI_$SYSTEM_$$_def00000094$indirect
	DQ	88,RTTI_$SYSTEM_$$_def00000095$indirect,120

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TOBJECT
INIT_$SYSTEM_$$_TOBJECT	DB	15,7
		DB	"TObject"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TOBJECT
RTTI_$SYSTEM_$$_TOBJECT	DB	15,7
		DB	"TObject"
	DQ	VMT_$SYSTEM_$$_TOBJECT,0
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_IUNKNOWN
RTTI_$SYSTEM_$$_IUNKNOWN	DB	14,8
		DB	"IUnknown"
	DQ	0
	DB	1
	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70,6
		DB	"system"
	DW	0,3,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCLASS
RTTI_$SYSTEM_$$_TCLASS	DB	28,6
		DB	"TClass"
	DQ	RTTI_$SYSTEM_$$_TOBJECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCLASS
RTTI_$SYSTEM_$$_PCLASS	DB	29,6
		DB	"PClass"
	DQ	RTTI_$SYSTEM_$$_TCLASS$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE	DB	3,19
		DB	"TInterfaceEntryType"
	DB	5
	DD	0,6
	DQ	0
	DB	10
		DB	"etStandard"
	DB	21
		DB	"etVirtualMethodResult"
	DB	20
		DB	"etStaticMethodResult"
	DB	12
		DB	"etFieldValue"
	DB	20
		DB	"etVirtualMethodClass"
	DB	19
		DB	"etStaticMethodClass"
	DB	17
		DB	"etFieldValueClass"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o	DD	7,3
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	DD	6
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146
	DD	0
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	DD	5
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	DD	2
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	DD	4
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	DD	1
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEENTRY
INIT_$SYSTEM_$$_TINTERFACEENTRY	DB	13,15
		DB	"TInterfaceEntry"
	DQ	0
	DD	40
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CC
RTTI_$SYSTEM_$$_def000000CC	DB	29,0
	DQ	RTTI_$SYSTEM_$$_PGUID$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CE
RTTI_$SYSTEM_$$_def000000CE	DB	29,0
	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRY
RTTI_$SYSTEM_$$_TINTERFACEENTRY	DB	13,15
		DB	"TInterfaceEntry"
	DQ	INIT_$SYSTEM_$$_TINTERFACEENTRY
	DD	40,6
	DQ	RTTI_$SYSTEM_$$_def000000CC$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	16,RTTI_$SYSTEM_$$_def000000CE$indirect,24,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACEENTRY
RTTI_$SYSTEM_$$_PINTERFACEENTRY	DB	29,15
		DB	"PInterfaceEntry"
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACETABLE
INIT_$SYSTEM_$$_TINTERFACETABLE	DB	13,15
		DB	"TInterfaceTable"
	DQ	0
	DD	48
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D1
RTTI_$SYSTEM_$$_def000000D1	DB	12,0
	DQ	40,1,RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACETABLE
RTTI_$SYSTEM_$$_TINTERFACETABLE	DB	13,15
		DB	"TInterfaceTable"
	DQ	INIT_$SYSTEM_$$_TINTERFACETABLE
	DD	48,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_def000000D1$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACETABLE
RTTI_$SYSTEM_$$_PINTERFACETABLE	DB	29,15
		DB	"PInterfaceTable"
	DQ	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMSGSTRTABLE
INIT_$SYSTEM_$$_TMSGSTRTABLE	DB	13,12
		DB	"TMsgStrTable"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMSGSTRTABLE
RTTI_$SYSTEM_$$_TMSGSTRTABLE	DB	13,12
		DB	"TMsgStrTable"
	DQ	INIT_$SYSTEM_$$_TMSGSTRTABLE
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMSGSTRTABLE
RTTI_$SYSTEM_$$_PMSGSTRTABLE	DB	29,12
		DB	"PMsgStrTable"
	DQ	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE	DB	13,19
		DB	"TStringMessageTable"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D6
RTTI_$SYSTEM_$$_def000000D6	DB	12,0
	DQ	16,1,RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE	DB	13,19
		DB	"TStringMessageTable"
	DQ	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
	DD	24,2
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect,0,RTTI_$SYSTEM_$$_def000000D6$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE	DB	29,19
		DB	"pstringmessagetable"
	DQ	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVMT
INIT_$SYSTEM_$$_TVMT	DB	13,4
		DB	"TVmt"
	DQ	0
	DD	200
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPVMT
RTTI_$SYSTEM_$$_PPVMT	DB	29,5
		DB	"PPVmt"
	DQ	RTTI_$SYSTEM_$$_PVMT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVMT
RTTI_$SYSTEM_$$_TVMT	DB	13,4
		DB	"TVmt"
	DQ	INIT_$SYSTEM_$$_TVMT
	DD	200,25
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8,RTTI_$SYSTEM_$$_PPVMT$indirect
	DQ	16,RTTI_$SYSTEM_$$_PSHORTSTRING$indirect,24,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	32,RTTI_$SYSTEM_$$_POINTER$indirect,40,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_POINTER$indirect,72,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	80,RTTI_$SYSTEM_$$_POINTER$indirect,88,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	96,RTTI_$SYSTEM_$$_POINTER$indirect,104,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	112,RTTI_$SYSTEM_$$_POINTER$indirect,120,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	128,RTTI_$SYSTEM_$$_POINTER$indirect,136,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	144,RTTI_$SYSTEM_$$_POINTER$indirect,152,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	160,RTTI_$SYSTEM_$$_POINTER$indirect,168,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	176,RTTI_$SYSTEM_$$_POINTER$indirect,184,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	192

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVMT
RTTI_$SYSTEM_$$_PVMT	DB	29,4
		DB	"PVmt"
	DQ	RTTI_$SYSTEM_$$_TVMT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEDOBJECT
INIT_$SYSTEM_$$_TINTERFACEDOBJECT	DB	15,17
		DB	"TInterfacedObject"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
RTTI_$SYSTEM_$$_TINTERFACEDOBJECT	DB	15,17
		DB	"TInterfacedObject"
	DQ	VMT_$SYSTEM_$$_TINTERFACEDOBJECT,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDCLASS
RTTI_$SYSTEM_$$_TINTERFACEDCLASS	DB	28,16
		DB	"TInterfacedClass"
	DQ	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMETHOD
INIT_$SYSTEM_$$_TMETHOD	DB	13,7
		DB	"TMethod"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMETHOD
RTTI_$SYSTEM_$$_TMETHOD	DB	13,7
		DB	"TMethod"
	DQ	INIT_$SYSTEM_$$_TMETHOD
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMETHOD
RTTI_$SYSTEM_$$_PMETHOD	DB	29,7
		DB	"PMethod"
	DQ	RTTI_$SYSTEM_$$_TMETHOD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION	DB	3,21
		DB	"EXCEPTION_DISPOSITION"
	DB	5
	DD	0,3
	DQ	0
	DB	26
		DB	"ExceptionContinueExecution"
	DB	23
		DB	"ExceptionContinueSearch"
	DB	24
		DB	"ExceptionNestedException"
	DB	23
		DB	"ExceptionCollidedUnwind"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o	DD	4,3
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116
	DD	0
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40
	DD	1
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	DD	2
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40,RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91,RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_RECORD
INIT_$SYSTEM_$$_EXCEPTION_RECORD	DB	13,16
		DB	"EXCEPTION_RECORD"
	DQ	0
	DD	152
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000012C
RTTI_$SYSTEM_$$_def0000012C	DB	12,0
	DQ	120,15,RTTI_$SYSTEM_$$_QWORD$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_RECORD
RTTI_$SYSTEM_$$_EXCEPTION_RECORD	DB	13,16
		DB	"EXCEPTION_RECORD"
	DQ	INIT_$SYSTEM_$$_EXCEPTION_RECORD
	DD	152,6
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	16,RTTI_$SYSTEM_$$_LONGWORD$indirect,24,RTTI_$SYSTEM_$$_def0000012C$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_RECORD
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD	DB	29,17
		DB	"PEXCEPTION_RECORD"
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSEHFRAME
INIT_$SYSTEM_$$_TSEHFRAME	DB	13,9
		DB	"TSEHFrame"
	DQ	0
	DD	32
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSEHFRAME
RTTI_$SYSTEM_$$_TSEHFRAME	DB	13,9
		DB	"TSEHFrame"
	DQ	INIT_$SYSTEM_$$_TSEHFRAME
	DD	32,4
	DQ	RTTI_$SYSTEM_$$_PSEHFRAME$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	24

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSEHFRAME
RTTI_$SYSTEM_$$_PSEHFRAME	DB	29,9
		DB	"PSEHFrame"
	DQ	RTTI_$SYSTEM_$$_TSEHFRAME$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTOBJECT
INIT_$SYSTEM_$$_TEXCEPTOBJECT	DB	13,13
		DB	"TExceptObject"
	DQ	0
	DD	40
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJECT
RTTI_$SYSTEM_$$_TEXCEPTOBJECT	DB	13,13
		DB	"TExceptObject"
	DQ	INIT_$SYSTEM_$$_TEXCEPTOBJECT
	DD	40,6
	DQ	RTTI_$SYSTEM_$$_TOBJECT$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect,16,RTTI_$SYSTEM_$$_LONGINT$indirect
	DQ	24,RTTI_$SYSTEM_$$_LONGINT$indirect,28,RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTOBJECT
RTTI_$SYSTEM_$$_PEXCEPTOBJECT	DB	29,13
		DB	"PExceptObject"
	DQ	RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TFILTERREC
INIT_$SYSTEM_$$_TFILTERREC	DB	13,10
		DB	"TFilterRec"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TFILTERREC
RTTI_$SYSTEM_$$_TFILTERREC	DB	13,10
		DB	"TFilterRec"
	DQ	INIT_$SYSTEM_$$_TFILTERREC
	DD	8,2
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILTERREC
RTTI_$SYSTEM_$$_PFILTERREC	DB	29,10
		DB	"PFilterRec"
	DQ	RTTI_$SYSTEM_$$_TFILTERREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTION_FRAME
INIT_$SYSTEM_$$_TEXCEPTION_FRAME	DB	13,16
		DB	"TEXCEPTION_FRAME"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTION_FRAME
RTTI_$SYSTEM_$$_TEXCEPTION_FRAME	DB	13,16
		DB	"TEXCEPTION_FRAME"
	DQ	INIT_$SYSTEM_$$_TEXCEPTION_FRAME
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_FRAME
RTTI_$SYSTEM_$$_PEXCEPTION_FRAME	DB	29,16
		DB	"PEXCEPTION_FRAME"
	DQ	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNWINDPROC
RTTI_$SYSTEM_$$_TUNWINDPROC	DB	23,11
		DB	"TUnwindProc"
	DB	0,0
	DQ	0
	DB	1
	DW	0
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect
	DB	5
		DB	"frame"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJPROC
RTTI_$SYSTEM_$$_TEXCEPTOBJPROC	DB	23,14
		DB	"TExceptObjProc"
	DB	0,0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	2
	DW	0
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
	DB	4
		DB	"code"
	DW	2
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
	DB	3
		DB	"rec"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTCLSPROC
RTTI_$SYSTEM_$$_TEXCEPTCLSPROC	DB	23,14
		DB	"TExceptClsProc"
	DB	0,0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	1
	DW	0
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
	DB	4
		DB	"code"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TERRORPROC
RTTI_$SYSTEM_$$_TERRORPROC	DB	23,10
		DB	"TErrorProc"
	DB	0,0
	DQ	0
	DB	3
	DW	0
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
	DB	5
		DB	"ErrNo"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	7
		DB	"Address"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	5
		DB	"Frame"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_M128A
INIT_$SYSTEM_$$_M128A	DB	13,5
		DB	"M128A"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_M128A
RTTI_$SYSTEM_$$_M128A	DB	13,5
		DB	"M128A"
	DQ	INIT_$SYSTEM_$$_M128A
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PM128A
RTTI_$SYSTEM_$$_PM128A	DB	29,6
		DB	"PM128A"
	DQ	RTTI_$SYSTEM_$$_M128A$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TCONTEXT
INIT_$SYSTEM_$$_TCONTEXT	DB	13,8
		DB	"TContext"
	DQ	0
	DD	1136
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013D
RTTI_$SYSTEM_$$_def0000013D	DB	12,0
	DQ	32,2,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013E
RTTI_$SYSTEM_$$_def0000013E	DB	12,0
	DQ	128,8,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013F
RTTI_$SYSTEM_$$_def0000013F	DB	12,0
	DQ	416,26,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCONTEXT
RTTI_$SYSTEM_$$_TCONTEXT	DB	13,8
		DB	"TContext"
	DQ	INIT_$SYSTEM_$$_TCONTEXT
	DD	1136,63
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	16,RTTI_$SYSTEM_$$_QWORD$indirect,24,RTTI_$SYSTEM_$$_QWORD$indirect,32
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,40,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	48,RTTI_$SYSTEM_$$_LONGWORD$indirect,52,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	56,RTTI_$SYSTEM_$$_WORD$indirect,58,RTTI_$SYSTEM_$$_WORD$indirect,60,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	62,RTTI_$SYSTEM_$$_WORD$indirect,64,RTTI_$SYSTEM_$$_WORD$indirect,66,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	68,RTTI_$SYSTEM_$$_QWORD$indirect,72,RTTI_$SYSTEM_$$_QWORD$indirect,80
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,88,RTTI_$SYSTEM_$$_QWORD$indirect,96,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	104,RTTI_$SYSTEM_$$_QWORD$indirect,112,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	120,RTTI_$SYSTEM_$$_QWORD$indirect,128,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	136,RTTI_$SYSTEM_$$_QWORD$indirect,144,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	152,RTTI_$SYSTEM_$$_QWORD$indirect,160,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	168,RTTI_$SYSTEM_$$_QWORD$indirect,176,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	184,RTTI_$SYSTEM_$$_QWORD$indirect,192,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	200,RTTI_$SYSTEM_$$_QWORD$indirect,208,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	216,RTTI_$SYSTEM_$$_QWORD$indirect,224,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	232,RTTI_$SYSTEM_$$_QWORD$indirect,240,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	248,RTTI_$SYSTEM_$$_def0000013D$indirect,256,RTTI_$SYSTEM_$$_def0000013E$indirect
	DQ	288,RTTI_$SYSTEM_$$_M128A$indirect,416,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	432,RTTI_$SYSTEM_$$_M128A$indirect,448,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	464,RTTI_$SYSTEM_$$_M128A$indirect,480,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	496,RTTI_$SYSTEM_$$_M128A$indirect,512,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	528,RTTI_$SYSTEM_$$_M128A$indirect,544,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	560,RTTI_$SYSTEM_$$_M128A$indirect,576,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	592,RTTI_$SYSTEM_$$_M128A$indirect,608,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	624,RTTI_$SYSTEM_$$_M128A$indirect,640,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	656,RTTI_$SYSTEM_$$_def0000013F$indirect,672,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	1088,RTTI_$SYSTEM_$$_QWORD$indirect,1096,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	1104,RTTI_$SYSTEM_$$_QWORD$indirect,1112,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	1120,RTTI_$SYSTEM_$$_QWORD$indirect,1128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONTEXT
RTTI_$SYSTEM_$$_PCONTEXT	DB	29,8
		DB	"PContext"
	DQ	RTTI_$SYSTEM_$$_TCONTEXT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_POINTERS
INIT_$SYSTEM_$$_EXCEPTION_POINTERS	DB	13,18
		DB	"EXCEPTION_POINTERS"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_POINTERS
RTTI_$SYSTEM_$$_EXCEPTION_POINTERS	DB	13,18
		DB	"EXCEPTION_POINTERS"
	DQ	INIT_$SYSTEM_$$_EXCEPTION_POINTERS
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect,0,RTTI_$SYSTEM_$$_PCONTEXT$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS
RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS	DB	29,19
		DB	"PEXCEPTION_POINTERS"
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSCOPEREC
INIT_$SYSTEM_$$_TSCOPEREC	DB	13,9
		DB	"TScopeRec"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSCOPEREC
RTTI_$SYSTEM_$$_TSCOPEREC	DB	13,9
		DB	"TScopeRec"
	DQ	INIT_$SYSTEM_$$_TSCOPEREC
	DD	16,4
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGWORD$indirect,8,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	12

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSCOPEREC
RTTI_$SYSTEM_$$_PSCOPEREC	DB	29,9
		DB	"PScopeRec"
	DQ	RTTI_$SYSTEM_$$_TSCOPEREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE	DB	23,17
		DB	"EXCEPTION_ROUTINE"
	DB	0,0
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
	DB	4
	DW	1
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
	DB	15
		DB	"ExceptionRecord"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	16
		DB	"EstablisherFrame"
	DW	1
	DQ	RTTI_$SYSTEM_$$_TCONTEXT$indirect
	DB	13
		DB	"ContextRecord"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	17
		DB	"DispatcherContext"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_RUNTIME_FUNCTION
INIT_$SYSTEM_$$_RUNTIME_FUNCTION	DB	13,16
		DB	"RUNTIME_FUNCTION"
	DQ	0
	DD	12
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RUNTIME_FUNCTION
RTTI_$SYSTEM_$$_RUNTIME_FUNCTION	DB	13,16
		DB	"RUNTIME_FUNCTION"
	DQ	INIT_$SYSTEM_$$_RUNTIME_FUNCTION
	DD	12,3
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGWORD$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION
RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION	DB	29,17
		DB	"PRUNTIME_FUNCTION"
	DQ	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY	DB	13,26
		DB	"UNWIND_HISTORY_TABLE_ENTRY"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY	DB	13,26
		DB	"UNWIND_HISTORY_TABLE_ENTRY"
	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE	DB	13,20
		DB	"UNWIND_HISTORY_TABLE"
	DQ	0
	DD	216
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000014A
RTTI_$SYSTEM_$$_def0000014A	DB	12,0
	DQ	192,12,RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE	DB	13,20
		DB	"UNWIND_HISTORY_TABLE"
	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE
	DD	216,8
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_BYTE$indirect,4,RTTI_$SYSTEM_$$_BYTE$indirect
	DQ	5,RTTI_$SYSTEM_$$_BYTE$indirect,6,RTTI_$SYSTEM_$$_BYTE$indirect,7,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_def0000014A$indirect
	DQ	24

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE
RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE	DB	29,21
		DB	"PUNWIND_HISTORY_TABLE"
	DQ	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT	DB	13,18
		DB	"TDispatcherContext"
	DQ	0
	DD	80
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT	DB	13,18
		DB	"TDispatcherContext"
	DQ	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
	DD	80,11
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	16,RTTI_$SYSTEM_$$_QWORD$indirect,24,RTTI_$SYSTEM_$$_QWORD$indirect,32
	DQ	RTTI_$SYSTEM_$$_PCONTEXT$indirect,40,RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_LONGWORD$indirect,72,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	76

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT	DB	29,18
		DB	"PDispatcherContext"
	DQ	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND
RTTI_$SYSTEM_$$_TTYPEKIND	DB	3,9
		DB	"TTypeKind"
	DB	5
	DD	0,29
	DQ	0
	DB	9
		DB	"tkUnknown"
	DB	9
		DB	"tkInteger"
	DB	6
		DB	"tkChar"
	DB	13
		DB	"tkEnumeration"
	DB	7
		DB	"tkFloat"
	DB	5
		DB	"tkSet"
	DB	8
		DB	"tkMethod"
	DB	9
		DB	"tkSString"
	DB	9
		DB	"tkLString"
	DB	9
		DB	"tkAString"
	DB	9
		DB	"tkWString"
	DB	9
		DB	"tkVariant"
	DB	7
		DB	"tkArray"
	DB	8
		DB	"tkRecord"
	DB	11
		DB	"tkInterface"
	DB	7
		DB	"tkClass"
	DB	8
		DB	"tkObject"
	DB	7
		DB	"tkWChar"
	DB	6
		DB	"tkBool"
	DB	7
		DB	"tkInt64"
	DB	7
		DB	"tkQWord"
	DB	10
		DB	"tkDynArray"
	DB	14
		DB	"tkInterfaceRaw"
	DB	9
		DB	"tkProcVar"
	DB	9
		DB	"tkUString"
	DB	7
		DB	"tkUChar"
	DB	8
		DB	"tkHelper"
	DB	6
		DB	"tkFile"
	DB	10
		DB	"tkClassRef"
	DB	9
		DB	"tkPointer"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_s2o
RTTI_$SYSTEM_$$_TTYPEKIND_s2o	DD	30,12
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+142
	DD	9
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+112
	DD	18
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+196
	DD	2
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+48
	DD	15
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+171
	DD	28
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+289
	DD	21
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+219
	DD	3
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+55
	DD	27
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+282
	DD	4
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+69
	DD	26
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+273
	DD	19
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+203
	DD	1
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+38
	DD	14
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+159
	DD	22
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+230
	DD	8
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+102
	DD	6
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+83
	DD	16
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+179
	DD	29
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+300
	DD	23
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+245
	DD	20
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+211
	DD	13
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+150
	DD	5
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+77
	DD	7
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+92
	DD	25
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+265
	DD	0
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+28
	DD	24
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+255
	DD	11
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+132
	DD	17
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+188
	DD	10
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+122

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_o2s
RTTI_$SYSTEM_$$_TTYPEKIND_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+28,RTTI_$SYSTEM_$$_TTYPEKIND+38,RTTI_$SYSTEM_$$_TTYPEKIND+48
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+55,RTTI_$SYSTEM_$$_TTYPEKIND+69,RTTI_$SYSTEM_$$_TTYPEKIND+77
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+83,RTTI_$SYSTEM_$$_TTYPEKIND+92,RTTI_$SYSTEM_$$_TTYPEKIND+102
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+112,RTTI_$SYSTEM_$$_TTYPEKIND+122,RTTI_$SYSTEM_$$_TTYPEKIND+132
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+142,RTTI_$SYSTEM_$$_TTYPEKIND+150,RTTI_$SYSTEM_$$_TTYPEKIND+159
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+171,RTTI_$SYSTEM_$$_TTYPEKIND+179,RTTI_$SYSTEM_$$_TTYPEKIND+188
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+196,RTTI_$SYSTEM_$$_TTYPEKIND+203,RTTI_$SYSTEM_$$_TTYPEKIND+211
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+219,RTTI_$SYSTEM_$$_TTYPEKIND+230,RTTI_$SYSTEM_$$_TTYPEKIND+245
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+255,RTTI_$SYSTEM_$$_TTYPEKIND+265,RTTI_$SYSTEM_$$_TTYPEKIND+273
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+282,RTTI_$SYSTEM_$$_TTYPEKIND+289,RTTI_$SYSTEM_$$_TTYPEKIND+300

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTYPEKIND
RTTI_$SYSTEM_$$_PTYPEKIND	DB	29,9
		DB	"PTypeKind"
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000198
RTTI_$SYSTEM_$$_def00000198	DB	12,13
		DB	"RawByteString"
	DQ	0,0,RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TUNICODEREC
INIT_$SYSTEM_$$_TUNICODEREC	DB	13,11
		DB	"tunicoderec"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNICODEREC
RTTI_$SYSTEM_$$_TUNICODEREC	DB	13,11
		DB	"tunicoderec"
	DQ	INIT_$SYSTEM_$$_TUNICODEREC
	DD	24,4
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_INT64$indirect
	DQ	8,RTTI_$SYSTEM_$$_INT64$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODEREC
RTTI_$SYSTEM_$$_PUNICODEREC	DB	29,11
		DB	"punicoderec"
	DQ	RTTI_$SYSTEM_$$_TUNICODEREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000001BF
RTTI_$SYSTEM_$$_def000001BF	DB	12,13
		DB	"UnicodeString"
	DQ	0,0,RTTI_$SYSTEM_$$_UNICODESTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVARREC
INIT_$SYSTEM_$$_TVARREC	DB	13,7
		DB	"TVarRec"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVARREC
RTTI_$SYSTEM_$$_TVARREC	DB	13,7
		DB	"TVarRec"
	DQ	INIT_$SYSTEM_$$_TVARREC
	DD	16,20
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_LONGINT$indirect,8,RTTI_$SYSTEM_$$_BOOLEAN$indirect
	DQ	8,RTTI_$SYSTEM_$$_CHAR$indirect,8,RTTI_$SYSTEM_$$_WIDECHAR$indirect,8
	DQ	RTTI_$SYSTEM_$$_PEXTENDED$indirect,8,RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,8,RTTI_$SYSTEM_$$_PANSICHAR$indirect
	DQ	8,RTTI_$SYSTEM_$$_TOBJECT$indirect,8,RTTI_$SYSTEM_$$_TCLASS$indirect
	DQ	8,RTTI_$SYSTEM_$$_PWIDECHAR$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PCURRENCY$indirect,8,RTTI_$SYSTEM_$$_PVARIANT$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PINT64$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PQWORD$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARREC
RTTI_$SYSTEM_$$_PVARREC	DB	29,7
		DB	"PVarRec"
	DQ	RTTI_$SYSTEM_$$_TVARREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TTESTEXCEPTION
INIT_$SYSTEM_$$_TTESTEXCEPTION	DB	15,14
		DB	"TTestException"
	DQ	0
	DD	8
	DQ	0,0
	DD	1
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTESTEXCEPTION
RTTI_$SYSTEM_$$_TTESTEXCEPTION	DB	15,14
		DB	"TTestException"
	DQ	VMT_$SYSTEM_$$_TTESTEXCEPTION,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYINDEX
RTTI_$SYSTEM_$$_PDYNARRAYINDEX	DB	29,14
		DB	"pdynarrayindex"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAY
INIT_$SYSTEM_$$_TDYNARRAY	DB	13,9
		DB	"tdynarray"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAY
RTTI_$SYSTEM_$$_TDYNARRAY	DB	13,9
		DB	"tdynarray"
	DQ	INIT_$SYSTEM_$$_TDYNARRAY
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAY
RTTI_$SYSTEM_$$_PDYNARRAY	DB	29,9
		DB	"pdynarray"
	DQ	RTTI_$SYSTEM_$$_TDYNARRAY$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA
INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA	DB	13,17
		DB	"tdynarraytypedata"
	DQ	0
	DD	28
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA
RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA	DB	13,17
		DB	"tdynarraytypedata"
	DQ	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA
	DD	28,5
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_PPOINTER$indirect,8
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect,16,RTTI_$SYSTEM_$$_PPOINTER$indirect
	DQ	20,RTTI_$SYSTEM_$$_INT64$indirect,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA
RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA	DB	29,17
		DB	"pdynarraytypedata"
	DQ	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TENTRYINFORMATION
INIT_$SYSTEM_$$_TENTRYINFORMATION	DB	13,17
		DB	"TEntryInformation"
	DQ	0
	DD	56
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000021B
RTTI_$SYSTEM_$$_def0000021B	DB	23,0,0,0
	DQ	0
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TENTRYINFORMATION
RTTI_$SYSTEM_$$_TENTRYINFORMATION	DB	13,17
		DB	"TEntryInformation"
	DQ	INIT_$SYSTEM_$$_TENTRYINFORMATION
	DD	56,7
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	24,RTTI_$SYSTEM_$$_POINTER$indirect,32,RTTI_$SYSTEM_$$_def0000021B$indirect
	DQ	40,RTTI_$SYSTEM_$$_BOOLEAN$indirect,48

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000029F
RTTI_$SYSTEM_$$_def0000029F	DB	12,0
	DQ	296,37,RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT$indirect
VMT_$SYSTEM_$$_TOBJECT$indirect	DQ	VMT_$SYSTEM_$$_TOBJECT
%LINE 1025+0 system.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IID_$SYSTEM_$$_IUNKNOWN$indirect
IID_$SYSTEM_$$_IUNKNOWN$indirect	DQ	IID_$SYSTEM_$$_IUNKNOWN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect	DQ	IIDSTR_$SYSTEM_$$_IUNKNOWN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
VMT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect	DQ	VMT_$SYSTEM_$$_TINTERFACEDOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TTESTEXCEPTION$indirect
VMT_$SYSTEM_$$_TTESTEXCEPTION$indirect	DQ	VMT_$SYSTEM_$$_TTESTEXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal$indirect
RTTI_$SYSTEM_$$_formal$indirect	DQ	RTTI_$SYSTEM_$$_formal
%LINE 1026+0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_typedformal$indirect
RTTI_$SYSTEM_$$_typedformal$indirect	DQ	RTTI_$SYSTEM_$$_typedformal

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_void$indirect
RTTI_$SYSTEM_$$_void$indirect	DQ	RTTI_$SYSTEM_$$_void

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINTER$indirect
RTTI_$SYSTEM_$$_POINTER$indirect	DQ	RTTI_$SYSTEM_$$_POINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTE$indirect
RTTI_$SYSTEM_$$_BYTE$indirect	DQ	RTTI_$SYSTEM_$$_BYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTINT$indirect
RTTI_$SYSTEM_$$_SHORTINT$indirect	DQ	RTTI_$SYSTEM_$$_SHORTINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORD$indirect
RTTI_$SYSTEM_$$_WORD$indirect	DQ	RTTI_$SYSTEM_$$_WORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALLINT$indirect
RTTI_$SYSTEM_$$_SMALLINT$indirect	DQ	RTTI_$SYSTEM_$$_SMALLINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGWORD$indirect
RTTI_$SYSTEM_$$_LONGWORD$indirect	DQ	RTTI_$SYSTEM_$$_LONGWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGINT$indirect
RTTI_$SYSTEM_$$_LONGINT$indirect	DQ	RTTI_$SYSTEM_$$_LONGINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORD$indirect
RTTI_$SYSTEM_$$_QWORD$indirect	DQ	RTTI_$SYSTEM_$$_QWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_INT64$indirect
RTTI_$SYSTEM_$$_INT64$indirect	DQ	RTTI_$SYSTEM_$$_INT64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_uint128$indirect
RTTI_$SYSTEM_$$_uint128$indirect	DQ	RTTI_$SYSTEM_$$_uint128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_int128$indirect
RTTI_$SYSTEM_$$_int128$indirect	DQ	RTTI_$SYSTEM_$$_int128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN$indirect
RTTI_$SYSTEM_$$_BOOLEAN$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN8$indirect
RTTI_$SYSTEM_$$_BOOLEAN8$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN16$indirect
RTTI_$SYSTEM_$$_BOOLEAN16$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN32$indirect
RTTI_$SYSTEM_$$_BOOLEAN32$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN64$indirect
RTTI_$SYSTEM_$$_BOOLEAN64$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTEBOOL$indirect
RTTI_$SYSTEM_$$_BYTEBOOL$indirect	DQ	RTTI_$SYSTEM_$$_BYTEBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORDBOOL$indirect
RTTI_$SYSTEM_$$_WORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_WORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBOOL$indirect
RTTI_$SYSTEM_$$_LONGBOOL$indirect	DQ	RTTI_$SYSTEM_$$_LONGBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORDBOOL$indirect
RTTI_$SYSTEM_$$_QWORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_QWORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CHAR$indirect
RTTI_$SYSTEM_$$_CHAR$indirect	DQ	RTTI_$SYSTEM_$$_CHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDECHAR$indirect
RTTI_$SYSTEM_$$_WIDECHAR$indirect	DQ	RTTI_$SYSTEM_$$_WIDECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTSTRING$indirect
RTTI_$SYSTEM_$$_SHORTSTRING$indirect	DQ	RTTI_$SYSTEM_$$_SHORTSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_longstring$indirect
RTTI_$SYSTEM_$$_longstring$indirect	DQ	RTTI_$SYSTEM_$$_longstring

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ANSISTRING$indirect
RTTI_$SYSTEM_$$_ANSISTRING$indirect	DQ	RTTI_$SYSTEM_$$_ANSISTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDESTRING$indirect
RTTI_$SYSTEM_$$_WIDESTRING$indirect	DQ	RTTI_$SYSTEM_$$_WIDESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNICODESTRING$indirect
RTTI_$SYSTEM_$$_UNICODESTRING$indirect	DQ	RTTI_$SYSTEM_$$_UNICODESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OPENSTRING$indirect
RTTI_$SYSTEM_$$_OPENSTRING$indirect	DQ	RTTI_$SYSTEM_$$_OPENSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SINGLE$indirect
RTTI_$SYSTEM_$$_SINGLE$indirect	DQ	RTTI_$SYSTEM_$$_SINGLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_DOUBLE$indirect
RTTI_$SYSTEM_$$_DOUBLE$indirect	DQ	RTTI_$SYSTEM_$$_DOUBLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_s80real$indirect
RTTI_$SYSTEM_$$_s80real$indirect	DQ	RTTI_$SYSTEM_$$_s80real

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_sc80real$indirect
RTTI_$SYSTEM_$$_sc80real$indirect	DQ	RTTI_$SYSTEM_$$_sc80real

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CURRENCY$indirect
RTTI_$SYSTEM_$$_CURRENCY$indirect	DQ	RTTI_$SYSTEM_$$_CURRENCY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_char_pointer$indirect
RTTI_$SYSTEM_$$_char_pointer$indirect	DQ	RTTI_$SYSTEM_$$_char_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_widechar_pointer$indirect
RTTI_$SYSTEM_$$_widechar_pointer$indirect	DQ	RTTI_$SYSTEM_$$_widechar_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect	DQ	RTTI_$SYSTEM_$$_parentfp_void_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARPOINTER$indirect
RTTI_$SYSTEM_$$_NEARPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARCSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARDSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARSSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARESPOINTER$indirect
RTTI_$SYSTEM_$$_NEARESPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARESPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARFSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARGSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_openchararray$indirect
RTTI_$SYSTEM_$$_openchararray$indirect	DQ	RTTI_$SYSTEM_$$_openchararray

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_file$indirect
RTTI_$SYSTEM_$$_file$indirect	DQ	RTTI_$SYSTEM_$$_file

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_VARIANT$indirect
RTTI_$SYSTEM_$$_VARIANT$indirect	DQ	RTTI_$SYSTEM_$$_VARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OLEVARIANT$indirect
RTTI_$SYSTEM_$$_OLEVARIANT$indirect	DQ	RTTI_$SYSTEM_$$_OLEVARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXT$indirect
RTTI_$SYSTEM_$$_TEXT$indirect	DQ	RTTI_$SYSTEM_$$_TEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TYPEDFILE$indirect
RTTI_$SYSTEM_$$_TYPEDFILE$indirect	DQ	RTTI_$SYSTEM_$$_TYPEDFILE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$___vtbl_ptr_type$indirect
INIT_$SYSTEM_$$___vtbl_ptr_type$indirect	DQ	INIT_$SYSTEM_$$___vtbl_ptr_type

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_pvmt$indirect
RTTI_$SYSTEM_$$_pvmt$indirect	DQ	RTTI_$SYSTEM_$$_pvmt

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000037$indirect
RTTI_$SYSTEM_$$_def00000037$indirect	DQ	RTTI_$SYSTEM_$$_def00000037

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000038$indirect
RTTI_$SYSTEM_$$_def00000038$indirect	DQ	RTTI_$SYSTEM_$$_def00000038

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect
RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect	DQ	RTTI_$SYSTEM_$$___vtbl_ptr_type

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_vtblarray$indirect
RTTI_$SYSTEM_$$_vtblarray$indirect	DQ	RTTI_$SYSTEM_$$_vtblarray

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_methodpointer$indirect
INIT_$SYSTEM_$$_methodpointer$indirect	DQ	INIT_$SYSTEM_$$_methodpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_methodpointer$indirect
RTTI_$SYSTEM_$$_methodpointer$indirect	DQ	RTTI_$SYSTEM_$$_methodpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_nestedprocpointer$indirect
INIT_$SYSTEM_$$_nestedprocpointer$indirect	DQ	INIT_$SYSTEM_$$_nestedprocpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_nestedprocpointer$indirect
RTTI_$SYSTEM_$$_nestedprocpointer$indirect	DQ	RTTI_$SYSTEM_$$_nestedprocpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TBYTELOOKUP$indirect
RTTI_$SYSTEM_$$_TBYTELOOKUP$indirect	DQ	RTTI_$SYSTEM_$$_TBYTELOOKUP

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTELOOKUP$indirect
RTTI_$SYSTEM_$$_PBYTELOOKUP$indirect	DQ	RTTI_$SYSTEM_$$_PBYTELOOKUP

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CARDINAL$indirect
RTTI_$SYSTEM_$$_CARDINAL$indirect	DQ	RTTI_$SYSTEM_$$_CARDINAL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_HRESULT$indirect
RTTI_$SYSTEM_$$_HRESULT$indirect	DQ	RTTI_$SYSTEM_$$_HRESULT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCHAR$indirect
RTTI_$SYSTEM_$$_PCHAR$indirect	DQ	RTTI_$SYSTEM_$$_PCHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPCHAR$indirect
RTTI_$SYSTEM_$$_PPCHAR$indirect	DQ	RTTI_$SYSTEM_$$_PPCHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSICHAR$indirect
RTTI_$SYSTEM_$$_PANSICHAR$indirect	DQ	RTTI_$SYSTEM_$$_PANSICHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSISTRING$indirect
RTTI_$SYSTEM_$$_PANSISTRING$indirect	DQ	RTTI_$SYSTEM_$$_PANSISTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDECHAR$indirect
RTTI_$SYSTEM_$$_PWIDECHAR$indirect	DQ	RTTI_$SYSTEM_$$_PWIDECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPWIDECHAR$indirect
RTTI_$SYSTEM_$$_PPWIDECHAR$indirect	DQ	RTTI_$SYSTEM_$$_PPWIDECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
RTTI_$SYSTEM_$$_PSHORTSTRING$indirect	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect	DQ	RTTI_$SYSTEM_$$_RAWBYTESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_PRAWBYTESTRING$indirect	DQ	RTTI_$SYSTEM_$$_PRAWBYTESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UTF8STRING$indirect
RTTI_$SYSTEM_$$_UTF8STRING$indirect	DQ	RTTI_$SYSTEM_$$_UTF8STRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUTF8STRING$indirect
RTTI_$SYSTEM_$$_PUTF8STRING$indirect	DQ	RTTI_$SYSTEM_$$_PUTF8STRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODECHAR$indirect
RTTI_$SYSTEM_$$_PUNICODECHAR$indirect	DQ	RTTI_$SYSTEM_$$_PUNICODECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODESTRING$indirect
RTTI_$SYSTEM_$$_PUNICODESTRING$indirect	DQ	RTTI_$SYSTEM_$$_PUNICODESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSMALLINT$indirect
RTTI_$SYSTEM_$$_PSMALLINT$indirect	DQ	RTTI_$SYSTEM_$$_PSMALLINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTINT$indirect
RTTI_$SYSTEM_$$_PSHORTINT$indirect	DQ	RTTI_$SYSTEM_$$_PSHORTINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTEGER$indirect
RTTI_$SYSTEM_$$_PINTEGER$indirect	DQ	RTTI_$SYSTEM_$$_PINTEGER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTE$indirect
RTTI_$SYSTEM_$$_PBYTE$indirect	DQ	RTTI_$SYSTEM_$$_PBYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORD$indirect
RTTI_$SYSTEM_$$_PWORD$indirect	DQ	RTTI_$SYSTEM_$$_PWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDWORD$indirect
RTTI_$SYSTEM_$$_PDWORD$indirect	DQ	RTTI_$SYSTEM_$$_PDWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGWORD$indirect
RTTI_$SYSTEM_$$_PLONGWORD$indirect	DQ	RTTI_$SYSTEM_$$_PLONGWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGINT$indirect
RTTI_$SYSTEM_$$_PLONGINT$indirect	DQ	RTTI_$SYSTEM_$$_PLONGINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCARDINAL$indirect
RTTI_$SYSTEM_$$_PCARDINAL$indirect	DQ	RTTI_$SYSTEM_$$_PCARDINAL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORD$indirect
RTTI_$SYSTEM_$$_PQWORD$indirect	DQ	RTTI_$SYSTEM_$$_PQWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINT64$indirect
RTTI_$SYSTEM_$$_PINT64$indirect	DQ	RTTI_$SYSTEM_$$_PINT64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUINT64$indirect
RTTI_$SYSTEM_$$_PUINT64$indirect	DQ	RTTI_$SYSTEM_$$_PUINT64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRINT$indirect
RTTI_$SYSTEM_$$_PPTRINT$indirect	DQ	RTTI_$SYSTEM_$$_PPTRINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRUINT$indirect
RTTI_$SYSTEM_$$_PPTRUINT$indirect	DQ	RTTI_$SYSTEM_$$_PPTRUINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEINT$indirect
RTTI_$SYSTEM_$$_PSIZEINT$indirect	DQ	RTTI_$SYSTEM_$$_PSIZEINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEUINT$indirect
RTTI_$SYSTEM_$$_PSIZEUINT$indirect	DQ	RTTI_$SYSTEM_$$_PSIZEUINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSINGLE$indirect
RTTI_$SYSTEM_$$_PSINGLE$indirect	DQ	RTTI_$SYSTEM_$$_PSINGLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDOUBLE$indirect
RTTI_$SYSTEM_$$_PDOUBLE$indirect	DQ	RTTI_$SYSTEM_$$_PDOUBLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXTENDED$indirect
RTTI_$SYSTEM_$$_PEXTENDED$indirect	DQ	RTTI_$SYSTEM_$$_PEXTENDED

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN$indirect
RTTI_$SYSTEM_$$_PBOOLEAN$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN16$indirect
RTTI_$SYSTEM_$$_PBOOLEAN16$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN32$indirect
RTTI_$SYSTEM_$$_PBOOLEAN32$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN64$indirect
RTTI_$SYSTEM_$$_PBOOLEAN64$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTEBOOL$indirect
RTTI_$SYSTEM_$$_PBYTEBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PBYTEBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORDBOOL$indirect
RTTI_$SYSTEM_$$_PWORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PWORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGBOOL$indirect
RTTI_$SYSTEM_$$_PLONGBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PLONGBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORDBOOL$indirect
RTTI_$SYSTEM_$$_PQWORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PQWORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEINT$indirect
RTTI_$SYSTEM_$$_PNATIVEINT$indirect	DQ	RTTI_$SYSTEM_$$_PNATIVEINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEUINT$indirect
RTTI_$SYSTEM_$$_PNATIVEUINT$indirect	DQ	RTTI_$SYSTEM_$$_PNATIVEUINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCURRENCY$indirect
RTTI_$SYSTEM_$$_PCURRENCY$indirect	DQ	RTTI_$SYSTEM_$$_PCURRENCY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARIANT$indirect
RTTI_$SYSTEM_$$_PVARIANT$indirect	DQ	RTTI_$SYSTEM_$$_PVARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINTER$indirect
RTTI_$SYSTEM_$$_PPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_PPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATETIME$indirect
RTTI_$SYSTEM_$$_TDATETIME$indirect	DQ	RTTI_$SYSTEM_$$_TDATETIME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATE$indirect
RTTI_$SYSTEM_$$_TDATE$indirect	DQ	RTTI_$SYSTEM_$$_TDATE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTIME$indirect
RTTI_$SYSTEM_$$_TTIME$indirect	DQ	RTTI_$SYSTEM_$$_TTIME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TPROCEDURE$indirect
RTTI_$SYSTEM_$$_TPROCEDURE$indirect	DQ	RTTI_$SYSTEM_$$_TPROCEDURE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTEXT$indirect
RTTI_$SYSTEM_$$_PTEXT$indirect	DQ	RTTI_$SYSTEM_$$_PTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
RTTI_$SYSTEM_$$_PCODEPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_PCODEPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILETEXTRECCHAR$indirect
RTTI_$SYSTEM_$$_PFILETEXTRECCHAR$indirect	DQ	RTTI_$SYSTEM_$$_PFILETEXTRECCHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_JMP_BUF$indirect
INIT_$SYSTEM_$$_JMP_BUF$indirect	DQ	INIT_$SYSTEM_$$_JMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_def00000078$indirect
INIT_$SYSTEM_$$_def00000078$indirect	DQ	INIT_$SYSTEM_$$_def00000078

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000078$indirect
RTTI_$SYSTEM_$$_def00000078$indirect	DQ	RTTI_$SYSTEM_$$_def00000078

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_JMP_BUF$indirect
RTTI_$SYSTEM_$$_JMP_BUF$indirect	DQ	RTTI_$SYSTEM_$$_JMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PJMP_BUF$indirect
RTTI_$SYSTEM_$$_PJMP_BUF$indirect	DQ	RTTI_$SYSTEM_$$_PJMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTADDR$indirect
INIT_$SYSTEM_$$_TEXCEPTADDR$indirect	DQ	INIT_$SYSTEM_$$_TEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TGUID$indirect
INIT_$SYSTEM_$$_TGUID$indirect	DQ	INIT_$SYSTEM_$$_TGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000082$indirect
RTTI_$SYSTEM_$$_def00000082$indirect	DQ	RTTI_$SYSTEM_$$_def00000082

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000083$indirect
RTTI_$SYSTEM_$$_def00000083$indirect	DQ	RTTI_$SYSTEM_$$_def00000083

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000084$indirect
RTTI_$SYSTEM_$$_def00000084$indirect	DQ	RTTI_$SYSTEM_$$_def00000084

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TGUID$indirect
RTTI_$SYSTEM_$$_TGUID$indirect	DQ	RTTI_$SYSTEM_$$_TGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PGUID$indirect
RTTI_$SYSTEM_$$_PGUID$indirect	DQ	RTTI_$SYSTEM_$$_PGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TLINEENDSTR$indirect
RTTI_$SYSTEM_$$_TLINEENDSTR$indirect	DQ	RTTI_$SYSTEM_$$_TLINEENDSTR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTBUF$indirect
RTTI_$SYSTEM_$$_TEXTBUF$indirect	DQ	RTTI_$SYSTEM_$$_TEXTBUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXTREC$indirect
INIT_$SYSTEM_$$_TEXTREC$indirect	DQ	INIT_$SYSTEM_$$_TEXTREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000088$indirect
RTTI_$SYSTEM_$$_def00000088$indirect	DQ	RTTI_$SYSTEM_$$_def00000088

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000089$indirect
RTTI_$SYSTEM_$$_def00000089$indirect	DQ	RTTI_$SYSTEM_$$_def00000089

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000008A$indirect
RTTI_$SYSTEM_$$_def0000008A$indirect	DQ	RTTI_$SYSTEM_$$_def0000008A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTREC$indirect
RTTI_$SYSTEM_$$_TEXTREC$indirect	DQ	RTTI_$SYSTEM_$$_TEXTREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TANSIREC$indirect
INIT_$SYSTEM_$$_TANSIREC$indirect	DQ	INIT_$SYSTEM_$$_TANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSIREC$indirect
RTTI_$SYSTEM_$$_TANSIREC$indirect	DQ	RTTI_$SYSTEM_$$_TANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSIREC$indirect
RTTI_$SYSTEM_$$_PANSIREC$indirect	DQ	RTTI_$SYSTEM_$$_PANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TWIDEREC$indirect
INIT_$SYSTEM_$$_TWIDEREC$indirect	DQ	INIT_$SYSTEM_$$_TWIDEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TWIDEREC$indirect
RTTI_$SYSTEM_$$_TWIDEREC$indirect	DQ	RTTI_$SYSTEM_$$_TWIDEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDEREC$indirect
RTTI_$SYSTEM_$$_PWIDEREC$indirect	DQ	RTTI_$SYSTEM_$$_PWIDEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_FILEREC$indirect
INIT_$SYSTEM_$$_FILEREC$indirect	DQ	INIT_$SYSTEM_$$_FILEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000093$indirect
RTTI_$SYSTEM_$$_def00000093$indirect	DQ	RTTI_$SYSTEM_$$_def00000093

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000094$indirect
RTTI_$SYSTEM_$$_def00000094$indirect	DQ	RTTI_$SYSTEM_$$_def00000094

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000095$indirect
RTTI_$SYSTEM_$$_def00000095$indirect	DQ	RTTI_$SYSTEM_$$_def00000095

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_FILEREC$indirect
RTTI_$SYSTEM_$$_FILEREC$indirect	DQ	RTTI_$SYSTEM_$$_FILEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TOBJECT$indirect
INIT_$SYSTEM_$$_TOBJECT$indirect	DQ	INIT_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TOBJECT$indirect
RTTI_$SYSTEM_$$_TOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_IUNKNOWN$indirect
RTTI_$SYSTEM_$$_IUNKNOWN$indirect	DQ	RTTI_$SYSTEM_$$_IUNKNOWN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCLASS$indirect
RTTI_$SYSTEM_$$_TCLASS$indirect	DQ	RTTI_$SYSTEM_$$_TCLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCLASS$indirect
RTTI_$SYSTEM_$$_PCLASS$indirect	DQ	RTTI_$SYSTEM_$$_PCLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect
INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CC$indirect
RTTI_$SYSTEM_$$_def000000CC$indirect	DQ	RTTI_$SYSTEM_$$_def000000CC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CE$indirect
RTTI_$SYSTEM_$$_def000000CE$indirect	DQ	RTTI_$SYSTEM_$$_def000000CE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_PINTERFACEENTRY$indirect	DQ	RTTI_$SYSTEM_$$_PINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACETABLE$indirect
INIT_$SYSTEM_$$_TINTERFACETABLE$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D1$indirect
RTTI_$SYSTEM_$$_def000000D1$indirect	DQ	RTTI_$SYSTEM_$$_def000000D1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect	DQ	RTTI_$SYSTEM_$$_PINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect
INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect	DQ	INIT_$SYSTEM_$$_TMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect	DQ	RTTI_$SYSTEM_$$_TMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_PMSGSTRTABLE$indirect	DQ	RTTI_$SYSTEM_$$_PMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect	DQ	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D6$indirect
RTTI_$SYSTEM_$$_def000000D6$indirect	DQ	RTTI_$SYSTEM_$$_def000000D6

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect	DQ	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect	DQ	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVMT$indirect
INIT_$SYSTEM_$$_TVMT$indirect	DQ	INIT_$SYSTEM_$$_TVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPVMT$indirect
RTTI_$SYSTEM_$$_PPVMT$indirect	DQ	RTTI_$SYSTEM_$$_PPVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVMT$indirect
RTTI_$SYSTEM_$$_TVMT$indirect	DQ	RTTI_$SYSTEM_$$_TVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVMT$indirect
RTTI_$SYSTEM_$$_PVMT$indirect	DQ	RTTI_$SYSTEM_$$_PVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
INIT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACEDOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDCLASS$indirect
RTTI_$SYSTEM_$$_TINTERFACEDCLASS$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEDCLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMETHOD$indirect
INIT_$SYSTEM_$$_TMETHOD$indirect	DQ	INIT_$SYSTEM_$$_TMETHOD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMETHOD$indirect
RTTI_$SYSTEM_$$_TMETHOD$indirect	DQ	RTTI_$SYSTEM_$$_TMETHOD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMETHOD$indirect
RTTI_$SYSTEM_$$_PMETHOD$indirect	DQ	RTTI_$SYSTEM_$$_PMETHOD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect
INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect	DQ	INIT_$SYSTEM_$$_EXCEPTION_RECORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000012C$indirect
RTTI_$SYSTEM_$$_def0000012C$indirect	DQ	RTTI_$SYSTEM_$$_def0000012C

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSEHFRAME$indirect
INIT_$SYSTEM_$$_TSEHFRAME$indirect	DQ	INIT_$SYSTEM_$$_TSEHFRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSEHFRAME$indirect
RTTI_$SYSTEM_$$_TSEHFRAME$indirect	DQ	RTTI_$SYSTEM_$$_TSEHFRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSEHFRAME$indirect
RTTI_$SYSTEM_$$_PSEHFRAME$indirect	DQ	RTTI_$SYSTEM_$$_PSEHFRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect
INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect	DQ	INIT_$SYSTEM_$$_TEXCEPTOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TFILTERREC$indirect
INIT_$SYSTEM_$$_TFILTERREC$indirect	DQ	INIT_$SYSTEM_$$_TFILTERREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TFILTERREC$indirect
RTTI_$SYSTEM_$$_TFILTERREC$indirect	DQ	RTTI_$SYSTEM_$$_TFILTERREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILTERREC$indirect
RTTI_$SYSTEM_$$_PFILTERREC$indirect	DQ	RTTI_$SYSTEM_$$_PFILTERREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTION_FRAME$indirect
INIT_$SYSTEM_$$_TEXCEPTION_FRAME$indirect	DQ	INIT_$SYSTEM_$$_TEXCEPTION_FRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect
RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNWINDPROC$indirect
RTTI_$SYSTEM_$$_TUNWINDPROC$indirect	DQ	RTTI_$SYSTEM_$$_TUNWINDPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJPROC$indirect
RTTI_$SYSTEM_$$_TEXCEPTOBJPROC$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTOBJPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTCLSPROC$indirect
RTTI_$SYSTEM_$$_TEXCEPTCLSPROC$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTCLSPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TERRORPROC$indirect
RTTI_$SYSTEM_$$_TERRORPROC$indirect	DQ	RTTI_$SYSTEM_$$_TERRORPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_M128A$indirect
INIT_$SYSTEM_$$_M128A$indirect	DQ	INIT_$SYSTEM_$$_M128A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_M128A$indirect
RTTI_$SYSTEM_$$_M128A$indirect	DQ	RTTI_$SYSTEM_$$_M128A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PM128A$indirect
RTTI_$SYSTEM_$$_PM128A$indirect	DQ	RTTI_$SYSTEM_$$_PM128A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TCONTEXT$indirect
INIT_$SYSTEM_$$_TCONTEXT$indirect	DQ	INIT_$SYSTEM_$$_TCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013D$indirect
RTTI_$SYSTEM_$$_def0000013D$indirect	DQ	RTTI_$SYSTEM_$$_def0000013D

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013E$indirect
RTTI_$SYSTEM_$$_def0000013E$indirect	DQ	RTTI_$SYSTEM_$$_def0000013E

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013F$indirect
RTTI_$SYSTEM_$$_def0000013F$indirect	DQ	RTTI_$SYSTEM_$$_def0000013F

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCONTEXT$indirect
RTTI_$SYSTEM_$$_TCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_TCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONTEXT$indirect
RTTI_$SYSTEM_$$_PCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_PCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_POINTERS$indirect
INIT_$SYSTEM_$$_EXCEPTION_POINTERS$indirect	DQ	INIT_$SYSTEM_$$_EXCEPTION_POINTERS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect
RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSCOPEREC$indirect
INIT_$SYSTEM_$$_TSCOPEREC$indirect	DQ	INIT_$SYSTEM_$$_TSCOPEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSCOPEREC$indirect
RTTI_$SYSTEM_$$_TSCOPEREC$indirect	DQ	RTTI_$SYSTEM_$$_TSCOPEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSCOPEREC$indirect
RTTI_$SYSTEM_$$_PSCOPEREC$indirect	DQ	RTTI_$SYSTEM_$$_PSCOPEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_RUNTIME_FUNCTION$indirect
INIT_$SYSTEM_$$_RUNTIME_FUNCTION$indirect	DQ	INIT_$SYSTEM_$$_RUNTIME_FUNCTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect
RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect	DQ	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect
RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect	DQ	RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect	DQ	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000014A$indirect
RTTI_$SYSTEM_$$_def0000014A$indirect	DQ	RTTI_$SYSTEM_$$_def0000014A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect	DQ	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE$indirect
RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE$indirect	DQ	RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect	DQ	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND$indirect
RTTI_$SYSTEM_$$_TTYPEKIND$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTYPEKIND$indirect
RTTI_$SYSTEM_$$_PTYPEKIND$indirect	DQ	RTTI_$SYSTEM_$$_PTYPEKIND

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000198$indirect
RTTI_$SYSTEM_$$_def00000198$indirect	DQ	RTTI_$SYSTEM_$$_def00000198

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TUNICODEREC$indirect
INIT_$SYSTEM_$$_TUNICODEREC$indirect	DQ	INIT_$SYSTEM_$$_TUNICODEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNICODEREC$indirect
RTTI_$SYSTEM_$$_TUNICODEREC$indirect	DQ	RTTI_$SYSTEM_$$_TUNICODEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODEREC$indirect
RTTI_$SYSTEM_$$_PUNICODEREC$indirect	DQ	RTTI_$SYSTEM_$$_PUNICODEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000001BF$indirect
RTTI_$SYSTEM_$$_def000001BF$indirect	DQ	RTTI_$SYSTEM_$$_def000001BF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVARREC$indirect
INIT_$SYSTEM_$$_TVARREC$indirect	DQ	INIT_$SYSTEM_$$_TVARREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVARREC$indirect
RTTI_$SYSTEM_$$_TVARREC$indirect	DQ	RTTI_$SYSTEM_$$_TVARREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARREC$indirect
RTTI_$SYSTEM_$$_PVARREC$indirect	DQ	RTTI_$SYSTEM_$$_PVARREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TTESTEXCEPTION$indirect
INIT_$SYSTEM_$$_TTESTEXCEPTION$indirect	DQ	INIT_$SYSTEM_$$_TTESTEXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTESTEXCEPTION$indirect
RTTI_$SYSTEM_$$_TTESTEXCEPTION$indirect	DQ	RTTI_$SYSTEM_$$_TTESTEXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYINDEX$indirect
RTTI_$SYSTEM_$$_PDYNARRAYINDEX$indirect	DQ	RTTI_$SYSTEM_$$_PDYNARRAYINDEX

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAY$indirect
INIT_$SYSTEM_$$_TDYNARRAY$indirect	DQ	INIT_$SYSTEM_$$_TDYNARRAY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAY$indirect
RTTI_$SYSTEM_$$_TDYNARRAY$indirect	DQ	RTTI_$SYSTEM_$$_TDYNARRAY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAY$indirect
RTTI_$SYSTEM_$$_PDYNARRAY$indirect	DQ	RTTI_$SYSTEM_$$_PDYNARRAY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect
INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect	DQ	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect
RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect	DQ	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA$indirect
RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA$indirect	DQ	RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect
INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect	DQ	INIT_$SYSTEM_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000021B$indirect
RTTI_$SYSTEM_$$_def0000021B$indirect	DQ	RTTI_$SYSTEM_$$_def0000021B

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect
RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect	DQ	RTTI_$SYSTEM_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000029F$indirect
RTTI_$SYSTEM_$$_def0000029F$indirect	DQ	RTTI_$SYSTEM_$$_def0000029F
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c1431:
	DD	..@c1433-..@c1432
..@c1432:
	DD	-1
	DB	1,0
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_SLEB128BIT	
	DB	16,12
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1433:
	DD	..@c1435-..@c1434
..@c1434:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c4-..@c3
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c5-..@c4
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1435:
	DD	..@c1437-..@c1436
..@c1436:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c9-..@c8
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c10-..@c9
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1437:
	DD	..@c1439-..@c1438
..@c1438:
	DQ	..@c11,..@c12-..@c11
	DB	4
	DD	..@c13-..@c11
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c14-..@c13
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c15-..@c14
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1439:
	DD	..@c1441-..@c1440
..@c1440:
	DQ	..@c16,..@c17-..@c16
	DB	4
	DD	..@c18-..@c16
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c19-..@c18
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c20-..@c19
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1441:
	DD	..@c1443-..@c1442
..@c1442:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c24-..@c23
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c25-..@c24
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1443:
	DD	..@c1445-..@c1444
..@c1444:
	DQ	..@c26,..@c27-..@c26
	DB	4
	DD	..@c28-..@c26
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c29-..@c28
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c30-..@c29
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1445:
	DD	..@c1447-..@c1446
..@c1446:
	DQ	..@c31,..@c32-..@c31
	DB	4
	DD	..@c33-..@c31
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c34-..@c33
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c35-..@c34
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1447:
	DD	..@c1449-..@c1448
..@c1448:
	DQ	..@c36,..@c37-..@c36
	DB	4
	DD	..@c38-..@c36
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c39-..@c38
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c40-..@c39
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1449:
	DD	..@c1451-..@c1450
..@c1450:
	DQ	..@c41,..@c42-..@c41
	DB	4
	DD	..@c43-..@c41
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c44-..@c43
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c45-..@c44
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1451:
	DD	..@c1453-..@c1452
..@c1452:
	DQ	..@c46,..@c47-..@c46
	DB	4
	DD	..@c48-..@c46
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c49-..@c48
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c50-..@c49
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1453:
	DD	..@c1455-..@c1454
..@c1454:
	DQ	..@c51,..@c52-..@c51
	DB	4
	DD	..@c53-..@c51
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c54-..@c53
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c55-..@c54
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1455:
	DD	..@c1457-..@c1456
..@c1456:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c59-..@c58
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c60-..@c59
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1457:
	DD	..@c1459-..@c1458
..@c1458:
	DQ	..@c61,..@c62-..@c61
	DB	4
	DD	..@c63-..@c61
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c64-..@c63
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c65-..@c64
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1459:
	DD	..@c1461-..@c1460
..@c1460:
	DQ	..@c66,..@c67-..@c66
	DB	4
	DD	..@c68-..@c66
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c69-..@c68
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c70-..@c69
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1461:
	DD	..@c1463-..@c1462
..@c1462:
	DQ	..@c71,..@c72-..@c71
	DB	4
	DD	..@c73-..@c71
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c74-..@c73
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c75-..@c74
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1463:
	DD	..@c1465-..@c1464
..@c1464:
	DQ	..@c76,..@c77-..@c76
	DB	4
	DD	..@c78-..@c76
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c79-..@c78
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c80-..@c79
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1465:
	DD	..@c1467-..@c1466
..@c1466:
	DQ	..@c81,..@c82-..@c81
	DB	4
	DD	..@c83-..@c81
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c84-..@c83
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c85-..@c84
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1467:
	DD	..@c1469-..@c1468
..@c1468:
	DQ	..@c86,..@c87-..@c86
	DB	4
	DD	..@c88-..@c86
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c89-..@c88
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c90-..@c89
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1469:
	DD	..@c1471-..@c1470
..@c1470:
	DQ	..@c91,..@c92-..@c91
	DB	4
	DD	..@c93-..@c91
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c94-..@c93
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c95-..@c94
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1471:
	DD	..@c1473-..@c1472
..@c1472:
	DQ	..@c96,..@c97-..@c96
	DB	4
	DD	..@c98-..@c96
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c99-..@c98
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c100-..@c99
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1473:
	DD	..@c1475-..@c1474
..@c1474:
	DQ	..@c101,..@c102-..@c101
	DB	4
	DD	..@c103-..@c101
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c104-..@c103
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c105-..@c104
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1475:
	DD	..@c1477-..@c1476
..@c1476:
	DQ	..@c106,..@c107-..@c106
	DB	4
	DD	..@c108-..@c106
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c109-..@c108
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c110-..@c109
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1477:
	DD	..@c1479-..@c1478
..@c1478:
	DQ	..@c111,..@c112-..@c111
	DB	4
	DD	..@c113-..@c111
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c114-..@c113
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c115-..@c114
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1479:
	DD	..@c1481-..@c1480
..@c1480:
	DQ	..@c116,..@c117-..@c116
	DB	4
	DD	..@c118-..@c116
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c119-..@c118
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c120-..@c119
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1481:
	DD	..@c1483-..@c1482
..@c1482:
	DQ	..@c121,..@c122-..@c121
	DB	4
	DD	..@c123-..@c121
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c124-..@c123
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c125-..@c124
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1483:
	DD	..@c1485-..@c1484
..@c1484:
	DQ	..@c126,..@c127-..@c126
	DB	4
	DD	..@c128-..@c126
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c129-..@c128
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c130-..@c129
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1485:
	DD	..@c1487-..@c1486
..@c1486:
	DQ	..@c131,..@c132-..@c131
	DB	4
	DD	..@c133-..@c131
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c134-..@c133
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c135-..@c134
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1487:
	DD	..@c1489-..@c1488
..@c1488:
	DQ	..@c136,..@c137-..@c136
	DB	4
	DD	..@c138-..@c136
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c139-..@c138
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c140-..@c139
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1489:
	DD	..@c1491-..@c1490
..@c1490:
	DQ	..@c141,..@c142-..@c141
	DB	4
	DD	..@c143-..@c141
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c144-..@c143
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c145-..@c144
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1491:
	DD	..@c1493-..@c1492
..@c1492:
	DQ	..@c146,..@c147-..@c146
	DB	4
	DD	..@c148-..@c146
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c149-..@c148
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c150-..@c149
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1493:
	DD	..@c1495-..@c1494
..@c1494:
	DQ	..@c151,..@c152-..@c151
	DB	4
	DD	..@c153-..@c151
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c154-..@c153
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c155-..@c154
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1495:
	DD	..@c1497-..@c1496
..@c1496:
	DQ	..@c156,..@c157-..@c156
	DB	4
	DD	..@c158-..@c156
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c159-..@c158
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c160-..@c159
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1497:
	DD	..@c1499-..@c1498
..@c1498:
	DQ	..@c161,..@c162-..@c161
	DB	4
	DD	..@c163-..@c161
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c164-..@c163
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c165-..@c164
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1499:
	DD	..@c1501-..@c1500
..@c1500:
	DQ	..@c166,..@c167-..@c166
	DB	4
	DD	..@c168-..@c166
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c169-..@c168
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c170-..@c169
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1501:
	DD	..@c1503-..@c1502
..@c1502:
	DQ	..@c171,..@c172-..@c171
	DB	4
	DD	..@c173-..@c171
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c174-..@c173
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c175-..@c174
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1503:
	DD	..@c1505-..@c1504
..@c1504:
	DQ	..@c176,..@c177-..@c176
	DB	4
	DD	..@c178-..@c176
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c179-..@c178
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c180-..@c179
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1505:
	DD	..@c1507-..@c1506
..@c1506:
	DQ	..@c181,..@c182-..@c181
	DB	4
	DD	..@c183-..@c181
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c184-..@c183
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c185-..@c184
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1507:
	DD	..@c1509-..@c1508
..@c1508:
	DQ	..@c186,..@c187-..@c186
	DB	4
	DD	..@c188-..@c186
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c189-..@c188
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c190-..@c189
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1509:
	DD	..@c1511-..@c1510
..@c1510:
	DQ	..@c191,..@c192-..@c191
	DB	4
	DD	..@c193-..@c191
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c194-..@c193
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c195-..@c194
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1511:
	DD	..@c1513-..@c1512
..@c1512:
	DQ	..@c196,..@c197-..@c196
	DB	4
	DD	..@c198-..@c196
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c199-..@c198
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c200-..@c199
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1513:
	DD	..@c1515-..@c1514
..@c1514:
	DQ	..@c201,..@c202-..@c201
	DB	4
	DD	..@c203-..@c201
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c204-..@c203
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c205-..@c204
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1515:
	DD	..@c1517-..@c1516
..@c1516:
	DQ	..@c206,..@c207-..@c206
	DB	4
	DD	..@c208-..@c206
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c209-..@c208
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c210-..@c209
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1517:
	DD	..@c1519-..@c1518
..@c1518:
	DQ	..@c211,..@c212-..@c211
	DB	4
	DD	..@c213-..@c211
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c214-..@c213
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c215-..@c214
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1519:
	DD	..@c1521-..@c1520
..@c1520:
	DQ	..@c216,..@c217-..@c216
	DB	4
	DD	..@c218-..@c216
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c219-..@c218
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c220-..@c219
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1521:
	DD	..@c1523-..@c1522
..@c1522:
	DQ	..@c221,..@c222-..@c221
	DB	4
	DD	..@c223-..@c221
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c224-..@c223
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c225-..@c224
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1523:
	DD	..@c1525-..@c1524
..@c1524:
	DQ	..@c226,..@c227-..@c226
	DB	4
	DD	..@c228-..@c226
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c229-..@c228
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c230-..@c229
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1525:
	DD	..@c1527-..@c1526
..@c1526:
	DQ	..@c231,..@c232-..@c231
	DB	4
	DD	..@c233-..@c231
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c234-..@c233
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c235-..@c234
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1527:
	DD	..@c1529-..@c1528
..@c1528:
	DQ	..@c236,..@c237-..@c236
	DB	4
	DD	..@c238-..@c236
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c239-..@c238
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c240-..@c239
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1529:
	DD	..@c1531-..@c1530
..@c1530:
	DQ	..@c241,..@c242-..@c241
	DB	4
	DD	..@c243-..@c241
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c244-..@c243
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c245-..@c244
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1531:
	DD	..@c1533-..@c1532
..@c1532:
	DQ	..@c246,..@c247-..@c246
	DB	4
	DD	..@c248-..@c246
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c249-..@c248
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c250-..@c249
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1533:
	DD	..@c1535-..@c1534
..@c1534:
	DQ	..@c251,..@c252-..@c251
	DB	4
	DD	..@c253-..@c251
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c254-..@c253
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c255-..@c254
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1535:
	DD	..@c1537-..@c1536
..@c1536:
	DQ	..@c256,..@c257-..@c256
	DB	4
	DD	..@c258-..@c256
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c259-..@c258
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c260-..@c259
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1537:
	DD	..@c1539-..@c1538
..@c1538:
	DQ	..@c261,..@c262-..@c261
	DB	4
	DD	..@c263-..@c261
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c264-..@c263
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c265-..@c264
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1539:
	DD	..@c1541-..@c1540
..@c1540:
	DQ	..@c266,..@c267-..@c266
	DB	4
	DD	..@c268-..@c266
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c269-..@c268
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c270-..@c269
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1541:
	DD	..@c1543-..@c1542
..@c1542:
	DQ	..@c271,..@c272-..@c271
	DB	4
	DD	..@c273-..@c271
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c274-..@c273
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c275-..@c274
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1543:
	DD	..@c1545-..@c1544
..@c1544:
	DQ	..@c276,..@c277-..@c276
	DB	4
	DD	..@c278-..@c276
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c279-..@c278
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c280-..@c279
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1545:
	DD	..@c1547-..@c1546
..@c1546:
	DQ	..@c281,..@c282-..@c281
	DB	4
	DD	..@c283-..@c281
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c284-..@c283
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c285-..@c284
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1547:
	DD	..@c1549-..@c1548
..@c1548:
	DQ	..@c286,..@c287-..@c286
	DB	4
	DD	..@c288-..@c286
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c289-..@c288
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c290-..@c289
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1549:
	DD	..@c1551-..@c1550
..@c1550:
	DQ	..@c291,..@c292-..@c291
	DB	4
	DD	..@c293-..@c291
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c294-..@c293
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c295-..@c294
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1551:
	DD	..@c1553-..@c1552
..@c1552:
	DQ	..@c296,..@c297-..@c296
	DB	4
	DD	..@c298-..@c296
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c299-..@c298
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c300-..@c299
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1553:
	DD	..@c1555-..@c1554
..@c1554:
	DQ	..@c301,..@c302-..@c301
	DB	4
	DD	..@c303-..@c301
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c304-..@c303
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c305-..@c304
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1555:
	DD	..@c1557-..@c1556
..@c1556:
	DQ	..@c306,..@c307-..@c306
	DB	4
	DD	..@c308-..@c306
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c309-..@c308
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c310-..@c309
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1557:
	DD	..@c1559-..@c1558
..@c1558:
	DQ	..@c311,..@c312-..@c311
	DB	4
	DD	..@c313-..@c311
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c314-..@c313
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c315-..@c314
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1559:
	DD	..@c1561-..@c1560
..@c1560:
	DQ	..@c316,..@c317-..@c316
	DB	4
	DD	..@c318-..@c316
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c319-..@c318
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c320-..@c319
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1561:
	DD	..@c1563-..@c1562
..@c1562:
	DQ	..@c321,..@c322-..@c321
	DB	4
	DD	..@c323-..@c321
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c324-..@c323
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c325-..@c324
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1563:
	DD	..@c1565-..@c1564
..@c1564:
	DQ	..@c326,..@c327-..@c326
	DB	4
	DD	..@c328-..@c326
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c329-..@c328
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c330-..@c329
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1565:
	DD	..@c1567-..@c1566
..@c1566:
	DQ	..@c331,..@c332-..@c331
	DB	4
	DD	..@c333-..@c331
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c334-..@c333
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c335-..@c334
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1567:
	DD	..@c1569-..@c1568
..@c1568:
	DQ	..@c336,..@c337-..@c336
	DB	4
	DD	..@c338-..@c336
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c339-..@c338
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c340-..@c339
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1569:
	DD	..@c1571-..@c1570
..@c1570:
	DQ	..@c341,..@c342-..@c341
	DB	4
	DD	..@c343-..@c341
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c344-..@c343
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c345-..@c344
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1571:
	DD	..@c1573-..@c1572
..@c1572:
	DQ	..@c346,..@c347-..@c346
	DB	4
	DD	..@c348-..@c346
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c349-..@c348
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c350-..@c349
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1573:
	DD	..@c1575-..@c1574
..@c1574:
	DQ	..@c351,..@c352-..@c351
	DB	4
	DD	..@c353-..@c351
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c354-..@c353
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c355-..@c354
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1575:
	DD	..@c1577-..@c1576
..@c1576:
	DQ	..@c356,..@c357-..@c356
	DB	4
	DD	..@c358-..@c356
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c359-..@c358
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c360-..@c359
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1577:
	DD	..@c1579-..@c1578
..@c1578:
	DQ	..@c361,..@c362-..@c361
	DB	4
	DD	..@c363-..@c361
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c364-..@c363
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c365-..@c364
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1579:
	DD	..@c1581-..@c1580
..@c1580:
	DQ	..@c366,..@c367-..@c366
	DB	4
	DD	..@c368-..@c366
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c369-..@c368
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c370-..@c369
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1581:
	DD	..@c1583-..@c1582
..@c1582:
	DQ	..@c371,..@c372-..@c371
	DB	4
	DD	..@c373-..@c371
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c374-..@c373
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c375-..@c374
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1583:
	DD	..@c1585-..@c1584
..@c1584:
	DQ	..@c376,..@c377-..@c376
	DB	4
	DD	..@c378-..@c376
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c379-..@c378
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c380-..@c379
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1585:
	DD	..@c1587-..@c1586
..@c1586:
	DQ	..@c381,..@c382-..@c381
	DB	4
	DD	..@c383-..@c381
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c384-..@c383
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c385-..@c384
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1587:
	DD	..@c1589-..@c1588
..@c1588:
	DQ	..@c386,..@c387-..@c386
	DB	4
	DD	..@c388-..@c386
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c389-..@c388
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c390-..@c389
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1589:
	DD	..@c1591-..@c1590
..@c1590:
	DQ	..@c391,..@c392-..@c391
	DB	4
	DD	..@c393-..@c391
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c394-..@c393
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c395-..@c394
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1591:
	DD	..@c1593-..@c1592
..@c1592:
	DQ	..@c396,..@c397-..@c396
	DB	4
	DD	..@c398-..@c396
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c399-..@c398
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c400-..@c399
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1593:
	DD	..@c1595-..@c1594
..@c1594:
	DQ	..@c401,..@c402-..@c401
	DB	4
	DD	..@c403-..@c401
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c404-..@c403
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c405-..@c404
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1595:
	DD	..@c1597-..@c1596
..@c1596:
	DQ	..@c406,..@c407-..@c406
	DB	4
	DD	..@c408-..@c406
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c409-..@c408
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c410-..@c409
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1597:
	DD	..@c1599-..@c1598
..@c1598:
	DQ	..@c411,..@c412-..@c411
	DB	4
	DD	..@c413-..@c411
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c414-..@c413
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c415-..@c414
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1599:
	DD	..@c1601-..@c1600
..@c1600:
	DQ	..@c416,..@c417-..@c416
	DB	4
	DD	..@c418-..@c416
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c419-..@c418
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c420-..@c419
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1601:
	DD	..@c1603-..@c1602
..@c1602:
	DQ	..@c421,..@c422-..@c421
	DB	4
	DD	..@c423-..@c421
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c424-..@c423
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c425-..@c424
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1603:
	DD	..@c1605-..@c1604
..@c1604:
	DQ	..@c426,..@c427-..@c426
	DB	4
	DD	..@c428-..@c426
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c429-..@c428
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c430-..@c429
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1605:
	DD	..@c1607-..@c1606
..@c1606:
	DQ	..@c431,..@c432-..@c431
	DB	4
	DD	..@c433-..@c431
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c434-..@c433
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c435-..@c434
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1607:
	DD	..@c1609-..@c1608
..@c1608:
	DQ	..@c436,..@c437-..@c436
	DB	4
	DD	..@c438-..@c436
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c439-..@c438
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c440-..@c439
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1609:
	DD	..@c1611-..@c1610
..@c1610:
	DQ	..@c441,..@c442-..@c441
	DB	4
	DD	..@c443-..@c441
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c444-..@c443
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c445-..@c444
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1611:
	DD	..@c1613-..@c1612
..@c1612:
	DQ	..@c446,..@c447-..@c446
	DB	4
	DD	..@c448-..@c446
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c449-..@c448
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c450-..@c449
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1613:
	DD	..@c1615-..@c1614
..@c1614:
	DQ	..@c451,..@c452-..@c451
	DB	4
	DD	..@c453-..@c451
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c454-..@c453
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c455-..@c454
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1615:
	DD	..@c1617-..@c1616
..@c1616:
	DQ	..@c456,..@c457-..@c456
	DB	4
	DD	..@c458-..@c456
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c459-..@c458
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c460-..@c459
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1617:
	DD	..@c1619-..@c1618
..@c1618:
	DQ	..@c461,..@c462-..@c461
	DB	4
	DD	..@c463-..@c461
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c464-..@c463
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c465-..@c464
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1619:
	DD	..@c1621-..@c1620
..@c1620:
	DQ	..@c466,..@c467-..@c466
	DB	4
	DD	..@c468-..@c466
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c469-..@c468
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c470-..@c469
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1621:
	DD	..@c1623-..@c1622
..@c1622:
	DQ	..@c471,..@c472-..@c471
	DB	4
	DD	..@c473-..@c471
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c474-..@c473
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c475-..@c474
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1623:
	DD	..@c1625-..@c1624
..@c1624:
	DQ	..@c476,..@c477-..@c476
	DB	4
	DD	..@c478-..@c476
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c479-..@c478
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c480-..@c479
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1625:
	DD	..@c1627-..@c1626
..@c1626:
	DQ	..@c481,..@c482-..@c481
	DB	4
	DD	..@c483-..@c481
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c484-..@c483
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c485-..@c484
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1627:
	DD	..@c1629-..@c1628
..@c1628:
	DQ	..@c486,..@c487-..@c486
	DB	4
	DD	..@c488-..@c486
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c489-..@c488
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c490-..@c489
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1629:
	DD	..@c1631-..@c1630
..@c1630:
	DQ	..@c491,..@c492-..@c491
	DB	4
	DD	..@c493-..@c491
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c494-..@c493
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c495-..@c494
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1631:
	DD	..@c1633-..@c1632
..@c1632:
	DQ	..@c496,..@c497-..@c496
	DB	4
	DD	..@c498-..@c496
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c499-..@c498
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c500-..@c499
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1633:
	DD	..@c1635-..@c1634
..@c1634:
	DQ	..@c501,..@c502-..@c501
	DB	4
	DD	..@c503-..@c501
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c504-..@c503
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c505-..@c504
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1635:
	DD	..@c1637-..@c1636
..@c1636:
	DQ	..@c506,..@c507-..@c506
	DB	4
	DD	..@c508-..@c506
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c509-..@c508
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c510-..@c509
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1637:
	DD	..@c1639-..@c1638
..@c1638:
	DQ	..@c511,..@c512-..@c511
	DB	4
	DD	..@c513-..@c511
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c514-..@c513
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c515-..@c514
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1639:
	DD	..@c1641-..@c1640
..@c1640:
	DQ	..@c516,..@c517-..@c516
	DB	4
	DD	..@c518-..@c516
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c519-..@c518
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c520-..@c519
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1641:
	DD	..@c1643-..@c1642
..@c1642:
	DQ	..@c521,..@c522-..@c521
	DB	4
	DD	..@c523-..@c521
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c524-..@c523
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c525-..@c524
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1643:
	DD	..@c1645-..@c1644
..@c1644:
	DQ	..@c526,..@c527-..@c526
	DB	4
	DD	..@c528-..@c526
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c529-..@c528
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c530-..@c529
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1645:
	DD	..@c1647-..@c1646
..@c1646:
	DQ	..@c531,..@c532-..@c531
	DB	4
	DD	..@c533-..@c531
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c534-..@c533
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c535-..@c534
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1647:
	DD	..@c1649-..@c1648
..@c1648:
	DQ	..@c536,..@c537-..@c536
	DB	4
	DD	..@c538-..@c536
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c539-..@c538
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c540-..@c539
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1649:
	DD	..@c1651-..@c1650
..@c1650:
	DQ	..@c541,..@c542-..@c541
	DB	4
	DD	..@c543-..@c541
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c544-..@c543
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c545-..@c544
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1651:
	DD	..@c1653-..@c1652
..@c1652:
	DQ	..@c546,..@c547-..@c546
	DB	4
	DD	..@c548-..@c546
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c549-..@c548
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c550-..@c549
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1653:
	DD	..@c1655-..@c1654
..@c1654:
	DQ	..@c551,..@c552-..@c551
	DB	4
	DD	..@c553-..@c551
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c554-..@c553
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c555-..@c554
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1655:
	DD	..@c1657-..@c1656
..@c1656:
	DQ	..@c556,..@c557-..@c556
	DB	4
	DD	..@c558-..@c556
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c559-..@c558
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c560-..@c559
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1657:
	DD	..@c1659-..@c1658
..@c1658:
	DQ	..@c561,..@c562-..@c561
	DB	4
	DD	..@c563-..@c561
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c564-..@c563
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c565-..@c564
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1659:
	DD	..@c1661-..@c1660
..@c1660:
	DQ	..@c566,..@c567-..@c566
	DB	4
	DD	..@c568-..@c566
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c569-..@c568
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c570-..@c569
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1661:
	DD	..@c1663-..@c1662
..@c1662:
	DQ	..@c571,..@c572-..@c571
	DB	4
	DD	..@c573-..@c571
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c574-..@c573
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c575-..@c574
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1663:
	DD	..@c1665-..@c1664
..@c1664:
	DQ	..@c576,..@c577-..@c576
	DB	4
	DD	..@c578-..@c576
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c579-..@c578
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c580-..@c579
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1665:
	DD	..@c1667-..@c1666
..@c1666:
	DQ	..@c581,..@c582-..@c581
	DB	4
	DD	..@c583-..@c581
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c584-..@c583
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c585-..@c584
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1667:
	DD	..@c1669-..@c1668
..@c1668:
	DQ	..@c586,..@c587-..@c586
	DB	4
	DD	..@c588-..@c586
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c589-..@c588
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c590-..@c589
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1669:
	DD	..@c1671-..@c1670
..@c1670:
	DQ	..@c591,..@c592-..@c591
	DB	4
	DD	..@c593-..@c591
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c594-..@c593
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c595-..@c594
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1671:
	DD	..@c1673-..@c1672
..@c1672:
	DQ	..@c596,..@c597-..@c596
	DB	4
	DD	..@c598-..@c596
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c599-..@c598
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c600-..@c599
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1673:
	DD	..@c1675-..@c1674
..@c1674:
	DQ	..@c601,..@c602-..@c601
	DB	4
	DD	..@c603-..@c601
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c604-..@c603
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c605-..@c604
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1675:
	DD	..@c1677-..@c1676
..@c1676:
	DQ	..@c606,..@c607-..@c606
	DB	4
	DD	..@c608-..@c606
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c609-..@c608
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c610-..@c609
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1677:
	DD	..@c1679-..@c1678
..@c1678:
	DQ	..@c611,..@c612-..@c611
	DB	4
	DD	..@c613-..@c611
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c614-..@c613
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c615-..@c614
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1679:
	DD	..@c1681-..@c1680
..@c1680:
	DQ	..@c616,..@c617-..@c616
	DB	4
	DD	..@c618-..@c616
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c619-..@c618
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c620-..@c619
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1681:
	DD	..@c1683-..@c1682
..@c1682:
	DQ	..@c621,..@c622-..@c621
	DB	4
	DD	..@c623-..@c621
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c624-..@c623
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c625-..@c624
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1683:
	DD	..@c1685-..@c1684
..@c1684:
	DQ	..@c626,..@c627-..@c626
	DB	4
	DD	..@c628-..@c626
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c629-..@c628
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c630-..@c629
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1685:
	DD	..@c1687-..@c1686
..@c1686:
	DQ	..@c631,..@c632-..@c631
	DB	4
	DD	..@c633-..@c631
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c634-..@c633
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c635-..@c634
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1687:
	DD	..@c1689-..@c1688
..@c1688:
	DQ	..@c636,..@c637-..@c636
	DB	4
	DD	..@c638-..@c636
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c639-..@c638
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c640-..@c639
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1689:
	DD	..@c1691-..@c1690
..@c1690:
	DQ	..@c641,..@c642-..@c641
	DB	4
	DD	..@c643-..@c641
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c644-..@c643
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c645-..@c644
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1691:
	DD	..@c1693-..@c1692
..@c1692:
	DQ	..@c646,..@c647-..@c646
	DB	4
	DD	..@c648-..@c646
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c649-..@c648
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c650-..@c649
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1693:
	DD	..@c1695-..@c1694
..@c1694:
	DQ	..@c651,..@c652-..@c651
	DB	4
	DD	..@c653-..@c651
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c654-..@c653
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c655-..@c654
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1695:
	DD	..@c1697-..@c1696
..@c1696:
	DQ	..@c656,..@c657-..@c656
	DB	4
	DD	..@c658-..@c656
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c659-..@c658
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c660-..@c659
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1697:
	DD	..@c1699-..@c1698
..@c1698:
	DQ	..@c661,..@c662-..@c661
	DB	4
	DD	..@c663-..@c661
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c664-..@c663
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c665-..@c664
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1699:
	DD	..@c1701-..@c1700
..@c1700:
	DQ	..@c666,..@c667-..@c666
	DB	4
	DD	..@c668-..@c666
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c669-..@c668
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c670-..@c669
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1701:
	DD	..@c1703-..@c1702
..@c1702:
	DQ	..@c671,..@c672-..@c671
	DB	4
	DD	..@c673-..@c671
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c674-..@c673
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c675-..@c674
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1703:
	DD	..@c1705-..@c1704
..@c1704:
	DQ	..@c676,..@c677-..@c676
	DB	4
	DD	..@c678-..@c676
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c679-..@c678
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c680-..@c679
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1705:
	DD	..@c1707-..@c1706
..@c1706:
	DQ	..@c681,..@c682-..@c681
	DB	4
	DD	..@c683-..@c681
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c684-..@c683
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c685-..@c684
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1707:
	DD	..@c1709-..@c1708
..@c1708:
	DQ	..@c686,..@c687-..@c686
	DB	4
	DD	..@c688-..@c686
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c689-..@c688
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c690-..@c689
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1709:
	DD	..@c1711-..@c1710
..@c1710:
	DQ	..@c691,..@c692-..@c691
	DB	4
	DD	..@c693-..@c691
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c694-..@c693
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c695-..@c694
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1711:
	DD	..@c1713-..@c1712
..@c1712:
	DQ	..@c696,..@c697-..@c696
	DB	4
	DD	..@c698-..@c696
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c699-..@c698
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c700-..@c699
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1713:
	DD	..@c1715-..@c1714
..@c1714:
	DQ	..@c701,..@c702-..@c701
	DB	4
	DD	..@c703-..@c701
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c704-..@c703
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c705-..@c704
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1715:
	DD	..@c1717-..@c1716
..@c1716:
	DQ	..@c706,..@c707-..@c706
	DB	4
	DD	..@c708-..@c706
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c709-..@c708
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c710-..@c709
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1717:
	DD	..@c1719-..@c1718
..@c1718:
	DQ	..@c711,..@c712-..@c711
	DB	4
	DD	..@c713-..@c711
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c714-..@c713
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c715-..@c714
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1719:
	DD	..@c1721-..@c1720
..@c1720:
	DQ	..@c716,..@c717-..@c716
	DB	4
	DD	..@c718-..@c716
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c719-..@c718
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c720-..@c719
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1721:
	DD	..@c1723-..@c1722
..@c1722:
	DQ	..@c721,..@c722-..@c721
	DB	4
	DD	..@c723-..@c721
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c724-..@c723
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c725-..@c724
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1723:
	DD	..@c1725-..@c1724
..@c1724:
	DQ	..@c726,..@c727-..@c726
	DB	4
	DD	..@c728-..@c726
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c729-..@c728
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c730-..@c729
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1725:
	DD	..@c1727-..@c1726
..@c1726:
	DQ	..@c731,..@c732-..@c731
	DB	4
	DD	..@c733-..@c731
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c734-..@c733
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c735-..@c734
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1727:
	DD	..@c1729-..@c1728
..@c1728:
	DQ	..@c736,..@c737-..@c736
	DB	4
	DD	..@c738-..@c736
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c739-..@c738
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c740-..@c739
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1729:
	DD	..@c1731-..@c1730
..@c1730:
	DQ	..@c741,..@c742-..@c741
	DB	4
	DD	..@c743-..@c741
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c744-..@c743
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c745-..@c744
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1731:
	DD	..@c1733-..@c1732
..@c1732:
	DQ	..@c746,..@c747-..@c746
	DB	4
	DD	..@c748-..@c746
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c749-..@c748
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c750-..@c749
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1733:
	DD	..@c1735-..@c1734
..@c1734:
	DQ	..@c751,..@c752-..@c751
	DB	4
	DD	..@c753-..@c751
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c754-..@c753
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c755-..@c754
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1735:
	DD	..@c1737-..@c1736
..@c1736:
	DQ	..@c756,..@c757-..@c756
	DB	4
	DD	..@c758-..@c756
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c759-..@c758
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c760-..@c759
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1737:
	DD	..@c1739-..@c1738
..@c1738:
	DQ	..@c761,..@c762-..@c761
	DB	4
	DD	..@c763-..@c761
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c764-..@c763
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c765-..@c764
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1739:
	DD	..@c1741-..@c1740
..@c1740:
	DQ	..@c766,..@c767-..@c766
	DB	4
	DD	..@c768-..@c766
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c769-..@c768
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c770-..@c769
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1741:
	DD	..@c1743-..@c1742
..@c1742:
	DQ	..@c771,..@c772-..@c771
	DB	4
	DD	..@c773-..@c771
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c774-..@c773
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c775-..@c774
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1743:
	DD	..@c1745-..@c1744
..@c1744:
	DQ	..@c776,..@c777-..@c776
	DB	4
	DD	..@c778-..@c776
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c779-..@c778
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c780-..@c779
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1745:
	DD	..@c1747-..@c1746
..@c1746:
	DQ	..@c781,..@c782-..@c781
	DB	4
	DD	..@c783-..@c781
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c784-..@c783
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c785-..@c784
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1747:
	DD	..@c1749-..@c1748
..@c1748:
	DQ	..@c786,..@c787-..@c786
	DB	4
	DD	..@c788-..@c786
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c789-..@c788
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c790-..@c789
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1749:
	DD	..@c1751-..@c1750
..@c1750:
	DQ	..@c791,..@c792-..@c791
	DB	4
	DD	..@c793-..@c791
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c794-..@c793
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c795-..@c794
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1751:
	DD	..@c1753-..@c1752
..@c1752:
	DQ	..@c796,..@c797-..@c796
	DB	4
	DD	..@c798-..@c796
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c799-..@c798
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c800-..@c799
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1753:
	DD	..@c1755-..@c1754
..@c1754:
	DQ	..@c801,..@c802-..@c801
	DB	4
	DD	..@c803-..@c801
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c804-..@c803
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c805-..@c804
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1755:
	DD	..@c1757-..@c1756
..@c1756:
	DQ	..@c806,..@c807-..@c806
	DB	4
	DD	..@c808-..@c806
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c809-..@c808
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c810-..@c809
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1757:
	DD	..@c1759-..@c1758
..@c1758:
	DQ	..@c811,..@c812-..@c811
	DB	4
	DD	..@c813-..@c811
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c814-..@c813
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c815-..@c814
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1759:
	DD	..@c1761-..@c1760
..@c1760:
	DQ	..@c816,..@c817-..@c816
	DB	4
	DD	..@c818-..@c816
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c819-..@c818
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c820-..@c819
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1761:
	DD	..@c1763-..@c1762
..@c1762:
	DQ	..@c821,..@c822-..@c821
	DB	4
	DD	..@c823-..@c821
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c824-..@c823
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c825-..@c824
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1763:
	DD	..@c1765-..@c1764
..@c1764:
	DQ	..@c826,..@c827-..@c826
	DB	4
	DD	..@c828-..@c826
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c829-..@c828
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c830-..@c829
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1765:
	DD	..@c1767-..@c1766
..@c1766:
	DQ	..@c831,..@c832-..@c831
	DB	4
	DD	..@c833-..@c831
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c834-..@c833
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c835-..@c834
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1767:
	DD	..@c1769-..@c1768
..@c1768:
	DQ	..@c836,..@c837-..@c836
	DB	4
	DD	..@c838-..@c836
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c839-..@c838
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c840-..@c839
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1769:
	DD	..@c1771-..@c1770
..@c1770:
	DQ	..@c841,..@c842-..@c841
	DB	4
	DD	..@c843-..@c841
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c844-..@c843
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c845-..@c844
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1771:
	DD	..@c1773-..@c1772
..@c1772:
	DQ	..@c846,..@c847-..@c846
	DB	4
	DD	..@c848-..@c846
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c849-..@c848
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c850-..@c849
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1773:
	DD	..@c1775-..@c1774
..@c1774:
	DQ	..@c851,..@c852-..@c851
	DB	4
	DD	..@c853-..@c851
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c854-..@c853
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c855-..@c854
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1775:
	DD	..@c1777-..@c1776
..@c1776:
	DQ	..@c856,..@c857-..@c856
	DB	4
	DD	..@c858-..@c856
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c859-..@c858
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c860-..@c859
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1777:
	DD	..@c1779-..@c1778
..@c1778:
	DQ	..@c861,..@c862-..@c861
	DB	4
	DD	..@c863-..@c861
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c864-..@c863
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c865-..@c864
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1779:
	DD	..@c1781-..@c1780
..@c1780:
	DQ	..@c866,..@c867-..@c866
	DB	4
	DD	..@c868-..@c866
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c869-..@c868
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c870-..@c869
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1781:
	DD	..@c1783-..@c1782
..@c1782:
	DQ	..@c871,..@c872-..@c871
	DB	4
	DD	..@c873-..@c871
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c874-..@c873
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c875-..@c874
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1783:
	DD	..@c1785-..@c1784
..@c1784:
	DQ	..@c876,..@c877-..@c876
	DB	4
	DD	..@c878-..@c876
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c879-..@c878
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c880-..@c879
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1785:
	DD	..@c1787-..@c1786
..@c1786:
	DQ	..@c881,..@c882-..@c881
	DB	4
	DD	..@c883-..@c881
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c884-..@c883
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c885-..@c884
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1787:
	DD	..@c1789-..@c1788
..@c1788:
	DQ	..@c886,..@c887-..@c886
	DB	4
	DD	..@c888-..@c886
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c889-..@c888
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c890-..@c889
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1789:
	DD	..@c1791-..@c1790
..@c1790:
	DQ	..@c891,..@c892-..@c891
	DB	4
	DD	..@c893-..@c891
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c894-..@c893
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c895-..@c894
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1791:
	DD	..@c1793-..@c1792
..@c1792:
	DQ	..@c896,..@c897-..@c896
	DB	4
	DD	..@c898-..@c896
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c899-..@c898
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c900-..@c899
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1793:
	DD	..@c1795-..@c1794
..@c1794:
	DQ	..@c901,..@c902-..@c901
	DB	4
	DD	..@c903-..@c901
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c904-..@c903
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c905-..@c904
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1795:
	DD	..@c1797-..@c1796
..@c1796:
	DQ	..@c906,..@c907-..@c906
	DB	4
	DD	..@c908-..@c906
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c909-..@c908
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c910-..@c909
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1797:
	DD	..@c1799-..@c1798
..@c1798:
	DQ	..@c911,..@c912-..@c911
	DB	4
	DD	..@c913-..@c911
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c914-..@c913
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c915-..@c914
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1799:
	DD	..@c1801-..@c1800
..@c1800:
	DQ	..@c916,..@c917-..@c916
	DB	4
	DD	..@c918-..@c916
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c919-..@c918
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c920-..@c919
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1801:
	DD	..@c1803-..@c1802
..@c1802:
	DQ	..@c921,..@c922-..@c921
	DB	4
	DD	..@c923-..@c921
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c924-..@c923
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c925-..@c924
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1803:
	DD	..@c1805-..@c1804
..@c1804:
	DQ	..@c926,..@c927-..@c926
	DB	4
	DD	..@c928-..@c926
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c929-..@c928
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c930-..@c929
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1805:
	DD	..@c1807-..@c1806
..@c1806:
	DQ	..@c931,..@c932-..@c931
	DB	4
	DD	..@c933-..@c931
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c934-..@c933
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c935-..@c934
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1807:
	DD	..@c1809-..@c1808
..@c1808:
	DQ	..@c936,..@c937-..@c936
	DB	4
	DD	..@c938-..@c936
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c939-..@c938
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c940-..@c939
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1809:
	DD	..@c1811-..@c1810
..@c1810:
	DQ	..@c941,..@c942-..@c941
	DB	4
	DD	..@c943-..@c941
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c944-..@c943
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c945-..@c944
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1811:
	DD	..@c1813-..@c1812
..@c1812:
	DQ	..@c946,..@c947-..@c946
	DB	4
	DD	..@c948-..@c946
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c949-..@c948
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c950-..@c949
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1813:
	DD	..@c1815-..@c1814
..@c1814:
	DQ	..@c951,..@c952-..@c951
	DB	4
	DD	..@c953-..@c951
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c954-..@c953
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c955-..@c954
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1815:
	DD	..@c1817-..@c1816
..@c1816:
	DQ	..@c956,..@c957-..@c956
	DB	4
	DD	..@c958-..@c956
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c959-..@c958
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c960-..@c959
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1817:
	DD	..@c1819-..@c1818
..@c1818:
	DQ	..@c961,..@c962-..@c961
	DB	4
	DD	..@c963-..@c961
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c964-..@c963
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c965-..@c964
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1819:
	DD	..@c1821-..@c1820
..@c1820:
	DQ	..@c966,..@c967-..@c966
	DB	4
	DD	..@c968-..@c966
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c969-..@c968
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c970-..@c969
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1821:
	DD	..@c1823-..@c1822
..@c1822:
	DQ	..@c971,..@c972-..@c971
	DB	4
	DD	..@c973-..@c971
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c974-..@c973
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c975-..@c974
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1823:
	DD	..@c1825-..@c1824
..@c1824:
	DQ	..@c976,..@c977-..@c976
	DB	4
	DD	..@c978-..@c976
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c979-..@c978
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c980-..@c979
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1825:
	DD	..@c1827-..@c1826
..@c1826:
	DQ	..@c981,..@c982-..@c981
	DB	4
	DD	..@c983-..@c981
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c984-..@c983
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c985-..@c984
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1827:
	DD	..@c1829-..@c1828
..@c1828:
	DQ	..@c986,..@c987-..@c986
	DB	4
	DD	..@c988-..@c986
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c989-..@c988
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c990-..@c989
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1829:
	DD	..@c1831-..@c1830
..@c1830:
	DQ	..@c991,..@c992-..@c991
	DB	4
	DD	..@c993-..@c991
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c994-..@c993
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c995-..@c994
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1831:
	DD	..@c1833-..@c1832
..@c1832:
	DQ	..@c996,..@c997-..@c996
	DB	4
	DD	..@c998-..@c996
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c999-..@c998
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1000-..@c999
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1833:
	DD	..@c1835-..@c1834
..@c1834:
	DQ	..@c1001,..@c1002-..@c1001
	DB	4
	DD	..@c1003-..@c1001
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1004-..@c1003
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1005-..@c1004
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1835:
	DD	..@c1837-..@c1836
..@c1836:
	DQ	..@c1006,..@c1007-..@c1006
	DB	4
	DD	..@c1008-..@c1006
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1009-..@c1008
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1010-..@c1009
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1837:
	DD	..@c1839-..@c1838
..@c1838:
	DQ	..@c1011,..@c1012-..@c1011
	DB	4
	DD	..@c1013-..@c1011
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1014-..@c1013
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1015-..@c1014
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1839:
	DD	..@c1841-..@c1840
..@c1840:
	DQ	..@c1016,..@c1017-..@c1016
	DB	4
	DD	..@c1018-..@c1016
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1019-..@c1018
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1020-..@c1019
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1841:
	DD	..@c1843-..@c1842
..@c1842:
	DQ	..@c1021,..@c1022-..@c1021
	DB	4
	DD	..@c1023-..@c1021
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1024-..@c1023
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1025-..@c1024
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1843:
	DD	..@c1845-..@c1844
..@c1844:
	DQ	..@c1026,..@c1027-..@c1026
	DB	4
	DD	..@c1028-..@c1026
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1029-..@c1028
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1030-..@c1029
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1845:
	DD	..@c1847-..@c1846
..@c1846:
	DQ	..@c1031,..@c1032-..@c1031
	DB	4
	DD	..@c1033-..@c1031
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1034-..@c1033
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1035-..@c1034
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1847:
	DD	..@c1849-..@c1848
..@c1848:
	DQ	..@c1036,..@c1037-..@c1036
	DB	4
	DD	..@c1038-..@c1036
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1039-..@c1038
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1040-..@c1039
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1849:
	DD	..@c1851-..@c1850
..@c1850:
	DQ	..@c1041,..@c1042-..@c1041
	DB	4
	DD	..@c1043-..@c1041
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1044-..@c1043
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1045-..@c1044
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1851:
	DD	..@c1853-..@c1852
..@c1852:
	DQ	..@c1046,..@c1047-..@c1046
	DB	4
	DD	..@c1048-..@c1046
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1049-..@c1048
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1050-..@c1049
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1853:
	DD	..@c1855-..@c1854
..@c1854:
	DQ	..@c1051,..@c1052-..@c1051
	DB	4
	DD	..@c1053-..@c1051
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1054-..@c1053
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1055-..@c1054
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1855:
	DD	..@c1857-..@c1856
..@c1856:
	DQ	..@c1056,..@c1057-..@c1056
	DB	4
	DD	..@c1058-..@c1056
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1059-..@c1058
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1060-..@c1059
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1857:
	DD	..@c1859-..@c1858
..@c1858:
	DQ	..@c1061,..@c1062-..@c1061
	DB	4
	DD	..@c1063-..@c1061
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1064-..@c1063
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1065-..@c1064
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1859:
	DD	..@c1861-..@c1860
..@c1860:
	DQ	..@c1066,..@c1067-..@c1066
	DB	4
	DD	..@c1068-..@c1066
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1069-..@c1068
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1070-..@c1069
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1861:
	DD	..@c1863-..@c1862
..@c1862:
	DQ	..@c1071,..@c1072-..@c1071
	DB	4
	DD	..@c1073-..@c1071
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1074-..@c1073
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1075-..@c1074
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1863:
	DD	..@c1865-..@c1864
..@c1864:
	DQ	..@c1076,..@c1077-..@c1076
	DB	4
	DD	..@c1078-..@c1076
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1079-..@c1078
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1080-..@c1079
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1865:
	DD	..@c1867-..@c1866
..@c1866:
	DQ	..@c1081,..@c1082-..@c1081
	DB	4
	DD	..@c1083-..@c1081
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1084-..@c1083
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1085-..@c1084
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1867:
	DD	..@c1869-..@c1868
..@c1868:
	DQ	..@c1086,..@c1087-..@c1086
	DB	4
	DD	..@c1088-..@c1086
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1089-..@c1088
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1090-..@c1089
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1869:
	DD	..@c1871-..@c1870
..@c1870:
	DQ	..@c1091,..@c1092-..@c1091
	DB	4
	DD	..@c1093-..@c1091
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1094-..@c1093
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1095-..@c1094
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1871:
	DD	..@c1873-..@c1872
..@c1872:
	DQ	..@c1096,..@c1097-..@c1096
	DB	4
	DD	..@c1098-..@c1096
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1099-..@c1098
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1100-..@c1099
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1873:
	DD	..@c1875-..@c1874
..@c1874:
	DQ	..@c1101,..@c1102-..@c1101
	DB	4
	DD	..@c1103-..@c1101
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1104-..@c1103
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1105-..@c1104
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1875:
	DD	..@c1877-..@c1876
..@c1876:
	DQ	..@c1106,..@c1107-..@c1106
	DB	4
	DD	..@c1108-..@c1106
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1109-..@c1108
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1110-..@c1109
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1877:
	DD	..@c1879-..@c1878
..@c1878:
	DQ	..@c1111,..@c1112-..@c1111
	DB	4
	DD	..@c1113-..@c1111
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1114-..@c1113
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1115-..@c1114
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1879:
	DD	..@c1881-..@c1880
..@c1880:
	DQ	..@c1116,..@c1117-..@c1116
	DB	4
	DD	..@c1118-..@c1116
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1119-..@c1118
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1120-..@c1119
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1881:
	DD	..@c1883-..@c1882
..@c1882:
	DQ	..@c1121,..@c1122-..@c1121
	DB	4
	DD	..@c1123-..@c1121
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1124-..@c1123
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1125-..@c1124
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1883:
	DD	..@c1885-..@c1884
..@c1884:
	DQ	..@c1126,..@c1127-..@c1126
	DB	4
	DD	..@c1128-..@c1126
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1129-..@c1128
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1130-..@c1129
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1885:
	DD	..@c1887-..@c1886
..@c1886:
	DQ	..@c1131,..@c1132-..@c1131
	DB	4
	DD	..@c1133-..@c1131
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1134-..@c1133
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1135-..@c1134
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1887:
	DD	..@c1889-..@c1888
..@c1888:
	DQ	..@c1136,..@c1137-..@c1136
	DB	4
	DD	..@c1138-..@c1136
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1139-..@c1138
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1140-..@c1139
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1889:
	DD	..@c1891-..@c1890
..@c1890:
	DQ	..@c1141,..@c1142-..@c1141
	DB	4
	DD	..@c1143-..@c1141
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1144-..@c1143
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1145-..@c1144
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1891:
	DD	..@c1893-..@c1892
..@c1892:
	DQ	..@c1146,..@c1147-..@c1146
	DB	4
	DD	..@c1148-..@c1146
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1149-..@c1148
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1150-..@c1149
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1893:
	DD	..@c1895-..@c1894
..@c1894:
	DQ	..@c1151,..@c1152-..@c1151
	DB	4
	DD	..@c1153-..@c1151
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1154-..@c1153
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1155-..@c1154
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1895:
	DD	..@c1897-..@c1896
..@c1896:
	DQ	..@c1156,..@c1157-..@c1156
	DB	4
	DD	..@c1158-..@c1156
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1159-..@c1158
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1160-..@c1159
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1897:
	DD	..@c1899-..@c1898
..@c1898:
	DQ	..@c1161,..@c1162-..@c1161
	DB	4
	DD	..@c1163-..@c1161
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1164-..@c1163
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1165-..@c1164
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1899:
	DD	..@c1901-..@c1900
..@c1900:
	DQ	..@c1166,..@c1167-..@c1166
	DB	4
	DD	..@c1168-..@c1166
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1169-..@c1168
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1170-..@c1169
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1901:
	DD	..@c1903-..@c1902
..@c1902:
	DQ	..@c1171,..@c1172-..@c1171
	DB	4
	DD	..@c1173-..@c1171
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1174-..@c1173
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1175-..@c1174
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1903:
	DD	..@c1905-..@c1904
..@c1904:
	DQ	..@c1176,..@c1177-..@c1176
	DB	4
	DD	..@c1178-..@c1176
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1179-..@c1178
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1180-..@c1179
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1905:
	DD	..@c1907-..@c1906
..@c1906:
	DQ	..@c1181,..@c1182-..@c1181
	DB	4
	DD	..@c1183-..@c1181
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1184-..@c1183
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1185-..@c1184
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1907:
	DD	..@c1909-..@c1908
..@c1908:
	DQ	..@c1186,..@c1187-..@c1186
	DB	4
	DD	..@c1188-..@c1186
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1189-..@c1188
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1190-..@c1189
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1909:
	DD	..@c1911-..@c1910
..@c1910:
	DQ	..@c1191,..@c1192-..@c1191
	DB	4
	DD	..@c1193-..@c1191
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1194-..@c1193
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1195-..@c1194
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1911:
	DD	..@c1913-..@c1912
..@c1912:
	DQ	..@c1196,..@c1197-..@c1196
	DB	4
	DD	..@c1198-..@c1196
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1199-..@c1198
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1200-..@c1199
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1913:
	DD	..@c1915-..@c1914
..@c1914:
	DQ	..@c1201,..@c1202-..@c1201
	DB	4
	DD	..@c1203-..@c1201
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1204-..@c1203
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1205-..@c1204
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1915:
	DD	..@c1917-..@c1916
..@c1916:
	DQ	..@c1206,..@c1207-..@c1206
	DB	4
	DD	..@c1208-..@c1206
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1209-..@c1208
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1210-..@c1209
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1917:
	DD	..@c1919-..@c1918
..@c1918:
	DQ	..@c1211,..@c1212-..@c1211
	DB	4
	DD	..@c1213-..@c1211
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1214-..@c1213
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1215-..@c1214
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1919:
	DD	..@c1921-..@c1920
..@c1920:
	DQ	..@c1216,..@c1217-..@c1216
	DB	4
	DD	..@c1218-..@c1216
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1219-..@c1218
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1220-..@c1219
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1921:
	DD	..@c1923-..@c1922
..@c1922:
	DQ	..@c1221,..@c1222-..@c1221
	DB	4
	DD	..@c1223-..@c1221
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1224-..@c1223
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1225-..@c1224
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1923:
	DD	..@c1925-..@c1924
..@c1924:
	DQ	..@c1226,..@c1227-..@c1226
	DB	4
	DD	..@c1228-..@c1226
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1229-..@c1228
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1230-..@c1229
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1925:
	DD	..@c1927-..@c1926
..@c1926:
	DQ	..@c1231,..@c1232-..@c1231
	DB	4
	DD	..@c1233-..@c1231
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1234-..@c1233
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1235-..@c1234
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1927:
	DD	..@c1929-..@c1928
..@c1928:
	DQ	..@c1236,..@c1237-..@c1236
	DB	4
	DD	..@c1238-..@c1236
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1239-..@c1238
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1240-..@c1239
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1929:
	DD	..@c1931-..@c1930
..@c1930:
	DQ	..@c1241,..@c1242-..@c1241
	DB	4
	DD	..@c1243-..@c1241
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1244-..@c1243
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1245-..@c1244
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1931:
	DD	..@c1933-..@c1932
..@c1932:
	DQ	..@c1246,..@c1247-..@c1246
	DB	4
	DD	..@c1248-..@c1246
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1249-..@c1248
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1250-..@c1249
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1933:
	DD	..@c1935-..@c1934
..@c1934:
	DQ	..@c1251,..@c1252-..@c1251
	DB	4
	DD	..@c1253-..@c1251
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1254-..@c1253
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1255-..@c1254
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1935:
	DD	..@c1937-..@c1936
..@c1936:
	DQ	..@c1256,..@c1257-..@c1256
	DB	4
	DD	..@c1258-..@c1256
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1259-..@c1258
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1260-..@c1259
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1937:
	DD	..@c1939-..@c1938
..@c1938:
	DQ	..@c1261,..@c1262-..@c1261
	DB	4
	DD	..@c1263-..@c1261
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1264-..@c1263
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1265-..@c1264
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1939:
	DD	..@c1941-..@c1940
..@c1940:
	DQ	..@c1266,..@c1267-..@c1266
	DB	4
	DD	..@c1268-..@c1266
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1269-..@c1268
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1270-..@c1269
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1941:
	DD	..@c1943-..@c1942
..@c1942:
	DQ	..@c1271,..@c1272-..@c1271
	ALIGN 4,DB 0
..@c1943:
	DD	..@c1945-..@c1944
..@c1944:
	DQ	..@c1273,..@c1274-..@c1273
	DB	4
	DD	..@c1275-..@c1273
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1276-..@c1275
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1277-..@c1276
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1945:
	DD	..@c1947-..@c1946
..@c1946:
	DQ	..@c1278,..@c1279-..@c1278
	DB	4
	DD	..@c1280-..@c1278
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1281-..@c1280
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1282-..@c1281
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1947:
	DD	..@c1949-..@c1948
..@c1948:
	DQ	..@c1283,..@c1284-..@c1283
	DB	4
	DD	..@c1285-..@c1283
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1286-..@c1285
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1287-..@c1286
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1949:
	DD	..@c1951-..@c1950
..@c1950:
	DQ	..@c1288,..@c1289-..@c1288
	DB	4
	DD	..@c1290-..@c1288
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1291-..@c1290
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1292-..@c1291
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1951:
	DD	..@c1953-..@c1952
..@c1952:
	DQ	..@c1293,..@c1294-..@c1293
	DB	4
	DD	..@c1295-..@c1293
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1296-..@c1295
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1297-..@c1296
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1953:
	DD	..@c1955-..@c1954
..@c1954:
	DQ	..@c1298,..@c1299-..@c1298
	DB	4
	DD	..@c1300-..@c1298
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1301-..@c1300
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1302-..@c1301
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1955:
	DD	..@c1957-..@c1956
..@c1956:
	DQ	..@c1303,..@c1304-..@c1303
	DB	4
	DD	..@c1305-..@c1303
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1306-..@c1305
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1307-..@c1306
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1957:
	DD	..@c1959-..@c1958
..@c1958:
	DQ	..@c1308,..@c1309-..@c1308
	DB	4
	DD	..@c1310-..@c1308
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1311-..@c1310
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1312-..@c1311
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1959:
	DD	..@c1961-..@c1960
..@c1960:
	DQ	..@c1313,..@c1314-..@c1313
	DB	4
	DD	..@c1315-..@c1313
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1316-..@c1315
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1317-..@c1316
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1961:
	DD	..@c1963-..@c1962
..@c1962:
	DQ	..@c1318,..@c1319-..@c1318
	DB	4
	DD	..@c1320-..@c1318
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1321-..@c1320
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1322-..@c1321
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1963:
	DD	..@c1965-..@c1964
..@c1964:
	DQ	..@c1323,..@c1324-..@c1323
	DB	4
	DD	..@c1325-..@c1323
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1326-..@c1325
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1327-..@c1326
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1965:
	DD	..@c1967-..@c1966
..@c1966:
	DQ	..@c1328,..@c1329-..@c1328
	DB	4
	DD	..@c1330-..@c1328
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1331-..@c1330
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1332-..@c1331
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1967:
	DD	..@c1969-..@c1968
..@c1968:
	DQ	..@c1333,..@c1334-..@c1333
	DB	4
	DD	..@c1335-..@c1333
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1336-..@c1335
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1337-..@c1336
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1969:
	DD	..@c1971-..@c1970
..@c1970:
	DQ	..@c1338,..@c1339-..@c1338
	DB	4
	DD	..@c1340-..@c1338
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1341-..@c1340
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1342-..@c1341
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1971:
	DD	..@c1973-..@c1972
..@c1972:
	DQ	..@c1343,..@c1344-..@c1343
	DB	4
	DD	..@c1345-..@c1343
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1346-..@c1345
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1347-..@c1346
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1973:
	DD	..@c1975-..@c1974
..@c1974:
	DQ	..@c1348,..@c1349-..@c1348
	ALIGN 4,DB 0
..@c1975:
	DD	..@c1977-..@c1976
..@c1976:
	DQ	..@c1350,..@c1351-..@c1350
	ALIGN 4,DB 0
..@c1977:
	DD	..@c1979-..@c1978
..@c1978:
	DQ	..@c1352,..@c1353-..@c1352
	ALIGN 4,DB 0
..@c1979:
	DD	..@c1981-..@c1980
..@c1980:
	DQ	..@c1354,..@c1355-..@c1354
	ALIGN 4,DB 0
..@c1981:
	DD	..@c1983-..@c1982
..@c1982:
	DQ	..@c1356,..@c1357-..@c1356
	DB	4
	DD	..@c1358-..@c1356
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1359-..@c1358
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1360-..@c1359
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1983:
	DD	..@c1985-..@c1984
..@c1984:
	DQ	..@c1361,..@c1362-..@c1361
	DB	4
	DD	..@c1363-..@c1361
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1364-..@c1363
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1365-..@c1364
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1985:
	DD	..@c1987-..@c1986
..@c1986:
	DQ	..@c1366,..@c1367-..@c1366
	DB	4
	DD	..@c1368-..@c1366
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1369-..@c1368
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1370-..@c1369
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1987:
	DD	..@c1989-..@c1988
..@c1988:
	DQ	..@c1371,..@c1372-..@c1371
	DB	4
	DD	..@c1373-..@c1371
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1374-..@c1373
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1375-..@c1374
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1989:
	DD	..@c1991-..@c1990
..@c1990:
	DQ	..@c1376,..@c1377-..@c1376
	DB	4
	DD	..@c1378-..@c1376
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1379-..@c1378
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1380-..@c1379
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1991:
	DD	..@c1993-..@c1992
..@c1992:
	DQ	..@c1381,..@c1382-..@c1381
	DB	4
	DD	..@c1383-..@c1381
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1384-..@c1383
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1385-..@c1384
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1993:
	DD	..@c1995-..@c1994
..@c1994:
	DQ	..@c1386,..@c1387-..@c1386
	DB	4
	DD	..@c1388-..@c1386
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1389-..@c1388
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1390-..@c1389
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1995:
	DD	..@c1997-..@c1996
..@c1996:
	DQ	..@c1391,..@c1392-..@c1391
	DB	4
	DD	..@c1393-..@c1391
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1394-..@c1393
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1395-..@c1394
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1997:
	DD	..@c1999-..@c1998
..@c1998:
	DQ	..@c1396,..@c1397-..@c1396
	DB	4
	DD	..@c1398-..@c1396
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1399-..@c1398
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1400-..@c1399
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1999:
	DD	..@c2001-..@c2000
..@c2000:
	DQ	..@c1401,..@c1402-..@c1401
	DB	4
	DD	..@c1403-..@c1401
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1404-..@c1403
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1405-..@c1404
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c2001:
	DD	..@c2003-..@c2002
..@c2002:
	DQ	..@c1406,..@c1407-..@c1406
	DB	4
	DD	..@c1408-..@c1406
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1409-..@c1408
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1410-..@c1409
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c2003:
	DD	..@c2005-..@c2004
..@c2004:
	DQ	..@c1411,..@c1412-..@c1411
	DB	4
	DD	..@c1413-..@c1411
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1414-..@c1413
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1415-..@c1414
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c2005:
	DD	..@c2007-..@c2006
..@c2006:
	DQ	..@c1416,..@c1417-..@c1416
	DB	4
	DD	..@c1418-..@c1416
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1419-..@c1418
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1420-..@c1419
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c2007:
	DD	..@c2009-..@c2008
..@c2008:
	DQ	..@c1421,..@c1422-..@c1421
	DB	4
	DD	..@c1423-..@c1421
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1424-..@c1423
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1425-..@c1424
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c2009:
	DD	..@c2011-..@c2010
..@c2010:
	DQ	..@c1426,..@c1427-..@c1426
	DB	4
	DD	..@c1428-..@c1426
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1429-..@c1428
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c1430-..@c1429
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c2011:
; End asmlist al_dwarf_frame

