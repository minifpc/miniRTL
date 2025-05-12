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
EXTERN	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
EXTERN	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
EXTERN	_$dll$user32$MessageBoxA
EXTERN	INITFINAL
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	_$dll$rtllib$GetBsr8bit
; Begin asmlist al_pure_assembler

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT:
..@c695:
; [misc.inc]
; [63] asm
%LINE 63+0 misc.inc
		push	rbp
..@c697:
..@c698:
		mov	rbp,rsp
..@c699:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [64] mov    eax, val
%LINE 64+0
		mov	eax,edx
; [66] xchg dword ptr [target], eax
%LINE 66+0
		xchg	dword [rcx],eax
CPU x64

; [67] end;
%LINE 67+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c696:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64
SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64:
..@c700:
; [70] asm
%LINE 70+0
		push	rbp
..@c702:
..@c703:
		mov	rbp,rsp
..@c704:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [71] mov    rax, val
%LINE 71+0
		mov	rax,rdx
; [73] xchg qword ptr [target], rax
%LINE 73+0
		xchg	qword [rcx],rax
CPU x64

; [74] end;
%LINE 74+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c701:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT:
..@c705:
; [77] asm
%LINE 77+0
		push	rbp
..@c707:
..@c708:
		mov	rbp,rsp
..@c709:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [78] mov eax, 1
%LINE 78+0
		mov	eax,1
; [79] lock xadd dword ptr [target], eax
%LINE 79+0
		lock		xadd	dword [rcx],eax
; [80] inc eax
%LINE 80+0
		inc	eax
CPU x64

; [81] end;
%LINE 81+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c706:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64:
..@c710:
; [84] asm
%LINE 84+0
		push	rbp
..@c712:
..@c713:
		mov	rbp,rsp
..@c714:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [85] mov rax, 1
%LINE 85+0
		mov	rax,1
; [86] lock xadd qword ptr [target], rax
%LINE 86+0
		lock		xadd	qword [rcx],rax
; [87] inc rax
%LINE 87+0
		inc	rax
CPU x64

; [88] end;
%LINE 88+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c711:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT:
..@c715:
; [91] asm
%LINE 91+0
		push	rbp
..@c717:
..@c718:
		mov	rbp,rsp
..@c719:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [92] mov eax, -1
%LINE 92+0
		mov	eax,-1
; [93] lock xadd dword ptr [target], eax
%LINE 93+0
		lock		xadd	dword [rcx],eax
; [94] dec eax
%LINE 94+0
		dec	eax
CPU x64

; [95] end;
%LINE 95+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c716:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64:
..@c720:
; [98] asm
%LINE 98+0
		push	rbp
..@c722:
..@c723:
		mov	rbp,rsp
..@c724:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [99] mov rax, -1
%LINE 99+0
		mov	rax,-1
; [100] lock xadd qword ptr [target], rax
%LINE 100+0
		lock		xadd	qword [rcx],rax
; [101] dec rax
%LINE 101+0
		dec	rax
CPU x64

; [102] end;
%LINE 102+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c721:

SECTION .text
	GLOBAL SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER
SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER:
..@c836:
; [system.pas]
; [358] asm
%LINE 358+0 system.pas
CPU x64

; [359] movl   4(%esp),%eax
%LINE 359+0
		mov	eax,dword [esp+4]
; [360] movl   %eax,%fs:(0)
%LINE 360+0
		mov	dword [fs:0],eax
; [361] movl   %ebp,%eax
%LINE 361+0
		mov	eax,ebp
; [362] call   16(%esp)
%LINE 362+0
		call	[esp+16]
CPU x64

; [363] end;
%LINE 363+0
		ret
..@c837:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT
SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT:
..@c881:
; [616] asm
%LINE 616+0
CPU x64

; [617] movq     %rbx,jmp_buf.rbx(%rcx)
%LINE 617+0
		mov	qword [rcx],rbx
; [618] movq     %rbp,jmp_buf.rbp(%rcx)
%LINE 618+0
		mov	qword [rcx+8],rbp
; [619] movq     %r12,jmp_buf.r12(%rcx)
%LINE 619+0
		mov	qword [rcx+16],r12
; [620] movq     %r13,jmp_buf.r13(%rcx)
%LINE 620+0
		mov	qword [rcx+24],r13
; [621] movq     %r14,jmp_buf.r14(%rcx)
%LINE 621+0
		mov	qword [rcx+32],r14
; [622] movq     %r15,jmp_buf.r15(%rcx)
%LINE 622+0
		mov	qword [rcx+40],r15
; [623] movq     %rsi,jmp_buf.rsi(%rcx)
%LINE 623+0
		mov	qword [rcx+64],rsi
; [624] movq     %rdi,jmp_buf.rdi(%rcx)
%LINE 624+0
		mov	qword [rcx+72],rdi
; [625] leaq     8(%rsp),%rax
%LINE 625+0
		lea	rax,[rsp+8]
; [626] movq     %rax,jmp_buf.rsp(%rcx)
%LINE 626+0
		mov	qword [rcx+48],rax
; [627] movq     (%rsp),%rax
%LINE 627+0
		mov	rax,qword [rsp]
; [628] movq     %rax,jmp_buf.rip(%rcx)
%LINE 628+0
		mov	qword [rcx+56],rax
; [629] movdqu   %xmm6,jmp_buf.xmm6(%rcx)
%LINE 629+0
		movdqu	[rcx+80],xmm6
; [630] movdqu   %xmm7,jmp_buf.xmm7(%rcx)
%LINE 630+0
		movdqu	[rcx+96],xmm7
; [631] movdqu   %xmm8,jmp_buf.xmm8(%rcx)
%LINE 631+0
		movdqu	[rcx+112],xmm8
; [632] movdqu   %xmm9,jmp_buf.xmm9(%rcx)
%LINE 632+0
		movdqu	[rcx+128],xmm9
; [633] movdqu   %xmm10,jmp_buf.xmm10(%rcx)
%LINE 633+0
		movdqu	[rcx+144],xmm10
; [634] movdqu   %xmm11,jmp_buf.xmm11(%rcx)
%LINE 634+0
		movdqu	[rcx+160],xmm11
; [635] movdqu   %xmm12,jmp_buf.xmm12(%rcx)
%LINE 635+0
		movdqu	[rcx+176],xmm12
; [636] movdqu   %xmm13,jmp_buf.xmm13(%rcx)
%LINE 636+0
		movdqu	[rcx+192],xmm13
; [637] movdqu   %xmm14,jmp_buf.xmm14(%rcx)
%LINE 637+0
		movdqu	[rcx+208],xmm14
; [638] movdqu   %xmm15,jmp_buf.xmm15(%rcx)
%LINE 638+0
		movdqu	[rcx+224],xmm15
; [639] stmxcsr  jmp_buf.mxcsr(%rcx)
%LINE 639+0
		stmxcsr	dword [rcx+240]
; [640] fnstcw   jmp_buf.fpucw(%rcx)
%LINE 640+0
		fnstcw	word [rcx+244]
; [641] xorl     %eax,%eax
%LINE 641+0
		xor	eax,eax
CPU x64

; [642] end;
%LINE 642+0
		ret
..@c882:

SECTION .text
	GLOBAL fpc_setjmp
fpc_setjmp:
	GLOBAL FPC_SETJMP
FPC_SETJMP:
..@c883:
; [645] asm
%LINE 645+0
CPU x64

; [646] sub rsp, 32          // Shadow space f..r call
%LINE 646+0
		sub	rsp,32
; [647] call fpcsetjmp       // bar erwartet s in rcx
%LINE 647+0
		call	SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT
; [648] add rsp, 32          // Stack wieder freigeben
%LINE 648+0
		add	rsp,32
CPU x64

; [650] end;
%LINE 650+0
		ret
..@c884:

SECTION .text
	GLOBAL SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT
SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT:
..@c885:
; [668] asm
%LINE 668+0
CPU x64

; [685] cmpl     $1,%edx
%LINE 685+0
		cmp	edx,1
; [686] adcl     $0,%edx
%LINE 686+0
		adc	edx,0
; [687] movl     %edx,%eax
%LINE 687+0
		mov	eax,edx
; [688] movq     jmp_buf.rbx(%rcx),%rbx
%LINE 688+0
		mov	rbx,qword [rcx]
; [689] movq     jmp_buf.rbp(%rcx),%rbp
%LINE 689+0
		mov	rbp,qword [rcx+8]
; [690] movq     jmp_buf.r12(%rcx),%r12
%LINE 690+0
		mov	r12,qword [rcx+16]
; [691] movq     jmp_buf.r13(%rcx),%r13
%LINE 691+0
		mov	r13,qword [rcx+24]
; [692] movq     jmp_buf.r14(%rcx),%r14
%LINE 692+0
		mov	r14,qword [rcx+32]
; [693] movq     jmp_buf.r15(%rcx),%r15
%LINE 693+0
		mov	r15,qword [rcx+40]
; [694] movq     jmp_buf.rsi(%rcx),%rsi
%LINE 694+0
		mov	rsi,qword [rcx+64]
; [695] movq     jmp_buf.rdi(%rcx),%rdi
%LINE 695+0
		mov	rdi,qword [rcx+72]
; [696] movq     jmp_buf.rsp(%rcx),%rsp
%LINE 696+0
		mov	rsp,qword [rcx+48]
; [697] movdqu   jmp_buf.xmm6(%rcx),%xmm6
%LINE 697+0
		movdqu	xmm6,[rcx+80]
; [698] movdqu   jmp_buf.xmm7(%rcx),%xmm7
%LINE 698+0
		movdqu	xmm7,[rcx+96]
; [699] movdqu   jmp_buf.xmm8(%rcx),%xmm8
%LINE 699+0
		movdqu	xmm8,[rcx+112]
; [700] movdqu   jmp_buf.xmm9(%rcx),%xmm9
%LINE 700+0
		movdqu	xmm9,[rcx+128]
; [701] movdqu   jmp_buf.xmm10(%rcx),%xmm10
%LINE 701+0
		movdqu	xmm10,[rcx+144]
; [702] movdqu   jmp_buf.xmm11(%rcx),%xmm11
%LINE 702+0
		movdqu	xmm11,[rcx+160]
; [703] movdqu   jmp_buf.xmm12(%rcx),%xmm12
%LINE 703+0
		movdqu	xmm12,[rcx+176]
; [704] movdqu   jmp_buf.xmm13(%rcx),%xmm13
%LINE 704+0
		movdqu	xmm13,[rcx+192]
; [705] movdqu   jmp_buf.xmm14(%rcx),%xmm14
%LINE 705+0
		movdqu	xmm14,[rcx+208]
; [706] movdqu   jmp_buf.xmm15(%rcx),%xmm15
%LINE 706+0
		movdqu	xmm15,[rcx+224]
; [707] ldmxcsr  jmp_buf.mxcsr(%rcx)
%LINE 707+0
		ldmxcsr	dword [rcx+240]
; [708] fnclex
%LINE 708+0
		fnclex
; [709] fldcw    jmp_buf.fpucw(%rcx)
%LINE 709+0
		fldcw	word [rcx+244]
; [710] jmpq     jmp_buf.rip(%rcx)
%LINE 710+0
		jmp	[rcx+56]
CPU x64

; [712] end;
%LINE 712+0
		ret
..@c886:

SECTION .text
	GLOBAL fpc_longjmp
fpc_longjmp:
	GLOBAL FPC_LONGJMP
FPC_LONGJMP:
..@c887:
; [714] asm
%LINE 714+0
CPU x64

; [715] sub rsp, 64          // Shadow space f..r call
%LINE 715+0
		sub	rsp,64
; [716] call fpclongjmp      // bar erwartet s in rcx
%LINE 716+0
		call	SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT
; [717] add rsp, 64          // Stack wieder freigeben
%LINE 717+0
		add	rsp,64
CPU x64

; [718] end;
%LINE 718+0
		ret
..@c888:

SECTION .text
SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT:
..@c931:
; [920] asm
%LINE 920+0
		push	rbp
..@c933:
..@c934:
		mov	rbp,rsp
..@c935:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [922] mov rax, -1
%LINE 922+0
		mov	rax,-1
; [923] lock xadd [Addend], rax
%LINE 923+0
		lock		xadd	qword [rcx],rax
; [924] dec rax
%LINE 924+0
		dec	rax
CPU x64

; [930] end;
%LINE 930+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c932:

SECTION .text
SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT:
..@c936:
; [934] asm
%LINE 934+0
		push	rbp
..@c938:
..@c939:
		mov	rbp,rsp
..@c940:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [936] mov rax, 1
%LINE 936+0
		mov	rax,1
; [937] lock xadd [Addend], rax
%LINE 937+0
		lock		xadd	qword [rcx],rax
; [938] inc rax
%LINE 938+0
		inc	rax
CPU x64

; [944] end;
%LINE 944+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c937:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
	GLOBAL SYSTEM_$$_WAIT_FOR_ENTER
SYSTEM_$$_WAIT_FOR_ENTER:
..@c1:
; [233] begin
%LINE 233+0 system.pas
		push	rbx
		lea	rsp,[rsp-48]
..@c3:
; Var c located at rsp+40, size=OS_8
; Var d located at rsp+44, size=OS_32
; [234] writeln('press <enter>...');
%LINE 234+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld1]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j5:
; [237] ReadConsoleA(StdIn, @c, 1, @d, nil);
%LINE 237+0
		mov	qword [rsp+32],0
		lea	r9,[rsp+44]
		lea	rdx,[rsp+40]
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	r8d,1
		call	_$dll$kernel32$ReadConsoleA
; [238] if c = #13 then break;
%LINE 238+0
		cmp	byte [rsp+40],13
		jne	..@j5
		jmp	..@j7
; [236] while true do begin
%LINE 236+0
		jmp	..@j5
..@j7:
; [240] end;
%LINE 240+0
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c2:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID:
..@c4:
; Var $result located in register rax
; Var $self located in register rcx
; [objects.inc]
; [225] begin
%LINE 225+0 objects.inc
; [229] if Assigned(IIDRef) then GetIID := IIDRef^
%LINE 229+0
		cmp	qword [rcx],0
		je	..@j13
		mov	rax,qword [rcx]
		mov	rax,qword [rax]
		ret
..@j13:
; [231] GetIID := nil;
%LINE 231+0
		xor	eax,eax
; [233] end;
%LINE 233+0
		ret
..@c5:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING:
..@c6:
; Var $result located in register rax
; Var $self located in register rcx
; [236] begin
%LINE 236+0
; [240] if Assigned(IIDStrRef) then GetIIDStr := IIDStrRef^
%LINE 240+0
		cmp	qword [rcx+24],0
		je	..@j18
		mov	rax,qword [rcx+24]
		mov	rax,qword [rax]
		ret
..@j18:
; [242] GetIIDStr := nil;
%LINE 242+0
		xor	eax,eax
; [244] end;
%LINE 244+0
		ret
..@c7:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c8:
; Var $result located in register rax
; Var $self located in register rcx
; [251] begin
%LINE 251+0
; [252] if vParentRef <> nil then result := vParentRef^ else result := nil;
%LINE 252+0
		cmp	qword [rcx+16],0
		je	..@j23
		mov	rax,qword [rcx+16]
		mov	rax,qword [rax]
		ret
..@j23:
		xor	eax,eax
; [253] end;
%LINE 253+0
		ret
..@c9:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c10:
; [260] begin
%LINE 260+0
		push	rbp
..@c12:
..@c13:
		mov	rbp,rsp
..@c14:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j28
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j28:
		cmp	qword [rbp-16],0
		je	..@j25
..@j36:
		nop
..@j35:
		mov	qword [rbp-24],-1
; [261] end;
%LINE 261+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j33
		cmp	qword [rbp-8],0
		je	..@j33
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 260+0
		jmp	..@j33
..@j32:
%LINE 261+0
		cmp	qword [rbp-8],0
		je	..@j42
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
..@c11:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c15:
; [264] begin
%LINE 264+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c17:
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var $vmt located in register rsi
		test	rsi,rsi
		jng	..@j47
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j47:
; [266] end;
%LINE 266+0
		test	rbx,rbx
		je	..@j49
		test	rsi,rsi
		je	..@j49
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j49:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c16:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c18:
; [271] begin
%LINE 271+0
		push	rbx
		lea	rsp,[rsp-48]
..@c20:
; Var $result located in register rax
; Var p located at rsp+32, size=OS_64
		mov	rbx,rcx
; Var $self located in register rbx
; Var $self located in register rbx
; [272] GetMem(p, InstanceSize);
%LINE 272+0
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [274] if p <> nil then InitInstance(p);
%LINE 274+0
		cmp	qword [rsp+32],0
		je	..@j54
		mov	rdx,qword [rsp+32]
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
..@j54:
; Var $result located in register rax
; [275] result := TObject(p);
%LINE 275+0
		mov	rax,qword [rsp+32]
; [276] end;
%LINE 276+0
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c19:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c21:
; [279] begin
%LINE 279+0
		lea	rsp,[rsp-40]
..@c23:
; Var $self located in register rax
; Var $self located in register rcx
; [280] FreeMem(Pointer(Self));
%LINE 280+0
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [281] end;
%LINE 281+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c22:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT:
..@c24:
; Var $result located in register eax
; Var $self located in register rcx
; Var exceptobject located in register rdx
; Var exceptaddr located in register r8
; [284] begin
%LINE 284+0
; Var $result located in register eax
; [285] result := 1;
%LINE 285+0
		mov	eax,1
; [286] end;
%LINE 286+0
		ret
..@c25:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c26:
; [289] begin
%LINE 289+0
		lea	rsp,[rsp-40]
..@c28:
		mov	rax,rcx
; Var $self located in register rax
; [291] if self <> nil then self.Destroy;
%LINE 291+0
		test	rcx,rcx
		je	..@j62
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j62:
; [292] end;
%LINE 292+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c27:

SECTION .text
	GLOBAL SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER:
..@c29:
; Var ovmt located in register rax
; Var i located in register r10d
; Var intftable located in register r11
; Var Res located in register rax
; Var objclass located in register rcx
; Var instance located in register rdx
; [301] begin
%LINE 301+0
; Var ovmt located in register rcx
; Var objclass located in register rcx
; [303] while assigned(ovmt) and {$ifdef VER3_0}(ovmt^.vIntfTable <> @emptyintf){$else}assigned(ovmt^.vIntfTable){$endif} do
%LINE 303+0
		jmp	..@j66
..@j65:
; [305] intftable:=ovmt^.vIntfTable;
%LINE 305+0
		mov	r11,qword [rcx+80]
; [310] i:=intftable^.EntryCount;
%LINE 310+0
		mov	r10d,dword [r11]
; [311] Res:=@intftable^.Entries[0];
%LINE 311+0
		lea	rax,[r11+8]
; [312] while i>0 do begin
%LINE 312+0
		jmp	..@j69
..@j68:
; [313] if Res^.IType = etStandard then
%LINE 313+0
		cmp	dword [rax+32],0
		jne	..@j72
%LINE 301+0
		mov	r8,rax
; [314] ppointer(@(pbyte(instance)[Res^.IOffset]))^:=
%LINE 314+0
		mov	r9,qword [r8+16]
		add	r9,rdx
		mov	r8,qword [r8+8]
		mov	qword [r9],r8
..@j72:
; [316] inc(Res);
%LINE 316+0
		add	rax,40
; [317] dec(i);
%LINE 317+0
		dec	r10d
..@j69:
%LINE 312+0
		test	r10d,r10d
		jg	..@j68
; [320] ovmt:=ovmt^.vParent;
%LINE 320+0
		cmp	qword [rcx+16],0
		je	..@j74
		mov	r8,qword [rcx+16]
		mov	r8,qword [r8]
		jmp	..@j75
..@j74:
		xor	r8,r8
..@j75:
		mov	rcx,r8
..@j66:
%LINE 303+0
		test	rcx,rcx
		je	..@j67
		cmp	qword [rcx+80],0
		jne	..@j65
..@j67:
; [322] end;
%LINE 322+0
		ret
..@c30:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT:
..@c31:
; [331] begin
%LINE 331+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c33:
; Var $result located in register rax
; Var vmt located in register rax
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var Instance located in register rsi
; Var $self located in register rbx
; [332] FillChar(Instance^, InstanceSize, 0);
%LINE 332+0
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
; Var Instance located in register rsi
		mov	rcx,rsi
		xor	r8d,r8d
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; Var Instance located in register rsi
; [333] PPointer(Instance)^ := Pointer(self);
%LINE 333+0
		mov	rcx,rbx
; Var $self located in register rcx
		mov	qword [rsi],rcx
; [335] if PVmt(self)^.vIntfTable <> nil then
%LINE 335+0
		cmp	qword [rcx+80],0
		je	..@j82
; [336] InitInterfacePointers(self, Instance);
%LINE 336+0
		mov	rdx,rsi
		call	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
..@j82:
; Var $result located in register rax
; [345] result := TObject(Instance);
%LINE 345+0
		mov	rax,rsi
; Var Instance located in register rax
; [346] end;
%LINE 346+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c32:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS:
..@c34:
; Var $result located in register rax
; [349] begin
%LINE 349+0
		mov	rax,rcx
; Var $self located in register rax
; Var $result located in register rax
; Var $self located in register rax
; [351] end;
%LINE 351+0
		ret
..@c35:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER:
..@c36:
; Var $result located in register rax
; Var $self located in register rcx
; [354] begin
%LINE 354+0
; Var $self located in register rcx
; Var $result located in register rax
; [355] result := PVmt(Self)^.vTypeInfo;
%LINE 355+0
		mov	rax,qword [rcx+56]
; [356] end;
%LINE 356+0
		ret
..@c37:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING:
..@c38:
; [359] begin
%LINE 359+0
		lea	rsp,[rsp-40]
..@c40:
		mov	rax,rcx
; Var $self located in register rax
		mov	rcx,rdx
; Var $result located in register rcx
; Var $self located in register rax
; [360] result := PVmt(Self)^.vClassName^;
%LINE 360+0
		mov	rdx,qword [rax+24]
		call	fpc_shortstr_to_shortstr
; [361] end;
%LINE 361+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c39:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS:
..@c41:
; Var $result located in register rax
; Var $self located in register rcx
; [364] begin
%LINE 364+0
; [365] result := TClass(PVmt(Self)^.vParent);
%LINE 365+0
		cmp	qword [rcx+16],0
		je	..@j92
		mov	rax,qword [rcx+16]
		mov	rax,qword [rax]
		ret
..@j92:
		xor	eax,eax
; Var $result located in register rax
; [366] end;
%LINE 366+0
		ret
..@c42:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64:
..@c43:
; Var $result located in register rax
; Var $self located in register rcx
; [369] begin
%LINE 369+0
; Var $self located in register rcx
; Var $result located in register rax
; [370] result := PVmt(Self)^.vInstanceSize;
%LINE 370+0
		mov	rax,qword [rcx]
; [371] end;
%LINE 371+0
		ret
..@c44:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN:
..@c45:
; Var $result located in register al
; Var vmt located in register rax
; Var $self located in register rcx
; Var aclass located in register rdx
; [376] begin
%LINE 376+0
; [377] if aclass = nil then exit(false);
%LINE 377+0
		test	rdx,rdx
		jne	..@j101
		xor	al,al
		ret
; Var vmt located in register rcx
; Var $self located in register rcx
; [379] while (vmt <> nil) and (vmt <> PVmt(aclass)) do vmt := vmt^.vParent;
%LINE 379+0
		jmp	..@j101
..@j100:
		cmp	qword [rcx+16],0
		je	..@j104
		mov	r8,qword [rcx+16]
		mov	r8,qword [r8]
		jmp	..@j105
..@j104:
		xor	r8,r8
..@j105:
		mov	rcx,r8
..@j101:
		test	rcx,rcx
		je	..@j102
		cmp	rdx,rcx
		jne	..@j100
..@j102:
; [380] result := vmt = PVmt(aclass);
%LINE 380+0
		cmp	rdx,rcx
		sete	al
; [381] end;
%LINE 381+0
		ret
..@c46:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c47:
; [384] begin
%LINE 384+0
		mov	rax,rcx
; Var $self located in register rax
; [385] end;
%LINE 385+0
		ret
..@c48:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c49:
; [388] begin
%LINE 388+0
		mov	rax,rcx
; Var $self located in register rax
; [389] end;
%LINE 389+0
		ret
..@c50:

SECTION .text
	GLOBAL SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
..@c51:
; Var $result located in register al
; Var guid1 located in register rcx
; Var guid2 located in register rdx
; [394] begin
%LINE 394+0
; [396] (guid1.D1=guid2.D1) and
%LINE 396+0
		mov	eax,dword [rcx]
		cmp	eax,dword [rdx]
		jne	..@j116
; [397] (PDWORD(@guid1.D2)^=PDWORD(@guid2.D2)^) and
%LINE 397+0
		lea	rax,[rcx+4]
		lea	r8,[rdx+4]
		mov	eax,dword [rax]
		cmp	eax,dword [r8]
		jne	..@j116
%LINE 394+0
		lea	rax,[rcx+8]
; [398] (PDWORD(@guid1.D4[0])^=PDWORD(@guid2.D4[0])^) and
%LINE 398+0
		mov	rcx,rax
%LINE 394+0
		add	rdx,8
%LINE 398+0
		mov	r8,rdx
		mov	ecx,dword [rcx]
		cmp	ecx,dword [r8]
		jne	..@j116
; [399] (PDWORD(@guid1.D4[4])^=PDWORD(@guid2.D4[4])^);
%LINE 399+0
		add	rax,4
		add	rdx,4
		mov	eax,dword [rax]
		cmp	eax,dword [rdx]
		jne	..@j116
; Var $result located in register al
; [395] result:=
%LINE 395+0
		mov	al,1
		ret
..@j116:
		xor	al,al
; [401] end;
%LINE 401+0
		ret
..@c52:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
..@c53:
; [412] begin
%LINE 412+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c55:
; Var $result located in register al
; Var Getter located at rsp+32, size=OS_128
		mov	rbx,rcx
; Var Instance located in register rbx
		mov	rsi,rdx
; Var IEntry located in register rsi
		mov	rdi,r8
; Var obj located in register rdi
; [413] Pointer(Obj) := nil;
%LINE 413+0
		mov	qword [rdi],0
; Var Instance located in register rbx
; [414] Getter.Data := Instance;
%LINE 414+0
		mov	qword [rsp+40],rbx
; [415] if Assigned(IEntry) and Assigned(Instance) then case IEntry^.IType of
%LINE 415+0
		test	rsi,rsi
		je	..@j124
		test	rbx,rbx
		je	..@j124
		mov	eax,dword [rsi+32]
		lea	rdx,[..@d2]
		movsxd	rax,dword [rdx+rax*4]
		add	rax,rdx
		jmp	rax
..@j128:
; [417] Pointer(Obj) := pbyte(instance) + IEntry^.IOffset;
%LINE 417+0
		mov	rax,qword [rsi+16]
		add	rax,rbx
		mov	qword [rdi],rax
		jmp	..@j126
..@j129:
; [419] Pointer(obj) := PPointer(pbyte(Instance) + IEntry^.IOffset)^;
%LINE 419+0
		mov	rax,qword [rsi+16]
		add	rax,rbx
		mov	rax,qword [rax]
		mov	qword [rdi],rax
		jmp	..@j126
..@j130:
; [422] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
%LINE 422+0
		mov	rax,qword [rsi+16]
		mov	rdx,qword [rbx]
		add	rax,rdx
		mov	rax,qword [rax]
		mov	qword [rsp+32],rax
; [423] TInterfaceGetter(Getter)(obj);
%LINE 423+0
		mov	rdx,rdi
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		jmp	..@j126
..@j131:
; [427] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
%LINE 427+0
		mov	rdx,qword [rsi+16]
		mov	rax,qword [rbx]
		add	rax,rdx
		mov	rax,qword [rax]
		mov	qword [rsp+32],rax
; [428] TObject(obj) := TClassGetter(Getter)();
%LINE 428+0
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		mov	qword [rdi],rax
		jmp	..@j126
..@j132:
; [432] Getter.code := IEntry^.IOffsetAsCodePtr;
%LINE 432+0
		mov	rax,qword [rsi+16]
		mov	qword [rsp+32],rax
; [433] TInterfaceGetter(Getter)(obj);
%LINE 433+0
		mov	rdx,rdi
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		jmp	..@j126
..@j133:
; [437] Getter.code := IEntry^.IOffsetAsCodePtr;
%LINE 437+0
		mov	rax,qword [rsi+16]
		mov	qword [rsp+32],rax
; [438] TObject(obj) := TClassGetter(Getter)();
%LINE 438+0
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		mov	qword [rdi],rax
..@j126:
..@j124:
; [441] result := assigned(pointer(obj));
%LINE 441+0
		cmp	qword [rdi],0
; Var $result located in register al
		setne	al
; [442] end;
%LINE 442+0
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c54:

SECTION .data
	ALIGN 4,DB 0
..@d2:
	DD	..@j128-..@d2,..@j130-..@d2,..@j132-..@d2,..@j129-..@d2,..@j131-..@d2
	DD	..@j133-..@d2,..@j129-..@d2

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN:
..@c56:
; [453] begin
%LINE 453+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c58:
; Var $result located in register r12b
; Var IEntry located in register r13
; Var Instance located in register rax
		mov	rbx,rcx
; Var objclass located in register rbx
		mov	rsi,rdx
; Var iid located in register rsi
		mov	rdi,r8
; Var obj located in register rdi
; [454] if IsGUIDEqual(IObjectInstance, iid) then begin
%LINE 454+0
		mov	rdx,rsi
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		je	..@j137
; [455] TObject(Obj) := objclass;
%LINE 455+0
		mov	qword [rdi],rbx
; [456] Result := true;
%LINE 456+0
		mov	r12b,1
; [457] Exit;
%LINE 457+0
		jmp	..@j134
..@j137:
; Var Instance located in register rbx
; Var objclass located in register rbx
..@j138:
; [462] IEntry := Instance.GetInterfaceEntry(iid);
%LINE 462+0
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	r13,rax
; [463] result := GetInterfaceByEntry(Instance, IEntry, obj);
%LINE 463+0
		mov	r8,rdi
		mov	rdx,r13
		mov	rcx,rbx
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	r12b,al
; [465] if (not result) or
%LINE 465+0
		test	al,al
		je	..@j140
; [466] (IEntry^.IType in [etStandard, etFieldValue,
%LINE 466+0
		mov	eax,dword [r13+32]
		cmp	eax,4
		jc	..@j140
; [470] Instance := TObject(obj);
%LINE 470+0
		mov	rbx,qword [rdi]
; [471] until false;
%LINE 471+0
		jmp	..@j138
..@j140:
; [474] if result and (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._AddRef;
%LINE 474+0
		test	r12b,r12b
		je	..@j146
		mov	eax,dword [r13+32]
		test	eax,eax
		je	..@j147
		cmp	eax,3
		je	..@j147
		jne	..@j146
..@j147:
		mov	rcx,qword [rdi]
		mov	rax,qword [rdi]
		mov	rax,qword [rax]
		call	[rax+8]
..@j146:
..@j134:
; [475] end;
%LINE 475+0
		mov	al,r12b
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c57:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN:
..@c59:
; [477] begin
%LINE 477+0
		lea	rsp,[rsp-40]
..@c61:
; Var $result located in register al
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; Var $self located in register rcx
; [478] Exit(GetInterface_(self, iid, obj));
%LINE 478+0
		call	SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
; Var $result located in register al
; [479] end;
%LINE 479+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c60:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN:
..@c62:
; [494] begin
%LINE 494+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c64:
; Var $result located in register r12b
; Var IEntry located in register r13
; Var Instance located in register rax
		mov	rbx,rcx
; Var objclass located in register rbx
		mov	rsi,rdx
; Var iid located in register rsi
		mov	rdi,r8
; Var obj located in register rdi
; [495] if IsGUIDEqual(IObjectInstance, iid) then begin
%LINE 495+0
		mov	rdx,rsi
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		je	..@j154
; [496] TObject(Obj) := objclass;
%LINE 496+0
		mov	qword [rdi],rbx
; [497] Result := true;
%LINE 497+0
		mov	r12b,1
; [498] Exit;
%LINE 498+0
		jmp	..@j151
..@j154:
; Var Instance located in register rbx
; Var objclass located in register rbx
..@j155:
; [503] IEntry := Instance.GetInterfaceEntry(iid);
%LINE 503+0
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	r13,rax
; [504] result := GetInterfaceByEntry(Instance, IEntry, obj);
%LINE 504+0
		mov	r8,rdi
		mov	rdx,r13
		mov	rcx,rbx
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	r12b,al
; [506] if (not result) or
%LINE 506+0
		test	al,al
		je	..@j157
; [507] (IEntry^.IType in [etStandard, etFieldValue,
%LINE 507+0
		mov	eax,dword [r13+32]
		cmp	eax,4
		jc	..@j157
; [511] Instance := TObject(obj);
%LINE 511+0
		mov	rbx,qword [rdi]
; [512] until false;
%LINE 512+0
		jmp	..@j155
..@j157:
; [515] if result and not (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._Release;
%LINE 515+0
		test	r12b,r12b
		je	..@j163
		mov	eax,dword [r13+32]
		test	eax,eax
		je	..@j163
		cmp	eax,3
		je	..@j163
		je	..@j163
		mov	rcx,qword [rdi]
		mov	rax,qword [rdi]
		mov	rax,qword [rax]
		call	[rax+16]
..@j163:
..@j151:
; [516] end;
%LINE 516+0
		mov	al,r12b
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c63:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN:
..@c65:
; [518] begin
%LINE 518+0
		lea	rsp,[rsp-40]
..@c67:
; Var $result located in register al
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; Var $self located in register rcx
; [519] Exit(GetInterfaceWeak_(self, iid, obj));
%LINE 519+0
		call	SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
; Var $result located in register al
; [520] end;
%LINE 520+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c66:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY:
..@c68:
; [536] begin
%LINE 536+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c70:
; Var $result located in register r12
; Var i located in register edi
; Var intftable located in register r14
; Var ovmt located in register rax
		mov	rbx,rcx
; Var objclass located in register rbx
		mov	rsi,rdx
; Var iid located in register rsi
; Var ovmt located in register rbx
; Var objclass located in register rbx
; [538] while Assigned(ovmt) and Assigned(ovmt^.vIntftable) do begin
%LINE 538+0
		jmp	..@j171
..@j170:
; [539] intftable := ovmt^.vIntfTable;
%LINE 539+0
		mov	r14,qword [rbx+80]
; [540] for i := 0 to intftable^.EntryCount-1 do begin
%LINE 540+0
		mov	rax,qword [r14]
		lea	r13,[rax-1]
		test	r13d,r13d
		jnge	..@j174
		mov	edi,-1
..@j175:
		inc	edi
; [541] result := @intftable^.Entries[i];
%LINE 541+0
		mov	eax,edi
		imul	rax,rax,40
		lea	r12,[r14+rax+8]
; [542] if assigned(Result^.iid) and IsGUIDEqual(Result^.iid^, iid) then Exit;
%LINE 542+0
		cmp	qword [r12],0
		je	..@j179
		mov	rax,qword [r12]
		mov	rax,qword [rax]
		jmp	..@j180
..@j179:
		xor	eax,eax
..@j180:
		test	rax,rax
		je	..@j182
		cmp	qword [r12],0
		je	..@j185
		mov	rax,qword [r12]
		mov	rcx,qword [rax]
		jmp	..@j186
..@j185:
		xor	ecx,ecx
..@j186:
		mov	rdx,rsi
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j168
..@j182:
%LINE 540+0
		cmp	r13d,edi
		jnle	..@j175
..@j174:
; [544] ovmt := ovmt^.vParent;
%LINE 544+0
		cmp	qword [rbx+16],0
		je	..@j188
		mov	rax,qword [rbx+16]
		mov	rax,qword [rax]
		jmp	..@j189
..@j188:
		xor	eax,eax
..@j189:
		mov	rbx,rax
..@j171:
%LINE 538+0
		test	rbx,rbx
		je	..@j172
		cmp	qword [rbx+80],0
		jne	..@j170
..@j172:
; [546] result := nil;
%LINE 546+0
		xor	r12,r12
..@j168:
; [547] end;
%LINE 547+0
		mov	rax,r12
		nop
		lea	rsp,[rsp+40]
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c69:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY:
..@c71:
; [549] begin
%LINE 549+0
		lea	rsp,[rsp-40]
..@c73:
; Var $result located in register rax
; Var $self located in register rcx
; Var iid located in register rdx
; Var $self located in register rcx
; [550] Exit(GetInterfaceEntry_(self, iid));
%LINE 550+0
		call	SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
; Var $result located in register rax
; [551] end;
%LINE 551+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c72:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT:
..@c74:
; [567] begin
%LINE 567+0
		lea	rsp,[rsp-40]
..@c76:
; Var $result located in register eax
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; [568] if GetInterface(iid, obj) then result := S_OK else result := LongInt(E_NOINTERFACE);
%LINE 568+0
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		je	..@j198
		xor	eax,eax
		jmp	..@j199
..@j198:
		mov	eax,-2147467262
..@j199:
; [569] end;
%LINE 569+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c75:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
..@c77:
; Var $result located in register eax
; Var $self located in register rcx
; [572] begin
%LINE 572+0
; [574] inc(FRefCount);
%LINE 574+0
		inc	dword [rcx+8]
; Var $result located in register eax
; [575] result := FRefCount;
%LINE 575+0
		mov	eax,dword [rcx+8]
; [576] end;
%LINE 576+0
		ret
..@c78:

SECTION .text
SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000242:
..@c79:
; [596] end;
%LINE 596+0
		push	rbp
..@c81:
..@c82:
		mov	rbp,rcx
..@c83:
		lea	rsp,[rsp-32]
; [579] begin
%LINE 579+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c80:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
..@c84:
; Temps allocated between rbp-536 and rbp+0
		push	rbp
..@c86:
..@c87:
		mov	rbp,rsp
..@c88:
		lea	rsp,[rsp-576]
		mov	qword [rbp-536],rbx
		mov	qword [rbp-528],rsi
; Var $result located in register esi
		mov	rbx,rcx
; Var $self located in register rbx
		mov	qword [rbp-8],0
..@j210:
		nop
..@j206:
; [581] dec(FRefCount);
%LINE 581+0
		dec	dword [rbx+8]
; [582] result := FRefCount;
%LINE 582+0
		mov	esi,dword [rbx+8]
; [583] if result = 0 then begin
%LINE 583+0
		test	esi,esi
		jne	..@j212
; [585] inc(FDestroyCount);
%LINE 585+0
		inc	dword [rbx+12]
; [586] if FDestroyCount = 1 then begin
%LINE 586+0
		cmp	dword [rbx+12],1
		jne	..@j214
; [587] if copy(ClassName, 1, 9) = '$Capturer' then begin
%LINE 587+0
		mov	rcx,qword [rbx]
		lea	rdx,[rbp-520]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	rdx,[rbp-520]
		mov	r9d,9
		mov	r8d,1
		lea	rcx,[rbp-264]
		call	fpc_shortstr_copy
		lea	rdx,[rbp-264]
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_shortstr_to_ansistr
		mov	rcx,qword [rbp-8]
		lea	rdx,[..@d3]
		call	fpc_ansistr_compare_equal
		test	rax,rax
		je	..@j208
; [593] self.Destroy;
%LINE 593+0
		mov	rcx,rbx
		mov	edx,1
		mov	rax,qword [rbx]
		call	[rax+96]
..@j214:
..@j212:
..@j208:
%LINE 579+0
		nop
..@j207:
		mov	rcx,rbp
		call	SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000242
%LINE 596+0
		mov	eax,esi
		mov	rbx,qword [rbp-536]
		mov	rsi,qword [rbp-528]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c85:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY
SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY:
..@c89:
; [599] begin
%LINE 599+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c91:
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var $vmt located in register rsi
		test	rsi,rsi
		jng	..@j220
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j220:
; [600] FRefCount := 0;
%LINE 600+0
		mov	dword [rbx+8],0
; [601] FDestroyCount := 0;
%LINE 601+0
		mov	dword [rbx+12],0
; Var $self located in register rbx
; [602] inherited Destroy;
%LINE 602+0
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [603] end;
%LINE 603+0
		test	rbx,rbx
		je	..@j222
		test	rsi,rsi
		je	..@j222
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j222:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c90:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION:
..@c92:
; [606] begin
%LINE 606+0
		mov	rax,rcx
; Var $self located in register rax
; [609] dec(FRefCount);
%LINE 609+0
		dec	dword [rax+8]
; [610] end;
%LINE 610+0
		ret
..@c93:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION:
..@c94:
; [613] begin
%LINE 613+0
		lea	rsp,[rsp-40]
..@c96:
		mov	rax,rcx
; Var $self located in register rax
; [614] if FRefCount <> 0 then HandleError(204);
%LINE 614+0
		cmp	dword [rax+8],0
		je	..@j229
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j229:
; [615] end;
%LINE 615+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c95:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c97:
; [618] begin
%LINE 618+0
		lea	rsp,[rsp-40]
..@c99:
; Var $result located in register rax
; Var $self located in register rcx
; Var $self located in register rcx
; [619] result := inherited NewInstance;
%LINE 619+0
		call	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
; Var $result located in register rax
; [620] if result <> nil then TInterfacedObject(result).FRefCount := 1;
%LINE 620+0
		test	rax,rax
		je	..@j233
		mov	dword [rax+8],1
..@j233:
; [621] end;
%LINE 621+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c98:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c100:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [628] begin
%LINE 628+0
; [629] result := (aLeft.Data = aRight.Data) and (aLeft.Code = aRight.Code);
%LINE 629+0
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j237
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jne	..@j237
; Var $result located in register al
		mov	al,1
		ret
..@j237:
		xor	al,al
; [630] end;
%LINE 630+0
		ret
..@c101:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c102:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [633] begin
%LINE 633+0
; [634] result := (aLeft.Data <> aRight.Data) or (aLeft.Code <> aRight.Code);
%LINE 634+0
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j242
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		je	..@j244
; Var $result located in register al
..@j242:
		mov	al,1
		ret
..@j244:
		xor	al,al
; [635] end;
%LINE 635+0
		ret
..@c103:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN:
..@c104:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [638] begin
%LINE 638+0
		mov	r8,qword [rcx+8]
		mov	rax,qword [rdx+8]
; [639] result := (PtrUInt(aLeft.Data) > PtrUInt(aRight.Data)) or
%LINE 639+0
		cmp	rax,r8
		jb	..@j248
; [640] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) > PtrUInt(aRight.Code)));
%LINE 640+0
		cmp	rax,r8
		jne	..@j250
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jna	..@j250
; Var $result located in register al
..@j248:
%LINE 639+0
		mov	al,1
		ret
..@j250:
		xor	al,al
; [641] end;
%LINE 641+0
		ret
..@c105:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c106:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [644] begin
%LINE 644+0
		mov	rax,qword [rcx+8]
		mov	r8,qword [rdx+8]
; [645] result := (aLeft > aRight) or (aLeft = aRight);
%LINE 645+0
		cmp	r8,rax
		jb	..@j257
		cmp	r8,rax
		jne	..@j259
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jna	..@j259
..@j257:
		mov	al,1
		jmp	..@j263
..@j259:
		xor	al,al
..@j263:
		test	al,al
		jne	..@j264
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j268
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jne	..@j268
		mov	al,1
		jmp	..@j270
..@j268:
		xor	al,al
..@j270:
		test	al,al
		je	..@j266
; Var $result located in register al
..@j264:
		mov	al,1
		ret
..@j266:
		xor	al,al
; [646] end;
%LINE 646+0
		ret
..@c107:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN:
..@c108:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [649] begin
%LINE 649+0
		mov	r8,qword [rcx+8]
		mov	rax,qword [rdx+8]
; [650] Result := (PtrUInt(aLeft.Data) < PtrUInt(aRight.Data)) or
%LINE 650+0
		cmp	rax,r8
		ja	..@j274
; [651] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) < PtrUInt(aRight.Code)));
%LINE 651+0
		cmp	rax,r8
		jne	..@j276
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jnb	..@j276
; Var $result located in register al
..@j274:
%LINE 650+0
		mov	al,1
		ret
..@j276:
		xor	al,al
; [652] end;
%LINE 652+0
		ret
..@c109:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c110:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [655] begin
%LINE 655+0
		mov	rax,qword [rcx+8]
		mov	r8,qword [rdx+8]
; [656] result := (aLeft < aRight) or (aLeft = aRight);
%LINE 656+0
		cmp	r8,rax
		ja	..@j283
		cmp	r8,rax
		jne	..@j285
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jnb	..@j285
..@j283:
		mov	al,1
		jmp	..@j289
..@j285:
		xor	al,al
..@j289:
		test	al,al
		jne	..@j290
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j294
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jne	..@j294
		mov	al,1
		jmp	..@j296
..@j294:
		xor	al,al
..@j296:
		test	al,al
		je	..@j292
; Var $result located in register al
..@j290:
		mov	al,1
		ret
..@j292:
		xor	al,al
; [657] end;
%LINE 657+0
		ret
..@c111:

SECTION .text
	GLOBAL fpc_intf_assign
fpc_intf_assign:
	GLOBAL FPC_INTF_ASSIGN
FPC_INTF_ASSIGN:
..@c112:
; [664] begin
%LINE 664+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c114:
		mov	rbx,rcx
; Var d located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
; [665] if s <> nil then IUnknown(s)._AddRef;
%LINE 665+0
		test	rdx,rdx
		je	..@j301
		mov	rcx,rsi
		mov	rax,qword [rsi]
		call	[rax+8]
..@j301:
; [666] if d <> nil then IUnknown(d)._Release;
%LINE 666+0
		cmp	qword [rbx],0
		je	..@j303
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		mov	rax,qword [rax]
		call	[rax+16]
..@j303:
; Var s located in register rsi
; [667] d := s;
%LINE 667+0
		mov	qword [rbx],rsi
; [668] end;
%LINE 668+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c113:

SECTION .text
	GLOBAL SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN
SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN:
..@c115:
; [675] begin
%LINE 675+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c117:
; Var tmpi located at rsp+32, size=OS_64
; Var tmpi2 located at rsp+40, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
		mov	rdi,r8
; Var iid located in register rdi
; [676] if s = nil then exit(nil);
%LINE 676+0
		test	rsi,rsi
		jne	..@j307
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_intf_assign
		jmp	..@j304
..@j307:
; [677] tmpi := nil;
%LINE 677+0
		mov	qword [rsp+32],0
; [678] tmpi2 := nil;
%LINE 678+0
		mov	qword [rsp+40],0
; [679] if not ((TObject(s).GetInterfaceWeak(IUnknown, tmpi2) and (IUnknown(tmpi2).QueryInterface(iid, tmpi) = S_OK)) or TObject(s).GetInterface(iid, tmpi)) then
%LINE 679+0
		lea	rdx,[_$SYSTEM$_Ld4]
		lea	r8,[rsp+40]
		mov	rcx,rsi
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
		test	al,al
		je	..@j309
		mov	rdx,rdi
		lea	r8,[rsp+32]
		mov	rcx,qword [rsp+40]
		mov	rax,qword [rsp+40]
		mov	rax,qword [rax]
		call	[rax]
		test	eax,eax
		je	..@j310
..@j309:
		mov	rdx,rdi
		lea	r8,[rsp+32]
		mov	rcx,rsi
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j310
; [680] HandleError(219);
%LINE 680+0
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j310:
; [681] result := nil;
%LINE 681+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_intf_assign
; [682] pointer(result) := tmpi;
%LINE 682+0
		mov	rax,qword [rsp+32]
		mov	qword [rbx],rax
..@j304:
; [683] end;
%LINE 683+0
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c116:

SECTION .text
	GLOBAL fpc_class_as_intf
fpc_class_as_intf:
..@c118:
; [685] begin
%LINE 685+0
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
; Var iid located in register r8
; [686] end;
%LINE 686+0
		ret
..@c119:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER:
..@c120:
; [700] begin
%LINE 700+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c122:
; Var $result located in register rsi
; Var tmpo located at rsp+32, size=OS_64
		mov	rax,rcx
; Var s located in register rax
		mov	rbx,rdx
; Var aclass located in register rbx
; [701] if s = nil then exit(nil);
%LINE 701+0
		test	rax,rax
		jne	..@j317
		xor	esi,esi
		jmp	..@j314
..@j317:
; [702] if not ((IUnknown(s).QueryInterface(IObjectInstance, tmpo) = S_OK) and tmpo.InheritsFrom(aclass)) then
%LINE 702+0
		lea	r8,[rsp+32]
		lea	rdx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		mov	rcx,rax
		mov	rax,qword [rax]
		call	[rax]
		test	eax,eax
		jne	..@j319
		mov	rax,qword [rsp+32]
		mov	rcx,qword [rax]
		mov	rdx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j320
..@j319:
; [703] HandleError(219);
%LINE 703+0
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j320:
; [704] result := tmpo;
%LINE 704+0
		mov	rsi,qword [rsp+32]
..@j314:
; [705] end;
%LINE 705+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c121:

SECTION .text
	GLOBAL fpc_intf_as_class
fpc_intf_as_class:
	GLOBAL FPC_INTF_AS_CLASS
FPC_INTF_AS_CLASS:
..@c123:
; [707] begin
%LINE 707+0
		lea	rsp,[rsp-40]
..@c125:
; Var $result located in register rax
; Var s located in register rcx
; Var aclass located in register rdx
; Var aclass located in register rdx
; Var s located in register rcx
; [708] Exit(fpcintfasclass(s, aclass));
%LINE 708+0
		call	SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
; Var $result located in register rax
; [709] end;
%LINE 709+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c124:

SECTION .text
	GLOBAL fpc_intf_cast
fpc_intf_cast:
	GLOBAL FPC_INTF_CAST
FPC_INTF_CAST:
..@c126:
; [720] begin
%LINE 720+0
		lea	rsp,[rsp-40]
..@c128:
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
; Var iid located in register r8
; [721] msgdebug('@@todo: fpc_intf_cast');
%LINE 721+0
		lea	rcx,[..@d5]
		call	SYSTEM_$$_MSGDEBUG$ANSISTRING
; [722] end;
%LINE 722+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c127:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFDECRREF$POINTER
SYSTEM_$$_FPCINTFDECRREF$POINTER:
..@c129:
; [726] begin
%LINE 726+0
		push	rbx
		lea	rsp,[rsp-32]
..@c131:
		mov	rbx,rcx
; Var i located in register rbx
; [727] if i <> nil then begin
%LINE 727+0
		cmp	qword [rbx],0
		je	..@j328
; [728] IUnknown(i)._Release;
%LINE 728+0
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		mov	rax,qword [rax]
		call	[rax+16]
; [729] i := nil;
%LINE 729+0
		mov	qword [rbx],0
..@j328:
; [731] end;
%LINE 731+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c130:

SECTION .text
	GLOBAL fpc_intf_decr_ref
fpc_intf_decr_ref:
	GLOBAL FPC_INTF_DECR_REF
FPC_INTF_DECR_REF:
..@c132:
; [733] begin
%LINE 733+0
		lea	rsp,[rsp-40]
..@c134:
; Var i located in register rax
; [734] fpcintfdecrref(i);
%LINE 734+0
		call	SYSTEM_$$_FPCINTFDECRREF$POINTER
; [735] end;
%LINE 735+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c133:

SECTION .text
	GLOBAL fpc_intf_incr_ref
fpc_intf_incr_ref:
	GLOBAL FPC_INTF_INCR_REF
FPC_INTF_INCR_REF:
..@c135:
; [748] begin
%LINE 748+0
		lea	rsp,[rsp-40]
..@c137:
		mov	rax,rcx
; Var i located in register rax
; [749] if i <> nil then IUnknown(i)._AddRef;
%LINE 749+0
		test	rcx,rcx
		je	..@j334
		mov	rcx,rax
		mov	rax,qword [rax]
		call	[rax+8]
..@j334:
; [750] end;
%LINE 750+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c136:

SECTION .text
	GLOBAL SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
..@c138:
; Temps allocated between rsp+32 and rsp+40
; [exceptions.inc]
; [175] begin
%LINE 175+0 exceptions.inc
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-48]
..@c140:
; Var $result located in register rax
; Var exclass located in register r14
; Var i located in register esi
; Var filter located in register rax
; Var p located in register rdi
; Var curfilt located in register rbx
; Var rec located in register rcx
		mov	r15,rdx
; Var imagebase located in register r15
		mov	ebx,r8d
; Var filterRva located in register ebx
		mov	esi,r9d
; Var errcode located in register esi
; Var $result located in register rax
; [176] result := nil;
%LINE 176+0
		mov	qword [rsp+32],0
; [178] if rec.ExceptionCode = FPC_EXCEPTION_CODE then
%LINE 178+0
		cmp	dword [rcx],-532262845
		jne	..@j338
; [179] TObject(rec.ExceptionInformation[1]).ClassType
%LINE 179+0
		mov	rax,qword [rcx+40]
		mov	rcx,qword [rax]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
		jmp	..@j339
..@j338:
; [180] else if ExceptClsProc <> nil then begin
%LINE 180+0
		cmp	qword [TC_$SYSTEM_$$_EXCEPTCLSPROC],0
		je	..@j335
; [181] exclass := TClass(TExceptClsProc(ExceptClsProc)(errcode));
%LINE 181+0
		mov	ecx,esi
		call	TC_$SYSTEM_$$_EXCEPTCLSPROC
		mov	r14,rax
..@j339:
; [186] filter := pointer(imagebase+filterRva);
%LINE 186+0
		and	ebx,ebx
		lea	r13,[rbx+r15]
; Var filter located in register rax
; Var filter located in register r13
; [187] for i := 0 to PLongint(filter)^-1 do begin
%LINE 187+0
		mov	eax,dword [r13]
		dec	eax
		mov	r12d,eax
		test	r12d,r12d
		jnge	..@j344
		mov	esi,-1
..@j345:
		inc	esi
; [188] curfilt := @PFilterRec(filter+sizeof(LongInt))[i];
%LINE 188+0
		lea	rdx,[r13+4]
		movsxd	rax,esi
		lea	rbx,[rdx+rax*8]
; [190] p := pointer(imagebase+curfilt^.RvaHandler);
%LINE 190+0
		mov	eax,dword [rbx+4]
		lea	rdi,[rax+r15]
; [192] if curfilt^.RvaClass = $FFFFFFFF then exit(p);
%LINE 192+0
		cmp	dword [rbx],-1
		jne	..@j349
		mov	qword [rsp+32],rdi
		jmp	..@j335
..@j349:
; [195] if exclass.InheritsFrom(TClass(imagebase+curfilt^.RvaClass)) then exit(p);
%LINE 195+0
		mov	eax,dword [rbx]
		lea	rdx,[rax+r15]
		mov	rcx,r14
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		je	..@j351
		mov	qword [rsp+32],rdi
		jmp	..@j335
..@j351:
%LINE 187+0
		cmp	r12d,esi
		jnle	..@j345
..@j344:
..@j335:
; [201] end;
%LINE 201+0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+48]
		pop	r15
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c139:

SECTION .text
SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
..@c141:
; [207] begin
%LINE 207+0
		lea	rsp,[rsp-40]
..@c143:
; Var $result located in register rax
; Var rec located in register rcx
; Var imagebase located in register rdx
; Var filterRva located in register r8d
; Var errcode located in register r9d
; Var errcode located in register r9d
; Var filterRva located in register r8d
; Var imagebase located in register rdx
; [208] Exit(FilterException_(rec, imageBase, filterRva, errcode));
%LINE 208+0
		call	SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
; Var $result located in register rax
; [209] end;
%LINE 209+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c142:

SECTION .text
	GLOBAL SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT
SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT:
..@c144:
; Var $result located in register eax
; Var rec located in register rcx
; [229] begin
%LINE 229+0
; [231] case rec.ExceptionCode of
%LINE 231+0
		mov	eax,dword [rcx]
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
		mov	eax,200
		ret
..@j359:
; [233] STATUS_FLOAT_DIVIDE_BY_ZERO:          result := -208; // !!reZeroDivide
%LINE 233+0
		mov	eax,-208
		ret
..@j360:
; [234] STATUS_ARRAY_BOUNDS_EXCEEDED:         result := 201;  // reRangeError
%LINE 234+0
		mov	eax,201
		ret
..@j361:
; [235] STATUS_STACK_OVERFLOW:                result := 202;  // reStackOverflow
%LINE 235+0
		mov	eax,202
		ret
..@j362:
; [236] STATUS_FLOAT_OVERFLOW:                result := -205; // reOverflow
%LINE 236+0
		mov	eax,-205
		ret
..@j363:
; [238] STATUS_FLOAT_UNDERFLOW:               result := -206; // reUnderflow
%LINE 238+0
		mov	eax,-206
		ret
..@j364:
; [241] STATUS_FLOAT_STACK_CHECK:             result := -207; // reInvalidOp
%LINE 241+0
		mov	eax,-207
		ret
..@j365:
; [242] STATUS_INTEGER_OVERFLOW:              result := 215;  // reIntOverflow
%LINE 242+0
		mov	eax,215
		ret
..@j366:
; [243] STATUS_ILLEGAL_INSTRUCTION:           result := -216;
%LINE 243+0
		mov	eax,-216
		ret
..@j367:
; [244] STATUS_ACCESS_VIOLATION:              result := 216;  // reAccessViolation
%LINE 244+0
		mov	eax,216
		ret
..@j368:
; [245] STATUS_CONTROL_C_EXIT:                result := 217;  // reControlBreak
%LINE 245+0
		mov	eax,217
		ret
..@j369:
; [246] STATUS_PRIVILEGED_INSTRUCTION:        result := 218;  // rePrivilegedInstruction
%LINE 246+0
		mov	eax,218
		ret
..@j370:
; [248] STATUS_FLOAT_MULTIPLE_FAULTS:         result := -255; // indicate FPU reset
%LINE 248+0
		mov	eax,-255
		ret
..@j357:
; [250] result := 255; // reExternalException
%LINE 250+0
		mov	eax,255
; [252] end;
%LINE 252+0
		ret
..@c145:

SECTION .text
SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT:
..@c146:
; [254] begin
%LINE 254+0
		lea	rsp,[rsp-40]
..@c148:
; Var $result located in register eax
; Var rec located in register rcx
; [255] Exit(RunErrorCode_(rec));
%LINE 255+0
		call	SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT
; Var $result located in register eax
; [256] end;
%LINE 256+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c147:

SECTION .text
	GLOBAL SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT
SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT:
..@c149:
; [268] begin
%LINE 268+0
		mov	eax,ecx
; Var mxcsr located in register eax
; Var code located in register rdx
; [271] if (mxcsr and 1) <> 0 then code := -207
%LINE 271+0
		and	ecx,1
		je	..@j376
		mov	dword [rdx],-207
		ret
..@j376:
; [273] else if (mxcsr and 2) <> 0 then code := -206
%LINE 273+0
		mov	ecx,eax
		and	ecx,2
		je	..@j379
		mov	dword [rdx],-206
		ret
..@j379:
; [275] else if (mxcsr and 4) <> 0 then code := -208
%LINE 275+0
		mov	ecx,eax
		and	ecx,4
		je	..@j382
		mov	dword [rdx],-208
		ret
..@j382:
; [277] else if (mxcsr and 8) <> 0 then code := -205
%LINE 277+0
		mov	ecx,eax
		and	ecx,8
		je	..@j385
		mov	dword [rdx],-205
		ret
..@j385:
; [279] else if (mxcsr and 16) <> 0 then code := -206
%LINE 279+0
		mov	ecx,eax
		and	ecx,16
		je	..@j388
		mov	dword [rdx],-206
		ret
..@j388:
; [281] else if (mxcsr and 32) <> 0 then code := -207
%LINE 281+0
		and	eax,32
		je	..@j391
		mov	dword [rdx],-207
		ret
..@j391:
; [283] code := -255;
%LINE 283+0
		mov	dword [rdx],-255
; [284] end;
%LINE 284+0
		ret
..@c150:

SECTION .text
SYSTEM_$$_JUMPTOHANDLESIGNAL:
..@c151:
; [exceptions64.inc]
; [233] begin
%LINE 233+0 exceptions64.inc
		push	rbx
		lea	rsp,[rsp-32]
..@c153:
; [234] writeln('JumpToHandleSignal');
%LINE 234+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld6]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [285] end;
%LINE 285+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c152:

SECTION .text
	GLOBAL SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
..@c154:
; [306] begin
%LINE 306+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c156:
; Var exrec located at rsp+32, size=OS_64
; Var excontext located at rsp+40, size=OS_64
; Var $result located in register eax
; Var frame located in register eax
; Var ret located in register eax
		mov	qword [rsp+32],rcx
; Var exframe located in register rdx
		mov	qword [rsp+40],r8
; Var dispatch located in register r9
; [307] writeln('signals_exception_handler');
%LINE 307+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld7]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [309] frame := excontext^.rbp;
%LINE 309+0
		mov	rax,qword [rsp+40]
; Var frame located in register esi
		mov	esi,dword [rax+160]
; Var ret located in register eax
; [311] ret := 1;
%LINE 311+0
		mov	eax,1
; [313] writeln('exrec^.ExceptionCode = ', exrec^.ExceptionCode);
%LINE 313+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld8]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rax,qword [rsp+32]
		mov	r8d,dword [rax]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_uint
		mov	rcx,rbx
		call	fpc_writeln_end
; [319] ret := CallSignal(SIGSEGV, frame, false);
%LINE 319+0
		mov	r8d,esi
; Var frame located in register r8d
		xor	r9b,r9b
		mov	edx,291
		mov	rcx,rsp
		call	SYSTEM$_$SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B
; Var ret located in register eax
; Var $result located in register eax
; Var ret located in register eax
; [322] end;
%LINE 322+0
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c155:

SECTION .text
SYSTEM$_$SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B:
..@c157:
; [294] begin
%LINE 294+0
		lea	rsp,[rsp-8]
..@c159:
; Var $parentfp located at rsp+0, size=OS_64
; Var $result located in register eax
		mov	qword [rsp],rcx
; Var sigtype located in register edx
; Var frame located in register r8d
; Var must_reset_fpu located in register r9b
; [295] if ex_level >= ex_max_level then exit;
%LINE 295+0
		cmp	byte [TC_$SYSTEM_$$_EX_LEVEL],16
		jae	..@j397
; [296] ex_rip[ex_level] := excontext^.Rip;
%LINE 296+0
		mov	rax,qword [rsp]
		mov	rax,qword [rax+40]
		movzx	r8d,byte [TC_$SYSTEM_$$_EX_LEVEL]
		lea	rcx,[U_$SYSTEM_$$_EX_RIP]
		mov	rax,qword [rax+248]
		mov	qword [rcx+r8*8],rax
; [297] except_signal[ex_level] := sigtype;
%LINE 297+0
		movzx	ecx,byte [TC_$SYSTEM_$$_EX_LEVEL]
		movsxd	rdx,edx
		lea	rax,[U_$SYSTEM_$$_EXCEPT_SIGNAL]
		mov	qword [rax+rcx*8],rdx
; [298] reset_fpu[ex_level] := must_reset_fpu;
%LINE 298+0
		movzx	edx,byte [TC_$SYSTEM_$$_EX_LEVEL]
; Var must_reset_fpu located in register r9b
		lea	rax,[U_$SYSTEM_$$_RESET_FPU]
		mov	byte [rax+rdx*1],r9b
; [299] inc(ex_level);
%LINE 299+0
		inc	byte [TC_$SYSTEM_$$_EX_LEVEL]
; [300] excontext^.rip := ptruint(@JumpToHandleSignal);
%LINE 300+0
		mov	rax,qword [rsp]
		mov	rax,qword [rax+40]
		lea	rdx,[SYSTEM_$$_JUMPTOHANDLESIGNAL]
		mov	qword [rax+248],rdx
; [301] exrec^.ExceptionCode := 0;
%LINE 301+0
		mov	rax,qword [rsp]
		mov	rax,qword [rax+32]
		mov	dword [rax],0
; [302] result := 0;
%LINE 302+0
		xor	eax,eax
..@j397:
; [303] end;
%LINE 303+0
		lea	rsp,[rsp+8]
		ret
..@c158:

SECTION .text
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
..@c160:
; [328] begin
%LINE 328+0
		lea	rsp,[rsp-40]
..@c162:
; Var $result located in register eax
; Var exrec located in register rcx
; Var exframe located in register rdx
; Var excontext located in register r8
; Var dispatch located in register r9
; Var dispatch located in register r9
; Var excontext located in register r8
; Var exframe located in register rdx
; Var exrec located in register rcx
; [329] Exit(signals_exception_handler_(exrec, exframe, excontext, dispatch));
%LINE 329+0
		call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
; Var $result located in register eax
; [330] end;
%LINE 330+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c161:

SECTION .text
SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT:
..@c163:
; [344] begin
%LINE 344+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c165:
; Var $result located in register eax
		mov	rbx,rcx
; Var ex located in register rbx
; [345] writeln('syswin_x64_exception_handler');
%LINE 345+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld9]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; [347] result := signals_exception_handler(@ex^.ExceptionRecord, nil, @ex^.ContextRecord, nil);
%LINE 347+0
		mov	rcx,rbx
; Var ex located in register rcx
		lea	r8,[rcx+8]
; Var ex located in register rcx
		xor	r9,r9
		xor	edx,edx
		call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
		mov	ebx,eax
; Var $result located in register ebx
; [349] wait_for_enter;
%LINE 349+0
		call	SYSTEM_$$_WAIT_FOR_ENTER
; [350] end;
%LINE 350+0
		mov	eax,ebx
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c164:

SECTION .text
	GLOBAL SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS:
..@c166:
; [357] begin
%LINE 357+0
		lea	rsp,[rsp-40]
..@c168:
; [360] vectored_exception_handler := AddVectoredExceptionHandler(1{1 = higher priotity}, @syswin_x64_exception_handler);
%LINE 360+0
		lea	rdx,[SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT]
		mov	ecx,1
		call	_$dll$kernel32$AddVectoredExceptionHandler
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],rax
; [361] end;
%LINE 361+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c167:

SECTION .text
	GLOBAL SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS
SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS:
..@c169:
; [364] begin
%LINE 364+0
		lea	rsp,[rsp-40]
..@c171:
; [366] if vectored_exception_handler <> nil then
%LINE 366+0
		cmp	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
		je	..@j410
; [367] if RemoveVectoredExceptionHandler(vectored_exception_handler) then
%LINE 367+0
		mov	rcx,qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER]
		call	_$dll$kernel32$RemoveVectoredExceptionHandler
		test	eax,eax
		je	..@j412
; [368] vectored_exception_handler := nil;
%LINE 368+0
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
..@j412:
..@j410:
; [369] end;
%LINE 369+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c170:

SECTION .text
	GLOBAL SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT:
..@c172:
; [373] begin
%LINE 373+0
		push	rbx
		lea	rsp,[rsp-48]
..@c174:
; Var $result located at rsp+32, size=OS_S32
		mov	rax,rcx
; Var rec located in register rax
		mov	rbx,rdx
; Var context located in register rbx
; [374] result := RunErrorCode(rec);
%LINE 374+0
		mov	rcx,rax
		call	SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT
		mov	dword [rsp+32],eax
; [375] if (result = -255) then TranslateMxcsr(context.MxCsr, result);
%LINE 375+0
		cmp	eax,-255
		jne	..@j416
		mov	ecx,dword [rbx+52]
		lea	rdx,[rsp+32]
		call	SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT
..@j416:
; [376] end;
%LINE 376+0
		mov	eax,dword [rsp+32]
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c173:

SECTION .text
	GLOBAL SYSTEM_$$_SYSRESETFPU
SYSTEM_$$_SYSRESETFPU:
..@c175:
; [389] begin
%LINE 389+0
		push	rbp
..@c177:
..@c178:
		mov	rbp,rsp
..@c179:
		lea	rsp,[rsp-16]
; Var localmxcsr located at rbp-4, size=OS_32
; Var localfpucw located at rbp-8, size=OS_16
; [390] localfpucw := Default8087CW;
%LINE 390+0
		mov	ax,word [TC_$SYSTEM_$$_DEFAULT8087CW]
		mov	word [rbp-8],ax
; [391] localmxcsr := DefaultMXCSR;
%LINE 391+0
		mov	eax,dword [TC_$SYSTEM_$$_DEFAULTMXCSR]
		mov	dword [rbp-4],eax
CPU x64

; [393] fninit
%LINE 393+0
		fninit
; [394] fwait
%LINE 394+0
		DB	09bh
; [395] fldcw   localfpucw
%LINE 395+0
		fldcw	word [rbp-8]
; [396] ldmxcsr localmxcsr
%LINE 396+0
		ldmxcsr	dword [rbp-4]
CPU x64

; [398] end;
%LINE 398+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c176:

SECTION .text
	GLOBAL SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT
SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT:
..@c180:
; Temps allocated between rsp+304 and rsp+1440
; [417] begin
%LINE 417+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-1440]
..@c182:
; Var $result located in register eax
; Var UnwindHistory located at rsp+64, size=OS_NO
; Var RuntimeFunction located in register rdi
; Var HandlerData located at rsp+280, size=OS_64
; Var EstablisherFrame located at rsp+288, size=OS_64
; Var ImageBase located at rsp+296, size=OS_64
; Var FrameCount located in register eax
; Var FrameBufSize located in register eax
		mov	rsi,rcx
; Var Context located in register rsi
		mov	rbx,rdx
; Var StartingFrame located in register rbx
		mov	r12,r8
; Var Frames located in register r12
		lea	rdi,[rsp+304]
		mov	ecx,1136
		rep
		movsb
; [418] FillChar(UnwindHistory, sizeof(UNWIND_HISTORY_TABLE), 0);
%LINE 418+0
		lea	rcx,[rsp+64]
		xor	r8d,r8d
		mov	edx,216
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; [419] UnwindHistory.Unwind := 1;
%LINE 419+0
		mov	byte [rsp+70],1
; Var FrameCount located in register r13d
; [421] FrameCount := 0;
%LINE 421+0
		xor	r13d,r13d
; Var FrameBufSize located in register esi
; [422] FrameBufSize := 0;
%LINE 422+0
		xor	esi,esi
; [423] Frames := nil;
%LINE 423+0
		mov	qword [r12],0
..@j421:
; [425] RuntimeFunction := RtlLookupFunctionEntry(context.Rip, ImageBase, @UnwindHistory);
%LINE 425+0
		lea	r8,[rsp+64]
		mov	rcx,qword [rsp+552]
		lea	rdx,[rsp+296]
		call	_$dll$kernel32$RtlLookupFunctionEntry
		mov	rdi,rax
; [427] if Assigned(RuntimeFunction) then RtlVirtualUnwind(UNW_FLAG_NHANDLER, ImageBase, context.Rip,
%LINE 427+0
		test	rax,rax
		je	..@j425
		mov	qword [rsp+56],0
		lea	rax,[rsp+304]
		mov	qword [rsp+32],rax
; [428] RuntimeFunction, Context, @HandlerData, @EstablisherFrame, nil)
%LINE 428+0
		lea	rax,[rsp+288]
%LINE 427+0
		mov	qword [rsp+48],rax
%LINE 428+0
		lea	rax,[rsp+280]
%LINE 427+0
		mov	qword [rsp+40],rax
		mov	r8,qword [rsp+552]
		mov	r9,rdi
		mov	rdx,qword [rsp+296]
		xor	ecx,ecx
		call	_$dll$kernel32$RtlVirtualUnwind
		jmp	..@j426
..@j425:
; [430] Context.Rip := PQWord(Context.Rsp)^;
%LINE 430+0
		mov	rax,qword [rsp+456]
		mov	rax,qword [rax]
		mov	qword [rsp+552],rax
; [431] Inc(Context.Rsp, sizeof(Pointer));
%LINE 431+0
		add	qword [rsp+456],8
..@j426:
; [434] if (context.Rip = 0) or (FrameCount >= RaiseMaxFrameCount) then break;
%LINE 434+0
		cmp	qword [rsp+552],0
		je	..@j423
		cmp	r13d,dword [TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT]
		jge	..@j423
; [436] if (Pointer(context.Rbp) > StartingFrame) or (FrameCount > 0) then begin
%LINE 436+0
		cmp	rbx,qword [rsp+464]
		jb	..@j430
		test	r13d,r13d
		jng	..@j421
..@j430:
; [437] if (FrameCount >= FrameBufSize) then begin
%LINE 437+0
		cmp	esi,r13d
		jnle	..@j434
; [438] Inc(FrameBufSize, 16);
%LINE 438+0
		add	esi,16
; [439] ReallocMem(Frames, FrameBufSize * sizeof(Pointer));
%LINE 439+0
		movsxd	rdx,esi
		shl	rdx,3
		mov	rcx,r12
		call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
..@j434:
; [441] Frames[FrameCount] := Pointer(context.Rip);
%LINE 441+0
		mov	rdx,qword [r12]
		movsxd	rax,r13d
		mov	rcx,qword [rsp+552]
		mov	qword [rdx+rax*8],rcx
; [442] Inc(FrameCount);
%LINE 442+0
		inc	r13d
; [444] until false;
%LINE 444+0
		jmp	..@j421
..@j423:
; Var $result located in register eax
; [445] Result := FrameCount;
%LINE 445+0
		mov	eax,r13d
; Var FrameCount located in register eax
; [446] end;
%LINE 446+0
		nop
		lea	rsp,[rsp+1440]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c181:

SECTION .text
SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT:
..@c183:
; Temps allocated between rsp+32 and rsp+1168
; [451] begin
%LINE 451+0
		push	rdi
		push	rsi
		lea	rsp,[rsp-1176]
..@c185:
; Var $result located in register eax
		mov	rsi,rcx
; Var Context located in register rsi
; Var StartingFrame located in register rdx
; Var Frames located in register r8
		lea	rdi,[rsp+32]
		mov	ecx,1136
		rep
		movsb
; Var StartingFrame located in register rdx
; [452] Exit(GetBacktrace_(Context, StartingFrame, Frames));
%LINE 452+0
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT
; Var $result located in register eax
; [453] end;
%LINE 453+0
		nop
		lea	rsp,[rsp+1176]
		pop	rsi
		pop	rdi
		ret
..@c184:

SECTION .text
	GLOBAL SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
..@c186:
; Temps allocated between rsp+40 and rsp+48
; [481] begin
%LINE 481+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-48]
..@c188:
; Var $result located in register al
; Var adr located in register rax
; Var exc located in register rax
; Var Frames located at rsp+32, size=OS_64
; Var FrameCount located in register eax
; Var code located in register ebx
		mov	rsi,rcx
; Var rec located in register rsi
		mov	r12,rdx
; Var context located in register r12
		mov	r13,r8
; Var obj located in register r13
		mov	dil,r9b
; Var AcceptNull located in register dil
; Var adr located in register r14
; [482] Adr := Pointer(rec.ExceptionInformation[0]);
%LINE 482+0
		mov	r14,qword [rsi+32]
; [483] Obj := TObject(rec.ExceptionInformation[1]);
%LINE 483+0
		mov	rax,qword [rsi+40]
		mov	qword [r13],rax
; Var FrameCount located in register r15d
; [484] Framecount := longint(PtrUInt(rec.ExceptionInformation[2]));
%LINE 484+0
		mov	r15d,dword [rsi+48]
; [485] Frames := Pointer(rec.ExceptionInformation[3]);
%LINE 485+0
		mov	rax,qword [rsi+56]
		mov	qword [rsp+32],rax
; [487] if rec.ExceptionCode <> FPC_EXCEPTION_CODE then begin
%LINE 487+0
		cmp	dword [rsi],-532262845
		je	..@j440
; [488] Obj := nil;
%LINE 488+0
		mov	qword [r13],0
; [489] Result := false;
%LINE 489+0
		mov	byte [rsp+40],0
; [490] code := RunErrorCodeSEH(rec, context);
%LINE 490+0
		mov	rdx,r12
		mov	rcx,rsi
		call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
		mov	ebx,eax
; [491] if Assigned(ExceptObjProc) then Obj := TObject(TExceptObjProc(ExceptObjProc)(abs(code), rec));
%LINE 491+0
		cmp	qword [TC_$SYSTEM_$$_EXCEPTOBJPROC],0
		je	..@j442
		mov	eax,ebx
		mov	ecx,ebx
		neg	eax
		cmovns	ecx,eax
		mov	rdx,rsi
		call	TC_$SYSTEM_$$_EXCEPTOBJPROC
		mov	qword [r13],rax
..@j442:
; [492] if (Obj = nil) and (not AcceptNull) then Exit;
%LINE 492+0
		cmp	qword [r13],0
		jne	..@j444
		test	dil,dil
		je	..@j437
..@j444:
; [493] adr := rec.ExceptionAddress;
%LINE 493+0
		mov	r14,qword [rsi+16]
; [494] FrameCount := GetBacktrace(context, nil, Frames);
%LINE 494+0
		mov	rcx,r12
		lea	r8,[rsp+32]
		xor	edx,edx
		call	SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT
		mov	r15d,eax
; [495] if code < 0 then SysResetFPU;
%LINE 495+0
		test	ebx,ebx
		jnl	..@j447
		call	SYSTEM_$$_SYSRESETFPU
..@j447:
..@j440:
; [498] New(exc);
%LINE 498+0
		mov	ecx,40
		call	fpc_getmem
; Var exc located in register rax
; Var exc located in register rax
; [499] exc^.FObject := Obj;
%LINE 499+0
		mov	rdx,qword [r13]
		mov	qword [rax],rdx
; Var exc located in register rax
; [500] exc^.Addr := adr;
%LINE 500+0
		mov	qword [rax+8],r14
; Var adr located in register rdx
; Var exc located in register rax
; [501] exc^.Frames := Frames;
%LINE 501+0
		mov	rdx,qword [rsp+32]
		mov	qword [rax+32],rdx
; Var exc located in register rax
; [502] exc^.FrameCount := FrameCount;
%LINE 502+0
		mov	dword [rax+28],r15d
; Var FrameCount located in register edx
; Var exc located in register rax
; [503] exc^.Refcount := 0;
%LINE 503+0
		mov	dword [rax+24],0
; Var exc located in register rax
; [504] exc^.Next := ExceptObjectStack;
%LINE 504+0
		mov	rdx,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		mov	qword [rax+16],rdx
; Var exc located in register rax
; [505] ExceptObjectStack := exc;
%LINE 505+0
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [506] Result := true;
%LINE 506+0
		mov	byte [rsp+40],1
..@j437:
; [507] end;
%LINE 507+0
		mov	al,byte [rsp+40]
		nop
		lea	rsp,[rsp+48]
		pop	r15
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c187:

SECTION .text
SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
..@c189:
; [509] begin
%LINE 509+0
		lea	rsp,[rsp-40]
..@c191:
; Var $result located in register al
; Var rec located in register rcx
; Var context located in register rdx
; Var obj located in register r8
; Var AcceptNull located in register r9b
; Var AcceptNull located in register r9b
; [510] Exit(PushException_(rec, context, obj, AcceptNull));
%LINE 510+0
		call	SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
; Var $result located in register al
; [511] end;
%LINE 511+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c190:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT
SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT:
..@c192:
; [529] begin
%LINE 529+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c194:
; Var $result located in register rsi
; Var hp located in register rax
; Var hp located in register rbx
; [530] hp := ExceptObjectStack;
%LINE 530+0
		mov	rbx,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
; [531] if hp = nil then
%LINE 531+0
		test	rbx,rbx
		jne	..@j453
; [532] halt(1)
%LINE 532+0
		mov	ecx,1
		call	SYSTEM_$$_HALT$LONGINT
		jmp	..@j454
..@j453:
; [534] if hp^.refcount = 0 then result := hp^.FObject else result := nil;
%LINE 534+0
		cmp	dword [rbx+24],0
		jne	..@j456
		mov	rsi,qword [rbx]
		jmp	..@j457
..@j456:
		xor	esi,esi
..@j457:
; [535] ExceptObjectStack := hp^.next;
%LINE 535+0
		mov	rax,qword [rbx+16]
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [536] if assigned(hp^.frames) then freemem(hp^.frames);
%LINE 536+0
		cmp	qword [rbx+32],0
		je	..@j459
		mov	rcx,qword [rbx+32]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j459:
; [537] dispose(hp);
%LINE 537+0
		mov	rcx,rbx
		call	fpc_freemem
; [538] erroraddr := nil;
%LINE 538+0
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],0
..@j454:
; [540] end;
%LINE 540+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c193:

SECTION .text
	GLOBAL fpc_popobjectstack
fpc_popobjectstack:
	GLOBAL FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
..@c195:
; [542] begin
%LINE 542+0
		lea	rsp,[rsp-40]
..@c197:
; Var $result located in register rax
; [543] Exit(fpc_popobjectstack_);
%LINE 543+0
		call	SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT
; Var $result located in register rax
; [544] end;
%LINE 544+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c196:

SECTION .text
	GLOBAL SYSTEM_$$___FPC_SPECIFIC_HANDLER_$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER_$crc71B92073:
..@c198:
; Temps allocated between rsp+56 and rsp+72
; [569] begin
%LINE 569+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-80]
..@c200:
; Var $result located in register eax
; Var TargetRva located in register ebx
; Var ControlRva located in register eax
; Var scope located in register rdi
; Var scopeIdx located in register eax
; Var TargetAddr located in register rbx
; Var obj located at rsp+48, size=OS_64
		mov	qword [rsp+64],rcx
; Var rec located in register rax
		mov	rsi,rdx
; Var frame located in register rsi
		mov	qword [rsp+56],r8
; Var context located in register rax
		mov	r15,r9
; Var dispatch located in register r15
; [570] writeln('__FPC_specific_handler');
%LINE 570+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld10]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; Var $result located in register r14d
; [571] result := ExceptionContinueSearch;
%LINE 571+0
		mov	r14d,1
%LINE 569+0
		mov	rax,r15
; [572] ControlRva := dispatch.ControlPc - dispatch.ImageBase;
%LINE 572+0
		mov	rdx,qword [rax]
		mov	rax,qword [rax+8]
		sub	rdx,rax
; Var ControlRva located in register r13d
		mov	r13d,edx
; Var scopeIdx located in register r12d
; [573] ScopeIdx := dispatch.ScopeIndex;
%LINE 573+0
		mov	r12d,dword [r15+72]
; [574] if (rec.ExceptionFlags and EXCEPTION_UNWIND) = 0 then begin
%LINE 574+0
		mov	rdx,qword [rsp+64]
		mov	eax,dword [rdx+4]
		and	eax,6
		jne	..@j465
; [575] while ScopeIdx < PDWord(dispatch.HandlerData)^ do begin
%LINE 575+0
		jmp	..@j467
..@j466:
; [576] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
%LINE 576+0
		mov	rax,qword [r15+56]
		lea	rdx,[rax+4]
		mov	eax,r12d
		shl	rax,4
		lea	rdi,[rdx+rax]
; [579] if (ControlRva >= scope^.RvaEnd) and (ControlRva < scope^.RvaHandler) and ((scope^.Typ = SCOPE_CATCHALL) or (scope^.Typ > SCOPE_IMPLICIT)) then
%LINE 579+0
		cmp	r13d,dword [rdi+8]
		jnae	..@j470
		cmp	r13d,dword [rdi+12]
		jnb	..@j470
%LINE 569+0
		mov	eax,dword [rdi]
%LINE 579+0
		cmp	eax,1
		je	..@j472
		cmp	eax,2
		jna	..@j470
..@j472:
; [580] internal_popobjectstack.Free
%LINE 580+0
		call	FPC_POPOBJECTSTACK
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		jmp	..@j476
..@j470:
; [581] else if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and (scope^.Typ <> SCOPE_FINALLY) then begin
%LINE 581+0
		cmp	r13d,dword [rdi+4]
		jnae	..@j478
		cmp	r13d,dword [rdi+8]
		jnb	..@j478
		cmp	dword [rdi],0
		je	..@j478
; [582] if scope^.Typ > SCOPE_IMPLICIT then begin
%LINE 582+0
		cmp	dword [rdi],2
		jna	..@j482
; [583] TargetAddr := FilterException(rec, dispatch.ImageBase, scope^.Typ, abs(RunErrorCodeSEH(rec, context)));
%LINE 583+0
		mov	rdx,qword [rsp+56]
		mov	rcx,qword [rsp+64]
		call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
		mov	edx,eax
		neg	edx
		cmovns	eax,edx
		mov	r8d,dword [rdi]
		mov	rdx,qword [r15+8]
		mov	rcx,qword [rsp+64]
		mov	r9d,eax
		call	SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
		mov	rbx,rax
; [584] if TargetAddr = nil then begin
%LINE 584+0
		test	rax,rax
		jne	..@j485
; [585] inc(ScopeIdx);
%LINE 585+0
		inc	r12d
; [586] continue;
%LINE 586+0
		jmp	..@j467
		jmp	..@j485
..@j482:
; [589] TargetAddr := Pointer(scope^.RvaEnd + dispatch.ImageBase);
%LINE 589+0
		mov	eax,dword [rdi+8]
		add	rax,qword [r15+8]
		mov	rbx,rax
..@j485:
; [591] if not PushException(rec, context, obj, Scope^.Typ = SCOPE_IMPLICIT) then exit;
%LINE 591+0
		cmp	dword [rdi],2
		sete	r9b
		mov	rdx,qword [rsp+56]
		mov	rcx,qword [rsp+64]
		lea	r8,[rsp+48]
		call	SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j462
; [595] RtlUnwindEx(@frame, TargetAddr, @rec, obj, dispatch.ContextRecord, dispatch.HistoryTable);
%LINE 595+0
		mov	rax,qword [r15+64]
		mov	qword [rsp+40],rax
		mov	rax,qword [r15+40]
		mov	qword [rsp+32],rax
		mov	r8,qword [rsp+64]
		mov	rcx,rsi
		mov	r9,qword [rsp+48]
		mov	rdx,rbx
		call	_$dll$kernel32$RtlUnwindEx
..@j478:
..@j476:
; [597] inc(ScopeIdx);
%LINE 597+0
		inc	r12d
..@j467:
%LINE 575+0
		mov	rax,qword [r15+56]
		cmp	r12d,dword [rax]
		jb	..@j466
		jmp	..@j488
..@j465:
%LINE 569+0
		mov	rax,r15
; [600] TargetRva := dispatch.TargetIp - dispatch.ImageBase;
%LINE 600+0
		mov	rdx,qword [rax+32]
		mov	rax,qword [rax+8]
		sub	rdx,rax
		mov	ebx,edx
; [602] while ScopeIdx < PDword(dispatch.HandlerData)^ do begin
%LINE 602+0
		jmp	..@j490
..@j489:
; [603] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
%LINE 603+0
		mov	rax,qword [r15+56]
		lea	rdx,[rax+4]
		mov	eax,r12d
		shl	rax,4
		lea	rdi,[rdx+rax]
; [604] if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and ((scope^.Typ = SCOPE_FINALLY) or (scope^.Typ = SCOPE_IMPLICIT)) then begin
%LINE 604+0
		cmp	r13d,dword [rdi+4]
		jnae	..@j493
		cmp	r13d,dword [rdi+8]
		jnb	..@j493
%LINE 569+0
		mov	eax,dword [rdi]
%LINE 604+0
		test	eax,eax
		je	..@j495
		cmp	eax,2
		jne	..@j493
..@j495:
; [605] if (TargetRva >= scope^.RvaStart) and (TargetRva < scope^.RvaEnd) and ((rec.ExceptionFlags and EXCEPTION_TARGET_UNWIND) <> 0) then exit;
%LINE 605+0
		cmp	ebx,dword [rdi+4]
		jnae	..@j500
		cmp	ebx,dword [rdi+8]
		jnb	..@j500
		mov	rdx,qword [rsp+64]
		mov	eax,dword [rdx+4]
		and	eax,32
		jne	..@j462
..@j500:
; [607] dispatch.ScopeIndex := ScopeIdx + 1;
%LINE 607+0
		lea	eax,[r12d+1]
		mov	dword [r15+72],eax
; [609] TUnwindProc(dispatch.ImageBase + scope^.RvaHandler)(context.Rbp);
%LINE 609+0
		mov	rax,qword [rsp+56]
		mov	rcx,qword [rax+160]
		mov	eax,dword [rdi+12]
		add	rax,qword [r15+8]
		call	rax
..@j493:
; [611] inc(ScopeIdx);
%LINE 611+0
		inc	r12d
..@j490:
%LINE 602+0
		mov	rax,qword [r15+56]
		cmp	r12d,dword [rax]
		jb	..@j489
..@j488:
..@j462:
; [614] end;
%LINE 614+0
		mov	eax,r14d
		nop
		lea	rsp,[rsp+80]
		pop	r15
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c199:

SECTION .text
	GLOBAL SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073:
	GLOBAL __FPC_specific_handler
__FPC_specific_handler:
..@c201:
; [620] begin
%LINE 620+0
		lea	rsp,[rsp-40]
..@c203:
; Var $result located in register eax
; Var rec located in register rcx
; Var frame located in register rdx
; Var context located in register r8
; Var dispatch located in register r9
; [621] Exit(__FPC_specific_handler(rec, frame, context, dispatch));
%LINE 621+0
		call	SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
; Var $result located in register eax
; [622] end;
%LINE 622+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c202:

SECTION .text
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
..@c204:
; [642] begin
%LINE 642+0
		lea	rsp,[rsp-40]
..@c206:
; [643] internal_popobjectstack.Free;
%LINE 643+0
		call	FPC_POPOBJECTSTACK
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [644] end;
%LINE 644+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c205:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
	GLOBAL FPC_RERAISE
FPC_RERAISE:
..@c207:
; [647] begin
%LINE 647+0
; [648] end;
%LINE 648+0
		ret
..@c208:

SECTION .text
	GLOBAL fpc_raise_nested
fpc_raise_nested:
	GLOBAL FPC_RAISE_NESTED
FPC_RAISE_NESTED:
..@c209:
; [651] begin
%LINE 651+0
; [652] end;
%LINE 652+0
		ret
..@c210:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER
SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER:
..@c211:
; [659] begin
%LINE 659+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c213:
		mov	rbx,rcx
; Var obj located in register rbx
		mov	rsi,rdx
; Var anaddr located in register rsi
		mov	rdi,r8
; Var aframe located in register rdi
; [660] writeln('fpc_raiseexception');
%LINE 660+0
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld11]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
; [662] if obj = nil then writeln('obj nil');
%LINE 662+0
		test	rbx,rbx
		jne	..@j514
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld12]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
..@j514:
; [663] if anaddr = nil then writeln('anaddr nil');
%LINE 663+0
		test	rsi,rsi
		jne	..@j516
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld13]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j516:
; [664] if aframe = nil then writeln('aframe nil');
%LINE 664+0
		test	rdi,rdi
		jne	..@j518
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld14]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j518:
; [666] if obj <> nil then begin
%LINE 666+0
		test	rbx,rbx
		je	..@j520
; [667] writeln('exception message = ', TTestException(obj).test);
%LINE 667+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld15]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	r8,qword [rbx+8]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_ansistr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j520:
; [669] end;
%LINE 669+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c212:

SECTION .text
	GLOBAL fpc_raiseexception
fpc_raiseexception:
	GLOBAL FPC_RAISEEXCEPTION
FPC_RAISEEXCEPTION:
..@c214:
; [674] begin
%LINE 674+0
		lea	rsp,[rsp-40]
..@c216:
; Var obj located in register rax
; Var anaddr located in register rdx
; Var aframe located in register r8
; Var aframe located in register r8
; Var anaddr located in register rdx
; Var obj located in register rcx
; [675] fpc_raiseexception_(obj, anaddr, aframe);
%LINE 675+0
		call	SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER
; [676] end;
%LINE 676+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c215:

SECTION .text
	GLOBAL fpc_initialize
fpc_initialize:
	GLOBAL FPC_INITIALIZE
FPC_INITIALIZE:
..@c217:
; [rtti.inc]
; [35] begin
%LINE 35+0 rtti.inc
		push	rbx
		lea	rsp,[rsp-32]
..@c219:
		mov	rax,rcx
; Var data located in register rax
; Var typeinfo located in register rdx
; [36] writeln('fpc_initialize');
%LINE 36+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld16]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [37] end;
%LINE 37+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c218:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
	GLOBAL FPC_FINALIZE
FPC_FINALIZE:
..@c220:
; [40] begin
%LINE 40+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c222:
		mov	rax,rcx
; Var data located in register rax
		mov	rbx,rdx
; Var typeinfo located in register rbx
; [41] writeln('fpc_finalize');
%LINE 41+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld17]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; [43] case PTypeKind(typeinfo)^ of
%LINE 43+0
		mov	eax,dword [rbx]
		cmp	eax,14
		jb	..@j528
		sub	eax,14
		jne	..@j528
; [44] tkInterface: writeln('decrease refcount of interfaced object');
%LINE 44+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld18]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j528:
; [46] end;
%LINE 46+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c221:

SECTION .text
	GLOBAL fpc_addref
fpc_addref:
	GLOBAL FPC_ADDREF
FPC_ADDREF:
..@c223:
; [49] begin
%LINE 49+0
		push	rbx
		lea	rsp,[rsp-32]
..@c225:
		mov	rax,rcx
; Var data located in register rax
; Var typeinfo located in register rdx
; [50] writeln('fpc_addref');
%LINE 50+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld19]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [51] end;
%LINE 51+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c224:

SECTION .text
	GLOBAL fpc_decref
fpc_decref:
	GLOBAL FPC_DECREF
FPC_DECREF:
..@c226:
; [54] begin
%LINE 54+0
		push	rbx
		lea	rsp,[rsp-32]
..@c228:
		mov	rax,rcx
; Var data located in register rax
; Var typeinfo located in register rdx
; [55] writeln('fpc_decref');
%LINE 55+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld20]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [56] end;
%LINE 56+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c227:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c229:
; Var $result located in register rax
; [io.inc]
; [85] begin
%LINE 85+0 io.inc
; Var $result located in register rax
; [86] result := nil;
%LINE 86+0
		xor	eax,eax
; [87] end;
%LINE 87+0
		ret
..@c230:

SECTION .text
	GLOBAL fpc_get_output
fpc_get_output:
..@c231:
; Var $result located in register rax
; [90] begin
%LINE 90+0
; Var $result located in register rax
; [91] result := nil;
%LINE 91+0
		xor	eax,eax
; [92] end;
%LINE 92+0
		ret
..@c232:

SECTION .text
	GLOBAL fpc_write_end
fpc_write_end:
..@c233:
; [95] begin
%LINE 95+0
		mov	rax,rcx
; Var f located in register rax
; [96] end;
%LINE 96+0
		ret
..@c234:

SECTION .text
SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000262:
..@c235:
; [104] end;
%LINE 104+0
		push	rbp
..@c237:
..@c238:
		mov	rbp,rcx
..@c239:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [101] begin
%LINE 101+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c236:

SECTION .text
	GLOBAL fpc_writeln_end
fpc_writeln_end:
..@c240:
		push	rbp
..@c242:
..@c243:
		mov	rbp,rsp
..@c244:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	rax,rcx
; Var f located in register rax
		mov	qword [rbp-8],0
..@j548:
		nop
..@j544:
; [102] s := LineEnding;
%LINE 102+0
		lea	rcx,[rbp-8]
		lea	rdx,[..@d21]
		call	fpc_ansistr_assign
; [103] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 103+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j549
		mov	r8,qword [r8-8]
..@j549:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j546:
%LINE 101+0
		nop
..@j545:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000262
%LINE 104+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c241:

SECTION .text
	GLOBAL fpc_write_text_char
fpc_write_text_char:
	GLOBAL FPC_WRITE_TEXT_CHAR
FPC_WRITE_TEXT_CHAR:
..@c245:
; [107] begin
%LINE 107+0
		lea	rsp,[rsp-56]
..@c247:
; Var c located at rsp+40, size=OS_8
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	byte [rsp+40],r8b
; [108] WriteConsoleA(StdOut, @c, 1, nil, nil);
%LINE 108+0
		mov	qword [rsp+32],0
		lea	rdx,[rsp+40]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		mov	r8d,1
		call	_$dll$kernel32$WriteConsoleA
; [109] end;
%LINE 109+0
		nop
		lea	rsp,[rsp+56]
		ret
..@c246:

SECTION .text
	GLOBAL fpc_write_text_widechar
fpc_write_text_widechar:
..@c248:
; [112] begin
%LINE 112+0
		lea	rsp,[rsp-56]
..@c250:
; Var c located at rsp+40, size=OS_16
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	word [rsp+40],r8w
; [113] WriteConsoleW(StdOut, @c, 1, nil, nil);
%LINE 113+0
		mov	qword [rsp+32],0
		lea	rdx,[rsp+40]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		mov	r8d,1
		call	_$dll$kernel32$WriteConsoleW
; [114] end;
%LINE 114+0
		nop
		lea	rsp,[rsp+56]
		ret
..@c249:

SECTION .text
	GLOBAL fpc_write_text_shortstr
fpc_write_text_shortstr:
	GLOBAL FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
..@c251:
; [117] begin
%LINE 117+0
		lea	rsp,[rsp-40]
..@c253:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rax,r8
; Var s located in register rax
; [118] WriteConsoleA(StdOut, @s[1], ord(s[0]), nil, nil);
%LINE 118+0
		mov	qword [rsp+32],0
		movzx	r8d,byte [rax]
		lea	rdx,[rax+1]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
; [119] end;
%LINE 119+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c252:

SECTION .text
	GLOBAL fpc_write_text_ansistr
fpc_write_text_ansistr:
	GLOBAL FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
..@c254:
; [127] begin
%LINE 127+0
		lea	rsp,[rsp-40]
..@c256:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [128] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 128+0
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j558
		mov	r8,qword [r8-8]
..@j558:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
; [129] end;
%LINE 129+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c255:

SECTION .text
	GLOBAL fpc_write_text_widestr
fpc_write_text_widestr:
..@c257:
; [132] begin
%LINE 132+0
		lea	rsp,[rsp-40]
..@c259:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [133] if pointer(s) = nil then exit;
%LINE 133+0
		test	r8,r8
		je	..@j559
; [134] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
%LINE 134+0
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j563
		mov	r8d,dword [r8-4]
		shr	r8,1
..@j563:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleW
..@j559:
; [135] end;
%LINE 135+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c258:

SECTION .text
	GLOBAL fpc_write_text_unicodestr
fpc_write_text_unicodestr:
..@c260:
; [138] begin
%LINE 138+0
		lea	rsp,[rsp-40]
..@c262:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [139] if pointer(s) = nil then exit;
%LINE 139+0
		test	r8,r8
		je	..@j564
; [140] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
%LINE 140+0
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j568
		mov	r8,qword [r8-8]
..@j568:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleW
..@j564:
; [141] end;
%LINE 141+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c261:

SECTION .text
	GLOBAL fpc_read_end
fpc_read_end:
	GLOBAL FPC_READ_END
FPC_READ_END:
..@c263:
; [144] begin
%LINE 144+0
		mov	rax,rcx
; Var f located in register rax
; [145] end;
%LINE 145+0
		ret
..@c264:

SECTION .text
SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000263:
..@c265:
; [152] end;
%LINE 152+0
		push	rbp
..@c267:
..@c268:
		mov	rbp,rcx
..@c269:
		lea	rsp,[rsp-32]
; [150] begin
%LINE 150+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c266:

SECTION .text
SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING:
..@c270:
		push	rbp
..@c272:
..@c273:
		mov	rbp,rsp
..@c274:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var d located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j579:
		nop
..@j575:
; [151] WriteConsoleA(StdOut, @s[1], length(s), @d, nil);
%LINE 151+0
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j580
		mov	rax,qword [rax-8]
..@j580:
		mov	r8d,eax
		lea	r9,[rbp-12]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		call	_$dll$kernel32$WriteConsoleA
..@j577:
%LINE 150+0
		nop
..@j576:
		mov	rcx,rbp
		call	SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000263
%LINE 152+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c271:

SECTION .text
SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000265:
..@c275:
; [171] end;
%LINE 171+0
		push	rbp
..@c277:
..@c278:
		mov	rbp,rcx
..@c279:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
; [159] begin
%LINE 159+0
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c276:

SECTION .text
SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING:
..@c280:
; Temps allocated between rbp-32 and rbp-16
		push	rbp
..@c282:
..@c283:
		mov	rbp,rsp
..@c284:
		lea	rsp,[rsp-80]
		mov	qword [rbp-32],rbx
; Var c located at rbp-4, size=OS_8
; Var d located at rbp-8, size=OS_32
; Var s located at rbp-16, size=OS_64
		mov	rbx,rcx
; Var r located in register rbx
		mov	qword [rbx],0
		mov	qword [rbp-16],0
		mov	qword [rbp-24],0
..@j589:
		nop
..@j585:
; [160] s := '';
%LINE 160+0
		lea	rcx,[rbp-16]
		xor	edx,edx
		call	fpc_ansistr_assign
..@j590:
; [162] ReadConsoleA(StdIn, @c, 1, @d, nil);
%LINE 162+0
		mov	qword [rsp+32],0
		lea	r9,[rbp-8]
		lea	rdx,[rbp-4]
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	r8d,1
		call	_$dll$kernel32$ReadConsoleA
; [163] if c = #13 then begin
%LINE 163+0
		cmp	byte [rbp-4],13
		je	..@j592
; [167] s := s + c;
%LINE 167+0
		movzx	edx,byte [rbp-4]
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		lea	rcx,[rbp-16]
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [161] while true do begin
%LINE 161+0
		jmp	..@j590
..@j592:
; [169] r := s;
%LINE 169+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-16]
		call	fpc_ansistr_assign
; [170] int_write_to_console(#13#10);
%LINE 170+0
		lea	rcx,[..@d21]
		call	SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING
..@j587:
%LINE 159+0
		nop
..@j586:
		mov	rcx,rbp
		call	SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000265
%LINE 171+0
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c281:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c285:
; [174] begin
%LINE 174+0
		mov	rax,rcx
; Var f located in register rax
; [181] end;
%LINE 181+0
		ret
..@c286:

SECTION .text
SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000269:
..@c287:
; [189] end;
%LINE 189+0
		push	rbp
..@c289:
..@c290:
		mov	rbp,rcx
..@c291:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [186] begin
%LINE 186+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c288:

SECTION .text
	GLOBAL fpc_read_text_shortstr
fpc_read_text_shortstr:
	GLOBAL FPC_READ_TEXT_SHORTSTR
FPC_READ_TEXT_SHORTSTR:
..@c292:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c294:
..@c295:
		mov	rbp,rsp
..@c296:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
; Var t located at rbp-8, size=OS_64
		mov	rax,rcx
; Var f located in register rax
		mov	rbx,rdx
; Var s located in register rbx
; Var cp located in register r8d
		mov	qword [rbp-8],0
..@j605:
		nop
..@j601:
; [187] int_read_from_console(t);
%LINE 187+0
		lea	rsi,[rbp-8]
		mov	rcx,rsi
		call	fpc_ansistr_decr_ref
		mov	rcx,rsi
		call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
; [188] s := t;
%LINE 188+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_to_shortstr
..@j603:
%LINE 186+0
		nop
..@j602:
		mov	rcx,rbp
		call	SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000269
%LINE 189+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c293:

SECTION .text
SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000026B:
..@c297:
; [197] end;
%LINE 197+0
		push	rbp
..@c299:
..@c300:
		mov	rbp,rcx
..@c301:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [194] begin
%LINE 194+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c298:

SECTION .text
	GLOBAL fpc_read_text_ansistr
fpc_read_text_ansistr:
	GLOBAL FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
..@c302:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c304:
..@c305:
		mov	rbp,rsp
..@c306:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
; Var t located at rbp-8, size=OS_64
		mov	rax,rcx
; Var f located in register rax
		mov	rbx,rdx
; Var s located in register rbx
; Var cp located in register r8d
		mov	qword [rbx],0
		mov	qword [rbp-8],0
..@j614:
		nop
..@j610:
; [195] int_read_from_console(t);
%LINE 195+0
		lea	rsi,[rbp-8]
		mov	rcx,rsi
		call	fpc_ansistr_decr_ref
		mov	rcx,rsi
		call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
; [196] s := t;
%LINE 196+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j612:
%LINE 194+0
		nop
..@j611:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000026B
%LINE 197+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c303:

SECTION .text
SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000026C:
..@c307:
; [205] end;
%LINE 205+0
		push	rbp
..@c309:
..@c310:
		mov	rbp,rcx
..@c311:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [202] begin
%LINE 202+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c308:

SECTION .text
	GLOBAL fpc_write_text_sint
fpc_write_text_sint:
..@c312:
		push	rbp
..@c314:
..@c315:
		mov	rbp,rsp
..@c316:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var l located in register rcx
		mov	qword [rbp-8],0
..@j623:
		nop
..@j619:
; [203] s := itoa(l);
%LINE 203+0
		mov	edx,10
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_pchar_to_ansistr
; [204] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 204+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j624
		mov	r8,qword [r8-8]
..@j624:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j621:
%LINE 202+0
		nop
..@j620:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000026C
%LINE 205+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c313:

SECTION .text
SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000026D:
..@c317:
; [213] end;
%LINE 213+0
		push	rbp
..@c319:
..@c320:
		mov	rbp,rcx
..@c321:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [210] begin
%LINE 210+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c318:

SECTION .text
	GLOBAL fpc_write_text_uint
fpc_write_text_uint:
..@c322:
		push	rbp
..@c324:
..@c325:
		mov	rbp,rsp
..@c326:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var l located in register rcx
		mov	qword [rbp-8],0
..@j633:
		nop
..@j629:
; [211] s := itoa(l);
%LINE 211+0
		mov	edx,10
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_pchar_to_ansistr
; [212] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 212+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j634
		mov	r8,qword [r8-8]
..@j634:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j631:
%LINE 210+0
		nop
..@j630:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000026D
%LINE 213+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c323:

SECTION .text
SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$0000026E:
..@c327:
; [223] end;
%LINE 223+0
		push	rbp
..@c329:
..@c330:
		mov	rbp,rcx
..@c331:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [220] begin
%LINE 220+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c328:

SECTION .text
	GLOBAL fpc_write_text_qword
fpc_write_text_qword:
..@c332:
		push	rbp
..@c334:
..@c335:
		mov	rbp,rsp
..@c336:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var q located in register rcx
		mov	qword [rbp-8],0
..@j643:
		nop
..@j639:
; [221] s := itoa(q); // @@todo: itoa64 / signed / unsigned
%LINE 221+0
		mov	edx,10
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_pchar_to_ansistr
; [222] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 222+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j644
		mov	r8,qword [r8-8]
..@j644:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j641:
%LINE 220+0
		nop
..@j640:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$0000026E
%LINE 223+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c333:

SECTION .text
SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000026F:
..@c337:
; [232] end;
%LINE 232+0
		push	rbp
..@c339:
..@c340:
		mov	rbp,rcx
..@c341:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [228] begin
%LINE 228+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c338:

SECTION .text
	GLOBAL fpc_write_text_boolean
fpc_write_text_boolean:
..@c342:
		push	rbp
..@c344:
..@c345:
		mov	rbp,rsp
..@c346:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
; Var b located in register r8b
		mov	qword [rbp-8],0
..@j653:
		nop
..@j649:
; [230] if b then s := 'TRUE' else s := 'FALSE';
%LINE 230+0
		test	r8b,r8b
		je	..@j655
		lea	rcx,[rbp-8]
		lea	rdx,[..@d22]
		call	fpc_ansistr_assign
		jmp	..@j656
..@j655:
		lea	rcx,[rbp-8]
		lea	rdx,[..@d23]
		call	fpc_ansistr_assign
..@j656:
; [231] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 231+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j657
		mov	r8,qword [r8-8]
..@j657:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j651:
%LINE 228+0
		nop
..@j650:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000026F
%LINE 232+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c343:

SECTION .text
	GLOBAL fpc_shortstr_setlength
fpc_shortstr_setlength:
	GLOBAL FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
..@c347:
; [strings.inc]
; [102] begin
%LINE 102+0 strings.inc
		mov	rax,rcx
; Var s located in register rax
; Var len located in register rdx
; [103] if len > 255 then len := 255;
%LINE 103+0
		cmp	rdx,255
		jng	..@j661
		mov	edx,255
..@j661:
; [104] s[0] := chr(len);
%LINE 104+0
		mov	byte [rax],dl
; [105] end;
%LINE 105+0
		ret
..@c348:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING:
..@c349:
; [111] begin
%LINE 111+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c351:
; Var len located in register eax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; Var cp located in register r8d
; [112] len := length(s2);
%LINE 112+0
		movzx	edi,byte [rsi]
; Var len located in register edi
; [113] setlength(result, len);
%LINE 113+0
		movsxd	rdx,edi
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [114] move(s2[1], result[1], len);
%LINE 114+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		movsxd	r8,edi
		lea	rcx,[rsi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [115] end;
%LINE 115+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c350:

SECTION .text
	GLOBAL fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
..@c352:
; [117] begin
%LINE 117+0
		lea	rsp,[rsp-40]
..@c354:
; Var $result located in register rax
; Var s2 located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; [118] result := fpcshortstrtoansistr(s2,cp);
%LINE 118+0
		call	SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
; [119] end;
%LINE 119+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c353:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING:
..@c355:
; [133] begin
%LINE 133+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c357:
; Var l located in register eax
		mov	rbx,rcx
; Var res located in register rbx
		mov	rsi,rdx
; Var sstr located in register rsi
; [134] l := pbyte(@sstr[0])^;
%LINE 134+0
		mov	rax,rsi
		movzx	edi,byte [rax]
; Var l located in register edi
; [135] setlength(res, l);
%LINE 135+0
		mov	edx,edi
		mov	rcx,rbx
		call	fpc_shortstr_setlength
; [136] move(sstr[1], res[1], l);
%LINE 136+0
		mov	r8d,edi
		lea	rdx,[rbx+1]
		lea	rcx,[rsi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [137] end;
%LINE 137+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c356:

SECTION .text
	GLOBAL fpc_shortstr_to_shortstr
fpc_shortstr_to_shortstr:
	GLOBAL FPC_SHORTSTR_TO_SHORTSTR
FPC_SHORTSTR_TO_SHORTSTR:
..@c358:
; [139] begin
%LINE 139+0
		lea	rsp,[rsp-40]
..@c360:
; Var res located in register rax
; Var sstr located in register rdx
; [140] fpc_shortstr_toshortstr(res, sstr);
%LINE 140+0
		call	SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
; [141] end;
%LINE 141+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c359:

SECTION .text
	GLOBAL fpc_val_sint_shortstr
fpc_val_sint_shortstr:
	GLOBAL FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
..@c361:
; [152] begin
%LINE 152+0
		push	rbx
		lea	rsp,[rsp-32]
..@c363:
; Var $result located in register rdx
; Var destsize located in register rcx
; Var s located in register rdx
; Var code located in register r8
; [153] writeln('fpc_val_sint_shortstr');
%LINE 153+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld24]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [154] end;
%LINE 154+0
		mov	rax,rdx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c362:

SECTION .text
	GLOBAL fpc_shortstr_sint
fpc_shortstr_sint:
	GLOBAL FPC_SHORTSTR_SINT
FPC_SHORTSTR_SINT:
..@c364:
; [157] begin
%LINE 157+0
		push	rbx
		lea	rsp,[rsp-32]
..@c366:
		mov	rax,rcx
; Var v located in register rax
; Var len located in register rdx
; Var s located in register r8
; [158] writeln('fpc_shortstr_sint');
%LINE 158+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld25]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [159] end;
%LINE 159+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c365:

SECTION .text
	GLOBAL fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
	GLOBAL FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
..@c367:
; [162] begin
%LINE 162+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c369:
		mov	rbx,rcx
; Var res located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [163] setlength(res, length(s2));
%LINE 163+0
		test	rdx,rdx
		je	..@j676
		mov	rdx,qword [rdx-8]
..@j676:
		mov	rcx,rbx
		call	fpc_shortstr_setlength
; [164] move(s2[1], res[1], length(s2));
%LINE 164+0
		mov	r8,rsi
		test	rsi,rsi
		je	..@j677
		mov	r8,qword [r8-8]
..@j677:
		lea	rdx,[rbx+1]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [165] end;
%LINE 165+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c368:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING:
..@c370:
; [171] begin
%LINE 171+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c372:
; Var len located in register eax
; Var cap located in register eax
; Var m located in register r14d
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s1 located in register rsi
		mov	rdi,r8
; Var s2 located in register rdi
; Var len located in register eax
; [172] len := 0;
%LINE 172+0
		xor	eax,eax
; Var cap located in register r12d
; [173] cap := 255;
%LINE 173+0
		mov	r12d,255
; [175] move(s1[1], dests[1], length(s1));
%LINE 175+0
		movzx	r8d,byte [rsi]
		lea	rdx,[rbx+1]
		lea	rcx,[rsi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [176] len := length(s1);
%LINE 176+0
		movzx	r13d,byte [rsi]
; Var len located in register r13d
; [178] dec(cap, length(s1));
%LINE 178+0
		movzx	eax,byte [rsi]
		sub	r12d,eax
; [179] if cap > 0 then begin
%LINE 179+0
		test	r12d,r12d
		jng	..@j681
; [181] m := length(s2);
%LINE 181+0
		movzx	r14d,byte [rdi]
; [182] if m > cap then m := cap;
%LINE 182+0
		cmp	r12d,r14d
		cmovl	r14d,r12d
; [183] move(s2[1], dests[length(s1)+1], m);
%LINE 183+0
		movzx	eax,byte [rsi]
		inc	eax
		movzx	eax,al
		lea	rdx,[rbx+rax*1]
		movsxd	r8,r14d
		lea	rcx,[rdi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [184] inc(len, m);
%LINE 184+0
		add	r13d,r14d
..@j681:
; [187] dests[0] := chr(len);
%LINE 187+0
		mov	byte [rbx],r13b
; [188] end;
%LINE 188+0
		nop
		lea	rsp,[rsp+40]
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c371:

SECTION .text
	GLOBAL fpc_shortstr_concat
fpc_shortstr_concat:
..@c373:
; [190] begin
%LINE 190+0
		lea	rsp,[rsp-40]
..@c375:
; Var dests located in register rax
; Var s1 located in register rdx
; Var s2 located in register r8
; [191] fpcshortstrconcat(dests, s1, s2);
%LINE 191+0
		call	SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
; [192] end;
%LINE 192+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c374:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING:
..@c376:
; [204] begin
%LINE 204+0
		lea	rsp,[rsp-40]
..@c378:
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
		mov	rcx,r8
; Var index located in register rcx
		mov	r8,r9
; Var count located in register r8
; [205] if count < 0 then count := 0;
%LINE 205+0
		test	r8,r8
		jnl	..@j689
		xor	r8,r8
..@j689:
; [206] if index > 1 then dec(index) else index := 0;
%LINE 206+0
		cmp	rcx,1
		jng	..@j691
		dec	rcx
		jmp	..@j692
..@j691:
		xor	ecx,ecx
..@j692:
; [207] if index > length(s) then
%LINE 207+0
		movzx	r9d,byte [rdx]
		cmp	r9,rcx
		jnl	..@j694
; [208] count := 0
%LINE 208+0
		xor	r8,r8
		jmp	..@j695
..@j694:
; [209] else if count > length(s)-index then
%LINE 209+0
		movzx	r9d,byte [rdx]
		sub	r9,rcx
		cmp	r9,r8
		jnl	..@j697
; [210] count := length(s)-index;
%LINE 210+0
		movzx	r9d,byte [rdx]
		sub	r9,rcx
		mov	r8,r9
..@j697:
..@j695:
; [211] result[0] := chr(count);
%LINE 211+0
		mov	byte [rax],r8b
; [212] move(s[index+1], result[1], count);
%LINE 212+0
		inc	rcx
		movzx	ecx,cl
		add	rcx,rdx
		lea	rdx,[rax+1]
; Var count located in register r8
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [213] end;
%LINE 213+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c377:

SECTION .text
	GLOBAL fpc_shortstr_copy
fpc_shortstr_copy:
..@c379:
; [215] begin
%LINE 215+0
		lea	rsp,[rsp-40]
..@c381:
; Var $result located in register rax
; Var s located in register rdx
; Var index located in register r8
; Var count located in register r9
; Var count located in register r9
; Var index located in register r8
; [216] result := fpcshortstrcopy(s, index, count);
%LINE 216+0
		call	SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
; [217] end;
%LINE 217+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c380:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER:
..@c382:
; [229] begin
%LINE 229+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c384:
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [230] if dests = s2 then exit;
%LINE 230+0
		cmp	rsi,qword [rbx]
		je	..@j700
; [231] if s2 <> nil then
%LINE 231+0
		test	rsi,rsi
		je	..@j705
; [232] if PAnsiRec(s2-AnsiFirstOff)^.Ref > 0 then
%LINE 232+0
		cmp	qword [rsi-16],0
		jng	..@j707
; [234] inc(PAnsiRec(s2-AnsiFirstOff)^.Ref);
%LINE 234+0
		inc	qword [rsi-16]
..@j707:
..@j705:
; [236] fpc_ansistr_decr_ref(dests);
%LINE 236+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
; Var s2 located in register rsi
; [238] dests := s2;
%LINE 238+0
		mov	qword [rbx],rsi
..@j700:
; [239] end;
%LINE 239+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c383:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c385:
; [241] begin
%LINE 241+0
		lea	rsp,[rsp-40]
..@c387:
; Var dests located in register rax
; Var s2 located in register rdx
; Var s2 located in register rdx
; [242] fpcansistrassign(dests, s2);
%LINE 242+0
		call	SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
; [243] end;
%LINE 243+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c386:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD:
..@c388:
; [258] begin
%LINE 258+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c390:
; Var Temp located at rsp+32, size=OS_64
; Var lens located in register rdi
; Var lena located in register rax
		mov	rbx,rcx
; Var S located in register rbx
		mov	rsi,rdx
; Var l located in register rsi
		mov	edi,r8d
; Var cp located in register edi
; [259] if (l > 0) then begin
%LINE 259+0
		test	rsi,rsi
		jng	..@j713
; [260] if Pointer(S) = nil then begin
%LINE 260+0
		cmp	qword [rbx],0
		jne	..@j715
; [261] Pointer(S) := new_ansistring(L);
%LINE 261+0
		mov	rcx,rsi
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [263] cp := 0;
%LINE 263+0
		xor	edi,edi
; [264] PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage := cp;
%LINE 264+0
		mov	rax,qword [rbx]
		mov	dword [rax-32],0
		jmp	..@j716
..@j715:
; [265] end else if PAnsiRec(Pointer(S) - AnsiFirstOff)^.Ref = 1 then begin
%LINE 265+0
		mov	rax,qword [rbx]
		cmp	qword [rax-16],1
		jne	..@j718
; [266] Temp := Pointer(s) - AnsiFirstOff;
%LINE 266+0
		mov	rax,qword [rbx]
		sub	rax,32
		mov	qword [rsp+32],rax
; [268] lens := 4;
%LINE 268+0
		mov	edi,4
; [269] lena := AnsiFirstOff + L + sizeof(ansichar);
%LINE 269+0
		lea	rax,[rsi+32]
		inc	rax
; [271] if (lena > lens) or ((lens > 32) and (lena <= SizeInt(SizeUint(lens) div 2))) then pointer(s) := xreallocmem(temp, 4) + AnsiFirstOff;
%LINE 271+0
		cmp	rax,4
		jng	..@j721
		lea	rcx,[rsp+32]
		mov	edx,4
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
		add	rax,32
		mov	qword [rbx],rax
		jmp	..@j721
..@j718:
; [274] Temp := new_ansistring(4);
%LINE 274+0
		mov	ecx,4
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rsp+32],rax
; [275] PAnsiRec(Pointer(Temp) - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
%LINE 275+0
		mov	rax,qword [rbx]
		mov	rdx,qword [rsp+32]
		mov	eax,dword [rax-32]
		mov	dword [rdx-32],eax
; [278] lens := PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len + 1;
%LINE 278+0
		mov	rax,qword [rbx]
		mov	rax,qword [rax-8]
		inc	rax
		mov	rdi,rax
; [279] if l < lens then lens := l;
%LINE 279+0
		cmp	rdi,rsi
		cmovg	rdi,rsi
; [280] Move(Pointer(S)^, Temp^, lens);
%LINE 280+0
		mov	rcx,qword [rbx]
		mov	rdx,qword [rsp+32]
		mov	r8,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [281] fpc_ansistr_decr_ref(Pointer(s));
%LINE 281+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
; [282] Pointer(S) := Temp;
%LINE 282+0
		mov	rax,qword [rsp+32]
		mov	qword [rbx],rax
..@j721:
..@j716:
; [285] pbyte(Pointer(S) + l)^ := 0;
%LINE 285+0
		mov	rax,qword [rbx]
		add	rax,rsi
		mov	byte [rax],0
; [286] PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len := l;
%LINE 286+0
		mov	rax,qword [rbx]
		mov	qword [rax-8],rsi
		jmp	..@j724
..@j713:
; [288] fpc_ansistr_decr_ref(Pointer(S));
%LINE 288+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
..@j724:
; [289] end;
%LINE 289+0
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c389:

SECTION .text
	GLOBAL fpc_ansistr_setlength
fpc_ansistr_setlength:
	GLOBAL FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
..@c391:
; [291] begin
%LINE 291+0
		lea	rsp,[rsp-40]
..@c393:
; Var s located in register rax
; Var l located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; Var l located in register rdx
; [292] fpcansistrsetlength(S, l, cp);
%LINE 292+0
		call	SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
; [293] end;
%LINE 293+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c392:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRDECRREF$POINTER
SYSTEM_$$_FPCANSISTRDECRREF$POINTER:
..@c394:
; [307] begin
%LINE 307+0
		lea	rsp,[rsp-40]
..@c396:
; Var p located in register rax
		mov	rax,rcx
; Var s located in register rax
; [308] if s = nil then exit;
%LINE 308+0
		cmp	qword [rax],0
		je	..@j727
; [309] p := PAnsiRec(s-AnsiFirstOff);
%LINE 309+0
		mov	rdx,qword [rax]
		lea	rcx,[rdx-32]
; Var p located in register rcx
; [310] s := nil;
%LINE 310+0
		mov	qword [rax],0
; [311] if p^.ref < 0 then exit;
%LINE 311+0
		cmp	qword [rcx+16],0
		jl	..@j727
; Var p located in register rcx
; [315] dec(p^.Ref);
%LINE 315+0
		dec	qword [rcx+16]
; [316] if p^.Ref <= 0 then FreeMem(p);
%LINE 316+0
		cmp	qword [rcx+16],0
		jnle	..@j734
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j734:
..@j727:
; [317] end;
%LINE 317+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c395:

SECTION .text
	GLOBAL fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
	GLOBAL FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
..@c397:
; [319] begin
%LINE 319+0
		lea	rsp,[rsp-40]
..@c399:
; Var s located in register rax
; [320] fpcansistrdecrref(s);
%LINE 320+0
		call	SYSTEM_$$_FPCANSISTRDECRREF$POINTER
; [321] end;
%LINE 321+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c398:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRINCRREF$POINTER
SYSTEM_$$_FPCANSISTRINCRREF$POINTER:
..@c400:
; [336] begin
%LINE 336+0
		mov	rax,rcx
; Var s located in register rax
; [337] if s = nil then exit;
%LINE 337+0
		test	rcx,rcx
		je	..@j737
; [338] if PAnsiRec(s-AnsiFirstOff)^.Ref < 0 then exit;
%LINE 338+0
		cmp	qword [rax-16],0
		jl	..@j737
; Var s located in register rax
; [340] inc(PAnsiRec(s-AnsiFirstOff)^.Ref);
%LINE 340+0
		inc	qword [rax-16]
..@j737:
; [342] end;
%LINE 342+0
		ret
..@c401:

SECTION .text
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
..@c402:
; [344] begin
%LINE 344+0
		lea	rsp,[rsp-40]
..@c404:
; Var s located in register rax
; Var s located in register rcx
; [345] fpcansistrincrref(s);
%LINE 345+0
		call	SYSTEM_$$_FPCANSISTRINCRREF$POINTER
; [346] end;
%LINE 346+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c403:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD:
..@c405:
; [358] begin
%LINE 358+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c407:
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s1 located in register rsi
		mov	rdi,r8
; Var s2 located in register rdi
; Var cp located in register r9d
; [359] pointer(dests) := new_ansistring(length(s1)+length(s2));
%LINE 359+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j747
		mov	rax,qword [rax-8]
..@j747:
		mov	rdx,rdi
		test	rdi,rdi
		je	..@j748
		mov	rdx,qword [rdx-8]
..@j748:
		lea	rcx,[rax+rdx]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [360] move(s1[1], dests[1], length(s1));
%LINE 360+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8,rsi
		test	rsi,rsi
		je	..@j749
		mov	r8,qword [r8-8]
..@j749:
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [361] move(s2[1], dests[length(s1)+1], length(s2));
%LINE 361+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		test	rsi,rsi
		je	..@j750
		mov	rsi,qword [rsi-8]
..@j750:
		lea	rdx,[rsi+1]
		lea	rdx,[rax+rdx*1-1]
		mov	r8,rdi
		test	rdi,rdi
		je	..@j751
		mov	r8,qword [r8-8]
..@j751:
		mov	rcx,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [362] end;
%LINE 362+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c406:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c408:
; [364] begin
%LINE 364+0
		lea	rsp,[rsp-40]
..@c410:
; Var dests located in register rax
; Var s1 located in register rdx
; Var s2 located in register r8
; Var cp located in register r9d
; Var cp located in register r9d
; Var s2 located in register r8
; Var s1 located in register rdx
; [365] fpcansistrconcat(dests, s1, s2, cp);
%LINE 365+0
		call	SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
; [366] end;
%LINE 366+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c409:

SECTION .text
	GLOBAL fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
..@c411:
; Temps allocated between rbp-8 and rbp+0
; [377] begin
%LINE 377+0
		push	rbp
..@c413:
..@c414:
		mov	rbp,rsp
..@c415:
		lea	rsp,[rsp-48]
		mov	qword [rbp-8],rbx
		mov	rax,rcx
; Var dests located in register rax
; Var sarr located in register rdx
; Var $highSARR located in register r8
; Var cp located in register r9d
; [378] writeln('fpc_ansistr_concat_multi');
%LINE 378+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld26]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [379] end;
%LINE 379+0
		mov	rbx,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c412:

SECTION .text
	GLOBAL SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER:
..@c416:
; [386] begin
%LINE 386+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c418:
; Var $result located in register rax
; Var SNew located in register rax
; Var L located in register rax
		mov	rbx,rcx
; Var S located in register rbx
; [387] L := PAnsiRec(Pointer(S) - AnsiFirstOff)^.len;
%LINE 387+0
		mov	rax,qword [rbx]
; Var L located in register rsi
		mov	rsi,qword [rax-8]
; Var L located in register rsi
; [388] SNew := new_ansistring(L);
%LINE 388+0
		mov	rcx,rsi
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	rdi,rax
; Var SNew located in register rdi
; [389] Move(Pointer(S)^, SNew^, L + 1);
%LINE 389+0
		mov	rcx,qword [rbx]
		lea	r8,[rsi+1]
; Var SNew located in register rdi
		mov	rdx,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [390] PAnsiRec(SNew - AnsiFirstOff)^.len := L;
%LINE 390+0
		mov	rax,rdi
; Var SNew located in register rax
; Var L located in register rsi
		mov	qword [rax-8],rsi
; [391] PAnsiRec(SNew - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
%LINE 391+0
		mov	rdx,qword [rbx]
; Var SNew located in register rax
		mov	edx,dword [rdx-32]
		mov	dword [rax-32],edx
; Var SNew located in register rax
; [393] pointer(S) := SNew;
%LINE 393+0
		mov	qword [rbx],rax
; Var $result located in register rax
; Var SNew located in register rax
; [395] end;
%LINE 395+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c417:

SECTION .text
SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
..@c419:
; [397] begin
%LINE 397+0
		lea	rsp,[rsp-40]
..@c421:
; Var $result located in register rax
; Var S located in register rcx
; [398] result := fpctruelyansistrunique(s);
%LINE 398+0
		call	SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
; Var $result located in register rax
; [399] end;
%LINE 399+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c420:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
	GLOBAL FPC_ANSISTR_UNIQUE
FPC_ANSISTR_UNIQUE:
..@c422:
; [410] begin
%LINE 410+0
		push	rbx
		lea	rsp,[rsp-32]
..@c424:
; Var $result located in register rax
; Var s located in register rcx
; Var $result located in register rbx
; [411] pointer(result) := pointer(s);
%LINE 411+0
		mov	rbx,qword [rcx]
; [412] if (result <> nil) and (PAnsiRec(result - AnsiFirstOff)^.Ref <> 1) then result := fpc_truely_ansistr_unique(s);
%LINE 412+0
		test	rbx,rbx
		je	..@j763
		cmp	qword [rbx-16],1
		je	..@j763
		call	SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
		mov	rbx,rax
..@j763:
; [413] end;
%LINE 413+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c423:

SECTION .text
	GLOBAL fpc_ansistr_sint
fpc_ansistr_sint:
	GLOBAL FPC_ANSISTR_VALSINT
FPC_ANSISTR_VALSINT:
..@c425:
; [416] begin
%LINE 416+0
		push	rbx
		lea	rsp,[rsp-32]
..@c427:
		mov	rax,rcx
; Var v located in register rax
; Var len located in register rdx
; Var s located in register r8
; Var cp located in register r9d
		mov	qword [r8],0
; [417] writeln('fpc_ansistr_sint');
%LINE 417+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld27]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [418] end;
%LINE 418+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c426:

SECTION .text
	GLOBAL SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING:
..@c428:
; [422] begin
%LINE 422+0
		push	rbx
		lea	rsp,[rsp-48]
..@c430:
; Var c located at rsp+32, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
		mov	byte [rsp+32],dl
; Var cp located in register r8d
; [423] pointer(result) := new_ansistring(1);
%LINE 423+0
		mov	ecx,1
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [424] move(c, result[1], 1);
%LINE 424+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		lea	rcx,[rsp+32]
		mov	r8d,1
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [425] end;
%LINE 425+0
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c429:

SECTION .text
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c431:
; [427] begin
%LINE 427+0
		lea	rsp,[rsp-40]
..@c433:
; Var $result located in register rax
; Var c located in register dl
; Var cp located in register r8d
; Var cp located in register r8d
; Var c located in register dl
; [428] Exit(fpcchartoansistr(c, cp));
%LINE 428+0
		movzx	edx,dl
		call	SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
; [429] end;
%LINE 429+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c432:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64:
..@c434:
; [442] begin
%LINE 442+0
		push	rbx
		lea	rsp,[rsp-32]
..@c436:
; Var $result located in register rbx
; Var s1 located in register rcx
; Var s2 located in register rdx
; [443] if pointer(s1) = pointer(s2) then exit(0);
%LINE 443+0
		cmp	rdx,rcx
		jne	..@j774
		xor	ebx,ebx
		jmp	..@j771
..@j774:
; [444] if (pointer(s1) = nil) or (pointer(s2) = nil) then exit(-1);
%LINE 444+0
		test	rcx,rcx
		je	..@j775
		test	rdx,rdx
		jne	..@j777
..@j775:
		mov	rbx,-1
		jmp	..@j771
..@j777:
; [445] if length(s1) <> length(s2) then exit(-1);
%LINE 445+0
		mov	rax,rcx
		test	rcx,rcx
		je	..@j778
		mov	rax,qword [rax-8]
..@j778:
		mov	r8,rdx
		test	rdx,rdx
		je	..@j779
		mov	r8,qword [r8-8]
..@j779:
		cmp	rax,r8
		je	..@j781
		mov	rbx,-1
		jmp	..@j771
..@j781:
; [446] result := CompareByte(s1[1], s2[1], length(s1));
%LINE 446+0
		mov	r8,rcx
		test	rcx,rcx
		je	..@j782
		mov	r8,qword [r8-8]
..@j782:
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		mov	rbx,rax
..@j771:
; [447] end;
%LINE 447+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c435:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c437:
; [449] begin
%LINE 449+0
		lea	rsp,[rsp-40]
..@c439:
; Var $result located in register rax
; Var s1 located in register rcx
; Var s2 located in register rdx
; Var s2 located in register rdx
; Var s1 located in register rcx
; [450] result := fpcansistrcompareequal(s1, s2);
%LINE 450+0
		call	SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
; Var $result located in register rax
; [451] end;
%LINE 451+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c438:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING:
..@c440:
; [465] begin
%LINE 465+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c442:
; Var ResultAddress located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
		mov	rdi,r8
; Var index located in register rdi
		mov	r12,r9
; Var size located in register r12
; Var ResultAddress located in register r13
; [466] ResultAddress:=Nil;
%LINE 466+0
		xor	r13,r13
; [467] dec(index);
%LINE 467+0
		dec	rdi
; [468] if Index < 0 then
%LINE 468+0
		test	rdi,rdi
		jnl	..@j788
; [469] Index := 0;
%LINE 469+0
		xor	edi,edi
..@j788:
; [472] if (Size>Length(S)) or
%LINE 472+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j789
		mov	rax,qword [rax-8]
..@j789:
		cmp	rax,r12
		jl	..@j790
; [473] (Index+Size>Length(S)) then
%LINE 473+0
		lea	rdx,[rdi+r12]
		cmp	rdx,rax
		jng	..@j792
..@j790:
; [474] Size:=Length(S)-Index;
%LINE 474+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j793
		mov	rax,qword [rax-8]
..@j793:
		sub	rax,rdi
		mov	r12,rax
..@j792:
; [475] If Size>0 then
%LINE 475+0
		test	r12,r12
		jng	..@j795
; [477] ResultAddress:=new_ansistring(size);
%LINE 477+0
		mov	rcx,r12
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	r13,rax
; [478] if ResultAddress<>Nil then
%LINE 478+0
		test	rax,rax
		je	..@j797
; [480] Move(Pointer(Pointer(S)+index)^,ResultAddress^,Size);
%LINE 480+0
		lea	rcx,[rsi+rdi]
		mov	rdx,r13
		mov	r8,r12
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [481] PByte(ResultAddress+Size)^:=0;
%LINE 481+0
		lea	rax,[r12+r13]
		mov	byte [rax],0
; [482] PAnsiRec(ResultAddress-AnsiFirstOff)^.Len:=Size;
%LINE 482+0
		mov	qword [r13-8],r12
; [483] PAnsiRec(ResultAddress-AnsiFirstOff)^.CodePage:=PAnsiRec(Pointer(S)-AnsiFirstOff)^.CodePage;
%LINE 483+0
		mov	eax,dword [rsi-32]
		mov	dword [r13-32],eax
..@j797:
..@j795:
; [486] fpc_ansistr_decr_ref(Pointer(fpcansistrcopy));
%LINE 486+0
		mov	rcx,rbx
		call	FPC_ANSISTR_DECR_REF
; Var ResultAddress located in register r13
; [487] Pointer(fpcansistrCopy):=ResultAddress;
%LINE 487+0
		mov	qword [rbx],r13
; [488] end;
%LINE 488+0
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c441:

SECTION .text
	GLOBAL fpc_ansistr_copy
fpc_ansistr_copy:
..@c443:
; [498] begin
%LINE 498+0
		lea	rsp,[rsp-40]
..@c445:
; Var $result located in register rax
; Var s located in register rdx
; Var index located in register r8
; Var size located in register r9
; Var size located in register r9
; Var index located in register r8
; Var s located in register rdx
; [499] result := fpcansistrcopy(s, index, size);
%LINE 499+0
		call	SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
; [500] end;
%LINE 500+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c444:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER:
..@c446:
; [512] begin
%LINE 512+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c448:
		mov	rbx,rcx
; Var s1 located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [513] if s1 = s2 then exit;
%LINE 513+0
		cmp	rsi,qword [rbx]
		je	..@j800
; [514] if s2 <> nil then begin
%LINE 514+0
		test	rsi,rsi
		je	..@j805
; [515] setlength(widestring(s1), length(widestring(s2)));
%LINE 515+0
		mov	rdx,rsi
		test	rsi,rsi
		je	..@j806
		mov	edx,dword [rdx-4]
		shr	rdx,1
..@j806:
		mov	rcx,rbx
		call	fpc_widestr_setlength
; [516] move(s2^, s1^, length(widestring(s1))+1*sizeof(WideChar));
%LINE 516+0
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j807
		mov	eax,dword [rax-4]
		shr	rax,1
..@j807:
		lea	r8,[rax+2]
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
		jmp	..@j808
..@j805:
; [518] fpc_widestr_decr_ref(s1); // will set s1 to nil
%LINE 518+0
		mov	rcx,rbx
		call	fpc_widestr_decr_ref
..@j808:
..@j800:
; [519] end;
%LINE 519+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c447:

SECTION .text
	GLOBAL fpc_widestr_assign
fpc_widestr_assign:
	GLOBAL FPC_WIDESTR_ASSIGN
FPC_WIDESTR_ASSIGN:
..@c449:
; [521] begin
%LINE 521+0
		lea	rsp,[rsp-40]
..@c451:
; Var s1 located in register rax
; Var s2 located in register rdx
; Var s2 located in register rdx
; [522] fpcwidestrassign(s1, s2);
%LINE 522+0
		call	SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
; [523] end;
%LINE 523+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c450:

SECTION .text
	GLOBAL fpc_widestr_setlength
fpc_widestr_setlength:
	GLOBAL FPC_WIDESTR_SETLENGTH
FPC_WIDESTR_SETLENGTH:
..@c452:
; [534] begin
%LINE 534+0
		push	rbx
		lea	rsp,[rsp-32]
..@c454:
		mov	rbx,rcx
; Var s located in register rbx
		mov	rcx,rdx
; Var l located in register rcx
; Var l located in register rcx
; [535] pointer(s) := new_widestring(l);
%LINE 535+0
		call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [536] end;
%LINE 536+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c453:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
SYSTEM_$$_FPCWIDESTRDECRREF$POINTER:
..@c455:
; [540] Begin
%LINE 540+0
		push	rbx
		lea	rsp,[rsp-32]
..@c457:
		mov	rbx,rcx
; Var s located in register rbx
; [541] if s = nil then exit;
%LINE 541+0
		cmp	qword [rbx],0
		je	..@j813
; [542] dec(s, WideFirstOff);
%LINE 542+0
		sub	qword [rbx],4
; [543] xfreemem(s);
%LINE 543+0
		mov	rcx,qword [rbx]
		call	_$dll$rtllib$xfreemem
; [544] s := nil;
%LINE 544+0
		mov	qword [rbx],0
..@j813:
; [545] end;
%LINE 545+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c456:

SECTION .text
	GLOBAL fpc_widestr_decr_ref
fpc_widestr_decr_ref:
	GLOBAL FPC_WIDESTR_DECR_REF
FPC_WIDESTR_DECR_REF:
..@c458:
; [547] begin
%LINE 547+0
		lea	rsp,[rsp-40]
..@c460:
; Var s located in register rax
; [548] fpcwidestrdecrref(s);
%LINE 548+0
		call	SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
; [549] end;
%LINE 549+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c459:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
SYSTEM_$$_FPCWIDESTRINCRREF$POINTER:
..@c461:
; [566] Begin
%LINE 566+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c463:
; Var p located in register rax
		mov	rbx,rcx
; Var s located in register rbx
; [567] if s = nil then exit;
%LINE 567+0
		cmp	qword [rbx],0
		je	..@j819
; [568] p := new_widestring(length(WideString(s)));
%LINE 568+0
		mov	rcx,qword [rbx]
		test	rcx,rcx
		je	..@j823
		mov	ecx,dword [rcx-4]
		shr	rcx,1
..@j823:
		call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
		mov	rsi,rax
; Var p located in register rsi
; [569] move(s^, p^, (length(WideString(s))+1)*sizeof(widechar));
%LINE 569+0
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j824
		mov	eax,dword [rax-4]
		shr	rax,1
..@j824:
		lea	r8,[rax+1]
		shl	r8,1
		mov	rcx,qword [rbx]
; Var p located in register rsi
		mov	rdx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; Var p located in register rsi
; [570] s := p;
%LINE 570+0
		mov	qword [rbx],rsi
..@j819:
; [571] end;
%LINE 571+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c462:

SECTION .text
	GLOBAL fpc_widestr_incr_ref
fpc_widestr_incr_ref:
	GLOBAL FPC_WIDESTR_INCR_REF
FPC_WIDESTR_INCR_REF:
..@c464:
; [573] begin
%LINE 573+0
		lea	rsp,[rsp-40]
..@c466:
; Var s located in register rax
; [574] fpcwidestrincrref(s);
%LINE 574+0
		call	SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
; [575] end;
%LINE 575+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c465:

SECTION .text
	GLOBAL fpc_pchar_to_shortstr
fpc_pchar_to_shortstr:
	GLOBAL FPC_PCHAR_TO_SHORTSTR
FPC_PCHAR_TO_SHORTSTR:
..@c467:
; [593] begin
%LINE 593+0
		push	rbx
		lea	rsp,[rsp-32]
..@c469:
		mov	rax,rcx
; Var res located in register rax
; Var p located in register rdx
; [594] writeln('fpc_pchar_to_shortstr');
%LINE 594+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld28]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [595] end;
%LINE 595+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c468:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING:
..@c470:
; [601] begin
%LINE 601+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c472:
; Var l located in register eax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var p located in register rsi
; Var cp located in register r8d
; Var p located in register rsi
; [602] l := strlen(p);
%LINE 602+0
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	edi,eax
; Var l located in register edi
; [603] pointer(result) := new_ansistring(l);
%LINE 603+0
		mov	ecx,edi
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [604] move(p^, result[1], l);
%LINE 604+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8d,edi
		mov	rcx,rsi
; Var p located in register rcx
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [605] end;
%LINE 605+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c471:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c473:
; [607] begin
%LINE 607+0
		lea	rsp,[rsp-40]
..@c475:
; Var $result located in register rax
; Var p located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; Var p located in register rdx
; [608] result := fpcpchartoansistr(p, cp);
%LINE 608+0
		call	SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
; [609] end;
%LINE 609+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c474:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING:
..@c476:
; [627] begin
%LINE 627+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c478:
; Var len located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var p located in register rsi
; [628] result := '';
%LINE 628+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_widestr_assign
; [629] if p = nil then exit;
%LINE 629+0
		test	rsi,rsi
		je	..@j833
; Var p located in register rsi
; [630] len := IndexWord(p^, -1, 0);
%LINE 630+0
		mov	rcx,rsi
		xor	r8d,r8d
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	rdi,rax
; Var len located in register rdi
; [631] setlength(result, len);
%LINE 631+0
		mov	rcx,rbx
; Var len located in register rdi
		mov	rdx,rdi
		call	fpc_widestr_setlength
; [632] if len > 0 then move(p^, result[1], len*2);
%LINE 632+0
		test	rdi,rdi
		jng	..@j838
		mov	r8,rdi
		shl	r8,1
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j838:
..@j833:
; [633] end;
%LINE 633+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c477:

SECTION .text
	GLOBAL fpc_pwidechar_to_widestr
fpc_pwidechar_to_widestr:
..@c479:
; [635] begin
%LINE 635+0
		lea	rsp,[rsp-40]
..@c481:
; Var $result located in register rax
; Var p located in register rdx
; Var p located in register rdx
; [636] result := fpcpwidechartowidestr(p);
%LINE 636+0
		call	SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
; [637] end;
%LINE 637+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c480:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING:
..@c482:
; [651] begin
%LINE 651+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c484:
; Var len located in register rax
; Var i located in register r12
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var p located in register rsi
; Var cp located in register r8d
; [652] result := '';
%LINE 652+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [653] if p = nil then exit;
%LINE 653+0
		test	rsi,rsi
		je	..@j841
; Var p located in register rsi
; [654] len := IndexWord(p^, -1, 0);
%LINE 654+0
		mov	rcx,rsi
		xor	r8d,r8d
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	rdi,rax
; Var len located in register rdi
; [655] setlength(result, len);
%LINE 655+0
		mov	rcx,rbx
; Var len located in register rdi
		mov	rdx,rdi
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [656] if len > 0 then begin
%LINE 656+0
		test	rdi,rdi
		jng	..@j846
; [657] for i := 0 to len-1 do begin
%LINE 657+0
		dec	rdi
		test	rdi,rdi
		jnge	..@j848
		mov	r12,-1
..@j849:
		inc	r12
; [659] result[1+i] := PAnsiChar(p+i)^;
%LINE 659+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		lea	rcx,[r12+1]
		mov	rdx,r12
		shl	rdx,1
		add	rdx,rsi
		mov	dl,byte [rdx]
		mov	byte [rax+rcx*1-1],dl
%LINE 657+0
		cmp	rdi,r12
		jnle	..@j849
..@j848:
..@j846:
..@j841:
; [662] end;
%LINE 662+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c483:

SECTION .text
	GLOBAL fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
..@c485:
; [664] begin
%LINE 664+0
		lea	rsp,[rsp-40]
..@c487:
; Var $result located in register rax
; Var p located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; Var p located in register rdx
; [665] result := fpcpwidechartoansistr(p, cp);
%LINE 665+0
		call	SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
; [666] end;
%LINE 666+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c486:

SECTION .text
	GLOBAL fpc_uchar_to_ansistr
fpc_uchar_to_ansistr:
..@c488:
; [681] begin
%LINE 681+0
		push	rbx
		lea	rsp,[rsp-32]
..@c490:
		mov	rax,rcx
; Var $result located in register rax
; Var c located in register dx
; Var cp located in register r8d
; [682] writeln('fpc_uchar_to_ansistr');
%LINE 682+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld29]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [683] end;
%LINE 683+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c489:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD:
..@c491:
; Var $result located in register eax
; Var p located in register rcx
; [691] begin
%LINE 691+0
; Var $result located in register eax
; [692] result := 0;
%LINE 692+0
		mov	eax,0
; [693] if p = nil then exit;
%LINE 693+0
		test	rcx,rcx
		jne	..@j861
		ret
; [694] while (p+result)^ <> #0 do inc(result);
%LINE 694+0
		jmp	..@j861
..@j860:
		inc	eax
..@j861:
		mov	edx,eax
		add	rdx,rcx
		cmp	byte [rdx],0
		jne	..@j860
; [695] end;
%LINE 695+0
		ret
..@c492:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN$PCHAR$$LONGWORD:
..@c493:
; [697] begin
%LINE 697+0
		lea	rsp,[rsp-40]
..@c495:
; Var $result located in register eax
; Var p located in register rcx
; Var p located in register rcx
; [698] Exit(strlen_(p));
%LINE 698+0
		call	SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
; Var $result located in register eax
; [699] end;
%LINE 699+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c494:

SECTION .text
SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000279:
..@c496:
; [719] end;
%LINE 719+0
		push	rbp
..@c498:
..@c499:
		mov	rbp,rcx
..@c500:
		lea	rsp,[rsp-32]
; [717] begin
%LINE 717+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c497:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD
SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD:
..@c501:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c503:
..@c504:
		mov	rbp,rsp
..@c505:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var s located at rbp-8, size=OS_64
; Var $result located in register ebx
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j873:
		nop
..@j869:
; [718] result := length(s);
%LINE 718+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j874
		mov	rax,qword [rax-8]
..@j874:
		mov	ebx,eax
..@j871:
%LINE 717+0
		nop
..@j870:
		mov	rcx,rbp
		call	SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000279
%LINE 719+0
		mov	eax,ebx
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c502:

SECTION .text
	GLOBAL SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
SYSTEM_$$_NEWANSISTRING$INT64$$POINTER:
..@c506:
; [724] begin
%LINE 724+0
		push	rbx
		lea	rsp,[rsp-32]
..@c508:
; Var $result located in register rax
		mov	rbx,rcx
; Var len located in register rbx
; [725] result := GetMem(len+(AnsiFirstOff+SizeOf(AnsiChar)));
%LINE 725+0
		lea	rcx,[rbx+33]
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
; Var $result located in register rax
; [726] if result = nil then exit;
%LINE 726+0
		test	rax,rax
		je	..@j875
; Var len located in register rbx
; [727] PAnsiRec(result)^.len := len;
%LINE 727+0
		mov	qword [rax+24],rbx
; [728] PAnsiRec(result)^.ref := 1;
%LINE 728+0
		mov	qword [rax+16],1
; [729] PAnsiRec(result)^.codepage := DefaultSystemCodePage;
%LINE 729+0
		mov	dword [rax],1250
; [730] PAnsiRec(result)^.elementsize := SizeOf(AnsiChar);
%LINE 730+0
		mov	word [rax+4],1
; [731] inc(result, AnsiFirstOff);
%LINE 731+0
		add	rax,32
; [732] PAnsiChar(result)^ := #0; // null terminated
%LINE 732+0
		mov	byte [rax],0
..@j875:
; [733] end;
%LINE 733+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c507:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER:
..@c509:
; [735] begin
%LINE 735+0
		lea	rsp,[rsp-40]
..@c511:
; Var $result located in register rax
; Var len located in register rcx
; Var len located in register rcx
; [736] result := newansistring(len);
%LINE 736+0
		call	SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
; Var $result located in register rax
; [737] end;
%LINE 737+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c510:

SECTION .text
	GLOBAL SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER:
..@c512:
; [750] begin
%LINE 750+0
		push	rbx
		lea	rsp,[rsp-32]
..@c514:
; Var $result located in register rax
		mov	rbx,rcx
; Var len located in register rbx
; [751] result := GetMem(len * sizeof(widechar) + WideRecLen);
%LINE 751+0
		mov	rax,rbx
		shl	rax,1
		lea	rcx,[rax+6]
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
; Var $result located in register rax
; [752] if result = nil then exit;
%LINE 752+0
		test	rax,rax
		je	..@j881
; [753] PWideRec(result)^.Len := len * 2;
%LINE 753+0
		shl	rbx,1
		mov	dword [rax],ebx
; [754] PWideRec(result)^.First := #0;
%LINE 754+0
		mov	word [rax+4],0
; [755] inc(result, WideFirstOff);
%LINE 755+0
		add	rax,4
..@j881:
; [756] end;
%LINE 756+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c513:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER:
..@c515:
; [758] begin
%LINE 758+0
		lea	rsp,[rsp-40]
..@c517:
; Var $result located in register rax
; Var len located in register rcx
; Var len located in register rcx
; [759] result := newwidestring(len);
%LINE 759+0
		call	SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
; Var $result located in register rax
; [760] end;
%LINE 760+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c516:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027A:
..@c518:
; [776] end;
%LINE 776+0
		push	rbp
..@c520:
..@c521:
		mov	rbp,rcx
..@c522:
		lea	rsp,[rsp-32]
; [772] begin
%LINE 772+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c519:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING:
..@c523:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c525:
..@c526:
		mov	rbp,rsp
..@c527:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var s located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
..@j895:
		nop
..@j891:
; [773] pointer(result) := new_ansistring(length(s));
%LINE 773+0
		mov	rcx,qword [rbp-8]
		test	rcx,rcx
		je	..@j896
		mov	rcx,qword [rcx-8]
..@j896:
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [774] setlength(result, length(s));
%LINE 774+0
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j897
		mov	rdx,qword [rdx-8]
..@j897:
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [775] move(s[1], result[1], length(s));
%LINE 775+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j898
		mov	r8,qword [r8-8]
..@j898:
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j893:
%LINE 772+0
		nop
..@j892:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027A
%LINE 776+0
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c524:

SECTION .text
SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027C:
..@c528:
; [780] end;
%LINE 780+0
		push	rbp
..@c530:
..@c531:
		mov	rbp,rcx
..@c532:
		lea	rsp,[rsp-32]
; [778] begin
%LINE 778+0
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c529:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING:
..@c533:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c535:
..@c536:
		mov	rbp,rsp
..@c537:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	rax,rcx
; Var $result located in register rax
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-16],0
..@j907:
		nop
..@j903:
; [779] makeuniqueansistring(s);
%LINE 779+0
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-16]
		call	SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
..@j905:
%LINE 778+0
		nop
..@j904:
		mov	rcx,rbp
		call	SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027C
%LINE 780+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c534:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000027D:
..@c538:
; [800] end;
%LINE 800+0
		push	rbp
..@c540:
..@c541:
		mov	rbp,rcx
..@c542:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
; [795] begin
%LINE 795+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c539:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER:
..@c543:
; Temps allocated between rbp-24 and rbp-16
		push	rbp
..@c545:
..@c546:
		mov	rbp,rsp
..@c547:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var $result located in register rbx
; Var a located at rbp-8, size=OS_64
; Var s located at rbp-16, size=OS_64
; Var p located in register rcx
		mov	qword [rbp-16],0
..@j916:
		nop
..@j912:
; [796] a := PAnsiRec(p-AnsiFirstOff);
%LINE 796+0
		lea	rax,[rcx-32]
		mov	qword [rbp-8],rax
; [797] pointer(s) := new_ansistring(a^.len);
%LINE 797+0
		mov	rcx,qword [rax+24]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbp-16],rax
; [798] move(a, s[1], a^.len);
%LINE 798+0
		lea	rcx,[rbp-16]
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	rax,qword [rbp-8]
		mov	r8,qword [rax+24]
		lea	rcx,[rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [799] pointer(result) := pointer(a+AnsiFirstOff);
%LINE 799+0
		mov	rax,qword [rbp-8]
		add	rax,1024
		mov	rbx,rax
..@j914:
%LINE 795+0
		nop
..@j913:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000027D
%LINE 800+0
		mov	rax,rbx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c544:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER:
..@c548:
; [802] begin
%LINE 802+0
		lea	rsp,[rsp-40]
..@c550:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [803] result := makeuniqueansistring(p);
%LINE 803+0
		call	SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
; Var $result located in register rax
; [804] end;
%LINE 804+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c549:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT:
..@c551:
; Var $result located in register eax
; Var i located in register eax
; Var c located in register r9b
; Var str located in register rcx
; [820] begin
%LINE 820+0
; Var $result located in register eax
; [821] result := 0;
%LINE 821+0
		xor	eax,eax
; Var i located in register r8d
; [822] i := 0;
%LINE 822+0
		xor	r8d,r8d
..@j921:
; [824] c := (str+i)^;
%LINE 824+0
		movsxd	rdx,r8d
		add	rdx,rcx
		mov	r9b,byte [rdx]
; [825] if c = #0 then break;
%LINE 825+0
		test	r9b,r9b
		je	..@j923
; [826] inc(i);
%LINE 826+0
		inc	r8d
; [827] result := result*10 + ord(c)-ord('0');
%LINE 827+0
		imul	r10d,eax,10
		movzx	edx,r9b
		add	edx,r10d
		sub	edx,48
		mov	eax,edx
; [823] while true do begin
%LINE 823+0
		jmp	..@j921
..@j923:
; [829] end;
%LINE 829+0
		ret
..@c552:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI$PANSICHAR$$LONGINT:
..@c553:
; [831] begin
%LINE 831+0
		lea	rsp,[rsp-40]
..@c555:
; Var $result located in register eax
; Var str located in register rcx
; Var str located in register rcx
; [832] result := atoi_exp(str);
%LINE 832+0
		call	SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
; Var $result located in register eax
; [833] end;
%LINE 833+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c554:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR:
..@c556:
; [865] begin
%LINE 865+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c558:
; Var $result located at rsp+32, size=OS_64
; Var i located in register eax
; Var rem located in register r8d
; Var neg located in register al
		mov	ebx,ecx
; Var num located in register ebx
		mov	esi,edx
; Var base located in register esi
; Var neg located in register dil
; [847] procedure reverse(str: pansichar; len: integer);
%LINE 847+0
		mov	dil,byte [TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg]
; [866] result := '0';
%LINE 866+0
		lea	rax,[..@d30]
		mov	qword [rsp+32],rax
; [868] if num = 0 then exit;
%LINE 868+0
		test	ebx,ebx
		je	..@j928
; [870] if num < 0 then begin
%LINE 870+0
		test	ebx,ebx
		jnl	..@j935
; [872] if base <> 10 then exit;
%LINE 872+0
		cmp	esi,10
		jne	..@j928
; [873] neg := true;
%LINE 873+0
		mov	dil,1
; [874] num := -num;
%LINE 874+0
		movsxd	rax,ebx
		neg	rax
		mov	ebx,eax
..@j935:
; [877] result := AllocMem(32);
%LINE 877+0
		mov	ecx,32
		call	SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
		mov	qword [rsp+32],rax
; Var i located in register r12d
; [879] i := 0;
%LINE 879+0
		xor	r12d,r12d
; [880] while num <> 0 do begin
%LINE 880+0
		jmp	..@j939
..@j938:
; [881] rem := num mod base;
%LINE 881+0
		movsxd	rax,ebx
		movsxd	rcx,esi
		cqo
		idiv	rcx
		mov	r8d,edx
; [882] if rem > 9 then result[i] := chr((rem-10)+ord('a')) else result[i] := chr(rem+ord('0'));
%LINE 882+0
		cmp	r8d,9
		jng	..@j942
		mov	rcx,qword [rsp+32]
		movsxd	rax,r12d
		lea	edx,[r8d-10]
		add	edx,97
		mov	byte [rcx+rax*1],dl
		jmp	..@j943
..@j942:
		mov	rcx,qword [rsp+32]
		movsxd	rax,r12d
		lea	edx,[r8d+48]
		mov	byte [rcx+rax*1],dl
..@j943:
; [883] inc(i);
%LINE 883+0
		inc	r12d
; [884] num := num div base;
%LINE 884+0
		movsxd	rax,ebx
		movsxd	rcx,esi
		cqo
		idiv	rcx
		mov	ebx,eax
..@j939:
%LINE 880+0
		test	ebx,ebx
		jne	..@j938
; [887] if neg then begin
%LINE 887+0
		test	dil,dil
		je	..@j945
; [888] result[i] := '-';
%LINE 888+0
		mov	rdx,qword [rsp+32]
		movsxd	rax,r12d
		mov	byte [rdx+rax*1],45
; [889] inc(i);
%LINE 889+0
		inc	r12d
..@j945:
; [892] result[i] := #0;
%LINE 892+0
		mov	rdx,qword [rsp+32]
		movsxd	rax,r12d
		mov	byte [rdx+rax*1],0
; [894] ReAllocMem(result, 32);
%LINE 894+0
		lea	rcx,[rsp+32]
		mov	edx,32
		call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
; [896] reverse(result, i);
%LINE 896+0
		mov	r8d,r12d
; Var i located in register r8d
		mov	rdx,qword [rsp+32]
		mov	rcx,rsp
		call	SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT
..@j928:
; [897] end;
%LINE 897+0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c557:

SECTION .text
SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT:
..@c559:
; [851] begin
%LINE 851+0
		lea	rsp,[rsp-8]
..@c561:
; Var $parentfp located at rsp+0, size=OS_64
; Var st located in register eax
; Var en located in register eax
; Var tmp located in register r11b
		mov	qword [rsp],rcx
; Var str located in register rdx
; Var len located in register r8d
; Var st located in register r9d
; [852] st := 0;
%LINE 852+0
		xor	r9d,r9d
; [853] en := len-1;
%LINE 853+0
		lea	eax,[r8d-1]
; Var en located in register eax
; [854] while st < en do begin
%LINE 854+0
		jmp	..@j947
..@j946:
; [855] tmp := str[st];
%LINE 855+0
		movsxd	rcx,r9d
		mov	r11b,byte [rdx+rcx*1]
%LINE 851+0
		mov	rcx,rdx
; [856] str[st] := str[en];
%LINE 856+0
		movsxd	r8,r9d
		movsxd	r10,eax
		mov	r10b,byte [rcx+r10*1]
		mov	byte [rcx+r8*1],r10b
; [857] str[en] := tmp;
%LINE 857+0
		movsxd	rcx,eax
		mov	byte [rdx+rcx*1],r11b
; [858] inc(st);
%LINE 858+0
		inc	r9d
; [859] dec(en);
%LINE 859+0
		dec	eax
..@j947:
%LINE 854+0
		cmp	eax,r9d
		jg	..@j946
; [861] end;
%LINE 861+0
		lea	rsp,[rsp+8]
		ret
..@c560:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR:
..@c562:
; [899] begin
%LINE 899+0
		lea	rsp,[rsp-40]
..@c564:
; Var $result located in register rax
; Var num located in register ecx
; Var base located in register edx
; Var base located in register edx
; Var num located in register ecx
; [900] result := itoa_exp(num, base);
%LINE 900+0
		call	SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
; Var $result located in register rax
; [901] end;
%LINE 901+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c563:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN:
..@c565:
; [unicode.inc]
; [39] begin
%LINE 39+0 unicode.inc
		push	rbx
; Var $result located in register al
; Var cur located in register rcx
; Var curend located in register rdx
; Var codepoint located in register r8
; Var size located in register r9
; [40] if (curend <> nil) and not (cur < curend) then exit(false);
%LINE 40+0
		test	rdx,rdx
		je	..@j954
		cmp	rdx,qword [rcx]
		jnbe	..@j954
		xor	al,al
		jmp	..@j951
..@j954:
; [41] if cur^ = #0 then exit(false);
%LINE 41+0
		mov	r10,qword [rcx]
		cmp	byte [r10],0
		jne	..@j957
		xor	al,al
		jmp	..@j951
..@j957:
; [42] if (byte(cur^) and $f0 = $f0) then begin
%LINE 42+0
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,240
		cmp	r10b,240
		jne	..@j959
; [44] if (curend <> nil) and (cur+4 > curend) then exit(false);
%LINE 44+0
		test	rdx,rdx
		je	..@j961
		mov	r10,qword [rcx]
		add	r10,4
		cmp	r10,rdx
		jna	..@j961
		xor	al,al
		jmp	..@j951
..@j961:
%LINE 39+0
		mov	rbx,qword [rcx]
; [46] or ((byte((cur+1)^) and $3f) shl 12)
%LINE 46+0
		mov	r10w,word [rbx+1]
		and	r10w,63
		movsx	r10d,r10w
		shl	r10d,12
; [45] codepoint := ((byte(cur^) and $07) shl 18)
%LINE 45+0
		mov	r11w,word [rbx]
		and	r11w,7
		movsx	r11d,r11w
		shl	r11d,18
%LINE 46+0
		or	r10d,r11d
; [47] or ((byte((cur+2)^) and $3f) shl 6)
%LINE 47+0
		mov	r11w,word [rbx+2]
		and	r11w,63
		movsx	r11d,r11w
		shl	r11d,6
		or	r10d,r11d
; [48] or ((byte((cur+3)^) and $3f));
%LINE 48+0
		mov	r11w,word [rbx+3]
		and	r11w,63
		movsx	r11d,r11w
		or	r10d,r11d
%LINE 45+0
		mov	dword [r8],r10d
; [49] size := 4;
%LINE 49+0
		mov	byte [r9],4
		jmp	..@j963
..@j959:
; [51] else if (byte(cur^) and $e0 = $e0) then begin
%LINE 51+0
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,224
		cmp	r10b,224
		jne	..@j965
; [53] if (curend <> nil) and (cur+3 > curend) then exit(false);
%LINE 53+0
		test	rdx,rdx
		je	..@j967
		mov	r10,qword [rcx]
		add	r10,3
		cmp	r10,rdx
		jna	..@j967
		xor	al,al
		jmp	..@j951
..@j967:
%LINE 39+0
		mov	rbx,qword [rcx]
; [55] or ((byte((cur+1)^) and $3f) shl 6)
%LINE 55+0
		mov	r10w,word [rbx+1]
		and	r10w,63
		movsx	r10d,r10w
		shl	r10d,6
; [54] codepoint := ((byte(cur^) and $0f) shl 12)
%LINE 54+0
		mov	r11w,word [rbx]
		and	r11w,15
		movsx	r11d,r11w
		shl	r11d,12
%LINE 55+0
		or	r10d,r11d
; [56] or ((byte((cur+2)^) and $3f));
%LINE 56+0
		mov	r11w,word [rbx+2]
		and	r11w,63
		movsx	r11d,r11w
		or	r10d,r11d
%LINE 54+0
		mov	dword [r8],r10d
; [57] size := 3;
%LINE 57+0
		mov	byte [r9],3
		jmp	..@j969
..@j965:
; [59] else if (byte(cur^) and $c0 = $c0) then begin
%LINE 59+0
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,192
		cmp	r10b,192
		jne	..@j971
; [61] if (curend <> nil) and (cur+2 > curend) then exit(false);
%LINE 61+0
		test	rdx,rdx
		je	..@j973
		mov	r10,qword [rcx]
		add	r10,2
		cmp	r10,rdx
		jna	..@j973
		xor	al,al
		jmp	..@j951
..@j973:
%LINE 39+0
		mov	r10,qword [rcx]
; [63] or ((byte((cur+1)^) and $3f));
%LINE 63+0
		mov	dx,word [r10+1]
		and	dx,63
		movsx	edx,dx
; [62] codepoint := ((byte(cur^) and $1f) shl 6)
%LINE 62+0
		mov	r10w,word [r10]
		and	r10w,31
		movsx	r10d,r10w
		shl	r10d,6
%LINE 63+0
		or	edx,r10d
%LINE 62+0
		mov	dword [r8],edx
; [64] size := 2;
%LINE 64+0
		mov	byte [r9],2
		jmp	..@j975
..@j971:
; [68] codepoint := byte(cur^);
%LINE 68+0
		mov	rdx,qword [rcx]
		movzx	edx,byte [rdx]
		mov	dword [r8],edx
; [69] size := 1;
%LINE 69+0
		mov	byte [r9],1
..@j975:
..@j969:
..@j963:
; [71] inc(cur, size);
%LINE 71+0
		movzx	edx,byte [r9]
		add	qword [rcx],rdx
; [72] result := true;
%LINE 72+0
		mov	al,1
..@j951:
; [73] end;
%LINE 73+0
		pop	rbx
		ret
..@c566:

SECTION .text
SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000283:
..@c567:
; [94] end;
%LINE 94+0
		push	rbp
..@c569:
..@c570:
		mov	rbp,rcx
..@c571:
		lea	rsp,[rsp-32]
; [76] begin
%LINE 76+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c568:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING
SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING:
..@c572:
; Temps allocated between rbp-24 and rbp+0
		push	rbp
..@c574:
..@c575:
		mov	rbp,rsp
..@c576:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
; Var $result located in register rbx
		mov	esi,edx
; Var codepoint located in register esi
		mov	qword [rbp-8],0
..@j984:
		nop
..@j980:
; [77] if codepoint <= $7F then
%LINE 77+0
		cmp	esi,127
		jnbe	..@j986
; [78] result := ansichar(codepoint)
%LINE 78+0
		movzx	edx,sil
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
		jmp	..@j987
..@j986:
; [79] else if codepoint <= $7ff then begin
%LINE 79+0
		cmp	esi,2047
		jnbe	..@j989
; [80] result := ansichar($c0 or (codepoint shr 6));
%LINE 80+0
		mov	edx,esi
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
; [81] result := result + ansichar($80 or (codepoint and $3f));
%LINE 81+0
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
		jmp	..@j990
..@j989:
; [83] else if codepoint <= $ffff then begin
%LINE 83+0
		cmp	esi,65535
		jnbe	..@j992
; [84] result := ansichar($e0 or (codepoint shr 12));
%LINE 84+0
		mov	edx,esi
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
; [85] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
%LINE 85+0
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [86] result := result + ansichar($80 or (codepoint and $3f));
%LINE 86+0
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
		jmp	..@j993
..@j992:
; [89] result := ansichar($f0 or (codepoint shr 18));
%LINE 89+0
		mov	edx,esi
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
; [90] result := result + ansichar($80 or ((codepoint shr 12) and $3f));
%LINE 90+0
		mov	edx,esi
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [91] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
%LINE 91+0
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [92] result := result + ansichar($80 or (codepoint and $3f));
%LINE 92+0
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
..@j993:
..@j990:
..@j987:
..@j982:
%LINE 76+0
		nop
..@j981:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000283
%LINE 94+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c573:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN:
..@c577:
; Var $result located in register al
; Var cur located in register rcx
; Var curend located in register rdx
; Var codepoint located in register r8
; Var size located in register r9
; [97] begin
%LINE 97+0
; [98] if (curend <> nil) and not (cur < curend) then exit(false);
%LINE 98+0
		test	rdx,rdx
		je	..@j997
		cmp	rdx,qword [rcx]
		jnbe	..@j997
		xor	al,al
		ret
..@j997:
; [99] if cur^ = #0 then exit(false);
%LINE 99+0
		mov	r10,qword [rcx]
		cmp	word [r10],0
		jne	..@j1000
		xor	al,al
		ret
..@j1000:
; [100] codepoint := dword(cur^);
%LINE 100+0
		mov	r10,qword [rcx]
		movzx	r10d,word [r10]
		mov	dword [r8],r10d
; [101] size := 1;
%LINE 101+0
		mov	byte [r9],1
%LINE 97+0
		mov	r10d,dword [r8]
; [103] if (codepoint >= $d800) and (codepoint <= $dbff) then begin
%LINE 103+0
		cmp	r10d,55296
		jnae	..@j1002
		cmp	r10d,56319
		jnbe	..@j1002
; [104] if (curend = nil) or ((cur+1 <= curend) and (dword((cur+1)^) >= $dc00) and (dword((cur+1)^) <= $dfff)) then begin
%LINE 104+0
		test	rdx,rdx
		je	..@j1004
		mov	r10,qword [rcx]
		add	r10,2
		cmp	rdx,r10
		jnae	..@j1006
		movzx	edx,word [r10]
		cmp	edx,56320
		jnae	..@j1006
		cmp	edx,57343
		jnbe	..@j1006
..@j1004:
; [105] codepoint := ((codepoint-$d800) shl 10)+(dword((cur+1)^)-$dc00)+$10000;
%LINE 105+0
		mov	rdx,qword [rcx]
		mov	edx,dword [rdx+2]
		and	edx,65535
		sub	rdx,56320
		mov	r10d,dword [r8]
		sub	r10,55296
		shl	r10,10
		add	rdx,r10
		add	rdx,65536
		mov	dword [r8],edx
; [106] size := 2;
%LINE 106+0
		mov	byte [r9],2
..@j1006:
..@j1002:
; [109] inc(cur, size);
%LINE 109+0
		movzx	edx,byte [r9]
		shl	rdx,1
		add	qword [rcx],rdx
; [110] result := true;
%LINE 110+0
		mov	al,1
; [111] end;
%LINE 111+0
		ret
..@c578:

SECTION .text
SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000284:
..@c579:
; [120] end;
%LINE 120+0
		push	rbp
..@c581:
..@c582:
		mov	rbp,rcx
..@c583:
		lea	rsp,[rsp-32]
; [114] begin
%LINE 114+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c580:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING
SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING:
..@c584:
; Temps allocated between rbp-24 and rbp+0
		push	rbp
..@c586:
..@c587:
		mov	rbp,rsp
..@c588:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
; Var $result located in register rbx
		mov	esi,edx
; Var codepoint located in register esi
		mov	qword [rbp-8],0
..@j1019:
		nop
..@j1015:
; [115] if codepoint > $ffff then begin
%LINE 115+0
		cmp	esi,65535
		jna	..@j1021
; [116] result := widechar($d800+((codepoint-$10000) shr 10));
%LINE 116+0
		mov	eax,esi
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		mov	rcx,rbx
		call	fpc_uchar_to_unicodestr
; [117] result := result + widechar($dc00+((codepoint-$10000) and $3ff));
%LINE 117+0
		mov	eax,esi
		sub	eax,65536
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-8]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
		jmp	..@j1022
..@j1021:
; [119] result := widechar(codepoint);
%LINE 119+0
		movzx	edx,si
		mov	rcx,rbx
		call	fpc_uchar_to_unicodestr
..@j1022:
..@j1017:
%LINE 114+0
		nop
..@j1016:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000284
%LINE 120+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c585:

SECTION .text
SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000285:
..@c589:
; [144] end;
%LINE 144+0
		push	rbp
..@c591:
..@c592:
		mov	rbp,rcx
..@c593:
		lea	rsp,[rsp-32]
; [128] begin
%LINE 128+0
		lea	rcx,[rbp-48]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-40]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c590:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING:
..@c594:
; Temps allocated between rbp-80 and rbp-24
		push	rbp
..@c596:
..@c597:
		mov	rbp,rsp
..@c598:
		lea	rsp,[rsp-112]
		mov	qword [rbp-80],rbx
		mov	qword [rbp-72],rdi
		mov	qword [rbp-64],rsi
		mov	qword [rbp-56],r12
; Var utf8 located at rbp-8, size=OS_64
; Var i located in register edi
; Var cur located at rbp-16, size=OS_64
; Var curend located in register rsi
; Var codepoint located at rbp-20, size=OS_32
; Var size located at rbp-24, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-48],0
		mov	qword [rbp-40],0
..@j1031:
		nop
..@j1027:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [129] curend := @utf8[1]+length(utf8);
%LINE 129+0
		mov	rdx,rax
		test	rax,rax
		je	..@j1032
		mov	rdx,qword [rdx-8]
..@j1032:
		lea	rsi,[rax+rdx]
; [130] result := '';
%LINE 130+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
; [131] i := 1;
%LINE 131+0
		mov	edi,1
; [132] while i <= length(utf8) do begin
%LINE 132+0
		jmp	..@j1034
..@j1033:
; [133] cur := @utf8[i];
%LINE 133+0
		mov	rdx,qword [rbp-8]
		movsxd	rax,edi
		lea	rax,[rdx+rax*1-1]
		mov	qword [rbp-16],rax
; [134] if utf8decode(cur, curend, codepoint, size) then begin
%LINE 134+0
		test	rsi,rsi
		je	..@j1038
		cmp	rsi,qword [rbp-16]
		jnbe	..@j1038
		xor	cl,cl
		jmp	..@j1036
..@j1038:
		mov	rax,qword [rbp-16]
		cmp	byte [rax],0
		jne	..@j1041
		xor	cl,cl
		jmp	..@j1036
..@j1041:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		jne	..@j1043
		test	rsi,rsi
		je	..@j1045
		mov	rax,qword [rbp-16]
		add	rax,4
		cmp	rax,rsi
		jna	..@j1045
		xor	cl,cl
		jmp	..@j1036
..@j1045:
		mov	rax,qword [rbp-16]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
		or	eax,edx
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],4
		jmp	..@j1047
..@j1043:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		jne	..@j1049
		test	rsi,rsi
		je	..@j1051
		mov	rax,qword [rbp-16]
		add	rax,3
		cmp	rax,rsi
		jna	..@j1051
		xor	cl,cl
		jmp	..@j1036
..@j1051:
		mov	rax,qword [rbp-16]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
		or	eax,edx
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],3
		jmp	..@j1053
..@j1049:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		jne	..@j1055
		test	rsi,rsi
		je	..@j1057
		mov	rax,qword [rbp-16]
		add	rax,2
		cmp	rax,rsi
		jna	..@j1057
		xor	cl,cl
		jmp	..@j1036
..@j1057:
		mov	rax,qword [rbp-16]
		mov	ax,word [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],2
		jmp	..@j1059
..@j1055:
		mov	rax,qword [rbp-16]
		movzx	eax,byte [rax]
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],1
..@j1059:
..@j1053:
..@j1047:
		movzx	eax,byte [rbp-24]
		add	qword [rbp-16],rax
		mov	cl,1
..@j1036:
		test	cl,cl
		je	..@j1061
; [136] result := result + utf16encode(codepoint);
%LINE 136+0
		mov	r12d,dword [rbp-20]
		cmp	r12d,65535
		jna	..@j1063
		mov	eax,r12d
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		lea	rcx,[rbp-40]
		call	fpc_uchar_to_unicodestr
		mov	eax,r12d
		sub	eax,65536
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-48]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-48]
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_unicodestr_concat
		jmp	..@j1064
..@j1063:
		movzx	edx,r12w
		lea	rcx,[rbp-40]
		call	fpc_uchar_to_unicodestr
..@j1064:
		mov	r8,qword [rbp-40]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
; [137] inc(i, size);
%LINE 137+0
		movzx	eax,byte [rbp-24]
		add	edi,eax
		jmp	..@j1065
..@j1061:
; [139] result := result + '?';
%LINE 139+0
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		lea	r8,[..@d31]
		call	fpc_unicodestr_concat
; [140] inc(cur);
%LINE 140+0
		inc	qword [rbp-16]
; [141] inc(i);
%LINE 141+0
		inc	edi
..@j1065:
..@j1034:
%LINE 132+0
		movsxd	rax,edi
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1066
		mov	rdx,qword [rdx-8]
..@j1066:
		cmp	rax,rdx
		jle	..@j1033
..@j1029:
%LINE 128+0
		nop
..@j1028:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000285
%LINE 144+0
		mov	rbx,qword [rbp-80]
		mov	rdi,qword [rbp-72]
		mov	rsi,qword [rbp-64]
		mov	r12,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c595:

SECTION .text
SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000286:
..@c599:
; [161] end;
%LINE 161+0
		push	rbp
..@c601:
..@c602:
		mov	rbp,rcx
..@c603:
		lea	rsp,[rsp-32]
; [152] begin
%LINE 152+0
		lea	rcx,[rbp-32]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-24]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c600:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING:
..@c604:
; Temps allocated between rbp-56 and rbp-16
		push	rbp
..@c606:
..@c607:
		mov	rbp,rsp
..@c608:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
		mov	qword [rbp-48],rdi
		mov	qword [rbp-40],rsi
; Var i located in register edi
; Var cur located at rbp-8, size=OS_64
; Var codepoint located at rbp-12, size=OS_32
; Var size located at rbp-16, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
; Var utf8 located in register rdx
		mov	qword [rbp-32],0
		mov	qword [rbp-24],0
..@j1075:
		nop
..@j1071:
; [153] cur := utf8;
%LINE 153+0
		mov	qword [rbp-8],rdx
; [154] result := '';
%LINE 154+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
; [155] i := 1;
%LINE 155+0
		mov	edi,1
; [156] while utf8decode(cur, nil, codepoint, size) do begin
%LINE 156+0
		jmp	..@j1077
..@j1076:
; [158] result := result + utf16encode(codepoint);
%LINE 158+0
		mov	esi,dword [rbp-12]
		cmp	esi,65535
		jna	..@j1080
		mov	eax,esi
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		lea	rcx,[rbp-24]
		call	fpc_uchar_to_unicodestr
		mov	eax,esi
		sub	eax,65536
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-32]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-32]
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_unicodestr_concat
		jmp	..@j1081
..@j1080:
		movzx	edx,si
		lea	rcx,[rbp-24]
		call	fpc_uchar_to_unicodestr
..@j1081:
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
; [159] inc(i, size);
%LINE 159+0
		movzx	eax,byte [rbp-16]
		add	edi,eax
..@j1077:
%LINE 156+0
		mov	rax,qword [rbp-8]
		cmp	byte [rax],0
		jne	..@j1084
		xor	cl,cl
		jmp	..@j1082
..@j1084:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		jne	..@j1086
		mov	rax,qword [rbp-8]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
		or	eax,edx
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],4
		jmp	..@j1087
..@j1086:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		jne	..@j1089
		mov	rax,qword [rbp-8]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
		or	eax,edx
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],3
		jmp	..@j1090
..@j1089:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		jne	..@j1092
		mov	rax,qword [rbp-8]
		mov	ax,word [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],2
		jmp	..@j1093
..@j1092:
		mov	rax,qword [rbp-8]
		movzx	eax,byte [rax]
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],1
..@j1093:
..@j1090:
..@j1087:
		movzx	eax,byte [rbp-16]
		add	qword [rbp-8],rax
		mov	cl,1
..@j1082:
		test	cl,cl
		jne	..@j1076
..@j1073:
%LINE 152+0
		nop
..@j1072:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000286
%LINE 161+0
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c605:

SECTION .text
SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000287:
..@c609:
; [185] end;
%LINE 185+0
		push	rbp
..@c611:
..@c612:
		mov	rbp,rcx
..@c613:
		lea	rsp,[rsp-32]
; [169] begin
%LINE 169+0
		lea	rcx,[rbp-48]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-40]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c610:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING:
..@c614:
; Temps allocated between rbp-80 and rbp-24
		push	rbp
..@c616:
..@c617:
		mov	rbp,rsp
..@c618:
		lea	rsp,[rsp-112]
		mov	qword [rbp-80],rbx
		mov	qword [rbp-72],rdi
		mov	qword [rbp-64],rsi
		mov	qword [rbp-56],r12
; Var utf16 located at rbp-8, size=OS_64
; Var i located in register edi
; Var cur located at rbp-16, size=OS_64
; Var curend located in register rsi
; Var codepoint located at rbp-20, size=OS_32
; Var size located at rbp-24, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_unicodestr_incr_ref
		mov	qword [rbp-48],0
		mov	qword [rbp-40],0
..@j1102:
		nop
..@j1098:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [170] curend := @utf16[1]+(length(utf16)*2);
%LINE 170+0
		mov	rdx,rax
		test	rax,rax
		je	..@j1103
		mov	rdx,qword [rdx-8]
..@j1103:
		shl	rdx,1
		lea	rsi,[rax+rdx]
; [171] result := '';
%LINE 171+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [172] i := 1;
%LINE 172+0
		mov	edi,1
; [173] while i <= length(utf16) do begin
%LINE 173+0
		jmp	..@j1105
..@j1104:
; [174] cur := @utf16[i];
%LINE 174+0
		mov	rdx,qword [rbp-8]
		movsxd	rax,edi
		lea	rax,[rdx+rax*2-2]
		mov	qword [rbp-16],rax
; [175] if utf16decode(cur, curend, codepoint, size) then begin
%LINE 175+0
		test	rsi,rsi
		je	..@j1109
		cmp	rsi,qword [rbp-16]
		jnbe	..@j1109
		xor	cl,cl
		jmp	..@j1107
..@j1109:
		mov	rax,qword [rbp-16]
		cmp	word [rax],0
		jne	..@j1112
		xor	cl,cl
		jmp	..@j1107
..@j1112:
		mov	rax,qword [rbp-16]
		movzx	eax,word [rax]
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],1
		cmp	dword [rbp-20],55296
		jnae	..@j1114
		cmp	dword [rbp-20],56319
		jnbe	..@j1114
		test	rsi,rsi
		je	..@j1116
		mov	rax,qword [rbp-16]
		add	rax,2
		cmp	rsi,rax
		jnae	..@j1118
		movzx	eax,word [rax]
		cmp	eax,56320
		jnae	..@j1118
		cmp	eax,57343
		jnbe	..@j1118
..@j1116:
		mov	rax,qword [rbp-16]
		mov	eax,dword [rax+2]
		and	eax,65535
		sub	rax,56320
		mov	edx,dword [rbp-20]
		sub	rdx,55296
		shl	rdx,10
		add	rax,rdx
		add	rax,65536
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],2
..@j1118:
..@j1114:
		movzx	eax,byte [rbp-24]
		shl	rax,1
		add	qword [rbp-16],rax
		mov	cl,1
..@j1107:
		test	cl,cl
		je	..@j1124
; [177] result := result + utf8encode(codepoint);
%LINE 177+0
		mov	r12d,dword [rbp-20]
		cmp	r12d,127
		jnbe	..@j1126
		xor	r8d,r8d
		movzx	edx,r12b
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		jmp	..@j1127
..@j1126:
		cmp	r12d,2047
		jnbe	..@j1129
		mov	edx,r12d
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		mov	edx,r12d
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		jmp	..@j1130
..@j1129:
		cmp	r12d,65535
		jnbe	..@j1132
		mov	edx,r12d
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		mov	edx,r12d
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		mov	edx,r12d
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		jmp	..@j1133
..@j1132:
		mov	edx,r12d
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		mov	edx,r12d
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		mov	edx,r12d
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		mov	edx,r12d
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
..@j1133:
..@j1130:
..@j1127:
		mov	r8,qword [rbp-40]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [178] inc(i, size);
%LINE 178+0
		movzx	eax,byte [rbp-24]
		add	edi,eax
		jmp	..@j1134
..@j1124:
; [180] result := result + '?';
%LINE 180+0
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		lea	r8,[..@d32]
		call	fpc_ansistr_concat
; [181] inc(cur);
%LINE 181+0
		add	qword [rbp-16],2
; [182] inc(i);
%LINE 182+0
		inc	edi
..@j1134:
..@j1105:
%LINE 173+0
		movsxd	rax,edi
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1135
		mov	rdx,qword [rdx-8]
..@j1135:
		cmp	rax,rdx
		jle	..@j1104
..@j1100:
%LINE 169+0
		nop
..@j1099:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000287
%LINE 185+0
		mov	rbx,qword [rbp-80]
		mov	rdi,qword [rbp-72]
		mov	rsi,qword [rbp-64]
		mov	r12,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c615:

SECTION .text
SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000288:
..@c619:
; [202] end;
%LINE 202+0
		push	rbp
..@c621:
..@c622:
		mov	rbp,rcx
..@c623:
		lea	rsp,[rsp-32]
; [193] begin
%LINE 193+0
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c620:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING:
..@c624:
; Temps allocated between rbp-56 and rbp-16
		push	rbp
..@c626:
..@c627:
		mov	rbp,rsp
..@c628:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
		mov	qword [rbp-48],rdi
		mov	qword [rbp-40],rsi
; Var i located in register edi
; Var cur located at rbp-8, size=OS_64
; Var codepoint located at rbp-12, size=OS_32
; Var size located at rbp-16, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
; Var utf16 located in register rdx
		mov	qword [rbp-32],0
		mov	qword [rbp-24],0
..@j1144:
		nop
..@j1140:
; [194] cur := utf16;
%LINE 194+0
		mov	qword [rbp-8],rdx
; [195] result := '';
%LINE 195+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [196] i := 1;
%LINE 196+0
		mov	edi,1
; [197] while utf16decode(cur, nil, codepoint, size) do begin
%LINE 197+0
		jmp	..@j1146
..@j1145:
; [199] result := result + utf8encode(codepoint);
%LINE 199+0
		mov	esi,dword [rbp-12]
		cmp	esi,127
		jnbe	..@j1149
		xor	r8d,r8d
		movzx	edx,sil
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		jmp	..@j1150
..@j1149:
		cmp	esi,2047
		jnbe	..@j1152
		mov	edx,esi
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		jmp	..@j1153
..@j1152:
		cmp	esi,65535
		jnbe	..@j1155
		mov	edx,esi
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		jmp	..@j1156
..@j1155:
		mov	edx,esi
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	edx,esi
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
..@j1156:
..@j1153:
..@j1150:
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [200] inc(i, size);
%LINE 200+0
		movzx	eax,byte [rbp-16]
		add	edi,eax
..@j1146:
%LINE 197+0
		mov	rax,qword [rbp-8]
		cmp	word [rax],0
		jne	..@j1159
		xor	cl,cl
		jmp	..@j1157
..@j1159:
		mov	rax,qword [rbp-8]
		movzx	eax,word [rax]
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],1
		cmp	dword [rbp-12],55296
		jnae	..@j1161
		cmp	dword [rbp-12],56319
		jnbe	..@j1161
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax+2]
		and	eax,65535
		sub	rax,56320
		mov	edx,dword [rbp-12]
		sub	rdx,55296
		shl	rdx,10
		add	rax,rdx
		add	rax,65536
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],2
..@j1161:
		movzx	eax,byte [rbp-16]
		shl	rax,1
		add	qword [rbp-8],rax
		mov	cl,1
..@j1157:
		test	cl,cl
		jne	..@j1145
..@j1142:
%LINE 193+0
		nop
..@j1141:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000288
%LINE 202+0
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c625:

SECTION .text
	GLOBAL SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN
SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN:
..@c629:
; Var $result located in register al
; Var u located in register ecx
; [205] begin
%LINE 205+0
; [206] result := ((u <= 127) and ((u = 10) or (u = 13) or (u = $85))) or ((u = $2028) or (u = $2029));
%LINE 206+0
		cmp	ecx,127
		jnbe	..@j1166
		cmp	ecx,10
		je	..@j1167
		cmp	ecx,13
		je	..@j1167
		cmp	ecx,133
		je	..@j1167
..@j1166:
		cmp	ecx,8232
		je	..@j1167
		cmp	ecx,8233
		jne	..@j1172
; Var $result located in register al
..@j1167:
		mov	al,1
		ret
..@j1172:
		xor	al,al
; [207] end;
%LINE 207+0
		ret
..@c630:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64
SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64:
..@c631:
; [214] begin
%LINE 214+0
		lea	rsp,[rsp-24]
..@c633:
; Var $result located in register rax
; Var cur located at rsp+0, size=OS_64
; Var codepoint located at rsp+8, size=OS_32
; Var size located at rsp+12, size=OS_8
; Var utf8 located in register rcx
; Var utf8 located in register rcx
; [215] cur := utf8;
%LINE 215+0
		mov	qword [rsp],rcx
; Var $result located in register rax
; [216] result := 0;
%LINE 216+0
		xor	eax,eax
; [217] while utf8decode(cur, nil, codepoint, size) do begin
%LINE 217+0
		jmp	..@j1180
..@j1179:
; [218] inc(result);
%LINE 218+0
		inc	rax
..@j1180:
%LINE 217+0
		mov	rdx,qword [rsp]
		cmp	byte [rdx],0
		jne	..@j1184
		xor	r8b,r8b
		jmp	..@j1182
..@j1184:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,240
		cmp	dl,240
		jne	..@j1186
		mov	rdx,qword [rsp]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		shl	edx,12
		mov	rcx,qword [rsp]
		mov	cx,word [rcx]
		and	cx,7
		movsx	ecx,cx
		shl	ecx,18
		or	edx,ecx
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+2]
		and	cx,63
		movsx	ecx,cx
		shl	ecx,6
		or	edx,ecx
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+3]
		and	cx,63
		movsx	ecx,cx
		or	edx,ecx
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],4
		jmp	..@j1187
..@j1186:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,224
		cmp	dl,224
		jne	..@j1189
		mov	rdx,qword [rsp]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		mov	rcx,qword [rsp]
		mov	cx,word [rcx]
		and	cx,15
		movsx	ecx,cx
		shl	ecx,12
		or	edx,ecx
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+2]
		and	cx,63
		movsx	ecx,cx
		or	edx,ecx
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],3
		jmp	..@j1190
..@j1189:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,192
		cmp	dl,192
		jne	..@j1192
		mov	rdx,qword [rsp]
		mov	dx,word [rdx]
		and	dx,31
		movsx	edx,dx
		shl	edx,6
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+1]
		and	cx,63
		movsx	ecx,cx
		or	edx,ecx
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],2
		jmp	..@j1193
..@j1192:
		mov	rdx,qword [rsp]
		movzx	edx,byte [rdx]
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],1
..@j1193:
..@j1190:
..@j1187:
		movzx	edx,byte [rsp+12]
		add	qword [rsp],rdx
		mov	r8b,1
..@j1182:
		test	r8b,r8b
		jne	..@j1179
; [220] end;
%LINE 220+0
		lea	rsp,[rsp+24]
		ret
..@c632:

SECTION .text
SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER:
..@c634:
; [ustrings.inc]
; [41] begin
%LINE 41+0 ustrings.inc
		push	rbx
		lea	rsp,[rsp-48]
..@c636:
; Var $result located at rsp+32, size=OS_64
		mov	rbx,rcx
; Var len located in register rbx
; [42] GetMem(result, len*2+sizeof(tunicoderec)+2); {2 for #0}
%LINE 42+0
		mov	rax,rbx
; [49] end;
%LINE 49+0
		lea	rax,[rax+rax*1+24]
%LINE 42+0
		lea	rdx,[rax+2]
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [43] punicoderec(result)^.len := len;
%LINE 43+0
		mov	rdx,qword [rsp+32]
		mov	qword [rdx+16],rbx
; Var len located in register rax
; [44] punicoderec(result)^.ref := 1;
%LINE 44+0
		mov	rax,qword [rsp+32]
		mov	qword [rax+8],1
; [45] punicoderec(result)^.codepage := DefaultUnicodeCodePage;
%LINE 45+0
		mov	rax,qword [rsp+32]
		mov	dword [rax],1200
; [46] punicoderec(result)^.elementsize := 2;
%LINE 46+0
		mov	rax,qword [rsp+32]
		mov	word [rax+4],2
; [47] inc(result, ufirstoff);
%LINE 47+0
		add	qword [rsp+32],24
; [48] PUnicodeChar(result)^ := #0;
%LINE 48+0
		mov	rax,qword [rsp+32]
		mov	word [rax],0
%LINE 49+0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c635:

SECTION .text
	GLOBAL fpc_unicodestr_assign
fpc_unicodestr_assign:
	GLOBAL FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
..@c637:
; [52] begin
%LINE 52+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c639:
		mov	rbx,rcx
; Var s1 located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [53] if s2 <> nil then
%LINE 53+0
		test	rdx,rdx
		je	..@j1199
; [54] if punicoderec(s2-ufirstoff)^.ref > 0 then
%LINE 54+0
		cmp	qword [rsi-16],0
		jng	..@j1201
; [55] inc(punicoderec(s2-ufirstoff)^.ref);
%LINE 55+0
		inc	qword [rsi-16]
..@j1201:
..@j1199:
; [56] fpc_unicodestr_decr_ref(s1);
%LINE 56+0
		mov	rcx,rbx
		call	fpc_unicodestr_decr_ref
; Var s2 located in register rsi
; [57] s1 := s2;
%LINE 57+0
		mov	qword [rbx],rsi
; [58] end;
%LINE 58+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c638:

SECTION .text
SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$0000028A:
..@c640:
; [77] end;
%LINE 77+0
		push	rbp
..@c642:
..@c643:
		mov	rbp,rcx
..@c644:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [64] begin
%LINE 64+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c641:

SECTION .text
	GLOBAL fpc_unicodestr_setlength
fpc_unicodestr_setlength:
	GLOBAL FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
..@c645:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c647:
..@c648:
		mov	rbp,rsp
..@c649:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
; Var u located at rbp-8, size=OS_64
; Var n located in register rax
		mov	rbx,rcx
; Var s located in register rbx
		mov	rsi,rdx
; Var l located in register rsi
		mov	qword [rbp-8],0
..@j1210:
		nop
..@j1206:
; [65] if l = 0 then begin
%LINE 65+0
		test	rsi,rsi
		jne	..@j1212
; [66] fpc_unicodestr_decr_ref(pointer(s));
%LINE 66+0
		mov	rcx,rbx
		call	fpc_unicodestr_decr_ref
; [67] exit;
%LINE 67+0
		jmp	..@j1208
..@j1212:
; [69] pointer(u) := newunicodestring(l);
%LINE 69+0
		mov	rcx,rsi
		call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
		mov	qword [rbp-8],rax
; [70] if pointer(s) <> nil then begin
%LINE 70+0
		cmp	qword [rbx],0
		je	..@j1214
; [71] n := length(s)+1; // inc terminator
%LINE 71+0
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j1215
		mov	rax,qword [rax-8]
..@j1215:
		inc	rax
; [72] if n > l then n := l;
%LINE 72+0
		cmp	rsi,rax
		cmovl	rax,rsi
; [73] move(pointer(s)^, pointer(u)^, n*2);
%LINE 73+0
		mov	rcx,qword [rbx]
		mov	r8,rax
		shl	r8,1
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [74] fpc_unicodestr_decr_ref(pointer(s));
%LINE 74+0
		mov	rcx,rbx
		call	fpc_unicodestr_decr_ref
..@j1214:
; [76] s := u;
%LINE 76+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_unicodestr_assign
..@j1208:
%LINE 64+0
		nop
..@j1207:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$0000028A
%LINE 77+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c646:

SECTION .text
SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000028B:
..@c650:
; [95] end;
%LINE 95+0
		push	rbp
..@c652:
..@c653:
		mov	rbp,rcx
..@c654:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [82] begin
%LINE 82+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c651:

SECTION .text
	GLOBAL fpc_unicodestr_concat
fpc_unicodestr_concat:
..@c655:
; Temps allocated between rbp-32 and rbp-8
		push	rbp
..@c657:
..@c658:
		mov	rbp,rsp
..@c659:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rdi
		mov	qword [rbp-16],rsi
; Var u located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s1 located in register rsi
		mov	rdi,r8
; Var s2 located in register rdi
		mov	qword [rbp-8],0
..@j1226:
		nop
..@j1222:
; [83] if s1 = '' then begin
%LINE 83+0
		test	rsi,rsi
		jne	..@j1228
; [84] dests := s2;
%LINE 84+0
		mov	rcx,rbx
		mov	rdx,rdi
		call	fpc_unicodestr_assign
; [85] exit;
%LINE 85+0
		jmp	..@j1224
..@j1228:
; [87] if s2 = '' then begin
%LINE 87+0
		test	rdi,rdi
		jne	..@j1230
; [88] dests := s1;
%LINE 88+0
		mov	rcx,rbx
		mov	rdx,rsi
		call	fpc_unicodestr_assign
; [89] exit;
%LINE 89+0
		jmp	..@j1224
..@j1230:
; [91] setlength(u, length(s1)+length(s2));
%LINE 91+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1231
		mov	rax,qword [rax-8]
..@j1231:
		mov	rdx,rdi
		test	rdi,rdi
		je	..@j1232
		mov	rdx,qword [rdx-8]
..@j1232:
		add	rdx,rax
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_setlength
; [92] move(pointer(s1)^, pointer(u)^, length(s1)*2);
%LINE 92+0
		mov	r8,rsi
		test	rsi,rsi
		je	..@j1233
		mov	r8,qword [r8-8]
..@j1233:
		shl	r8,1
		mov	rdx,qword [rbp-8]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [93] move(pointer(s2)^, (pointer(u)+(length(s1)*2))^, length(s2)*2);
%LINE 93+0
		mov	rdx,rsi
		test	rsi,rsi
		je	..@j1234
		mov	rdx,qword [rdx-8]
..@j1234:
		shl	rdx,1
		add	rdx,qword [rbp-8]
		mov	r8,rdi
		test	rdi,rdi
		je	..@j1235
		mov	r8,qword [r8-8]
..@j1235:
		shl	r8,1
		mov	rcx,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [94] dests := u;
%LINE 94+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_unicodestr_assign
..@j1224:
%LINE 82+0
		nop
..@j1223:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000028B
%LINE 95+0
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c656:

SECTION .text
	GLOBAL fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
..@c660:
; Temps allocated between rbp-40 and rbp+0
; [101] begin
%LINE 101+0
		push	rbp
..@c662:
..@c663:
		mov	rbp,rsp
..@c664:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	qword [rbp-16],r12
		mov	qword [rbp-8],r13
; Var l located in register rax
; Var p located in register rax
; Var i located in register r12d
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var sarr located in register rsi
		mov	rdi,r8
; Var $highSARR located in register rdi
; Var l located in register rdx
; [102] l := 0;
%LINE 102+0
		xor	edx,edx
; [103] for i := 0 to high(sarr) do begin
%LINE 103+0
		mov	eax,edi
		test	eax,eax
		jnge	..@j1239
		mov	r12d,-1
..@j1240:
		inc	r12d
; [104] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then l := l + length(sarr[i]);
%LINE 104+0
		movsxd	rcx,r12d
%LINE 101+0
		mov	rcx,qword [rsi+rcx*8]
%LINE 104+0
		test	rcx,rcx
		je	..@j1244
		test	rcx,rcx
		je	..@j1244
		movsxd	rcx,r12d
		mov	rcx,qword [rsi+rcx*8]
		test	rcx,rcx
		je	..@j1246
		mov	rcx,qword [rcx-8]
..@j1246:
		add	rdx,rcx
..@j1244:
%LINE 103+0
		cmp	eax,r12d
		jnle	..@j1240
..@j1239:
; [106] setlength(dests, l);
%LINE 106+0
		mov	rcx,rbx
; Var l located in register rdx
		call	fpc_unicodestr_setlength
; Var p located in register r13
; [107] p := 1;
%LINE 107+0
		mov	r13d,1
; [108] for i := 0 to high(sarr) do begin
%LINE 108+0
		test	edi,edi
		jnge	..@j1248
		mov	r12d,-1
..@j1249:
		inc	r12d
; [109] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then begin
%LINE 109+0
		movsxd	rax,r12d
%LINE 101+0
		mov	rax,qword [rsi+rax*8]
%LINE 109+0
		test	rax,rax
		je	..@j1253
		test	rax,rax
		je	..@j1253
; [110] move(pointer(sarr[i])^, pointer(@dests[p])^, length(sarr[i]));
%LINE 110+0
		movsxd	rax,r12d
		mov	r8,qword [rsi+rax*8]
		test	r8,r8
		je	..@j1255
		mov	r8,qword [r8-8]
..@j1255:
		mov	rax,qword [rbx]
		lea	rdx,[rax+r13*2-2]
		movsxd	rax,r12d
		mov	rcx,qword [rsi+rax*8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [111] inc(p, length(sarr[i]));
%LINE 111+0
		movsxd	rax,r12d
		mov	rax,qword [rsi+rax*8]
		test	rax,rax
		je	..@j1256
		mov	rax,qword [rax-8]
..@j1256:
		add	r13,rax
..@j1253:
%LINE 108+0
		cmp	edi,r12d
		jnle	..@j1249
..@j1248:
; [114] end;
%LINE 114+0
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		mov	r12,qword [rbp-16]
		mov	r13,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c661:

SECTION .text
	GLOBAL fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
	GLOBAL FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
..@c665:
; [117] begin
%LINE 117+0
		mov	rax,rcx
; Var s located in register rax
; [118] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
%LINE 118+0
		test	rcx,rcx
		je	..@j1257
		cmp	qword [rax-16],0
		jl	..@j1257
; Var s located in register rax
; [119] inc(punicoderec(s-ufirstoff)^.ref);
%LINE 119+0
		inc	qword [rax-16]
..@j1257:
; [120] end;
%LINE 120+0
		ret
..@c666:

SECTION .text
	GLOBAL fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
	GLOBAL FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
..@c667:
; [123] begin
%LINE 123+0
		push	rbx
		lea	rsp,[rsp-32]
..@c669:
		mov	rbx,rcx
; Var s located in register rbx
		mov	rax,qword [rbx]
; [124] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
%LINE 124+0
		test	rax,rax
		je	..@j1262
		cmp	qword [rax-16],0
		jl	..@j1262
; [125] dec(punicoderec(s-ufirstoff)^.ref);
%LINE 125+0
		mov	rax,qword [rbx]
		dec	qword [rax-16]
; [126] if punicoderec(s-ufirstoff)^.ref <= 0 then FreeMem(s-ufirstoff);
%LINE 126+0
		mov	rax,qword [rbx]
		cmp	qword [rax-16],0
		jnle	..@j1268
		mov	rax,qword [rbx]
		lea	rcx,[rax-24]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1268:
; [127] s := nil;
%LINE 127+0
		mov	qword [rbx],0
..@j1262:
; [128] end;
%LINE 128+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c668:

SECTION .text
SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000028C:
..@c670:
; [137] end;
%LINE 137+0
		push	rbp
..@c672:
..@c673:
		mov	rbp,rcx
..@c674:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [133] begin
%LINE 133+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c671:

SECTION .text
	GLOBAL fpc_unicodestr_unique
fpc_unicodestr_unique:
	GLOBAL FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
..@c675:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c677:
..@c678:
		mov	rbp,rsp
..@c679:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var $result located in register rdx
; Var u located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var s located in register rbx
		mov	qword [rbp-8],0
..@j1277:
		nop
..@j1273:
; [134] pointer(u) := newunicodestring(punicoderec(s-ufirstoff)^.len);
%LINE 134+0
		mov	rax,qword [rbx]
		mov	rcx,qword [rax-8]
		call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
		mov	qword [rbp-8],rax
; [135] move(s^, pointer(u)^, punicoderec(s-ufirstoff)^.len);
%LINE 135+0
		mov	rax,qword [rbx]
		mov	r8,qword [rax-8]
		mov	rcx,qword [rbx]
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [136] s := pointer(u);
%LINE 136+0
		mov	rax,qword [rbp-8]
		mov	qword [rbx],rax
..@j1275:
%LINE 133+0
		nop
..@j1274:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000028C
%LINE 137+0
		mov	rax,rdx
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c676:

SECTION .text
	GLOBAL fpc_unicodestr_copy
fpc_unicodestr_copy:
..@c680:
; [140] begin
%LINE 140+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c682:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
		mov	rdi,r8
; Var index located in register rdi
		mov	r12,r9
; Var size located in register r12
; [141] dec(index);
%LINE 141+0
		dec	rdi
; [142] if index < 0 then index := 0;
%LINE 142+0
		test	rdi,rdi
		jnl	..@j1281
		xor	edi,edi
..@j1281:
; [143] if (size > length(s)) or (size+index > length(s)) then size := length(s)-index;
%LINE 143+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1282
		mov	rax,qword [rax-8]
..@j1282:
		cmp	rax,r12
		jl	..@j1283
		lea	rdx,[r12+rdi]
		cmp	rdx,rax
		jng	..@j1285
..@j1283:
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1286
		mov	rax,qword [rax-8]
..@j1286:
		sub	rax,rdi
		mov	r12,rax
..@j1285:
; [144] setlength(result, size);
%LINE 144+0
		mov	rcx,rbx
; Var size located in register r12
		mov	rdx,r12
		call	fpc_unicodestr_setlength
; [145] move((pointer(s)+(index*2))^, pointer(result)^, size*2);
%LINE 145+0
		shl	rdi,1
		lea	rcx,[rdi+rsi]
		mov	rdx,qword [rbx]
		mov	r8,r12
		shl	r8,1
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [146] end;
%LINE 146+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c681:

SECTION .text
	GLOBAL fpc_uchar_to_unicodestr
fpc_uchar_to_unicodestr:
..@c683:
; [149] begin
%LINE 149+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c685:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	si,dx
; Var c located in register si
; [150] setlength(result, 1);
%LINE 150+0
		mov	rcx,rbx
		mov	edx,1
		call	fpc_unicodestr_setlength
; [151] pwidechar(@result[1])^ := c;
%LINE 151+0
		mov	rax,qword [rbx]
; Var c located in register si
		mov	word [rax],si
; [152] end;
%LINE 152+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c684:

SECTION .text
	GLOBAL fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
..@c686:
; [155] begin
%LINE 155+0
		lea	rsp,[rsp-40]
..@c688:
; Var $result located in register rax
; Var s2 located in register rdx
; Var cp located in register r8d
; Var s2 located in register rdx
; [156] result := utf16toutf8(s2);
%LINE 156+0
		call	SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
; [157] end;
%LINE 157+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c687:

SECTION .text
	GLOBAL fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
..@c689:
; [162] begin
%LINE 162+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c691:
; Var p located at rsp+32, size=OS_64
; Var s located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rsp+32],rdx
; [163] if p = nil then exit('');
%LINE 163+0
		test	rdx,rdx
		jne	..@j1294
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
		jmp	..@j1291
..@j1294:
; [164] s := IndexWord(p, -1, 0);
%LINE 164+0
		lea	rcx,[rsp+32]
		xor	r8d,r8d
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	rsi,rax
; Var s located in register rsi
; [165] setlength(result, s);
%LINE 165+0
		mov	rcx,rbx
; Var s located in register rsi
		mov	rdx,rsi
		call	fpc_unicodestr_setlength
; [166] move(p^, pointer(result)^, s*2);
%LINE 166+0
		mov	rdx,qword [rbx]
		mov	r8,rsi
		shl	r8,1
		mov	rcx,qword [rsp+32]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j1291:
; [167] end;
%LINE 167+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c690:

SECTION .text
	GLOBAL fpc_widestr_to_unicodestr
fpc_widestr_to_unicodestr:
..@c692:
; [170] begin
%LINE 170+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c694:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [171] setlength(result, length(s2));
%LINE 171+0
		test	rdx,rdx
		je	..@j1297
		mov	edx,dword [rdx-4]
		shr	rdx,1
..@j1297:
		mov	rcx,rbx
		call	fpc_unicodestr_setlength
; [172] move(pointer(s2)^, pointer(result)^, length(s2)*2);
%LINE 172+0
		mov	r8,rsi
		test	rsi,rsi
		je	..@j1298
		mov	r8d,dword [r8-4]
		shr	r8,1
..@j1298:
		shl	r8,1
		mov	rdx,qword [rbx]
		mov	rcx,rsi
; Var s2 located in register rcx
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [173] end;
%LINE 173+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c693:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$LONGINT
SYSTEM_$$_INCLOCKED$LONGINT:
..@c725:
; [misc.inc]
; [105] begin
%LINE 105+0 misc.inc
		push	rbx
		lea	rsp,[rsp-32]
..@c727:
		mov	rbx,rcx
; Var target located in register rbx
; [106] if IsMultithread then AtomicIncrement(target) else inc(target);
%LINE 106+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1314
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
		jmp	..@j1315
..@j1314:
		inc	dword [rbx]
..@j1315:
; [107] end;
%LINE 107+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c726:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$INT64
SYSTEM_$$_INCLOCKED$INT64:
..@c728:
; [110] begin
%LINE 110+0
		push	rbx
		lea	rsp,[rsp-32]
..@c730:
		mov	rbx,rcx
; Var target located in register rbx
; [111] if IsMultithread then AtomicIncrement(target) else inc(target);
%LINE 111+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1319
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
		jmp	..@j1320
..@j1319:
		inc	qword [rbx]
..@j1320:
; [112] end;
%LINE 112+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c729:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN:
..@c731:
; [115] begin
%LINE 115+0
		push	rbx
		lea	rsp,[rsp-32]
..@c733:
; Var $result located in register al
		mov	rbx,rcx
; Var target located in register rbx
; [116] if IsMultithread then
%LINE 116+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1324
; [117] result := AtomicDecrement(target) = 0
%LINE 117+0
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
		test	eax,eax
		sete	al
		jmp	..@j1325
..@j1324:
; [119] dec(target);
%LINE 119+0
		dec	dword [rbx]
; [120] result := target = 0;
%LINE 120+0
		cmp	dword [rbx],0
		sete	al
..@j1325:
; [122] end;
%LINE 122+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c732:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN
SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN:
..@c734:
; [125] begin
%LINE 125+0
		push	rbx
		lea	rsp,[rsp-32]
..@c736:
; Var $result located in register al
		mov	rbx,rcx
; Var target located in register rbx
; [126] if IsMultithread then
%LINE 126+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1329
; [127] result := AtomicDecrement(target) = 0
%LINE 127+0
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
		test	rax,rax
		sete	al
		jmp	..@j1330
..@j1329:
; [129] dec(target);
%LINE 129+0
		dec	qword [rbx]
; [130] result := target = 0;
%LINE 130+0
		cmp	qword [rbx],0
		sete	al
..@j1330:
; [132] end;
%LINE 132+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c735:

SECTION .text
	GLOBAL SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD
SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD:
..@c737:
; Var $result located in register ax
; [175] begin
%LINE 175+0
		mov	ax,cx
; Var primary located in register ax
; Var sub located in register dx
; [176] result := (primary and $3FF) or (sub shl 10);
%LINE 176+0
		and	eax,1023
		movzx	edx,dx
		shl	edx,10
		or	eax,edx
; Var $result located in register ax
; [177] end;
%LINE 177+0
		movzx	eax,ax
		ret
..@c738:

SECTION .text
	GLOBAL SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64:
..@c739:
; [182] begin
%LINE 182+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c741:
; Var $result located in register rax
; Var i located in register r13
		mov	rbx,rcx
; Var needle located in register rbx
		mov	rsi,rdx
; Var haystack located in register rsi
; Var offset located in register r8
; Var $result located in register rdi
; [183] result := -1;
%LINE 183+0
		mov	rdi,-1
; [184] for i := offset to length(haystack)-length(needle)+1 do
%LINE 184+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1335
		mov	rax,qword [rax-8]
..@j1335:
		mov	rdx,rbx
		test	rbx,rbx
		je	..@j1336
		mov	rdx,qword [rdx-8]
..@j1336:
		sub	rax,rdx
		lea	r12,[rax+1]
		cmp	r12,r8
		jnge	..@j1338
		lea	r13,[r8-1]
..@j1339:
		inc	r13
; [185] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
%LINE 185+0
		mov	r8,rbx
		test	rbx,rbx
		je	..@j1342
		mov	r8,qword [r8-8]
..@j1342:
		lea	rdx,[rsi+r13*1-1]
		mov	rcx,rbx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1344
; [186] exit(i);
%LINE 186+0
		mov	rdi,r13
		jmp	..@j1333
..@j1344:
%LINE 184+0
		cmp	r12,r13
		jnle	..@j1339
..@j1338:
..@j1333:
; [187] end;
%LINE 187+0
		mov	rax,rdi
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c740:

SECTION .text
	GLOBAL SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64
SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64:
..@c742:
; [192] begin
%LINE 192+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c744:
; Var $result located in register rax
; Var i located in register r13
		mov	rbx,rcx
; Var needle located in register rbx
		mov	rsi,rdx
; Var haystack located in register rsi
; Var offset located in register r8
; Var $result located in register rdi
; [193] result := -1;
%LINE 193+0
		mov	rdi,-1
; [194] for i := offset to length(haystack)-length(needle)+1 do
%LINE 194+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1347
		mov	rax,qword [rax-8]
..@j1347:
		mov	rdx,rbx
		test	rbx,rbx
		je	..@j1348
		mov	rdx,qword [rdx-8]
..@j1348:
		sub	rax,rdx
		lea	r12,[rax+1]
		cmp	r12,r8
		jnge	..@j1350
		lea	r13,[r8-1]
..@j1351:
		inc	r13
; [195] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
%LINE 195+0
		mov	r8,rbx
		test	rbx,rbx
		je	..@j1354
		mov	r8,qword [r8-8]
..@j1354:
		lea	rdx,[rsi+r13*2-2]
		mov	rcx,rbx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1356
; [196] exit(i);
%LINE 196+0
		mov	rdi,r13
		jmp	..@j1345
..@j1356:
%LINE 194+0
		cmp	r12,r13
		jnle	..@j1351
..@j1350:
..@j1345:
; [197] end;
%LINE 197+0
		mov	rax,rdi
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c743:

SECTION .text
SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000028D:
..@c745:
; [202] end;
%LINE 202+0
		push	rbp
..@c747:
..@c748:
		mov	rbp,rcx
..@c749:
		lea	rsp,[rsp-32]
; [200] begin
%LINE 200+0
		lea	rcx,[rbp-32]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c746:

SECTION .text
	GLOBAL SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64
SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64:
..@c750:
; Temps allocated between rbp-56 and rbp+0
		push	rbp
..@c752:
..@c753:
		mov	rbp,rsp
..@c754:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
		mov	qword [rbp-48],rdi
		mov	qword [rbp-40],rsi
; Var $result located in register rbx
		mov	rbx,rcx
; Var needle located in register rbx
; Var haystack located in register rdx
		mov	rsi,r8
; Var offset located in register rsi
		mov	qword [rbp-32],0
		mov	qword [rbp-16],0
..@j1365:
		nop
..@j1361:
; [201] result := pos(unicodestring(needle), unicodestring(haystack), offset);
%LINE 201+0
		lea	rcx,[rbp-16]
		call	fpc_widestr_to_unicodestr
		mov	rax,qword [rbp-16]
		mov	qword [rbp-8],rax
		mov	rdx,rbx
		lea	rcx,[rbp-32]
		call	fpc_widestr_to_unicodestr
		mov	rax,qword [rbp-32]
		mov	qword [rbp-24],rax
		mov	rbx,-1
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j1367
		mov	rax,qword [rax-8]
..@j1367:
		mov	rdx,qword [rbp-24]
		test	rdx,rdx
		je	..@j1368
		mov	rdx,qword [rdx-8]
..@j1368:
		sub	rax,rdx
		lea	rdi,[rax+1]
		cmp	rdi,rsi
		jnge	..@j1370
		dec	rsi
..@j1371:
		inc	rsi
		mov	rcx,qword [rbp-24]
		mov	r8,qword [rbp-24]
		test	r8,r8
		je	..@j1374
		mov	r8,qword [r8-8]
..@j1374:
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+rsi*2-2]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1376
		mov	rbx,rsi
		jmp	..@j1366
..@j1376:
		cmp	rdi,rsi
		jnle	..@j1371
..@j1370:
..@j1366:
..@j1363:
%LINE 200+0
		nop
..@j1362:
		mov	rcx,rbp
		call	SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000028D
%LINE 202+0
		mov	rax,rbx
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c751:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$QWORD$$POINTER
SYSTEM_$$_GETMEM$QWORD$$POINTER:
..@c755:
; [heap.inc]
; [85] begin
%LINE 85+0 heap.inc
		lea	rsp,[rsp-40]
..@c757:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [86] result := xgetmem(size);
%LINE 86+0
		call	XMM_$$_XGETMEM$QWORD$$POINTER
; Var $result located in register rax
; [87] end;
%LINE 87+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c756:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER:
..@c758:
; [90] begin
%LINE 90+0
		push	rbx
		lea	rsp,[rsp-32]
..@c760:
; Var $result located in register rax
		mov	rbx,rcx
; Var p located in register rbx
		mov	rcx,rdx
; Var size located in register rcx
; Var size located in register rcx
; [91] result := xgetmem(size);
%LINE 91+0
		call	XMM_$$_XGETMEM$QWORD$$POINTER
; Var $result located in register rax
; Var $result located in register rax
; [92] p := result;
%LINE 92+0
		mov	qword [rbx],rax
; [93] end;
%LINE 93+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c759:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER$$QWORD
SYSTEM_$$_FREEMEM$POINTER$$QWORD:
..@c761:
; [96] begin
%LINE 96+0
		lea	rsp,[rsp-40]
..@c763:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [97] Exit(xfreemem(p));
%LINE 97+0
		call	_$dll$rtllib$xfreemem
; Var $result located in register rax
; [98] end;
%LINE 98+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c762:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD
SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD:
..@c764:
; [101] begin
%LINE 101+0
		lea	rsp,[rsp-40]
..@c766:
; Var $result located in register rax
; Var p located in register rcx
; Var size located in register rdx
; Var p located in register rcx
; [102] Exit(xfreemem(p));
%LINE 102+0
		call	_$dll$rtllib$xfreemem
; Var $result located in register rax
; [103] end;
%LINE 103+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c765:

SECTION .text
	GLOBAL SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
SYSTEM_$$_ALLOCMEM$QWORD$$POINTER:
..@c767:
; [106] begin
%LINE 106+0
		lea	rsp,[rsp-40]
..@c769:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [107] Exit(xallocmem(size));
%LINE 107+0
		call	XMM_$$_XALLOCMEM$QWORD$$POINTER
; Var $result located in register rax
; [108] end;
%LINE 108+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c768:

SECTION .text
	GLOBAL SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER:
..@c770:
; [111] begin
%LINE 111+0
		lea	rsp,[rsp-40]
..@c772:
; Var $result located in register rax
; Var p located in register rcx
; Var size located in register rdx
; Var size located in register rdx
; [112] Exit(xreallocmem(p, size));
%LINE 112+0
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
; Var $result located in register rax
; [113] end;
%LINE 113+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c771:

SECTION .text
	GLOBAL SYSTEM_$$_MEMSIZE$POINTER$$QWORD
SYSTEM_$$_MEMSIZE$POINTER$$QWORD:
..@c773:
; [116] begin
%LINE 116+0
		lea	rsp,[rsp-40]
..@c775:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [117] Exit(xmemsize(p));
%LINE 117+0
		call	XMM_$$_XMEMSIZE$POINTER$$QWORD
; Var $result located in register rax
; [118] end;
%LINE 118+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c774:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$QWORD
SYSTEM_$$_MOVE$formal$formal$QWORD:
..@c776:
; [124] begin
%LINE 124+0
		lea	rsp,[rsp-40]
..@c778:
; Var src located in register rax
; Var dst located in register rdx
; Var count located in register r8
; Var count located in register r8
; [125] xmovemem(@src, @dst, count);
%LINE 125+0
		call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
; [126] end;
%LINE 126+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c777:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c779:
; [130] begin
%LINE 130+0
		lea	rsp,[rsp-40]
..@c781:
; Var x located in register rax
; Var count located in register rdx
; Var value located in register r8b
; Var value located in register r8b
; [131] xfillmem_byte(@x, count, ord(value));
%LINE 131+0
		movzx	r8d,r8b
; Var count located in register rdx
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
; [132] end;
%LINE 132+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c780:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE:
..@c782:
; [135] begin
%LINE 135+0
		lea	rsp,[rsp-40]
..@c784:
; Var x located in register rax
; Var count located in register rdx
; Var value located in register r8b
; Var value located in register r8b
; [136] xfillmem_byte(@x, count, value);
%LINE 136+0
		movzx	r8d,r8b
; Var count located in register rdx
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
; [137] end;
%LINE 137+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c783:

SECTION .text
	GLOBAL SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE
SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE:
..@c785:
; [140] begin
%LINE 140+0
		lea	rsp,[rsp-40]
..@c787:
; Var x located in register rax
; Var count located in register rdx
; Var value located in register r8b
; Var value located in register r8b
; [141] xfillmem_byte(@x, count, value);
%LINE 141+0
		movzx	r8d,r8b
; Var count located in register rdx
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
; [142] end;
%LINE 142+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c786:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64
SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64:
..@c788:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var b located in register r8b
; [148] begin
%LINE 148+0
; Var $result located in register rax
; [149] result := -1;
%LINE 149+0
		mov	rax,-1
; Var i located in register r9
; [150] i := 0;
%LINE 150+0
		xor	r9,r9
; [151] while (i < len) or (len = -1){len may not be given} do begin
%LINE 151+0
		jmp	..@j1402
..@j1401:
; [152] if pbyte(pointer(buf)+i)^ = b then exit(i);
%LINE 152+0
		mov	r10,qword [rcx]
		add	r10,r9
		cmp	r8b,byte [r10]
		jne	..@j1405
		mov	rax,r9
		ret
..@j1405:
; [153] inc(i);
%LINE 153+0
		inc	r9
..@j1402:
%LINE 151+0
		cmp	rdx,r9
		jg	..@j1401
		cmp	rdx,-1
		je	..@j1401
; [155] end;
%LINE 155+0
		ret
..@c789:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64
SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64:
..@c790:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var b located in register r8b
; [162] begin
%LINE 162+0
; Var $result located in register rax
; [163] result := -1;
%LINE 163+0
		mov	rax,-1
; Var i located in register r9
; [164] i := 0;
%LINE 164+0
		xor	r9,r9
; [165] while (i < len) or (len = -1){len may not be given} do begin
%LINE 165+0
		jmp	..@j1412
..@j1411:
; [166] if pchar(pointer(buf)+i)^ = b then exit(i);
%LINE 166+0
		mov	r10,qword [rcx]
		add	r10,r9
		cmp	r8b,byte [r10]
		jne	..@j1415
		mov	rax,r9
		ret
..@j1415:
; [167] inc(i);
%LINE 167+0
		inc	r9
..@j1412:
%LINE 165+0
		cmp	rdx,r9
		jg	..@j1411
		cmp	rdx,-1
		je	..@j1411
; [169] end;
%LINE 169+0
		ret
..@c791:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64:
..@c792:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var w located in register r8w
; [176] begin
%LINE 176+0
; Var $result located in register rax
; [177] result := -1;
%LINE 177+0
		mov	rax,-1
; Var i located in register r10
; [178] i := 0;
%LINE 178+0
		xor	r10,r10
; [179] while (i < len) or (len = -1){len may not be given} do begin
%LINE 179+0
		jmp	..@j1422
..@j1421:
; [180] if pword(pointer(buf)+i)^ = w then exit(i div 2);
%LINE 180+0
		mov	r9,qword [rcx]
		add	r9,r10
		cmp	r8w,word [r9]
		jne	..@j1425
		mov	r9,r10
		mov	r11,r9
		shr	r11,63
		add	r9,r11
		sar	r9,1
		mov	rax,r9
		ret
..@j1425:
; [181] inc(i, 2);
%LINE 181+0
		add	r10,2
..@j1422:
%LINE 179+0
		cmp	rdx,r10
		jg	..@j1421
		cmp	rdx,-1
		je	..@j1421
; [183] end;
%LINE 183+0
		ret
..@c793:

SECTION .text
	GLOBAL SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64:
..@c794:
; [190] begin
%LINE 190+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c796:
; Var $result located in register rdx
; Var u located in register rax
		mov	rbx,rcx
; Var buf1 located in register rbx
		mov	rsi,rdx
; Var buf2 located in register rsi
		mov	rdi,r8
; Var len located in register rdi
; [191] u := xmemdiffat(@buf1, @buf2, len);
%LINE 191+0
		mov	rdx,rsi
		mov	rcx,rbx
; Var len located in register rdi
		mov	r8,rdi
		call	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
; Var u located in register rax
; [192] if u = len then result := 0 else result := pbyte(@buf1+u)^-pbyte(@buf2+u)^;
%LINE 192+0
		cmp	rdi,rax
		jne	..@j1432
		xor	edx,edx
		jmp	..@j1433
..@j1432:
		lea	rcx,[rbx+rax]
		movzx	ecx,byte [rcx]
		add	rax,rsi
		movzx	eax,byte [rax]
		sub	rcx,rax
		mov	rdx,rcx
..@j1433:
; [193] end;
%LINE 193+0
		mov	rax,rdx
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c795:

SECTION .text
	GLOBAL SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64:
..@c797:
; [198] begin
%LINE 198+0
		lea	rsp,[rsp-40]
..@c799:
; Var $result located in register rax
; Var buf1 located in register rcx
; Var buf2 located in register rdx
; Var len located in register r8
; Var len located in register r8
; [199] result := CompareByte(buf1, buf2, len);
%LINE 199+0
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
; Var $result located in register rax
; [200] end;
%LINE 200+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c798:

SECTION .text
	GLOBAL fpc_getmem
fpc_getmem:
	GLOBAL FPC_GETMEM
FPC_GETMEM:
..@c800:
; [206] begin
%LINE 206+0
		lea	rsp,[rsp-40]
..@c802:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [207] result := GetMem(size);
%LINE 207+0
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
; Var $result located in register rax
; [208] end;
%LINE 208+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c801:

SECTION .text
	GLOBAL fpc_freemem
fpc_freemem:
	GLOBAL FPC_FREEMEM
FPC_FREEMEM:
..@c803:
; [211] begin
%LINE 211+0
		lea	rsp,[rsp-40]
..@c805:
; Var p located in register rax
; Var p located in register rcx
; [212] FreeMem(p);
%LINE 212+0
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [213] end;
%LINE 213+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c804:

SECTION .text
SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000028E:
..@c806:
; [system.pas]
; [270] end;
%LINE 270+0 system.pas
		push	rbp
..@c808:
..@c809:
		mov	rbp,rcx
..@c810:
		lea	rsp,[rsp-32]
; [268] begin
%LINE 268+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c807:

SECTION .text
	GLOBAL SYSTEM_$$_MSGDEBUG$ANSISTRING
SYSTEM_$$_MSGDEBUG$ANSISTRING:
..@c811:
		push	rbp
..@c813:
..@c814:
		mov	rbp,rsp
..@c815:
		lea	rsp,[rsp-48]
; Var msg located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j1448:
		nop
..@j1444:
; [269] MessageBoxA(0, @msg[1], 'DEBUG', 0);
%LINE 269+0
		mov	rdx,qword [rbp-8]
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld33]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
..@j1446:
%LINE 268+0
		nop
..@j1445:
		mov	rcx,rbp
		call	SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000028E
%LINE 270+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c812:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c816:
; [294] begin
%LINE 294+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c818:
; Var i located in register ebx
; [295] for i := 1 to InitFinalTable.TableCount do begin
%LINE 295+0
		mov	esi,dword [INITFINAL]
		cmp	esi,1
		jnge	..@j1452
		xor	ebx,ebx
..@j1453:
		inc	ebx
; [296] if InitFinalTable.Procs[i].InitProc <> nil then begin
%LINE 296+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax],0
		je	..@j1457
; [297] InitFinalTable.Procs[i].InitProc();
%LINE 297+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax]
..@j1457:
%LINE 295+0
		cmp	esi,ebx
		jnle	..@j1453
..@j1452:
; [300] end;
%LINE 300+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c817:

SECTION .text
	GLOBAL fpc_copy
fpc_copy:
	GLOBAL FPC_COPY
FPC_COPY:
..@c819:
; Var $result located in register rax
; Var Src located in register rcx
; Var Dest located in register rdx
; Var TypeInfo located in register r8
; [310] begin
%LINE 310+0
; Var $result located in register rax
; [311] result:=sizeof(pointer);
%LINE 311+0
		mov	eax,8
; [312] end;
%LINE 312+0
		ret
..@c820:

SECTION .text
	GLOBAL fpc_copy_proc
fpc_copy_proc:
..@c821:
; [315] begin
%LINE 315+0
		lea	rsp,[rsp-40]
..@c823:
; Var Src located in register rax
; Var Dest located in register rdx
; Var TypeInfo located in register r8
; Var TypeInfo located in register r8
; Var Dest located in register rdx
; Var Src located in register rcx
; [316] fpc_copy_internal(src,dest,typeinfo);
%LINE 316+0
		call	FPC_COPY
; [317] end;
%LINE 317+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c822:

SECTION .text
	GLOBAL fpc_finalizeunits
fpc_finalizeunits:
	GLOBAL FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
..@c824:
; [324] begin
%LINE 324+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c826:
; Var i located in register ebx
; [325] for i := 1 to InitFinalTable.TableCount do begin
%LINE 325+0
		mov	esi,dword [INITFINAL]
		cmp	esi,1
		jnge	..@j1465
		xor	ebx,ebx
..@j1466:
		inc	ebx
; [326] if InitFinalTable.Procs[i].FinalProc <> nil then begin
%LINE 326+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax+8],0
		je	..@j1470
; [327] InitFinalTable.Procs[i].FinalProc();
%LINE 327+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax+8]
..@j1470:
%LINE 325+0
		cmp	esi,ebx
		jnle	..@j1466
..@j1465:
; [330] end;
%LINE 330+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c825:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c827:
; [337] begin
%LINE 337+0
		lea	rsp,[rsp-40]
..@c829:
; [338] is_library := true;
%LINE 338+0
		mov	byte [operatingsystem_islibrary],1
; [339] fpc_initializeunits;
%LINE 339+0
		call	FPC_INITIALIZEUNITS
; [340] end;
%LINE 340+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c828:

SECTION .text
	GLOBAL SYSTEM_$$_HALT$LONGINT
SYSTEM_$$_HALT$LONGINT:
..@c830:
; [343] Begin
%LINE 343+0
		lea	rsp,[rsp-40]
..@c832:
		mov	eax,ecx
; Var err located in register eax
; [344] internal_do_exit;
%LINE 344+0
		call	FPC_DO_EXIT
; [345] end;
%LINE 345+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c831:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c833:
; [348] begin
%LINE 348+0
		lea	rsp,[rsp-40]
..@c835:
; [349] fpc_finalizeunits;
%LINE 349+0
		call	FPC_FINALIZEUNITS
; [350] ExitProcess(ExitCode);
%LINE 350+0
		mov	ecx,dword [operatingsystem_result]
		call	_$dll$kernel32$ExitProcess
; [351] end;
%LINE 351+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c834:

SECTION .text
	GLOBAL _fpc_leave
_fpc_leave:
	GLOBAL _FPC_leave
_FPC_leave:
..@c838:
; [365] begin
%LINE 365+0
		lea	rsp,[rsp-40]
..@c840:
; Var a1 located in register rax
; Var a2 located in register rdx
; Var a3 located in register r8
; Var a4 located in register r9
; Var a4 located in register r9
; Var a3 located in register r8
; Var a2 located in register rdx
; Var a1 located in register rcx
; [366] _fpc__leave(a1, a2, a3, a4);
%LINE 366+0
		call	SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER
; [367] end;
%LINE 367+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c839:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
	GLOBAL FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
..@c841:
; [378] begin
%LINE 378+0
; [379] end;
%LINE 379+0
		ret
..@c842:

SECTION .text
	GLOBAL SYSTEM_$$_BSRBYTE$BYTE$$BYTE
SYSTEM_$$_BSRBYTE$BYTE$$BYTE:
..@c843:
; [395] begin
%LINE 395+0
		push	rbx
		lea	rsp,[rsp-32]
..@c845:
; Var $result located in register al
; Var bsr located in register rax
		mov	bl,cl
; Var avalue located in register bl
; [396] bsr := GetBsr8bit;
%LINE 396+0
		call	_$dll$rtllib$GetBsr8bit
; Var bsr located in register rax
; Var bsr located in register rax
; [397] result := bsr^[AValue];
%LINE 397+0
		movzx	ebx,bl
; Var $result located in register al
		mov	al,byte [rax+rbx*1]
; [398] end;
%LINE 398+0
		movzx	eax,al
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c844:

SECTION .text
	GLOBAL SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL:
..@c846:
; [404] begin
%LINE 404+0
		push	rbx
		lea	rsp,[rsp-32]
..@c848:
; Var $result located in register eax
; Var tmp located in register eax
		mov	eax,ecx
; Var AValue located in register eax
; [405] result:=ord(AValue>$FFFF)*16;
%LINE 405+0
		cmp	eax,65535
		seta	dl
		movzx	edx,dl
		shl	edx,4
; Var $result located in register edx
; [406] tmp:=AValue shr result;
%LINE 406+0
		mov	ecx,edx
		shr	eax,cl
; Var tmp located in register eax
; [407] result:=result or (ord(tmp>$FF)*8);
%LINE 407+0
		cmp	eax,255
		seta	bl
		movzx	ebx,bl
		shl	ebx,3
		or	ebx,edx
; Var $result located in register ebx
; [408] tmp:=tmp shr (result and 8);
%LINE 408+0
		mov	edx,ebx
		and	edx,8
		mov	ecx,edx
		shr	eax,cl
; Var tmp located in register ecx
		mov	ecx,eax
; [409] result:=result or BsrByte(byte(tmp));
%LINE 409+0
		movzx	ecx,cl
		call	SYSTEM_$$_BSRBYTE$BYTE$$BYTE
		movzx	eax,al
		or	eax,ebx
; Var $result located in register eax
; [410] end;
%LINE 410+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c847:

SECTION .text
	GLOBAL SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL:
..@c849:
; [412] begin
%LINE 412+0
		lea	rsp,[rsp-40]
..@c851:
; Var $result located in register eax
; Var avalue located in register ecx
; Var avalue located in register ecx
; [413] result := BsrDWord_(AValue);
%LINE 413+0
		call	SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL
; Var $result located in register eax
; [414] end;
%LINE 414+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c850:

SECTION .text
	GLOBAL SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL:
..@c852:
; [428] begin
%LINE 428+0
		push	rbx
		lea	rsp,[rsp-32]
..@c854:
; Var $result located in register eax
; Var tmp located in register eax
		mov	rax,rcx
; Var AValue located in register rax
; Var $result located in register ebx
; [429] result:=32;
%LINE 429+0
		mov	ebx,32
; [430] tmp:=hi(AValue);
%LINE 430+0
		mov	rcx,rax
		shr	rcx,32
; Var tmp located in register ecx
; [431] if (tmp=0) then
%LINE 431+0
		test	ecx,ecx
		jne	..@j1492
; [433] tmp:=lo(AValue);
%LINE 433+0
		mov	ecx,eax
; [434] result:=0;
%LINE 434+0
		xor	ebx,ebx
..@j1492:
; Var tmp located in register ecx
; [436] result:=result or BsrDword(tmp);
%LINE 436+0
		call	SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
		or	eax,ebx
; Var $result located in register eax
; [437] end;
%LINE 437+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c853:

SECTION .text
	GLOBAL SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL:
..@c855:
; [439] begin
%LINE 439+0
		lea	rsp,[rsp-40]
..@c857:
; Var $result located in register eax
; Var avalue located in register rcx
; Var avalue located in register rcx
; [440] result := BsrQWord_(AValue);
%LINE 440+0
		call	SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL
; Var $result located in register eax
; [441] end;
%LINE 441+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c856:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD
SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD:
..@c858:
; [455] begin
%LINE 455+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c860:
; Var $result located in register rbx
; Var shift located in register eax
; Var lzz located in register eax
; Var lzn located in register eax
		mov	rsi,rcx
; Var n located in register rsi
		mov	rdi,rdx
; Var z located in register rdi
; [457] if (hi(z) = 0) and (hi(n) = 0) then begin
%LINE 457+0
		mov	rax,rdi
		shr	rax,32
		test	eax,eax
		jne	..@j1498
		mov	rax,rsi
		shr	rax,32
		test	eax,eax
		jne	..@j1498
; [458] fpcdivqword := Dword(z) div Dword(n);
%LINE 458+0
		mov	eax,edi
		mov	ecx,esi
		cqo
		idiv	rcx
		mov	rbx,rax
; [459] exit;
%LINE 459+0
		jmp	..@j1495
..@j1498:
; [462] fpcdivqword:=0;
%LINE 462+0
		xor	ebx,ebx
; Var z located in register rdi
; [465] lzz:=BsrQWord(z);
%LINE 465+0
		mov	rcx,rdi
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
		mov	r12d,eax
; Var lzz located in register r12d
; Var n located in register rsi
; [466] lzn:=BsrQWord(n);
%LINE 466+0
		mov	rcx,rsi
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
; Var lzn located in register eax
; [470] if lzn > lzz then exit;
%LINE 470+0
		cmp	r12d,eax
		jl	..@j1495
; [472] shift:=lzz-lzn;
%LINE 472+0
		sub	r12d,eax
; Var shift located in register r12d
; [473] n:=n shl shift;
%LINE 473+0
		movsxd	rcx,r12d
		shl	rsi,cl
; Var n located in register rsi
; [474] for shift:=shift downto 0 do
%LINE 474+0
		test	r12d,r12d
		jnge	..@j1503
		inc	r12d
..@j1504:
		dec	r12d
; [476] if z>=n then
%LINE 476+0
		cmp	rsi,rdi
		jnbe	..@j1508
; [478] z:=z-n;
%LINE 478+0
		sub	rdi,rsi
; [479] fpcdivqword:=fpcdivqword+(qword(1) shl shift);
%LINE 479+0
		movsxd	rcx,r12d
		mov	eax,1
		shl	rax,cl
		add	rbx,rax
..@j1508:
; [481] n:=n shr 1;
%LINE 481+0
		shr	rsi,1
%LINE 474+0
		test	r12d,r12d
		jnle	..@j1504
..@j1503:
..@j1495:
; [483] end;
%LINE 483+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c859:

SECTION .text
	GLOBAL fpc_div_qword
fpc_div_qword:
	GLOBAL FPC_DIV_QWORD
FPC_DIV_QWORD:
..@c861:
; [485] begin
%LINE 485+0
		lea	rsp,[rsp-40]
..@c863:
; Var $result located in register rax
; Var n located in register rcx
; Var z located in register rdx
; Var z located in register rdx
; Var n located in register rcx
; [486] result := fpcdivqword(n, z);
%LINE 486+0
		call	SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD
; Var $result located in register rax
; [487] end;
%LINE 487+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c862:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64
SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64:
..@c864:
; Var $result located in register rcx
; Var sign located in register al
; Var q1 located in register r8
; Var q2 located in register r9
; Var n located in register rcx
; Var z located in register rdx
; [502] begin
%LINE 502+0
; Var sign located in register al
; [507] sign := false;
%LINE 507+0
		xor	al,al
; [508] if z < 0 then begin
%LINE 508+0
		test	rdx,rdx
		jnl	..@j1514
; [509] sign := not sign;
%LINE 509+0
		mov	al,1
; [510] q1 := qword(-z);
%LINE 510+0
		mov	r8,rdx
		neg	r8
		jmp	..@j1515
..@j1514:
; [513] q1 := z;
%LINE 513+0
		mov	r8,rdx
..@j1515:
; [515] if n < 0 then begin
%LINE 515+0
		test	rcx,rcx
		jnl	..@j1517
; [516] sign := not sign;
%LINE 516+0
		test	al,al
		sete	al
; [517] q2 := qword(-n);
%LINE 517+0
		mov	r9,rcx
		neg	r9
		jmp	..@j1518
..@j1517:
; [520] q2 := n;
%LINE 520+0
		mov	r9,rcx
..@j1518:
; [522] if sign then
%LINE 522+0
		test	al,al
		je	..@j1520
; [523] result := -(q1 div q2)
%LINE 523+0
		mov	rax,r8
		xor	edx,edx
		div	r9
		neg	rax
		mov	rcx,rax
		jmp	..@j1521
..@j1520:
; [525] result := q1 div q2;
%LINE 525+0
		mov	rax,r8
		xor	edx,edx
		div	r9
		mov	rcx,rax
..@j1521:
; [526] end;
%LINE 526+0
		mov	rax,rcx
		ret
..@c865:

SECTION .text
	GLOBAL fpc_div_int64
fpc_div_int64:
	GLOBAL FPC_DIV_INT64
FPC_DIV_INT64:
..@c866:
; [528] begin
%LINE 528+0
		lea	rsp,[rsp-40]
..@c868:
; Var $result located in register rax
; Var n located in register rcx
; Var z located in register rdx
; Var z located in register rdx
; Var n located in register rcx
; [529] result := fpcdivint64(n, z);
%LINE 529+0
		call	SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64
; Var $result located in register rax
; [530] end;
%LINE 530+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c867:

SECTION .text
	GLOBAL SYSTEM_$$_FPCHANDLEERROR$LONGINT
SYSTEM_$$_FPCHANDLEERROR$LONGINT:
..@c869:
; [554] begin
%LINE 554+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c871:
		mov	ebx,ecx
; Var errno located in register ebx
; [555] writeln('fpc_handleerror, errno = ', errno, ', meaning = ', errmap[errno]);
%LINE 555+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld71]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		movsxd	r8,ebx
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_sint
		lea	r8,[_$SYSTEM$_Ld72]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	eax,ebx
		lea	rdx,[TC_$SYSTEM$_$FPCHANDLEERROR$LONGINT_$$_ERRMAP]
		mov	r8,qword [rdx+rax*8-1600]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_ansistr
		mov	rcx,rsi
		call	fpc_writeln_end
; [556] end;
%LINE 556+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c870:

SECTION .text
	GLOBAL fpc_handleerror
fpc_handleerror:
	GLOBAL FPC_HANDLEERROR
FPC_HANDLEERROR:
..@c872:
; [558] begin
%LINE 558+0
		lea	rsp,[rsp-40]
..@c874:
; Var errno located in register eax
; Var errno located in register ecx
; [559] fpchandleerror(errno);
%LINE 559+0
		call	SYSTEM_$$_FPCHANDLEERROR$LONGINT
; [560] end;
%LINE 560+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c873:

SECTION .text
	GLOBAL fpc_popaddrstack
fpc_popaddrstack:
	GLOBAL FPC_POPADDRSTACK
FPC_POPADDRSTACK:
..@c875:
; [572] begin
%LINE 572+0
		push	rbx
		lea	rsp,[rsp-32]
..@c877:
; [573] writeln('fpc_popaddrstack');
%LINE 573+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld73]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [574] end;
%LINE 574+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c876:

SECTION .text
	GLOBAL fpc_pushexceptaddr
fpc_pushexceptaddr:
	GLOBAL FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
..@c878:
; [577] begin
%LINE 577+0
		push	rbx
		lea	rsp,[rsp-32]
..@c880:
; Var $result located in register rdx
; Var ft located in register ecx
; Var _buf located in register rdx
; Var _newaddr located in register r8
; [578] writeln('fpc_pushexceptaddr');
%LINE 578+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld74]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [579] end;
%LINE 579+0
		mov	rax,rdx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c879:

SECTION .text
	GLOBAL SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER:
	GLOBAL FPC_BREAK_ERROR
FPC_BREAK_ERROR:
..@c889:
; [731] begin
%LINE 731+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c891:
		mov	ebx,ecx
; Var Errno located in register ebx
		mov	rsi,rdx
; Var addr located in register rsi
		mov	rdi,r8
; Var frame located in register rdi
; [732] if CodePointer(ErrorProc) <> nil then ErrorProc(Errno, addr, frame);
%LINE 732+0
		cmp	qword [TC_$SYSTEM_$$_ERRORPROC],0
		je	..@j1543
		mov	r8,rdi
		mov	rdx,rsi
		mov	ecx,ebx
		call	TC_$SYSTEM_$$_ERRORPROC
..@j1543:
; [733] ErrorCode := Word(Errno);
%LINE 733+0
		mov	word [TC_$SYSTEM_$$_ERRORCODE],bx
; [734] ErrorAddr := addr;
%LINE 734+0
		mov	rdx,rsi
; Var addr located in register rdx
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],rdx
; [735] ErrorBase := frame;
%LINE 735+0
		mov	r8,rdi
; Var frame located in register r8
		mov	qword [FPC_ERRORBASE],r8
; [736] if ExceptAddrStack <> nil then raise TObject(nil) at addr, frame;
%LINE 736+0
		cmp	qword [U_$SYSTEM_$$_EXCEPTADDRSTACK],0
		je	..@j1545
		xor	ecx,ecx
		call	fpc_raiseexception
..@j1545:
; [737] Halt(ErrorCode);
%LINE 737+0
		movzx	ecx,word [TC_$SYSTEM_$$_ERRORCODE]
		call	SYSTEM_$$_HALT$LONGINT
; [738] end;
%LINE 738+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c890:

SECTION .text
	GLOBAL fpc_overflow
fpc_overflow:
	GLOBAL FPC_OVERFLOW
FPC_OVERFLOW:
..@c892:
; [741] begin
%LINE 741+0
		lea	rsp,[rsp-40]
..@c894:
; [742] Halt(215); // IntOverflow
%LINE 742+0
		mov	ecx,215
		call	SYSTEM_$$_HALT$LONGINT
; [743] end;
%LINE 743+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c893:

SECTION .text
SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$0000029B:
..@c895:
; [748] end;
%LINE 748+0
		push	rbp
..@c897:
..@c898:
		mov	rbp,rcx
..@c899:
		lea	rsp,[rsp-32]
; [746] begin
%LINE 746+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c896:

SECTION .text
	GLOBAL SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION:
..@c900:
		push	rbp
..@c902:
..@c903:
		mov	rbp,rsp
..@c904:
		lea	rsp,[rsp-64]
; Var msg located at rbp-8, size=OS_64
; Var $vmt located at rbp-16, size=OS_64
; Var $self located at rbp-24, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-32, size=OS_S64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-8],r8
		mov	rcx,r8
		call	fpc_ansistr_incr_ref
		cmp	qword [rbp-16],1
		jne	..@j1553
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-24],rax
..@j1553:
		cmp	qword [rbp-24],0
		je	..@j1548
..@j1561:
		nop
..@j1560:
		mov	qword [rbp-32],-1
..@j1566:
		nop
..@j1562:
; [747] test := msg;
%LINE 747+0
		mov	rax,qword [rbp-24]
		lea	rcx,[rax+8]
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j1564:
%LINE 746+0
		nop
..@j1563:
		mov	rcx,rbp
		call	SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$0000029B
%LINE 748+0
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j1558
		cmp	qword [rbp-16],0
		je	..@j1558
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 746+0
		jmp	..@j1558
..@j1557:
%LINE 748+0
		cmp	qword [rbp-16],0
		je	..@j1571
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+96]
..@j1571:
		call	fpc_reraise
%LINE 746+0
		call	FPC_DONEEXCEPTION
..@j1572:
		nop
..@j1558:
..@j1548:
%LINE 748+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	2,0
	DD	1

SECTION .text
..@c901:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX
SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX:
..@c905:
; [761] begin
%LINE 761+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c907:
; Var elesize located in register rax
; Var eletype located in register rax
; Var eletypemngd located in register rax
; Var ti located in register rax
; Var size located in register rax
; Var newp located in register rdi
		mov	rbx,rcx
; Var p located in register rbx
; Var pti located in register rdx
; Var dimcount located in register r8
		mov	rsi,r9
; Var dims located in register rsi
; [772] if dimcount > 1 then begin
%LINE 772+0
		cmp	r8,1
		jg	..@j1573
; [777] if dims[0] < 0 then begin
%LINE 777+0
		cmp	qword [rsi],0
; [782] if dims[0] = 0 then begin
%LINE 782+0
		cmp	qword [rsi],0
		je	..@j1573
; [788] ti := pointer(pti)+2+pbyte(pti)[1];
%LINE 788+0
		lea	rcx,[rdx+2]
		movzx	eax,byte [rdx+1]
		add	rax,rcx
; Var ti located in register rax
; Var ti located in register rax
; Var elesize located in register r8
; [789] elesize := psizeuint(ti)^;
%LINE 789+0
		mov	r8,qword [rax]
; Var ti located in register rax
; [791] eletype := pdynarraytypedata(ti)^.elType2^;
%LINE 791+0
		mov	rdx,qword [rax+8]
; Var eletype located in register rdx
		mov	rdx,qword [rdx]
; [795] if assigned(pdynarraytypedata(ti)^.elType) then eletypemngd := pdynarraytypedata(ti)^.elType^ else eletypemngd := nil;
%LINE 795+0
		cmp	qword [rax+20],0
		je	..@j1582
		mov	rax,qword [rax+20]
		mov	rax,qword [rax]
		jmp	..@j1583
..@j1582:
		xor	eax,eax
..@j1583:
; [801] size := elesize*dims[0]+sizeof(tdynarray);
%LINE 801+0
		mov	rcx,qword [rsi]
		imul	rcx,r8
		jno	..@j1584
		call	FPC_OVERFLOW
..@j1584:
		add	rcx,16
		jno	..@j1585
		call	FPC_OVERFLOW
..@j1585:
; Var size located in register rcx
; [805] if not assigned(p) then begin
%LINE 805+0
		cmp	qword [rbx],0
		jne	..@j1587
; [808] newp := xallocmem(size);
%LINE 808+0
		call	XMM_$$_XALLOCMEM$QWORD$$POINTER
		mov	rdi,rax
		jmp	..@j1588
..@j1587:
; [815] writeln('array needs reallocation');
%LINE 815+0
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld75]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
; [816] writeln('@@todo to be implemented!');
%LINE 816+0
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld76]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
..@j1588:
; [819] p := pointer(newp)+sizeof(tdynarray);
%LINE 819+0
		lea	rax,[rdi+16]
		mov	qword [rbx],rax
; Var newp located in register rdi
; [821] newp^.refcount := 1;
%LINE 821+0
		mov	qword [rdi],1
; Var newp located in register rdi
; [822] newp^.high := dims[0]-1;
%LINE 822+0
		mov	rax,qword [rsi]
		dec	rax
		mov	qword [rdi+8],rax
..@j1573:
; [823] end;
%LINE 823+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c906:

SECTION .text
	GLOBAL fpc_dynarray_setlength
fpc_dynarray_setlength:
	GLOBAL FPC_DYNARR_SETLENGTH
FPC_DYNARR_SETLENGTH:
..@c908:
; [825] begin
%LINE 825+0
		lea	rsp,[rsp-40]
..@c910:
; Var p located in register rax
; Var pti located in register rdx
; Var dimcount located in register r8
; Var dims located in register r9
; Var dims located in register r9
; Var dimcount located in register r8
; Var pti located in register rdx
; [826] fpcdynarraysetlength(p, pti, dimcount, dims);
%LINE 826+0
		call	SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX
; [827] end;
%LINE 827+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c909:

SECTION .text
	GLOBAL fpc_dynarray_length
fpc_dynarray_length:
	GLOBAL FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
..@c911:
; Var $result located in register rax
; Var p located in register rcx
; [838] begin
%LINE 838+0
; [839] if p = nil then exit(0);
%LINE 839+0
		test	rcx,rcx
		jne	..@j1594
		xor	eax,eax
		ret
..@j1594:
; Var p located in register rcx
; [840] result := pdynarray(p-sizeof(tdynarray))^.high+1;
%LINE 840+0
		mov	rdx,qword [rcx-8]
		inc	rdx
		mov	rax,rdx
; [841] end;
%LINE 841+0
		ret
..@c912:

SECTION .text
	GLOBAL fpc_dynarray_high
fpc_dynarray_high:
	GLOBAL FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
..@c913:
; Var $result located in register rax
; Var p located in register rcx
; [844] begin
%LINE 844+0
; [845] if p = nil then exit(0);
%LINE 845+0
		test	rcx,rcx
		jne	..@j1598
		xor	eax,eax
		ret
..@j1598:
; Var p located in register rcx
; [846] result := pdynarray(p-sizeof(tdynarray))^.high;
%LINE 846+0
		mov	rax,qword [rcx-8]
; [847] end;
%LINE 847+0
		ret
..@c914:

SECTION .text
	GLOBAL fpc_dynarray_incr_ref
fpc_dynarray_incr_ref:
	GLOBAL FPC_DYNARRAY_INCR_REF
FPC_DYNARRAY_INCR_REF:
..@c915:
; [852] begin
%LINE 852+0
		push	rbx
		lea	rsp,[rsp-32]
..@c917:
; Var d located in register rax
; Var p located in register rcx
; [853] if p = nil then exit;
%LINE 853+0
		test	rcx,rcx
		je	..@j1599
; [854] d := pdynarray(p-sizeof(tdynarray));
%LINE 854+0
		lea	rbx,[rcx-16]
; Var d located in register rbx
; [855] if d^.refcount = 0 then
%LINE 855+0
		cmp	qword [rbx],0
		jne	..@j1604
; [857] HandleError(204)
%LINE 857+0
		mov	ecx,204
		call	FPC_HANDLEERROR
		jmp	..@j1605
..@j1604:
; [858] else if d^.refcount>0 then
%LINE 858+0
		cmp	qword [rbx],0
		jng	..@j1607
; [861] inc(d^.refcount);
%LINE 861+0
		inc	qword [rbx]
..@j1607:
..@j1605:
..@j1599:
; [862] end;
%LINE 862+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c916:

SECTION .text
	GLOBAL fpc_dynarray_clear
fpc_dynarray_clear:
	GLOBAL FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
..@c918:
; [867] begin
%LINE 867+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c920:
; Var d located in register rax
		mov	rbx,rcx
; Var p located in register rbx
; Var ti located in register rdx
; [868] if p = nil then exit;
%LINE 868+0
		cmp	qword [rbx],0
		je	..@j1608
; [869] d := pdynarray(p-sizeof(tdynarray));
%LINE 869+0
		mov	rax,qword [rbx]
		lea	rsi,[rax-16]
; Var d located in register rsi
; [870] if d^.refcount = 0 then
%LINE 870+0
		cmp	qword [rsi],0
		jne	..@j1613
; [872] HandleError(204);
%LINE 872+0
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j1613:
; [873] if d^.refcount > 0 then begin
%LINE 873+0
		cmp	qword [rsi],0
		jng	..@j1615
; [874] dec(d^.refcount); // todo: locked
%LINE 874+0
		dec	qword [rsi]
; [878] FreeMem(d);
%LINE 878+0
		mov	rcx,rsi
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1615:
; [880] p := nil;
%LINE 880+0
		mov	qword [rbx],0
..@j1608:
; [881] end;
%LINE 881+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c919:

SECTION .text
SYSTEM$_$fpc_chararray_to_ansistr$array_of_CHAR$BOOLEAN$$ANSISTRING_$$_fin$0000029C:
..@c921:
; [915] end;
%LINE 915+0
		push	rbp
..@c923:
..@c924:
		mov	rbp,rcx
..@c925:
		lea	rsp,[rsp-32]
; [886] begin
%LINE 886+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c922:

SECTION .text
	GLOBAL fpc_chararray_to_ansistr
fpc_chararray_to_ansistr:
..@c926:
; Temps allocated between rbp-40 and rbp+0
		push	rbp
..@c928:
..@c929:
		mov	rbp,rsp
..@c930:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	qword [rbp-16],r12
; Var i located in register r12
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var arr located in register rsi
		mov	rdi,r8
; Var $highARR located in register rdi
		mov	r12b,r9b
; Var zerobased located in register r12b
		mov	qword [rbp-8],0
..@j1624:
		nop
..@j1620:
; [887] result := '';
%LINE 887+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [889] if (zerobased) then
%LINE 889+0
		test	r12b,r12b
		je	..@j1626
; [891] i := 0;
%LINE 891+0
		xor	r12,r12
..@j1627:
; [893] if (arr[i] = #0) Then
%LINE 893+0
		cmp	byte [rsi+r12*1],0
		jne	..@j1631
; [895] i := 0;
%LINE 895+0
		xor	r12,r12
; [896] exit;
%LINE 896+0
		jmp	..@j1622
..@j1631:
; [899] result := result + arr[i];
%LINE 899+0
		movzx	edx,byte [rsi+r12*1]
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [901] inc(i);
%LINE 901+0
		inc	r12
; [902] until i = Length(arr);
%LINE 902+0
		lea	rax,[rdi+1]
		cmp	rax,r12
		jne	..@j1627
		jmp	..@j1633
..@j1626:
; [905] i := 0;
%LINE 905+0
		xor	r12,r12
..@j1634:
; [907] result := result + arr[i];
%LINE 907+0
		movzx	edx,byte [rsi+r12*1]
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [908] inc(i);
%LINE 908+0
		inc	r12
; [909] until i = high(arr)+1;
%LINE 909+0
		lea	rax,[rdi+1]
		cmp	rax,r12
		jne	..@j1634
..@j1633:
; [911] if i > 0 then
%LINE 911+0
		test	r12,r12
		jng	..@j1638
; [913] Move (arr[0],Pointer(fpc_CharArray_To_AnsiStr)^,i);
%LINE 913+0
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		mov	r8,r12
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j1638:
..@j1622:
%LINE 886+0
		nop
..@j1621:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_chararray_to_ansistr$array_of_CHAR$BOOLEAN$$ANSISTRING_$$_fin$0000029C
%LINE 915+0
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		mov	r12,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c927:

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
..@c941:
; [system.pas]
; [1033] initialization
%LINE 1033+0 system.pas
		lea	rsp,[rsp-40]
..@c943:
; [1034] install_exception_handlers;
%LINE 1034+0
		call	SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
; [1036] end.
%LINE 1036+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c942:
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
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d77,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; [system.pas]
%LINE 1036+0 system.pas

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
VMT_$SYSTEM_$$_TINTERFACEDOBJECT	DQ	24,-24,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d78,0,0,0,RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
	DQ	0,0,..@d80,0,SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY,SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TTESTEXCEPTION
VMT_$SYSTEM_$$_TTESTEXCEPTION	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d81,0,0,0,RTTI_$SYSTEM_$$_TTESTEXCEPTION
	DQ	INIT_$SYSTEM_$$_TTESTEXCEPTION,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .rodata
..@d34$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d34:
; [545] 'DivByZero',        'RangeError',      'StackOverflow',     '203',            '204',
%LINE 545+0 system.pas
		DB	"DivByZero",0

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d35:
		DB	"RangeError",0

SECTION .rodata
..@d36$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d36:
		DB	"StackOverflow",0

SECTION .rodata
..@d37$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d37:
		DB	"203",0

SECTION .rodata
..@d38$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d38:
		DB	"204",0

SECTION .rodata
..@d39$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d39:
; [546] 'Overflow',         'Underflow',       'InvalidOp',         'ZeroDivide',     '209',
%LINE 546+0
		DB	"Overflow",0

SECTION .rodata
..@d40$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d40:
		DB	"Underflow",0

SECTION .rodata
..@d41$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d41:
		DB	"InvalidOp",0

SECTION .rodata
..@d42$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d42:
		DB	"ZeroDivide",0

SECTION .rodata
..@d43$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d43:
		DB	"209",0

SECTION .rodata
..@d44$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d44:
; [547] 'ObjectCheckError', 'AbstractError',   'ExternalException', '213',            'BusError',
%LINE 547+0
		DB	"ObjectCheckError",0

SECTION .rodata
..@d45$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d45:
		DB	"AbstractError",0

SECTION .rodata
..@d46$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d46:
		DB	"ExternalException",0

SECTION .rodata
..@d47$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d47:
		DB	"213",0

SECTION .rodata
..@d48$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d48:
		DB	"BusError",0

SECTION .rodata
..@d49$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d49:
; [548] 'IntOverflow',      'AccessViolation', 'ControlC',          'Privilege',      'InvalidCast',
%LINE 548+0
		DB	"IntOverflow",0

SECTION .rodata
..@d50$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d50:
		DB	"AccessViolation",0

SECTION .rodata
..@d51$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d51:
		DB	"ControlC",0

SECTION .rodata
..@d52$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d52:
		DB	"Privilege",0

SECTION .rodata
..@d53$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d53:
		DB	"InvalidCast",0

SECTION .rodata
..@d54$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d54:
; [549] 'InvalidVarCast',   'InvalidVarOp',    'DispatchError',     'VarArrayCreate', 'VarNotArray',
%LINE 549+0
		DB	"InvalidVarCast",0

SECTION .rodata
..@d55$strlab:
	DW	0,1
	DD	0
	DQ	-1,12
..@d55:
		DB	"InvalidVarOp",0

SECTION .rodata
..@d56$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d56:
		DB	"DispatchError",0

SECTION .rodata
..@d57$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d57:
		DB	"VarArrayCreate",0

SECTION .rodata
..@d58$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d58:
		DB	"VarNotArray",0

SECTION .rodata
..@d59$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d59:
; [550] 'VarArrayBounds',   '226',             'AssertionFailed',   'IntfCastError',  'SafecallException',
%LINE 550+0
		DB	"VarArrayBounds",0

SECTION .rodata
..@d60$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d60:
		DB	"226",0

SECTION .rodata
..@d61$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d61:
		DB	"AssertionFailed",0

SECTION .rodata
..@d62$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d62:
		DB	"IntfCastError",0

SECTION .rodata
..@d63$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d63:
		DB	"SafecallException",0

SECTION .rodata
..@d64$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d64:
; [551] '230',              'iconvError',      'NoThreadSupport',   'SigQuit',        'MissingWStringManager',
%LINE 551+0
		DB	"230",0

SECTION .rodata
..@d65$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d65:
		DB	"iconvError",0

SECTION .rodata
..@d66$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d66:
		DB	"NoThreadSupport",0

SECTION .rodata
..@d67$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d67:
		DB	"SigQuit",0

SECTION .rodata
..@d68$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d68:
		DB	"MissingWStringManager",0

SECTION .rodata
..@d69$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d69:
; [552] 'NoDynLibsSupport', 'ThreadError'
%LINE 552+0
		DB	"NoDynLibsSupport",0

SECTION .rodata
..@d70$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d70:
; [553] );
%LINE 553+0
		DB	"ThreadError",0

SECTION .data
	ALIGN 8,DB 0
..@d77:
	DB	7
%LINE 1036+0
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d78:
	DB	17
		DB	"TInterfacedObject"

SECTION .data
	ALIGN 8,DB 0
..@d79:
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

SECTION .data
	ALIGN 8,DB 0
..@d80:
	DQ	1,IID_$SYSTEM_$$_IUNKNOWN$indirect,..@d79,16,IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
	DD	0
	DB	0,0,0,0

SECTION .data
	ALIGN 8,DB 0
..@d81:
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
%LINE 234+0
		DB	16,"press <enter>...",0

SECTION .rodata
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d3:
; [objects.inc]
%LINE 587+0 objects.inc
		DB	"$Capturer",0

SECTION .rodata
_$SYSTEM$_Ld4:
	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70
%LINE 679+0

SECTION .rodata
..@d5$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d5:
%LINE 721+0
		DB	"@@todo: fpc_intf_cast",0

SECTION .data
TC_$SYSTEM_$$_EX_LEVEL	DB	0
; [exceptions64.inc]
; [225] var
%LINE 225+0 exceptions64.inc

SECTION .rodata
_$SYSTEM$_Ld6:
%LINE 234+0
		DB	18,"JumpToHandleSignal",0

SECTION .rodata
_$SYSTEM$_Ld7:
%LINE 307+0
		DB	25,"signals_exception_handler",0

SECTION .rodata
_$SYSTEM$_Ld8:
%LINE 313+0
		DB	23,"exrec^.ExceptionCode = ",0

SECTION .rodata
_$SYSTEM$_Ld9:
%LINE 345+0
		DB	28,"syswin_x64_exception_handler",0

SECTION .data
TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER	DQ	0
; [356] procedure install_exception_handlers; export;
%LINE 356+0

SECTION .rodata
_$SYSTEM$_Ld10:
%LINE 570+0
		DB	22,"__FPC_specific_handler",0

SECTION .rodata
_$SYSTEM$_Ld11:
%LINE 660+0
		DB	18,"fpc_raiseexception",0

SECTION .rodata
_$SYSTEM$_Ld12:
%LINE 662+0
		DB	7,"obj nil",0

SECTION .rodata
_$SYSTEM$_Ld13:
%LINE 663+0
		DB	10,"anaddr nil",0

SECTION .rodata
_$SYSTEM$_Ld14:
%LINE 664+0
		DB	10,"aframe nil",0

SECTION .rodata
_$SYSTEM$_Ld15:
%LINE 667+0
		DB	20,"exception message = ",0

SECTION .rodata
_$SYSTEM$_Ld16:
; [rtti.inc]
%LINE 36+0 rtti.inc
		DB	14,"fpc_initialize",0

SECTION .rodata
_$SYSTEM$_Ld17:
%LINE 41+0
		DB	12,"fpc_finalize",0

SECTION .rodata
_$SYSTEM$_Ld18:
%LINE 44+0
		DB	"&decrease refcount of interfaced object",0

SECTION .rodata
_$SYSTEM$_Ld19:
%LINE 50+0
		DB	10,"fpc_addref",0

SECTION .rodata
_$SYSTEM$_Ld20:
%LINE 55+0
		DB	10,"fpc_decref",0

SECTION .rodata
..@d21$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d21:
; [io.inc]
%LINE 102+0 io.inc
		DB	13,10,0

SECTION .rodata
..@d22$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d22:
%LINE 230+0
		DB	"TRUE",0

SECTION .rodata
..@d23$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d23:
		DB	"FALSE",0

SECTION .rodata
_$SYSTEM$_Ld24:
; [strings.inc]
%LINE 153+0 strings.inc
		DB	21,"fpc_val_sint_shortstr",0

SECTION .rodata
_$SYSTEM$_Ld25:
%LINE 158+0
		DB	17,"fpc_shortstr_sint",0

SECTION .rodata
_$SYSTEM$_Ld26:
%LINE 378+0
		DB	24,"fpc_ansistr_concat_multi",0

SECTION .rodata
_$SYSTEM$_Ld27:
%LINE 417+0
		DB	16,"fpc_ansistr_sint",0

SECTION .rodata
_$SYSTEM$_Ld28:
%LINE 594+0
		DB	21,"fpc_pchar_to_shortstr",0

SECTION .rodata
_$SYSTEM$_Ld29:
%LINE 682+0
		DB	20,"fpc_uchar_to_ansistr",0

SECTION .data
TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg	DB	0
%LINE 865+0

SECTION .rodata
..@d30$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d30:
%LINE 866+0
		DB	"0",0

SECTION .rodata
..@d31$strlab:
	DW	1200,2
	DD	0
	DQ	-1,1
..@d31:
	DW	63,0
; [unicode.inc]
%LINE 139+0 unicode.inc

SECTION .rodata
..@d32$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d32:
%LINE 180+0
		DB	"?",0

SECTION .rodata
_$SYSTEM$_Ld33:
; [system.pas]
%LINE 269+0 system.pas
		DB	"DEBUG",0

SECTION .data
TC_$SYSTEM$_$FPCHANDLEERROR$LONGINT_$$_ERRMAP	DQ	..@d34,..@d35,..@d36,..@d37,..@d38,..@d39,..@d40,..@d41,..@d42,..@d43,..@d44
	DQ	..@d45,..@d46,..@d47,..@d48,..@d49,..@d50,..@d51,..@d52,..@d53,..@d54,..@d55
	DQ	..@d56,..@d57,..@d58,..@d59,..@d60,..@d61,..@d62,..@d63,..@d64,..@d65,..@d66
	DQ	..@d67,..@d68,..@d69,..@d70
%LINE 554+0

SECTION .rodata
_$SYSTEM$_Ld71:
%LINE 555+0
		DB	25,"fpc_handleerror, errno = ",0

SECTION .rodata
_$SYSTEM$_Ld72:
		DB	12,", meaning = ",0

SECTION .rodata
_$SYSTEM$_Ld73:
%LINE 573+0
		DB	16,"fpc_popaddrstack",0

SECTION .rodata
_$SYSTEM$_Ld74:
%LINE 578+0
		DB	18,"fpc_pushexceptaddr",0

SECTION .rodata
_$SYSTEM$_Ld75:
%LINE 815+0
		DB	24,"array needs reallocation",0

SECTION .rodata
_$SYSTEM$_Ld76:
%LINE 816+0
		DB	25,"@@todo to be implemented!",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal	DB	0,7
; [1037] 
%LINE 1037+0 system.pas
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
	GLOBAL RTTI_$SYSTEM_$$_def0000029D
RTTI_$SYSTEM_$$_def0000029D	DB	12,0
	DQ	296,37,RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT$indirect
VMT_$SYSTEM_$$_TOBJECT$indirect	DQ	VMT_$SYSTEM_$$_TOBJECT
%LINE 1036+0 system.pas

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
%LINE 1037+0

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
	GLOBAL RTTI_$SYSTEM_$$_def0000029D$indirect
RTTI_$SYSTEM_$$_def0000029D$indirect	DQ	RTTI_$SYSTEM_$$_def0000029D
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c944:
	DD	..@c946-..@c945
..@c945:
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
..@c946:
	DD	..@c948-..@c947
..@c947:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c948:
	DD	..@c950-..@c949
..@c949:
	DQ	..@c4,..@c5-..@c4
	ALIGN 4,DB 0
..@c950:
	DD	..@c952-..@c951
..@c951:
	DQ	..@c6,..@c7-..@c6
	ALIGN 4,DB 0
..@c952:
	DD	..@c954-..@c953
..@c953:
	DQ	..@c8,..@c9-..@c8
	ALIGN 4,DB 0
..@c954:
	DD	..@c956-..@c955
..@c955:
	DQ	..@c10,..@c11-..@c10
	DB	4
	DD	..@c12-..@c10
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c13-..@c12
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c14-..@c13
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c956:
	DD	..@c958-..@c957
..@c957:
	DQ	..@c15,..@c16-..@c15
	DB	4
	DD	..@c17-..@c15
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c958:
	DD	..@c960-..@c959
..@c959:
	DQ	..@c18,..@c19-..@c18
	DB	4
	DD	..@c20-..@c18
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c960:
	DD	..@c962-..@c961
..@c961:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c962:
	DD	..@c964-..@c963
..@c963:
	DQ	..@c24,..@c25-..@c24
	ALIGN 4,DB 0
..@c964:
	DD	..@c966-..@c965
..@c965:
	DQ	..@c26,..@c27-..@c26
	DB	4
	DD	..@c28-..@c26
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c966:
	DD	..@c968-..@c967
..@c967:
	DQ	..@c29,..@c30-..@c29
	ALIGN 4,DB 0
..@c968:
	DD	..@c970-..@c969
..@c969:
	DQ	..@c31,..@c32-..@c31
	DB	4
	DD	..@c33-..@c31
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c970:
	DD	..@c972-..@c971
..@c971:
	DQ	..@c34,..@c35-..@c34
	ALIGN 4,DB 0
..@c972:
	DD	..@c974-..@c973
..@c973:
	DQ	..@c36,..@c37-..@c36
	ALIGN 4,DB 0
..@c974:
	DD	..@c976-..@c975
..@c975:
	DQ	..@c38,..@c39-..@c38
	DB	4
	DD	..@c40-..@c38
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c976:
	DD	..@c978-..@c977
..@c977:
	DQ	..@c41,..@c42-..@c41
	ALIGN 4,DB 0
..@c978:
	DD	..@c980-..@c979
..@c979:
	DQ	..@c43,..@c44-..@c43
	ALIGN 4,DB 0
..@c980:
	DD	..@c982-..@c981
..@c981:
	DQ	..@c45,..@c46-..@c45
	ALIGN 4,DB 0
..@c982:
	DD	..@c984-..@c983
..@c983:
	DQ	..@c47,..@c48-..@c47
	ALIGN 4,DB 0
..@c984:
	DD	..@c986-..@c985
..@c985:
	DQ	..@c49,..@c50-..@c49
	ALIGN 4,DB 0
..@c986:
	DD	..@c988-..@c987
..@c987:
	DQ	..@c51,..@c52-..@c51
	ALIGN 4,DB 0
..@c988:
	DD	..@c990-..@c989
..@c989:
	DQ	..@c53,..@c54-..@c53
	DB	4
	DD	..@c55-..@c53
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c990:
	DD	..@c992-..@c991
..@c991:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c992:
	DD	..@c994-..@c993
..@c993:
	DQ	..@c59,..@c60-..@c59
	DB	4
	DD	..@c61-..@c59
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c994:
	DD	..@c996-..@c995
..@c995:
	DQ	..@c62,..@c63-..@c62
	DB	4
	DD	..@c64-..@c62
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c996:
	DD	..@c998-..@c997
..@c997:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c998:
	DD	..@c1000-..@c999
..@c999:
	DQ	..@c68,..@c69-..@c68
	DB	4
	DD	..@c70-..@c68
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1000:
	DD	..@c1002-..@c1001
..@c1001:
	DQ	..@c71,..@c72-..@c71
	DB	4
	DD	..@c73-..@c71
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1002:
	DD	..@c1004-..@c1003
..@c1003:
	DQ	..@c74,..@c75-..@c74
	DB	4
	DD	..@c76-..@c74
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1004:
	DD	..@c1006-..@c1005
..@c1005:
	DQ	..@c77,..@c78-..@c77
	ALIGN 4,DB 0
..@c1006:
	DD	..@c1008-..@c1007
..@c1007:
	DQ	..@c79,..@c80-..@c79
	DB	4
	DD	..@c81-..@c79
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c82-..@c81
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c83-..@c82
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1008:
	DD	..@c1010-..@c1009
..@c1009:
	DQ	..@c84,..@c85-..@c84
	DB	4
	DD	..@c86-..@c84
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c87-..@c86
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c88-..@c87
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1010:
	DD	..@c1012-..@c1011
..@c1011:
	DQ	..@c89,..@c90-..@c89
	DB	4
	DD	..@c91-..@c89
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1012:
	DD	..@c1014-..@c1013
..@c1013:
	DQ	..@c92,..@c93-..@c92
	ALIGN 4,DB 0
..@c1014:
	DD	..@c1016-..@c1015
..@c1015:
	DQ	..@c94,..@c95-..@c94
	DB	4
	DD	..@c96-..@c94
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1016:
	DD	..@c1018-..@c1017
..@c1017:
	DQ	..@c97,..@c98-..@c97
	DB	4
	DD	..@c99-..@c97
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1018:
	DD	..@c1020-..@c1019
..@c1019:
	DQ	..@c100,..@c101-..@c100
	ALIGN 4,DB 0
..@c1020:
	DD	..@c1022-..@c1021
..@c1021:
	DQ	..@c102,..@c103-..@c102
	ALIGN 4,DB 0
..@c1022:
	DD	..@c1024-..@c1023
..@c1023:
	DQ	..@c104,..@c105-..@c104
	ALIGN 4,DB 0
..@c1024:
	DD	..@c1026-..@c1025
..@c1025:
	DQ	..@c106,..@c107-..@c106
	ALIGN 4,DB 0
..@c1026:
	DD	..@c1028-..@c1027
..@c1027:
	DQ	..@c108,..@c109-..@c108
	ALIGN 4,DB 0
..@c1028:
	DD	..@c1030-..@c1029
..@c1029:
	DQ	..@c110,..@c111-..@c110
	ALIGN 4,DB 0
..@c1030:
	DD	..@c1032-..@c1031
..@c1031:
	DQ	..@c112,..@c113-..@c112
	DB	4
	DD	..@c114-..@c112
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1032:
	DD	..@c1034-..@c1033
..@c1033:
	DQ	..@c115,..@c116-..@c115
	DB	4
	DD	..@c117-..@c115
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1034:
	DD	..@c1036-..@c1035
..@c1035:
	DQ	..@c118,..@c119-..@c118
	ALIGN 4,DB 0
..@c1036:
	DD	..@c1038-..@c1037
..@c1037:
	DQ	..@c120,..@c121-..@c120
	DB	4
	DD	..@c122-..@c120
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1038:
	DD	..@c1040-..@c1039
..@c1039:
	DQ	..@c123,..@c124-..@c123
	DB	4
	DD	..@c125-..@c123
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1040:
	DD	..@c1042-..@c1041
..@c1041:
	DQ	..@c126,..@c127-..@c126
	DB	4
	DD	..@c128-..@c126
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1042:
	DD	..@c1044-..@c1043
..@c1043:
	DQ	..@c129,..@c130-..@c129
	DB	4
	DD	..@c131-..@c129
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1044:
	DD	..@c1046-..@c1045
..@c1045:
	DQ	..@c132,..@c133-..@c132
	DB	4
	DD	..@c134-..@c132
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1046:
	DD	..@c1048-..@c1047
..@c1047:
	DQ	..@c135,..@c136-..@c135
	DB	4
	DD	..@c137-..@c135
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1048:
	DD	..@c1050-..@c1049
..@c1049:
	DQ	..@c138,..@c139-..@c138
	DB	4
	DD	..@c140-..@c138
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1050:
	DD	..@c1052-..@c1051
..@c1051:
	DQ	..@c141,..@c142-..@c141
	DB	4
	DD	..@c143-..@c141
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1052:
	DD	..@c1054-..@c1053
..@c1053:
	DQ	..@c144,..@c145-..@c144
	ALIGN 4,DB 0
..@c1054:
	DD	..@c1056-..@c1055
..@c1055:
	DQ	..@c146,..@c147-..@c146
	DB	4
	DD	..@c148-..@c146
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1056:
	DD	..@c1058-..@c1057
..@c1057:
	DQ	..@c149,..@c150-..@c149
	ALIGN 4,DB 0
..@c1058:
	DD	..@c1060-..@c1059
..@c1059:
	DQ	..@c151,..@c152-..@c151
	DB	4
	DD	..@c153-..@c151
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1060:
	DD	..@c1062-..@c1061
..@c1061:
	DQ	..@c154,..@c155-..@c154
	DB	4
	DD	..@c156-..@c154
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1062:
	DD	..@c1064-..@c1063
..@c1063:
	DQ	..@c157,..@c158-..@c157
	DB	4
	DD	..@c159-..@c157
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1064:
	DD	..@c1066-..@c1065
..@c1065:
	DQ	..@c160,..@c161-..@c160
	DB	4
	DD	..@c162-..@c160
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1066:
	DD	..@c1068-..@c1067
..@c1067:
	DQ	..@c163,..@c164-..@c163
	DB	4
	DD	..@c165-..@c163
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1068:
	DD	..@c1070-..@c1069
..@c1069:
	DQ	..@c166,..@c167-..@c166
	DB	4
	DD	..@c168-..@c166
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1070:
	DD	..@c1072-..@c1071
..@c1071:
	DQ	..@c169,..@c170-..@c169
	DB	4
	DD	..@c171-..@c169
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1072:
	DD	..@c1074-..@c1073
..@c1073:
	DQ	..@c172,..@c173-..@c172
	DB	4
	DD	..@c174-..@c172
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1074:
	DD	..@c1076-..@c1075
..@c1075:
	DQ	..@c175,..@c176-..@c175
	DB	4
	DD	..@c177-..@c175
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c178-..@c177
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c179-..@c178
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1076:
	DD	..@c1078-..@c1077
..@c1077:
	DQ	..@c180,..@c181-..@c180
	DB	4
	DD	..@c182-..@c180
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1078:
	DD	..@c1080-..@c1079
..@c1079:
	DQ	..@c183,..@c184-..@c183
	DB	4
	DD	..@c185-..@c183
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1080:
	DD	..@c1082-..@c1081
..@c1081:
	DQ	..@c186,..@c187-..@c186
	DB	4
	DD	..@c188-..@c186
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1082:
	DD	..@c1084-..@c1083
..@c1083:
	DQ	..@c189,..@c190-..@c189
	DB	4
	DD	..@c191-..@c189
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1084:
	DD	..@c1086-..@c1085
..@c1085:
	DQ	..@c192,..@c193-..@c192
	DB	4
	DD	..@c194-..@c192
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1086:
	DD	..@c1088-..@c1087
..@c1087:
	DQ	..@c195,..@c196-..@c195
	DB	4
	DD	..@c197-..@c195
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1088:
	DD	..@c1090-..@c1089
..@c1089:
	DQ	..@c198,..@c199-..@c198
	DB	4
	DD	..@c200-..@c198
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1090:
	DD	..@c1092-..@c1091
..@c1091:
	DQ	..@c201,..@c202-..@c201
	DB	4
	DD	..@c203-..@c201
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1092:
	DD	..@c1094-..@c1093
..@c1093:
	DQ	..@c204,..@c205-..@c204
	DB	4
	DD	..@c206-..@c204
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1094:
	DD	..@c1096-..@c1095
..@c1095:
	DQ	..@c207,..@c208-..@c207
	ALIGN 4,DB 0
..@c1096:
	DD	..@c1098-..@c1097
..@c1097:
	DQ	..@c209,..@c210-..@c209
	ALIGN 4,DB 0
..@c1098:
	DD	..@c1100-..@c1099
..@c1099:
	DQ	..@c211,..@c212-..@c211
	DB	4
	DD	..@c213-..@c211
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1100:
	DD	..@c1102-..@c1101
..@c1101:
	DQ	..@c214,..@c215-..@c214
	DB	4
	DD	..@c216-..@c214
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1102:
	DD	..@c1104-..@c1103
..@c1103:
	DQ	..@c217,..@c218-..@c217
	DB	4
	DD	..@c219-..@c217
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1104:
	DD	..@c1106-..@c1105
..@c1105:
	DQ	..@c220,..@c221-..@c220
	DB	4
	DD	..@c222-..@c220
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1106:
	DD	..@c1108-..@c1107
..@c1107:
	DQ	..@c223,..@c224-..@c223
	DB	4
	DD	..@c225-..@c223
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1108:
	DD	..@c1110-..@c1109
..@c1109:
	DQ	..@c226,..@c227-..@c226
	DB	4
	DD	..@c228-..@c226
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1110:
	DD	..@c1112-..@c1111
..@c1111:
	DQ	..@c229,..@c230-..@c229
	ALIGN 4,DB 0
..@c1112:
	DD	..@c1114-..@c1113
..@c1113:
	DQ	..@c231,..@c232-..@c231
	ALIGN 4,DB 0
..@c1114:
	DD	..@c1116-..@c1115
..@c1115:
	DQ	..@c233,..@c234-..@c233
	ALIGN 4,DB 0
..@c1116:
	DD	..@c1118-..@c1117
..@c1117:
	DQ	..@c235,..@c236-..@c235
	DB	4
	DD	..@c237-..@c235
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c238-..@c237
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c239-..@c238
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1118:
	DD	..@c1120-..@c1119
..@c1119:
	DQ	..@c240,..@c241-..@c240
	DB	4
	DD	..@c242-..@c240
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c243-..@c242
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c244-..@c243
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1120:
	DD	..@c1122-..@c1121
..@c1121:
	DQ	..@c245,..@c246-..@c245
	DB	4
	DD	..@c247-..@c245
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1122:
	DD	..@c1124-..@c1123
..@c1123:
	DQ	..@c248,..@c249-..@c248
	DB	4
	DD	..@c250-..@c248
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1124:
	DD	..@c1126-..@c1125
..@c1125:
	DQ	..@c251,..@c252-..@c251
	DB	4
	DD	..@c253-..@c251
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1126:
	DD	..@c1128-..@c1127
..@c1127:
	DQ	..@c254,..@c255-..@c254
	DB	4
	DD	..@c256-..@c254
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1128:
	DD	..@c1130-..@c1129
..@c1129:
	DQ	..@c257,..@c258-..@c257
	DB	4
	DD	..@c259-..@c257
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1130:
	DD	..@c1132-..@c1131
..@c1131:
	DQ	..@c260,..@c261-..@c260
	DB	4
	DD	..@c262-..@c260
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1132:
	DD	..@c1134-..@c1133
..@c1133:
	DQ	..@c263,..@c264-..@c263
	ALIGN 4,DB 0
..@c1134:
	DD	..@c1136-..@c1135
..@c1135:
	DQ	..@c265,..@c266-..@c265
	DB	4
	DD	..@c267-..@c265
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c268-..@c267
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c269-..@c268
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1136:
	DD	..@c1138-..@c1137
..@c1137:
	DQ	..@c270,..@c271-..@c270
	DB	4
	DD	..@c272-..@c270
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c273-..@c272
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c274-..@c273
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1138:
	DD	..@c1140-..@c1139
..@c1139:
	DQ	..@c275,..@c276-..@c275
	DB	4
	DD	..@c277-..@c275
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c278-..@c277
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c279-..@c278
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1140:
	DD	..@c1142-..@c1141
..@c1141:
	DQ	..@c280,..@c281-..@c280
	DB	4
	DD	..@c282-..@c280
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c283-..@c282
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c284-..@c283
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1142:
	DD	..@c1144-..@c1143
..@c1143:
	DQ	..@c285,..@c286-..@c285
	ALIGN 4,DB 0
..@c1144:
	DD	..@c1146-..@c1145
..@c1145:
	DQ	..@c287,..@c288-..@c287
	DB	4
	DD	..@c289-..@c287
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c290-..@c289
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c291-..@c290
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1146:
	DD	..@c1148-..@c1147
..@c1147:
	DQ	..@c292,..@c293-..@c292
	DB	4
	DD	..@c294-..@c292
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c295-..@c294
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c296-..@c295
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1148:
	DD	..@c1150-..@c1149
..@c1149:
	DQ	..@c297,..@c298-..@c297
	DB	4
	DD	..@c299-..@c297
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c300-..@c299
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c301-..@c300
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1150:
	DD	..@c1152-..@c1151
..@c1151:
	DQ	..@c302,..@c303-..@c302
	DB	4
	DD	..@c304-..@c302
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c305-..@c304
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c306-..@c305
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1152:
	DD	..@c1154-..@c1153
..@c1153:
	DQ	..@c307,..@c308-..@c307
	DB	4
	DD	..@c309-..@c307
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c310-..@c309
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c311-..@c310
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1154:
	DD	..@c1156-..@c1155
..@c1155:
	DQ	..@c312,..@c313-..@c312
	DB	4
	DD	..@c314-..@c312
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c315-..@c314
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c316-..@c315
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1156:
	DD	..@c1158-..@c1157
..@c1157:
	DQ	..@c317,..@c318-..@c317
	DB	4
	DD	..@c319-..@c317
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c320-..@c319
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c321-..@c320
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1158:
	DD	..@c1160-..@c1159
..@c1159:
	DQ	..@c322,..@c323-..@c322
	DB	4
	DD	..@c324-..@c322
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c325-..@c324
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c326-..@c325
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1160:
	DD	..@c1162-..@c1161
..@c1161:
	DQ	..@c327,..@c328-..@c327
	DB	4
	DD	..@c329-..@c327
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c330-..@c329
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c331-..@c330
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1162:
	DD	..@c1164-..@c1163
..@c1163:
	DQ	..@c332,..@c333-..@c332
	DB	4
	DD	..@c334-..@c332
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c335-..@c334
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c336-..@c335
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1164:
	DD	..@c1166-..@c1165
..@c1165:
	DQ	..@c337,..@c338-..@c337
	DB	4
	DD	..@c339-..@c337
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c340-..@c339
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c341-..@c340
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1166:
	DD	..@c1168-..@c1167
..@c1167:
	DQ	..@c342,..@c343-..@c342
	DB	4
	DD	..@c344-..@c342
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c345-..@c344
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c346-..@c345
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1168:
	DD	..@c1170-..@c1169
..@c1169:
	DQ	..@c347,..@c348-..@c347
	ALIGN 4,DB 0
..@c1170:
	DD	..@c1172-..@c1171
..@c1171:
	DQ	..@c349,..@c350-..@c349
	DB	4
	DD	..@c351-..@c349
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1172:
	DD	..@c1174-..@c1173
..@c1173:
	DQ	..@c352,..@c353-..@c352
	DB	4
	DD	..@c354-..@c352
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1174:
	DD	..@c1176-..@c1175
..@c1175:
	DQ	..@c355,..@c356-..@c355
	DB	4
	DD	..@c357-..@c355
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1176:
	DD	..@c1178-..@c1177
..@c1177:
	DQ	..@c358,..@c359-..@c358
	DB	4
	DD	..@c360-..@c358
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1178:
	DD	..@c1180-..@c1179
..@c1179:
	DQ	..@c361,..@c362-..@c361
	DB	4
	DD	..@c363-..@c361
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1180:
	DD	..@c1182-..@c1181
..@c1181:
	DQ	..@c364,..@c365-..@c364
	DB	4
	DD	..@c366-..@c364
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1182:
	DD	..@c1184-..@c1183
..@c1183:
	DQ	..@c367,..@c368-..@c367
	DB	4
	DD	..@c369-..@c367
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1184:
	DD	..@c1186-..@c1185
..@c1185:
	DQ	..@c370,..@c371-..@c370
	DB	4
	DD	..@c372-..@c370
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1186:
	DD	..@c1188-..@c1187
..@c1187:
	DQ	..@c373,..@c374-..@c373
	DB	4
	DD	..@c375-..@c373
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1188:
	DD	..@c1190-..@c1189
..@c1189:
	DQ	..@c376,..@c377-..@c376
	DB	4
	DD	..@c378-..@c376
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1190:
	DD	..@c1192-..@c1191
..@c1191:
	DQ	..@c379,..@c380-..@c379
	DB	4
	DD	..@c381-..@c379
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1192:
	DD	..@c1194-..@c1193
..@c1193:
	DQ	..@c382,..@c383-..@c382
	DB	4
	DD	..@c384-..@c382
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1194:
	DD	..@c1196-..@c1195
..@c1195:
	DQ	..@c385,..@c386-..@c385
	DB	4
	DD	..@c387-..@c385
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1196:
	DD	..@c1198-..@c1197
..@c1197:
	DQ	..@c388,..@c389-..@c388
	DB	4
	DD	..@c390-..@c388
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1198:
	DD	..@c1200-..@c1199
..@c1199:
	DQ	..@c391,..@c392-..@c391
	DB	4
	DD	..@c393-..@c391
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1200:
	DD	..@c1202-..@c1201
..@c1201:
	DQ	..@c394,..@c395-..@c394
	DB	4
	DD	..@c396-..@c394
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1202:
	DD	..@c1204-..@c1203
..@c1203:
	DQ	..@c397,..@c398-..@c397
	DB	4
	DD	..@c399-..@c397
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1204:
	DD	..@c1206-..@c1205
..@c1205:
	DQ	..@c400,..@c401-..@c400
	ALIGN 4,DB 0
..@c1206:
	DD	..@c1208-..@c1207
..@c1207:
	DQ	..@c402,..@c403-..@c402
	DB	4
	DD	..@c404-..@c402
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1208:
	DD	..@c1210-..@c1209
..@c1209:
	DQ	..@c405,..@c406-..@c405
	DB	4
	DD	..@c407-..@c405
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1210:
	DD	..@c1212-..@c1211
..@c1211:
	DQ	..@c408,..@c409-..@c408
	DB	4
	DD	..@c410-..@c408
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1212:
	DD	..@c1214-..@c1213
..@c1213:
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
..@c1214:
	DD	..@c1216-..@c1215
..@c1215:
	DQ	..@c416,..@c417-..@c416
	DB	4
	DD	..@c418-..@c416
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1216:
	DD	..@c1218-..@c1217
..@c1217:
	DQ	..@c419,..@c420-..@c419
	DB	4
	DD	..@c421-..@c419
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1218:
	DD	..@c1220-..@c1219
..@c1219:
	DQ	..@c422,..@c423-..@c422
	DB	4
	DD	..@c424-..@c422
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1220:
	DD	..@c1222-..@c1221
..@c1221:
	DQ	..@c425,..@c426-..@c425
	DB	4
	DD	..@c427-..@c425
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1222:
	DD	..@c1224-..@c1223
..@c1223:
	DQ	..@c428,..@c429-..@c428
	DB	4
	DD	..@c430-..@c428
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1224:
	DD	..@c1226-..@c1225
..@c1225:
	DQ	..@c431,..@c432-..@c431
	DB	4
	DD	..@c433-..@c431
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1226:
	DD	..@c1228-..@c1227
..@c1227:
	DQ	..@c434,..@c435-..@c434
	DB	4
	DD	..@c436-..@c434
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1228:
	DD	..@c1230-..@c1229
..@c1229:
	DQ	..@c437,..@c438-..@c437
	DB	4
	DD	..@c439-..@c437
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1230:
	DD	..@c1232-..@c1231
..@c1231:
	DQ	..@c440,..@c441-..@c440
	DB	4
	DD	..@c442-..@c440
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1232:
	DD	..@c1234-..@c1233
..@c1233:
	DQ	..@c443,..@c444-..@c443
	DB	4
	DD	..@c445-..@c443
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1234:
	DD	..@c1236-..@c1235
..@c1235:
	DQ	..@c446,..@c447-..@c446
	DB	4
	DD	..@c448-..@c446
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1236:
	DD	..@c1238-..@c1237
..@c1237:
	DQ	..@c449,..@c450-..@c449
	DB	4
	DD	..@c451-..@c449
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1238:
	DD	..@c1240-..@c1239
..@c1239:
	DQ	..@c452,..@c453-..@c452
	DB	4
	DD	..@c454-..@c452
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1240:
	DD	..@c1242-..@c1241
..@c1241:
	DQ	..@c455,..@c456-..@c455
	DB	4
	DD	..@c457-..@c455
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1242:
	DD	..@c1244-..@c1243
..@c1243:
	DQ	..@c458,..@c459-..@c458
	DB	4
	DD	..@c460-..@c458
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1244:
	DD	..@c1246-..@c1245
..@c1245:
	DQ	..@c461,..@c462-..@c461
	DB	4
	DD	..@c463-..@c461
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1246:
	DD	..@c1248-..@c1247
..@c1247:
	DQ	..@c464,..@c465-..@c464
	DB	4
	DD	..@c466-..@c464
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1248:
	DD	..@c1250-..@c1249
..@c1249:
	DQ	..@c467,..@c468-..@c467
	DB	4
	DD	..@c469-..@c467
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1250:
	DD	..@c1252-..@c1251
..@c1251:
	DQ	..@c470,..@c471-..@c470
	DB	4
	DD	..@c472-..@c470
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1252:
	DD	..@c1254-..@c1253
..@c1253:
	DQ	..@c473,..@c474-..@c473
	DB	4
	DD	..@c475-..@c473
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1254:
	DD	..@c1256-..@c1255
..@c1255:
	DQ	..@c476,..@c477-..@c476
	DB	4
	DD	..@c478-..@c476
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1256:
	DD	..@c1258-..@c1257
..@c1257:
	DQ	..@c479,..@c480-..@c479
	DB	4
	DD	..@c481-..@c479
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1258:
	DD	..@c1260-..@c1259
..@c1259:
	DQ	..@c482,..@c483-..@c482
	DB	4
	DD	..@c484-..@c482
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1260:
	DD	..@c1262-..@c1261
..@c1261:
	DQ	..@c485,..@c486-..@c485
	DB	4
	DD	..@c487-..@c485
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1262:
	DD	..@c1264-..@c1263
..@c1263:
	DQ	..@c488,..@c489-..@c488
	DB	4
	DD	..@c490-..@c488
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1264:
	DD	..@c1266-..@c1265
..@c1265:
	DQ	..@c491,..@c492-..@c491
	ALIGN 4,DB 0
..@c1266:
	DD	..@c1268-..@c1267
..@c1267:
	DQ	..@c493,..@c494-..@c493
	DB	4
	DD	..@c495-..@c493
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1268:
	DD	..@c1270-..@c1269
..@c1269:
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
..@c1270:
	DD	..@c1272-..@c1271
..@c1271:
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
..@c1272:
	DD	..@c1274-..@c1273
..@c1273:
	DQ	..@c506,..@c507-..@c506
	DB	4
	DD	..@c508-..@c506
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1274:
	DD	..@c1276-..@c1275
..@c1275:
	DQ	..@c509,..@c510-..@c509
	DB	4
	DD	..@c511-..@c509
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1276:
	DD	..@c1278-..@c1277
..@c1277:
	DQ	..@c512,..@c513-..@c512
	DB	4
	DD	..@c514-..@c512
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1278:
	DD	..@c1280-..@c1279
..@c1279:
	DQ	..@c515,..@c516-..@c515
	DB	4
	DD	..@c517-..@c515
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1280:
	DD	..@c1282-..@c1281
..@c1281:
	DQ	..@c518,..@c519-..@c518
	DB	4
	DD	..@c520-..@c518
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c521-..@c520
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c522-..@c521
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1282:
	DD	..@c1284-..@c1283
..@c1283:
	DQ	..@c523,..@c524-..@c523
	DB	4
	DD	..@c525-..@c523
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c526-..@c525
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c527-..@c526
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1284:
	DD	..@c1286-..@c1285
..@c1285:
	DQ	..@c528,..@c529-..@c528
	DB	4
	DD	..@c530-..@c528
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c531-..@c530
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c532-..@c531
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1286:
	DD	..@c1288-..@c1287
..@c1287:
	DQ	..@c533,..@c534-..@c533
	DB	4
	DD	..@c535-..@c533
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c536-..@c535
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c537-..@c536
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1288:
	DD	..@c1290-..@c1289
..@c1289:
	DQ	..@c538,..@c539-..@c538
	DB	4
	DD	..@c540-..@c538
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c541-..@c540
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c542-..@c541
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1290:
	DD	..@c1292-..@c1291
..@c1291:
	DQ	..@c543,..@c544-..@c543
	DB	4
	DD	..@c545-..@c543
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c546-..@c545
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c547-..@c546
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1292:
	DD	..@c1294-..@c1293
..@c1293:
	DQ	..@c548,..@c549-..@c548
	DB	4
	DD	..@c550-..@c548
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1294:
	DD	..@c1296-..@c1295
..@c1295:
	DQ	..@c551,..@c552-..@c551
	ALIGN 4,DB 0
..@c1296:
	DD	..@c1298-..@c1297
..@c1297:
	DQ	..@c553,..@c554-..@c553
	DB	4
	DD	..@c555-..@c553
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1298:
	DD	..@c1300-..@c1299
..@c1299:
	DQ	..@c556,..@c557-..@c556
	DB	4
	DD	..@c558-..@c556
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1300:
	DD	..@c1302-..@c1301
..@c1301:
	DQ	..@c559,..@c560-..@c559
	DB	4
	DD	..@c561-..@c559
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1302:
	DD	..@c1304-..@c1303
..@c1303:
	DQ	..@c562,..@c563-..@c562
	DB	4
	DD	..@c564-..@c562
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1304:
	DD	..@c1306-..@c1305
..@c1305:
	DQ	..@c565,..@c566-..@c565
	ALIGN 4,DB 0
..@c1306:
	DD	..@c1308-..@c1307
..@c1307:
	DQ	..@c567,..@c568-..@c567
	DB	4
	DD	..@c569-..@c567
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c570-..@c569
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c571-..@c570
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1308:
	DD	..@c1310-..@c1309
..@c1309:
	DQ	..@c572,..@c573-..@c572
	DB	4
	DD	..@c574-..@c572
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c575-..@c574
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c576-..@c575
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1310:
	DD	..@c1312-..@c1311
..@c1311:
	DQ	..@c577,..@c578-..@c577
	ALIGN 4,DB 0
..@c1312:
	DD	..@c1314-..@c1313
..@c1313:
	DQ	..@c579,..@c580-..@c579
	DB	4
	DD	..@c581-..@c579
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c582-..@c581
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c583-..@c582
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1314:
	DD	..@c1316-..@c1315
..@c1315:
	DQ	..@c584,..@c585-..@c584
	DB	4
	DD	..@c586-..@c584
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c587-..@c586
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c588-..@c587
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1316:
	DD	..@c1318-..@c1317
..@c1317:
	DQ	..@c589,..@c590-..@c589
	DB	4
	DD	..@c591-..@c589
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c592-..@c591
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c593-..@c592
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1318:
	DD	..@c1320-..@c1319
..@c1319:
	DQ	..@c594,..@c595-..@c594
	DB	4
	DD	..@c596-..@c594
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c597-..@c596
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c598-..@c597
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1320:
	DD	..@c1322-..@c1321
..@c1321:
	DQ	..@c599,..@c600-..@c599
	DB	4
	DD	..@c601-..@c599
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c602-..@c601
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c603-..@c602
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1322:
	DD	..@c1324-..@c1323
..@c1323:
	DQ	..@c604,..@c605-..@c604
	DB	4
	DD	..@c606-..@c604
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c607-..@c606
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c608-..@c607
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1324:
	DD	..@c1326-..@c1325
..@c1325:
	DQ	..@c609,..@c610-..@c609
	DB	4
	DD	..@c611-..@c609
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c612-..@c611
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c613-..@c612
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1326:
	DD	..@c1328-..@c1327
..@c1327:
	DQ	..@c614,..@c615-..@c614
	DB	4
	DD	..@c616-..@c614
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c617-..@c616
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c618-..@c617
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1328:
	DD	..@c1330-..@c1329
..@c1329:
	DQ	..@c619,..@c620-..@c619
	DB	4
	DD	..@c621-..@c619
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c622-..@c621
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c623-..@c622
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1330:
	DD	..@c1332-..@c1331
..@c1331:
	DQ	..@c624,..@c625-..@c624
	DB	4
	DD	..@c626-..@c624
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c627-..@c626
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c628-..@c627
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1332:
	DD	..@c1334-..@c1333
..@c1333:
	DQ	..@c629,..@c630-..@c629
	ALIGN 4,DB 0
..@c1334:
	DD	..@c1336-..@c1335
..@c1335:
	DQ	..@c631,..@c632-..@c631
	DB	4
	DD	..@c633-..@c631
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1336:
	DD	..@c1338-..@c1337
..@c1337:
	DQ	..@c634,..@c635-..@c634
	DB	4
	DD	..@c636-..@c634
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1338:
	DD	..@c1340-..@c1339
..@c1339:
	DQ	..@c637,..@c638-..@c637
	DB	4
	DD	..@c639-..@c637
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1340:
	DD	..@c1342-..@c1341
..@c1341:
	DQ	..@c640,..@c641-..@c640
	DB	4
	DD	..@c642-..@c640
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c643-..@c642
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c644-..@c643
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1342:
	DD	..@c1344-..@c1343
..@c1343:
	DQ	..@c645,..@c646-..@c645
	DB	4
	DD	..@c647-..@c645
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c648-..@c647
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c649-..@c648
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1344:
	DD	..@c1346-..@c1345
..@c1345:
	DQ	..@c650,..@c651-..@c650
	DB	4
	DD	..@c652-..@c650
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c653-..@c652
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c654-..@c653
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1346:
	DD	..@c1348-..@c1347
..@c1347:
	DQ	..@c655,..@c656-..@c655
	DB	4
	DD	..@c657-..@c655
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c658-..@c657
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c659-..@c658
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1348:
	DD	..@c1350-..@c1349
..@c1349:
	DQ	..@c660,..@c661-..@c660
	DB	4
	DD	..@c662-..@c660
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c663-..@c662
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c664-..@c663
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1350:
	DD	..@c1352-..@c1351
..@c1351:
	DQ	..@c665,..@c666-..@c665
	ALIGN 4,DB 0
..@c1352:
	DD	..@c1354-..@c1353
..@c1353:
	DQ	..@c667,..@c668-..@c667
	DB	4
	DD	..@c669-..@c667
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1354:
	DD	..@c1356-..@c1355
..@c1355:
	DQ	..@c670,..@c671-..@c670
	DB	4
	DD	..@c672-..@c670
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c673-..@c672
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c674-..@c673
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1356:
	DD	..@c1358-..@c1357
..@c1357:
	DQ	..@c675,..@c676-..@c675
	DB	4
	DD	..@c677-..@c675
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c678-..@c677
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c679-..@c678
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1358:
	DD	..@c1360-..@c1359
..@c1359:
	DQ	..@c680,..@c681-..@c680
	DB	4
	DD	..@c682-..@c680
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1360:
	DD	..@c1362-..@c1361
..@c1361:
	DQ	..@c683,..@c684-..@c683
	DB	4
	DD	..@c685-..@c683
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1362:
	DD	..@c1364-..@c1363
..@c1363:
	DQ	..@c686,..@c687-..@c686
	DB	4
	DD	..@c688-..@c686
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1364:
	DD	..@c1366-..@c1365
..@c1365:
	DQ	..@c689,..@c690-..@c689
	DB	4
	DD	..@c691-..@c689
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1366:
	DD	..@c1368-..@c1367
..@c1367:
	DQ	..@c692,..@c693-..@c692
	DB	4
	DD	..@c694-..@c692
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1368:
	DD	..@c1370-..@c1369
..@c1369:
	DQ	..@c695,..@c696-..@c695
	DB	4
	DD	..@c697-..@c695
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c698-..@c697
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c699-..@c698
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1370:
	DD	..@c1372-..@c1371
..@c1371:
	DQ	..@c700,..@c701-..@c700
	DB	4
	DD	..@c702-..@c700
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c703-..@c702
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c704-..@c703
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1372:
	DD	..@c1374-..@c1373
..@c1373:
	DQ	..@c705,..@c706-..@c705
	DB	4
	DD	..@c707-..@c705
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c708-..@c707
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c709-..@c708
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1374:
	DD	..@c1376-..@c1375
..@c1375:
	DQ	..@c710,..@c711-..@c710
	DB	4
	DD	..@c712-..@c710
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c713-..@c712
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c714-..@c713
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1376:
	DD	..@c1378-..@c1377
..@c1377:
	DQ	..@c715,..@c716-..@c715
	DB	4
	DD	..@c717-..@c715
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c718-..@c717
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c719-..@c718
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1378:
	DD	..@c1380-..@c1379
..@c1379:
	DQ	..@c720,..@c721-..@c720
	DB	4
	DD	..@c722-..@c720
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c723-..@c722
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c724-..@c723
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1380:
	DD	..@c1382-..@c1381
..@c1381:
	DQ	..@c725,..@c726-..@c725
	DB	4
	DD	..@c727-..@c725
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1382:
	DD	..@c1384-..@c1383
..@c1383:
	DQ	..@c728,..@c729-..@c728
	DB	4
	DD	..@c730-..@c728
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1384:
	DD	..@c1386-..@c1385
..@c1385:
	DQ	..@c731,..@c732-..@c731
	DB	4
	DD	..@c733-..@c731
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1386:
	DD	..@c1388-..@c1387
..@c1387:
	DQ	..@c734,..@c735-..@c734
	DB	4
	DD	..@c736-..@c734
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1388:
	DD	..@c1390-..@c1389
..@c1389:
	DQ	..@c737,..@c738-..@c737
	ALIGN 4,DB 0
..@c1390:
	DD	..@c1392-..@c1391
..@c1391:
	DQ	..@c739,..@c740-..@c739
	DB	4
	DD	..@c741-..@c739
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1392:
	DD	..@c1394-..@c1393
..@c1393:
	DQ	..@c742,..@c743-..@c742
	DB	4
	DD	..@c744-..@c742
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1394:
	DD	..@c1396-..@c1395
..@c1395:
	DQ	..@c745,..@c746-..@c745
	DB	4
	DD	..@c747-..@c745
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c748-..@c747
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c749-..@c748
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1396:
	DD	..@c1398-..@c1397
..@c1397:
	DQ	..@c750,..@c751-..@c750
	DB	4
	DD	..@c752-..@c750
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c753-..@c752
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c754-..@c753
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1398:
	DD	..@c1400-..@c1399
..@c1399:
	DQ	..@c755,..@c756-..@c755
	DB	4
	DD	..@c757-..@c755
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1400:
	DD	..@c1402-..@c1401
..@c1401:
	DQ	..@c758,..@c759-..@c758
	DB	4
	DD	..@c760-..@c758
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1402:
	DD	..@c1404-..@c1403
..@c1403:
	DQ	..@c761,..@c762-..@c761
	DB	4
	DD	..@c763-..@c761
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1404:
	DD	..@c1406-..@c1405
..@c1405:
	DQ	..@c764,..@c765-..@c764
	DB	4
	DD	..@c766-..@c764
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1406:
	DD	..@c1408-..@c1407
..@c1407:
	DQ	..@c767,..@c768-..@c767
	DB	4
	DD	..@c769-..@c767
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1408:
	DD	..@c1410-..@c1409
..@c1409:
	DQ	..@c770,..@c771-..@c770
	DB	4
	DD	..@c772-..@c770
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1410:
	DD	..@c1412-..@c1411
..@c1411:
	DQ	..@c773,..@c774-..@c773
	DB	4
	DD	..@c775-..@c773
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1412:
	DD	..@c1414-..@c1413
..@c1413:
	DQ	..@c776,..@c777-..@c776
	DB	4
	DD	..@c778-..@c776
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1414:
	DD	..@c1416-..@c1415
..@c1415:
	DQ	..@c779,..@c780-..@c779
	DB	4
	DD	..@c781-..@c779
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1416:
	DD	..@c1418-..@c1417
..@c1417:
	DQ	..@c782,..@c783-..@c782
	DB	4
	DD	..@c784-..@c782
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1418:
	DD	..@c1420-..@c1419
..@c1419:
	DQ	..@c785,..@c786-..@c785
	DB	4
	DD	..@c787-..@c785
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1420:
	DD	..@c1422-..@c1421
..@c1421:
	DQ	..@c788,..@c789-..@c788
	ALIGN 4,DB 0
..@c1422:
	DD	..@c1424-..@c1423
..@c1423:
	DQ	..@c790,..@c791-..@c790
	ALIGN 4,DB 0
..@c1424:
	DD	..@c1426-..@c1425
..@c1425:
	DQ	..@c792,..@c793-..@c792
	ALIGN 4,DB 0
..@c1426:
	DD	..@c1428-..@c1427
..@c1427:
	DQ	..@c794,..@c795-..@c794
	DB	4
	DD	..@c796-..@c794
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1428:
	DD	..@c1430-..@c1429
..@c1429:
	DQ	..@c797,..@c798-..@c797
	DB	4
	DD	..@c799-..@c797
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1430:
	DD	..@c1432-..@c1431
..@c1431:
	DQ	..@c800,..@c801-..@c800
	DB	4
	DD	..@c802-..@c800
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1432:
	DD	..@c1434-..@c1433
..@c1433:
	DQ	..@c803,..@c804-..@c803
	DB	4
	DD	..@c805-..@c803
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1434:
	DD	..@c1436-..@c1435
..@c1435:
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
..@c1436:
	DD	..@c1438-..@c1437
..@c1437:
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
..@c1438:
	DD	..@c1440-..@c1439
..@c1439:
	DQ	..@c816,..@c817-..@c816
	DB	4
	DD	..@c818-..@c816
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1440:
	DD	..@c1442-..@c1441
..@c1441:
	DQ	..@c819,..@c820-..@c819
	ALIGN 4,DB 0
..@c1442:
	DD	..@c1444-..@c1443
..@c1443:
	DQ	..@c821,..@c822-..@c821
	DB	4
	DD	..@c823-..@c821
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1444:
	DD	..@c1446-..@c1445
..@c1445:
	DQ	..@c824,..@c825-..@c824
	DB	4
	DD	..@c826-..@c824
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1446:
	DD	..@c1448-..@c1447
..@c1447:
	DQ	..@c827,..@c828-..@c827
	DB	4
	DD	..@c829-..@c827
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1448:
	DD	..@c1450-..@c1449
..@c1449:
	DQ	..@c830,..@c831-..@c830
	DB	4
	DD	..@c832-..@c830
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1450:
	DD	..@c1452-..@c1451
..@c1451:
	DQ	..@c833,..@c834-..@c833
	DB	4
	DD	..@c835-..@c833
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1452:
	DD	..@c1454-..@c1453
..@c1453:
	DQ	..@c836,..@c837-..@c836
	ALIGN 4,DB 0
..@c1454:
	DD	..@c1456-..@c1455
..@c1455:
	DQ	..@c838,..@c839-..@c838
	DB	4
	DD	..@c840-..@c838
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1456:
	DD	..@c1458-..@c1457
..@c1457:
	DQ	..@c841,..@c842-..@c841
	ALIGN 4,DB 0
..@c1458:
	DD	..@c1460-..@c1459
..@c1459:
	DQ	..@c843,..@c844-..@c843
	DB	4
	DD	..@c845-..@c843
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1460:
	DD	..@c1462-..@c1461
..@c1461:
	DQ	..@c846,..@c847-..@c846
	DB	4
	DD	..@c848-..@c846
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1462:
	DD	..@c1464-..@c1463
..@c1463:
	DQ	..@c849,..@c850-..@c849
	DB	4
	DD	..@c851-..@c849
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1464:
	DD	..@c1466-..@c1465
..@c1465:
	DQ	..@c852,..@c853-..@c852
	DB	4
	DD	..@c854-..@c852
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1466:
	DD	..@c1468-..@c1467
..@c1467:
	DQ	..@c855,..@c856-..@c855
	DB	4
	DD	..@c857-..@c855
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1468:
	DD	..@c1470-..@c1469
..@c1469:
	DQ	..@c858,..@c859-..@c858
	DB	4
	DD	..@c860-..@c858
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1470:
	DD	..@c1472-..@c1471
..@c1471:
	DQ	..@c861,..@c862-..@c861
	DB	4
	DD	..@c863-..@c861
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1472:
	DD	..@c1474-..@c1473
..@c1473:
	DQ	..@c864,..@c865-..@c864
	ALIGN 4,DB 0
..@c1474:
	DD	..@c1476-..@c1475
..@c1475:
	DQ	..@c866,..@c867-..@c866
	DB	4
	DD	..@c868-..@c866
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1476:
	DD	..@c1478-..@c1477
..@c1477:
	DQ	..@c869,..@c870-..@c869
	DB	4
	DD	..@c871-..@c869
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1478:
	DD	..@c1480-..@c1479
..@c1479:
	DQ	..@c872,..@c873-..@c872
	DB	4
	DD	..@c874-..@c872
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1480:
	DD	..@c1482-..@c1481
..@c1481:
	DQ	..@c875,..@c876-..@c875
	DB	4
	DD	..@c877-..@c875
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1482:
	DD	..@c1484-..@c1483
..@c1483:
	DQ	..@c878,..@c879-..@c878
	DB	4
	DD	..@c880-..@c878
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1484:
	DD	..@c1486-..@c1485
..@c1485:
	DQ	..@c881,..@c882-..@c881
	ALIGN 4,DB 0
..@c1486:
	DD	..@c1488-..@c1487
..@c1487:
	DQ	..@c883,..@c884-..@c883
	ALIGN 4,DB 0
..@c1488:
	DD	..@c1490-..@c1489
..@c1489:
	DQ	..@c885,..@c886-..@c885
	ALIGN 4,DB 0
..@c1490:
	DD	..@c1492-..@c1491
..@c1491:
	DQ	..@c887,..@c888-..@c887
	ALIGN 4,DB 0
..@c1492:
	DD	..@c1494-..@c1493
..@c1493:
	DQ	..@c889,..@c890-..@c889
	DB	4
	DD	..@c891-..@c889
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1494:
	DD	..@c1496-..@c1495
..@c1495:
	DQ	..@c892,..@c893-..@c892
	DB	4
	DD	..@c894-..@c892
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1496:
	DD	..@c1498-..@c1497
..@c1497:
	DQ	..@c895,..@c896-..@c895
	DB	4
	DD	..@c897-..@c895
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c898-..@c897
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c899-..@c898
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1498:
	DD	..@c1500-..@c1499
..@c1499:
	DQ	..@c900,..@c901-..@c900
	DB	4
	DD	..@c902-..@c900
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c903-..@c902
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c904-..@c903
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1500:
	DD	..@c1502-..@c1501
..@c1501:
	DQ	..@c905,..@c906-..@c905
	DB	4
	DD	..@c907-..@c905
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1502:
	DD	..@c1504-..@c1503
..@c1503:
	DQ	..@c908,..@c909-..@c908
	DB	4
	DD	..@c910-..@c908
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1504:
	DD	..@c1506-..@c1505
..@c1505:
	DQ	..@c911,..@c912-..@c911
	ALIGN 4,DB 0
..@c1506:
	DD	..@c1508-..@c1507
..@c1507:
	DQ	..@c913,..@c914-..@c913
	ALIGN 4,DB 0
..@c1508:
	DD	..@c1510-..@c1509
..@c1509:
	DQ	..@c915,..@c916-..@c915
	DB	4
	DD	..@c917-..@c915
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1510:
	DD	..@c1512-..@c1511
..@c1511:
	DQ	..@c918,..@c919-..@c918
	DB	4
	DD	..@c920-..@c918
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1512:
	DD	..@c1514-..@c1513
..@c1513:
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
..@c1514:
	DD	..@c1516-..@c1515
..@c1515:
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
..@c1516:
	DD	..@c1518-..@c1517
..@c1517:
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
..@c1518:
	DD	..@c1520-..@c1519
..@c1519:
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
..@c1520:
	DD	..@c1522-..@c1521
..@c1521:
	DQ	..@c941,..@c942-..@c941
	DB	4
	DD	..@c943-..@c941
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1522:
; End asmlist al_dwarf_frame

