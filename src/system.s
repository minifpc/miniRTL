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
EXTERN	_$dll$kernel32$RtlFillMemory
EXTERN	XMM_$$_XMEMSIZE$POINTER$$QWORD
EXTERN	_$dll$kernel32$RtlMoveMemory
EXTERN	_$dll$ntdll$RtlCompareMemory
EXTERN	_$dll$user32$MessageBoxA
EXTERN	INITFINAL
EXTERN	_$dll$kernel32$ExitProcess
; Begin asmlist al_pure_assembler

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT:
..@c671:
; [misc.inc]
; [63] asm
%LINE 63+0 misc.inc
		push	rbp
..@c673:
..@c674:
		mov	rbp,rsp
..@c675:
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
..@c672:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64
SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64:
..@c676:
; [70] asm
%LINE 70+0
		push	rbp
..@c678:
..@c679:
		mov	rbp,rsp
..@c680:
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
..@c677:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT:
..@c681:
; [77] asm
%LINE 77+0
		push	rbp
..@c683:
..@c684:
		mov	rbp,rsp
..@c685:
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
..@c682:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64:
..@c686:
; [84] asm
%LINE 84+0
		push	rbp
..@c688:
..@c689:
		mov	rbp,rsp
..@c690:
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
..@c687:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT:
..@c691:
; [91] asm
%LINE 91+0
		push	rbp
..@c693:
..@c694:
		mov	rbp,rsp
..@c695:
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
..@c692:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64:
..@c696:
; [98] asm
%LINE 98+0
		push	rbp
..@c698:
..@c699:
		mov	rbp,rsp
..@c700:
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
..@c697:

SECTION .text
	GLOBAL _fpc_leave
_fpc_leave:
	GLOBAL _FPC_leave
_FPC_leave:
..@c823:
; [system.pas]
; [314] asm
%LINE 314+0 system.pas
CPU x64

; [315] movl   4(%esp),%eax
%LINE 315+0
		mov	eax,dword [esp+4]
; [316] movl   %eax,%fs:(0)
%LINE 316+0
		mov	dword [fs:0],eax
; [317] movl   %ebp,%eax
%LINE 317+0
		mov	eax,ebp
; [318] call   16(%esp)
%LINE 318+0
		call	[esp+16]
CPU x64

; [319] end;
%LINE 319+0
		ret
..@c824:

SECTION .text
	GLOBAL fpc_setjmp
fpc_setjmp:
	GLOBAL FPC_SETJMP
FPC_SETJMP:
..@c849:
; [486] asm
%LINE 486+0
CPU x64

; [487] movq     %rbx,jmp_buf.rbx(%rcx)
%LINE 487+0
		mov	qword [rcx],rbx
; [488] movq     %rbp,jmp_buf.rbp(%rcx)
%LINE 488+0
		mov	qword [rcx+8],rbp
; [489] movq     %r12,jmp_buf.r12(%rcx)
%LINE 489+0
		mov	qword [rcx+16],r12
; [490] movq     %r13,jmp_buf.r13(%rcx)
%LINE 490+0
		mov	qword [rcx+24],r13
; [491] movq     %r14,jmp_buf.r14(%rcx)
%LINE 491+0
		mov	qword [rcx+32],r14
; [492] movq     %r15,jmp_buf.r15(%rcx)
%LINE 492+0
		mov	qword [rcx+40],r15
; [493] movq     %rsi,jmp_buf.rsi(%rcx)
%LINE 493+0
		mov	qword [rcx+64],rsi
; [494] movq     %rdi,jmp_buf.rdi(%rcx)
%LINE 494+0
		mov	qword [rcx+72],rdi
; [495] leaq     8(%rsp),%rax
%LINE 495+0
		lea	rax,[rsp+8]
; [496] movq     %rax,jmp_buf.rsp(%rcx)
%LINE 496+0
		mov	qword [rcx+48],rax
; [497] movq     (%rsp),%rax
%LINE 497+0
		mov	rax,qword [rsp]
; [498] movq     %rax,jmp_buf.rip(%rcx)
%LINE 498+0
		mov	qword [rcx+56],rax
; [499] movdqu   %xmm6,jmp_buf.xmm6(%rcx)
%LINE 499+0
		movdqu	[rcx+80],xmm6
; [500] movdqu   %xmm7,jmp_buf.xmm7(%rcx)
%LINE 500+0
		movdqu	[rcx+96],xmm7
; [501] movdqu   %xmm8,jmp_buf.xmm8(%rcx)
%LINE 501+0
		movdqu	[rcx+112],xmm8
; [502] movdqu   %xmm9,jmp_buf.xmm9(%rcx)
%LINE 502+0
		movdqu	[rcx+128],xmm9
; [503] movdqu   %xmm10,jmp_buf.xmm10(%rcx)
%LINE 503+0
		movdqu	[rcx+144],xmm10
; [504] movdqu   %xmm11,jmp_buf.xmm11(%rcx)
%LINE 504+0
		movdqu	[rcx+160],xmm11
; [505] movdqu   %xmm12,jmp_buf.xmm12(%rcx)
%LINE 505+0
		movdqu	[rcx+176],xmm12
; [506] movdqu   %xmm13,jmp_buf.xmm13(%rcx)
%LINE 506+0
		movdqu	[rcx+192],xmm13
; [507] movdqu   %xmm14,jmp_buf.xmm14(%rcx)
%LINE 507+0
		movdqu	[rcx+208],xmm14
; [508] movdqu   %xmm15,jmp_buf.xmm15(%rcx)
%LINE 508+0
		movdqu	[rcx+224],xmm15
; [509] stmxcsr  jmp_buf.mxcsr(%rcx)
%LINE 509+0
		stmxcsr	dword [rcx+240]
; [510] fnstcw   jmp_buf.fpucw(%rcx)
%LINE 510+0
		fnstcw	word [rcx+244]
; [511] xorl     %eax,%eax
%LINE 511+0
		xor	eax,eax
CPU x64

; [512] end;
%LINE 512+0
		ret
..@c850:

SECTION .text
	GLOBAL fpc_longjmp
fpc_longjmp:
	GLOBAL FPC_LONGJMP
FPC_LONGJMP:
..@c851:
; [516] asm
%LINE 516+0
CPU x64

; [532] cmpl     $1,%edx
%LINE 532+0
		cmp	edx,1
; [533] adcl     $0,%edx
%LINE 533+0
		adc	edx,0
; [534] movl     %edx,%eax
%LINE 534+0
		mov	eax,edx
; [535] movq     jmp_buf.rbx(%rcx),%rbx
%LINE 535+0
		mov	rbx,qword [rcx]
; [536] movq     jmp_buf.rbp(%rcx),%rbp
%LINE 536+0
		mov	rbp,qword [rcx+8]
; [537] movq     jmp_buf.r12(%rcx),%r12
%LINE 537+0
		mov	r12,qword [rcx+16]
; [538] movq     jmp_buf.r13(%rcx),%r13
%LINE 538+0
		mov	r13,qword [rcx+24]
; [539] movq     jmp_buf.r14(%rcx),%r14
%LINE 539+0
		mov	r14,qword [rcx+32]
; [540] movq     jmp_buf.r15(%rcx),%r15
%LINE 540+0
		mov	r15,qword [rcx+40]
; [541] movq     jmp_buf.rsi(%rcx),%rsi
%LINE 541+0
		mov	rsi,qword [rcx+64]
; [542] movq     jmp_buf.rdi(%rcx),%rdi
%LINE 542+0
		mov	rdi,qword [rcx+72]
; [543] movq     jmp_buf.rsp(%rcx),%rsp
%LINE 543+0
		mov	rsp,qword [rcx+48]
; [544] movdqu   jmp_buf.xmm6(%rcx),%xmm6
%LINE 544+0
		movdqu	xmm6,[rcx+80]
; [545] movdqu   jmp_buf.xmm7(%rcx),%xmm7
%LINE 545+0
		movdqu	xmm7,[rcx+96]
; [546] movdqu   jmp_buf.xmm8(%rcx),%xmm8
%LINE 546+0
		movdqu	xmm8,[rcx+112]
; [547] movdqu   jmp_buf.xmm9(%rcx),%xmm9
%LINE 547+0
		movdqu	xmm9,[rcx+128]
; [548] movdqu   jmp_buf.xmm10(%rcx),%xmm10
%LINE 548+0
		movdqu	xmm10,[rcx+144]
; [549] movdqu   jmp_buf.xmm11(%rcx),%xmm11
%LINE 549+0
		movdqu	xmm11,[rcx+160]
; [550] movdqu   jmp_buf.xmm12(%rcx),%xmm12
%LINE 550+0
		movdqu	xmm12,[rcx+176]
; [551] movdqu   jmp_buf.xmm13(%rcx),%xmm13
%LINE 551+0
		movdqu	xmm13,[rcx+192]
; [552] movdqu   jmp_buf.xmm14(%rcx),%xmm14
%LINE 552+0
		movdqu	xmm14,[rcx+208]
; [553] movdqu   jmp_buf.xmm15(%rcx),%xmm15
%LINE 553+0
		movdqu	xmm15,[rcx+224]
; [554] ldmxcsr  jmp_buf.mxcsr(%rcx)
%LINE 554+0
		ldmxcsr	dword [rcx+240]
; [555] fnclex
%LINE 555+0
		fnclex
; [556] fldcw    jmp_buf.fpucw(%rcx)
%LINE 556+0
		fldcw	word [rcx+244]
; [557] jmpq     jmp_buf.rip(%rcx)
%LINE 557+0
		jmp	[rcx+56]
CPU x64

; [559] end;
%LINE 559+0
		ret
..@c852:

SECTION .text
SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT:
..@c882:
; [703] asm
%LINE 703+0
		push	rbp
..@c884:
..@c885:
		mov	rbp,rsp
..@c886:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [705] mov rax, -1
%LINE 705+0
		mov	rax,-1
; [706] lock xadd [Addend], rax
%LINE 706+0
		lock		xadd	qword [rcx],rax
; [707] dec rax
%LINE 707+0
		dec	rax
CPU x64

; [713] end;
%LINE 713+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c883:

SECTION .text
SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT:
..@c887:
; [717] asm
%LINE 717+0
		push	rbp
..@c889:
..@c890:
		mov	rbp,rsp
..@c891:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [719] mov rax, 1
%LINE 719+0
		mov	rax,1
; [720] lock xadd [Addend], rax
%LINE 720+0
		lock		xadd	qword [rcx],rax
; [721] inc rax
%LINE 721+0
		inc	rax
CPU x64

; [727] end;
%LINE 727+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c888:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
SYSTEM_$$_WAIT_FOR_ENTER:
..@c1:
; [207] begin
%LINE 207+0 system.pas
		push	rbx
		lea	rsp,[rsp-48]
..@c3:
; Var c located at rsp+40, size=OS_8
; Var d located at rsp+44, size=OS_32
; [208] writeln('press <enter>...');
%LINE 208+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld1]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j5:
; [211] ReadConsoleA(StdIn, @c, 1, @d, nil);
%LINE 211+0
		mov	qword [rsp+32],0
		lea	r9,[rsp+44]
		lea	rdx,[rsp+40]
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	r8d,1
		call	_$dll$kernel32$ReadConsoleA
; [212] if c = #13 then break;
%LINE 212+0
		cmp	byte [rsp+40],13
		jne	..@j5
		jmp	..@j7
; [210] while true do begin
%LINE 210+0
		jmp	..@j5
..@j7:
; [214] end;
%LINE 214+0
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
; [227] begin
%LINE 227+0 objects.inc
; [231] if Assigned(IIDRef) then GetIID := IIDRef^
%LINE 231+0
		cmp	qword [rcx],0
		je	..@j13
		mov	rax,qword [rcx]
		mov	rax,qword [rax]
		ret
..@j13:
; [233] GetIID := nil;
%LINE 233+0
		xor	eax,eax
; [235] end;
%LINE 235+0
		ret
..@c5:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING:
..@c6:
; Var $result located in register rax
; Var $self located in register rcx
; [238] begin
%LINE 238+0
; [242] if Assigned(IIDStrRef) then GetIIDStr := IIDStrRef^
%LINE 242+0
		cmp	qword [rcx+24],0
		je	..@j18
		mov	rax,qword [rcx+24]
		mov	rax,qword [rax]
		ret
..@j18:
; [244] GetIIDStr := nil;
%LINE 244+0
		xor	eax,eax
; [246] end;
%LINE 246+0
		ret
..@c7:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c8:
; Var $result located in register rax
; Var $self located in register rcx
; [253] begin
%LINE 253+0
; [254] if vParentRef <> nil then result := vParentRef^ else result := nil;
%LINE 254+0
		cmp	qword [rcx+16],0
		je	..@j23
		mov	rax,qword [rcx+16]
		mov	rax,qword [rax]
		ret
..@j23:
		xor	eax,eax
; [255] end;
%LINE 255+0
		ret
..@c9:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c10:
; [262] begin
%LINE 262+0
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
; [263] end;
%LINE 263+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j33
		cmp	qword [rbp-8],0
		je	..@j33
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 262+0
		jmp	..@j33
..@j32:
%LINE 263+0
		cmp	qword [rbp-8],0
		je	..@j42
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j42:
		call	fpc_reraise
%LINE 262+0
		call	FPC_DONEEXCEPTION
..@j43:
		nop
..@j33:
..@j25:
%LINE 263+0
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
; [266] begin
%LINE 266+0
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
; [268] end;
%LINE 268+0
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
; [273] begin
%LINE 273+0
		push	rbx
		lea	rsp,[rsp-48]
..@c20:
; Var $result located in register rax
; Var p located at rsp+32, size=OS_64
		mov	rbx,rcx
; Var $self located in register rbx
; Var $self located in register rbx
; [274] GetMem(p, InstanceSize);
%LINE 274+0
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [276] if p <> nil then InitInstance(p);
%LINE 276+0
		cmp	qword [rsp+32],0
		je	..@j54
		mov	rdx,qword [rsp+32]
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
..@j54:
; Var $result located in register rax
; [277] result := TObject(p);
%LINE 277+0
		mov	rax,qword [rsp+32]
; [278] end;
%LINE 278+0
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c19:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c21:
; [281] begin
%LINE 281+0
		lea	rsp,[rsp-40]
..@c23:
; Var $self located in register rax
; Var $self located in register rcx
; [282] FreeMem(Pointer(Self));
%LINE 282+0
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [283] end;
%LINE 283+0
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
; [286] begin
%LINE 286+0
; Var $result located in register eax
; [287] result := 1;
%LINE 287+0
		mov	eax,1
; [288] end;
%LINE 288+0
		ret
..@c25:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c26:
; [291] begin
%LINE 291+0
		lea	rsp,[rsp-40]
..@c28:
		mov	rax,rcx
; Var $self located in register rax
; [293] if self <> nil then self.Destroy;
%LINE 293+0
		test	rcx,rcx
		je	..@j62
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j62:
; [294] end;
%LINE 294+0
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
; [303] begin
%LINE 303+0
; Var ovmt located in register rcx
; Var objclass located in register rcx
; [305] while assigned(ovmt) and {$ifdef VER3_0}(ovmt^.vIntfTable <> @emptyintf){$else}assigned(ovmt^.vIntfTable){$endif} do
%LINE 305+0
		jmp	..@j66
..@j65:
; [307] intftable:=ovmt^.vIntfTable;
%LINE 307+0
		mov	r11,qword [rcx+80]
; [312] i:=intftable^.EntryCount;
%LINE 312+0
		mov	r10d,dword [r11]
; [313] Res:=@intftable^.Entries[0];
%LINE 313+0
		lea	rax,[r11+8]
; [314] while i>0 do begin
%LINE 314+0
		jmp	..@j69
..@j68:
; [315] if Res^.IType = etStandard then
%LINE 315+0
		cmp	dword [rax+32],0
		jne	..@j72
%LINE 303+0
		mov	r8,rax
; [316] ppointer(@(pbyte(instance)[Res^.IOffset]))^:=
%LINE 316+0
		mov	r9,qword [r8+16]
		add	r9,rdx
		mov	r8,qword [r8+8]
		mov	qword [r9],r8
..@j72:
; [318] inc(Res);
%LINE 318+0
		add	rax,40
; [319] dec(i);
%LINE 319+0
		dec	r10d
..@j69:
%LINE 314+0
		test	r10d,r10d
		jg	..@j68
; [322] ovmt:=ovmt^.vParent;
%LINE 322+0
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
%LINE 305+0
		test	rcx,rcx
		je	..@j67
		cmp	qword [rcx+80],0
		jne	..@j65
..@j67:
; [324] end;
%LINE 324+0
		ret
..@c30:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT:
..@c31:
; [333] begin
%LINE 333+0
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
; [334] FillChar(Instance^, InstanceSize, 0);
%LINE 334+0
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
; Var Instance located in register rsi
		mov	rcx,rsi
		xor	r8d,r8d
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; Var Instance located in register rsi
; [335] PPointer(Instance)^ := Pointer(self);
%LINE 335+0
		mov	rcx,rbx
; Var $self located in register rcx
		mov	qword [rsi],rcx
; [337] if PVmt(self)^.vIntfTable <> nil then
%LINE 337+0
		cmp	qword [rcx+80],0
		je	..@j82
; [338] InitInterfacePointers(self, Instance);
%LINE 338+0
		mov	rdx,rsi
		call	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
..@j82:
; Var $result located in register rax
; [347] result := TObject(Instance);
%LINE 347+0
		mov	rax,rsi
; Var Instance located in register rax
; [348] end;
%LINE 348+0
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
; [351] begin
%LINE 351+0
		mov	rax,rcx
; Var $self located in register rax
; Var $result located in register rax
; Var $self located in register rax
; [353] end;
%LINE 353+0
		ret
..@c35:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER:
..@c36:
; Var $result located in register rax
; Var $self located in register rcx
; [356] begin
%LINE 356+0
; Var $self located in register rcx
; Var $result located in register rax
; [357] result := PVmt(Self)^.vTypeInfo;
%LINE 357+0
		mov	rax,qword [rcx+56]
; [358] end;
%LINE 358+0
		ret
..@c37:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING:
..@c38:
; [361] begin
%LINE 361+0
		lea	rsp,[rsp-40]
..@c40:
		mov	rax,rcx
; Var $self located in register rax
		mov	rcx,rdx
; Var $result located in register rcx
; Var $self located in register rax
; [362] result := PVmt(Self)^.vClassName^;
%LINE 362+0
		mov	rdx,qword [rax+24]
		call	fpc_shortstr_to_shortstr
; [363] end;
%LINE 363+0
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
; [366] begin
%LINE 366+0
; [367] result := TClass(PVmt(Self)^.vParent);
%LINE 367+0
		cmp	qword [rcx+16],0
		je	..@j92
		mov	rax,qword [rcx+16]
		mov	rax,qword [rax]
		ret
..@j92:
		xor	eax,eax
; Var $result located in register rax
; [368] end;
%LINE 368+0
		ret
..@c42:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64:
..@c43:
; Var $result located in register rax
; Var $self located in register rcx
; [371] begin
%LINE 371+0
; Var $self located in register rcx
; Var $result located in register rax
; [372] result := PVmt(Self)^.vInstanceSize;
%LINE 372+0
		mov	rax,qword [rcx]
; [373] end;
%LINE 373+0
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
; [378] begin
%LINE 378+0
; [379] if aclass = nil then exit(false);
%LINE 379+0
		test	rdx,rdx
		jne	..@j101
		xor	al,al
		ret
; Var vmt located in register rcx
; Var $self located in register rcx
; [381] while (vmt <> nil) and (vmt <> PVmt(aclass)) do vmt := vmt^.vParent;
%LINE 381+0
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
; [382] result := vmt = PVmt(aclass);
%LINE 382+0
		cmp	rdx,rcx
		sete	al
; [383] end;
%LINE 383+0
		ret
..@c46:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c47:
; [386] begin
%LINE 386+0
		mov	rax,rcx
; Var $self located in register rax
; [387] end;
%LINE 387+0
		ret
..@c48:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c49:
; [390] begin
%LINE 390+0
		mov	rax,rcx
; Var $self located in register rax
; [391] end;
%LINE 391+0
		ret
..@c50:

SECTION .text
	GLOBAL SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
..@c51:
; Var $result located in register al
; Var guid1 located in register rcx
; Var guid2 located in register rdx
; [396] begin
%LINE 396+0
; [398] (guid1.D1=guid2.D1) and
%LINE 398+0
		mov	eax,dword [rcx]
		cmp	eax,dword [rdx]
		jne	..@j116
; [399] (PDWORD(@guid1.D2)^=PDWORD(@guid2.D2)^) and
%LINE 399+0
		lea	rax,[rcx+4]
		lea	r8,[rdx+4]
		mov	eax,dword [rax]
		cmp	eax,dword [r8]
		jne	..@j116
%LINE 396+0
		lea	rax,[rcx+8]
; [400] (PDWORD(@guid1.D4[0])^=PDWORD(@guid2.D4[0])^) and
%LINE 400+0
		mov	rcx,rax
%LINE 396+0
		add	rdx,8
%LINE 400+0
		mov	r8,rdx
		mov	ecx,dword [rcx]
		cmp	ecx,dword [r8]
		jne	..@j116
; [401] (PDWORD(@guid1.D4[4])^=PDWORD(@guid2.D4[4])^);
%LINE 401+0
		add	rax,4
		add	rdx,4
		mov	eax,dword [rax]
		cmp	eax,dword [rdx]
		jne	..@j116
; Var $result located in register al
; [397] result:=
%LINE 397+0
		mov	al,1
		ret
..@j116:
		xor	al,al
; [403] end;
%LINE 403+0
		ret
..@c52:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
..@c53:
; [414] begin
%LINE 414+0
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
; [415] Pointer(Obj) := nil;
%LINE 415+0
		mov	qword [rdi],0
; Var Instance located in register rbx
; [416] Getter.Data := Instance;
%LINE 416+0
		mov	qword [rsp+40],rbx
; [417] if Assigned(IEntry) and Assigned(Instance) then case IEntry^.IType of
%LINE 417+0
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
; [419] Pointer(Obj) := pbyte(instance) + IEntry^.IOffset;
%LINE 419+0
		mov	rax,qword [rsi+16]
		add	rax,rbx
		mov	qword [rdi],rax
		jmp	..@j126
..@j129:
; [421] Pointer(obj) := PPointer(pbyte(Instance) + IEntry^.IOffset)^;
%LINE 421+0
		mov	rax,qword [rsi+16]
		add	rax,rbx
		mov	rax,qword [rax]
		mov	qword [rdi],rax
		jmp	..@j126
..@j130:
; [424] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
%LINE 424+0
		mov	rax,qword [rsi+16]
		mov	rdx,qword [rbx]
		add	rax,rdx
		mov	rax,qword [rax]
		mov	qword [rsp+32],rax
; [425] TInterfaceGetter(Getter)(obj);
%LINE 425+0
		mov	rdx,rdi
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		jmp	..@j126
..@j131:
; [429] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
%LINE 429+0
		mov	rdx,qword [rsi+16]
		mov	rax,qword [rbx]
		add	rax,rdx
		mov	rax,qword [rax]
		mov	qword [rsp+32],rax
; [430] TObject(obj) := TClassGetter(Getter)();
%LINE 430+0
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		mov	qword [rdi],rax
		jmp	..@j126
..@j132:
; [434] Getter.code := IEntry^.IOffsetAsCodePtr;
%LINE 434+0
		mov	rax,qword [rsi+16]
		mov	qword [rsp+32],rax
; [435] TInterfaceGetter(Getter)(obj);
%LINE 435+0
		mov	rdx,rdi
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		jmp	..@j126
..@j133:
; [439] Getter.code := IEntry^.IOffsetAsCodePtr;
%LINE 439+0
		mov	rax,qword [rsi+16]
		mov	qword [rsp+32],rax
; [440] TObject(obj) := TClassGetter(Getter)();
%LINE 440+0
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		mov	qword [rdi],rax
..@j126:
..@j124:
; [443] result := assigned(pointer(obj));
%LINE 443+0
		cmp	qword [rdi],0
; Var $result located in register al
		setne	al
; [444] end;
%LINE 444+0
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
; [455] begin
%LINE 455+0
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
; [456] if IsGUIDEqual(IObjectInstance, iid) then begin
%LINE 456+0
		mov	rdx,rsi
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		je	..@j137
; [457] TObject(Obj) := objclass;
%LINE 457+0
		mov	qword [rdi],rbx
; [458] Result := true;
%LINE 458+0
		mov	r12b,1
; [459] Exit;
%LINE 459+0
		jmp	..@j134
..@j137:
; Var Instance located in register rbx
; Var objclass located in register rbx
..@j138:
; [464] IEntry := Instance.GetInterfaceEntry(iid);
%LINE 464+0
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	r13,rax
; [465] result := GetInterfaceByEntry(Instance, IEntry, obj);
%LINE 465+0
		mov	r8,rdi
		mov	rdx,r13
		mov	rcx,rbx
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	r12b,al
; [467] if (not result) or
%LINE 467+0
		test	al,al
		je	..@j140
; [468] (IEntry^.IType in [etStandard, etFieldValue,
%LINE 468+0
		mov	eax,dword [r13+32]
		cmp	eax,4
		jc	..@j140
; [472] Instance := TObject(obj);
%LINE 472+0
		mov	rbx,qword [rdi]
; [473] until false;
%LINE 473+0
		jmp	..@j138
..@j140:
; [476] if result and (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._AddRef;
%LINE 476+0
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
; [477] end;
%LINE 477+0
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
; [479] begin
%LINE 479+0
		lea	rsp,[rsp-40]
..@c61:
; Var $result located in register al
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; Var $self located in register rcx
; [480] Exit(GetInterface_(self, iid, obj));
%LINE 480+0
		call	SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
; Var $result located in register al
; [481] end;
%LINE 481+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c60:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN:
..@c62:
; [496] begin
%LINE 496+0
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
; [497] if IsGUIDEqual(IObjectInstance, iid) then begin
%LINE 497+0
		mov	rdx,rsi
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		je	..@j154
; [498] TObject(Obj) := objclass;
%LINE 498+0
		mov	qword [rdi],rbx
; [499] Result := true;
%LINE 499+0
		mov	r12b,1
; [500] Exit;
%LINE 500+0
		jmp	..@j151
..@j154:
; Var Instance located in register rbx
; Var objclass located in register rbx
..@j155:
; [505] IEntry := Instance.GetInterfaceEntry(iid);
%LINE 505+0
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	r13,rax
; [506] result := GetInterfaceByEntry(Instance, IEntry, obj);
%LINE 506+0
		mov	r8,rdi
		mov	rdx,r13
		mov	rcx,rbx
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	r12b,al
; [508] if (not result) or
%LINE 508+0
		test	al,al
		je	..@j157
; [509] (IEntry^.IType in [etStandard, etFieldValue,
%LINE 509+0
		mov	eax,dword [r13+32]
		cmp	eax,4
		jc	..@j157
; [513] Instance := TObject(obj);
%LINE 513+0
		mov	rbx,qword [rdi]
; [514] until false;
%LINE 514+0
		jmp	..@j155
..@j157:
; [517] if result and not (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._Release;
%LINE 517+0
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
; [518] end;
%LINE 518+0
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
; [520] begin
%LINE 520+0
		lea	rsp,[rsp-40]
..@c67:
; Var $result located in register al
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; Var $self located in register rcx
; [521] Exit(GetInterfaceWeak_(self, iid, obj));
%LINE 521+0
		call	SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
; Var $result located in register al
; [522] end;
%LINE 522+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c66:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY:
..@c68:
; [538] begin
%LINE 538+0
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
; [540] while Assigned(ovmt) and Assigned(ovmt^.vIntftable) do begin
%LINE 540+0
		jmp	..@j171
..@j170:
; [541] intftable := ovmt^.vIntfTable;
%LINE 541+0
		mov	r14,qword [rbx+80]
; [542] for i := 0 to intftable^.EntryCount-1 do begin
%LINE 542+0
		mov	rax,qword [r14]
		lea	r13,[rax-1]
		test	r13d,r13d
		jnge	..@j174
		mov	edi,-1
..@j175:
		inc	edi
; [543] result := @intftable^.Entries[i];
%LINE 543+0
		mov	eax,edi
		imul	rax,rax,40
		lea	r12,[r14+rax+8]
; [544] if assigned(Result^.iid) and IsGUIDEqual(Result^.iid^, iid) then Exit;
%LINE 544+0
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
%LINE 542+0
		cmp	r13d,edi
		jnle	..@j175
..@j174:
; [546] ovmt := ovmt^.vParent;
%LINE 546+0
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
%LINE 540+0
		test	rbx,rbx
		je	..@j172
		cmp	qword [rbx+80],0
		jne	..@j170
..@j172:
; [548] result := nil;
%LINE 548+0
		xor	r12,r12
..@j168:
; [549] end;
%LINE 549+0
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
; [551] begin
%LINE 551+0
		lea	rsp,[rsp-40]
..@c73:
; Var $result located in register rax
; Var $self located in register rcx
; Var iid located in register rdx
; Var $self located in register rcx
; [552] Exit(GetInterfaceEntry_(self, iid));
%LINE 552+0
		call	SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
; Var $result located in register rax
; [553] end;
%LINE 553+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c72:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT:
..@c74:
; [569] begin
%LINE 569+0
		lea	rsp,[rsp-40]
..@c76:
; Var $result located in register eax
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; [570] if GetInterface(iid, obj) then result := S_OK else result := LongInt(E_NOINTERFACE);
%LINE 570+0
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		je	..@j198
		xor	eax,eax
		jmp	..@j199
..@j198:
		mov	eax,-2147467262
..@j199:
; [571] end;
%LINE 571+0
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
; [574] begin
%LINE 574+0
; [576] inc(FRefCount);
%LINE 576+0
		inc	dword [rcx+8]
; Var $result located in register eax
; [577] result := FRefCount;
%LINE 577+0
		mov	eax,dword [rcx+8]
; [578] end;
%LINE 578+0
		ret
..@c78:

SECTION .text
SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000230:
..@c79:
; [598] end;
%LINE 598+0
		push	rbp
..@c81:
..@c82:
		mov	rbp,rcx
..@c83:
		lea	rsp,[rsp-32]
; [581] begin
%LINE 581+0
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
; [583] dec(FRefCount);
%LINE 583+0
		dec	dword [rbx+8]
; [584] result := FRefCount;
%LINE 584+0
		mov	esi,dword [rbx+8]
; [585] if result = 0 then begin
%LINE 585+0
		test	esi,esi
		jne	..@j212
; [587] inc(FDestroyCount);
%LINE 587+0
		inc	dword [rbx+12]
; [588] if FDestroyCount = 1 then begin
%LINE 588+0
		cmp	dword [rbx+12],1
		jne	..@j214
; [589] if copy(ClassName, 1, 9) = '$Capturer' then begin
%LINE 589+0
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
; [595] self.Destroy;
%LINE 595+0
		mov	rcx,rbx
		mov	edx,1
		mov	rax,qword [rbx]
		call	[rax+96]
..@j214:
..@j212:
..@j208:
%LINE 581+0
		nop
..@j207:
		mov	rcx,rbp
		call	SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000230
%LINE 598+0
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
; [601] begin
%LINE 601+0
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
; [602] FRefCount := 0;
%LINE 602+0
		mov	dword [rbx+8],0
; [603] FDestroyCount := 0;
%LINE 603+0
		mov	dword [rbx+12],0
; Var $self located in register rbx
; [604] inherited Destroy;
%LINE 604+0
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [605] end;
%LINE 605+0
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
; [608] begin
%LINE 608+0
		mov	rax,rcx
; Var $self located in register rax
; [611] dec(FRefCount);
%LINE 611+0
		dec	dword [rax+8]
; [612] end;
%LINE 612+0
		ret
..@c93:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION:
..@c94:
; [615] begin
%LINE 615+0
		lea	rsp,[rsp-40]
..@c96:
		mov	rax,rcx
; Var $self located in register rax
; [616] if FRefCount <> 0 then HandleError(204);
%LINE 616+0
		cmp	dword [rax+8],0
		je	..@j229
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j229:
; [617] end;
%LINE 617+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c95:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c97:
; [620] begin
%LINE 620+0
		lea	rsp,[rsp-40]
..@c99:
; Var $result located in register rax
; Var $self located in register rcx
; Var $self located in register rcx
; [621] result := inherited NewInstance;
%LINE 621+0
		call	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
; Var $result located in register rax
; [622] if result <> nil then TInterfacedObject(result).FRefCount := 1;
%LINE 622+0
		test	rax,rax
		je	..@j233
		mov	dword [rax+8],1
..@j233:
; [623] end;
%LINE 623+0
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
; [630] begin
%LINE 630+0
; [631] result := (aLeft.Data = aRight.Data) and (aLeft.Code = aRight.Code);
%LINE 631+0
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
; [632] end;
%LINE 632+0
		ret
..@c101:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c102:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [635] begin
%LINE 635+0
; [636] result := (aLeft.Data <> aRight.Data) or (aLeft.Code <> aRight.Code);
%LINE 636+0
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
; [637] end;
%LINE 637+0
		ret
..@c103:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN:
..@c104:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [640] begin
%LINE 640+0
		mov	r8,qword [rcx+8]
		mov	rax,qword [rdx+8]
; [641] result := (PtrUInt(aLeft.Data) > PtrUInt(aRight.Data)) or
%LINE 641+0
		cmp	rax,r8
		jb	..@j248
; [642] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) > PtrUInt(aRight.Code)));
%LINE 642+0
		cmp	rax,r8
		jne	..@j250
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jna	..@j250
; Var $result located in register al
..@j248:
%LINE 641+0
		mov	al,1
		ret
..@j250:
		xor	al,al
; [643] end;
%LINE 643+0
		ret
..@c105:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c106:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [646] begin
%LINE 646+0
		mov	rax,qword [rcx+8]
		mov	r8,qword [rdx+8]
; [647] result := (aLeft > aRight) or (aLeft = aRight);
%LINE 647+0
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
; [648] end;
%LINE 648+0
		ret
..@c107:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN:
..@c108:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [651] begin
%LINE 651+0
		mov	r8,qword [rcx+8]
		mov	rax,qword [rdx+8]
; [652] Result := (PtrUInt(aLeft.Data) < PtrUInt(aRight.Data)) or
%LINE 652+0
		cmp	rax,r8
		ja	..@j274
; [653] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) < PtrUInt(aRight.Code)));
%LINE 653+0
		cmp	rax,r8
		jne	..@j276
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jnb	..@j276
; Var $result located in register al
..@j274:
%LINE 652+0
		mov	al,1
		ret
..@j276:
		xor	al,al
; [654] end;
%LINE 654+0
		ret
..@c109:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c110:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [657] begin
%LINE 657+0
		mov	rax,qword [rcx+8]
		mov	r8,qword [rdx+8]
; [658] result := (aLeft < aRight) or (aLeft = aRight);
%LINE 658+0
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
; [659] end;
%LINE 659+0
		ret
..@c111:

SECTION .text
	GLOBAL fpc_intf_assign
fpc_intf_assign:
	GLOBAL FPC_INTF_ASSIGN
FPC_INTF_ASSIGN:
..@c112:
; [666] begin
%LINE 666+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c114:
		mov	rbx,rcx
; Var d located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
; [667] if s <> nil then IUnknown(s)._AddRef;
%LINE 667+0
		test	rdx,rdx
		je	..@j301
		mov	rcx,rsi
		mov	rax,qword [rsi]
		call	[rax+8]
..@j301:
; [668] if d <> nil then IUnknown(d)._Release;
%LINE 668+0
		cmp	qword [rbx],0
		je	..@j303
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		mov	rax,qword [rax]
		call	[rax+16]
..@j303:
; Var s located in register rsi
; [669] d := s;
%LINE 669+0
		mov	qword [rbx],rsi
; [670] end;
%LINE 670+0
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
; [677] begin
%LINE 677+0
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
; [678] if s = nil then exit(nil);
%LINE 678+0
		test	rsi,rsi
		jne	..@j307
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_intf_assign
		jmp	..@j304
..@j307:
; [679] tmpi := nil;
%LINE 679+0
		mov	qword [rsp+32],0
; [680] tmpi2 := nil;
%LINE 680+0
		mov	qword [rsp+40],0
; [681] if not ((TObject(s).GetInterfaceWeak(IUnknown, tmpi2) and (IUnknown(tmpi2).QueryInterface(iid, tmpi) = S_OK)) or TObject(s).GetInterface(iid, tmpi)) then
%LINE 681+0
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
; [682] HandleError(219);
%LINE 682+0
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j310:
; [683] result := nil;
%LINE 683+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_intf_assign
; [684] pointer(result) := tmpi;
%LINE 684+0
		mov	rax,qword [rsp+32]
		mov	qword [rbx],rax
..@j304:
; [685] end;
%LINE 685+0
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
; [687] begin
%LINE 687+0
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
; Var iid located in register r8
; [688] end;
%LINE 688+0
		ret
..@c119:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER:
..@c120:
; [702] begin
%LINE 702+0
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
; [703] if s = nil then exit(nil);
%LINE 703+0
		test	rax,rax
		jne	..@j317
		xor	esi,esi
		jmp	..@j314
..@j317:
; [704] if not ((IUnknown(s).QueryInterface(IObjectInstance, tmpo) = S_OK) and tmpo.InheritsFrom(aclass)) then
%LINE 704+0
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
; [705] HandleError(219);
%LINE 705+0
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j320:
; [706] result := tmpo;
%LINE 706+0
		mov	rsi,qword [rsp+32]
..@j314:
; [707] end;
%LINE 707+0
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
; [709] begin
%LINE 709+0
		lea	rsp,[rsp-40]
..@c125:
; Var $result located in register rax
; Var s located in register rcx
; Var aclass located in register rdx
; Var aclass located in register rdx
; Var s located in register rcx
; [710] Exit(fpcintfasclass(s, aclass));
%LINE 710+0
		call	SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
; Var $result located in register rax
; [711] end;
%LINE 711+0
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
; [722] begin
%LINE 722+0
		lea	rsp,[rsp-40]
..@c128:
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
; Var iid located in register r8
; [723] msgdebug('@@todo: fpc_intf_cast');
%LINE 723+0
		lea	rcx,[..@d5]
		call	SYSTEM_$$_MSGDEBUG$ANSISTRING
; [724] end;
%LINE 724+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c127:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFDECRREF$POINTER
SYSTEM_$$_FPCINTFDECRREF$POINTER:
..@c129:
; [728] begin
%LINE 728+0
		push	rbx
		lea	rsp,[rsp-32]
..@c131:
		mov	rbx,rcx
; Var i located in register rbx
; [729] if i <> nil then begin
%LINE 729+0
		cmp	qword [rbx],0
		je	..@j328
; [730] IUnknown(i)._Release;
%LINE 730+0
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		mov	rax,qword [rax]
		call	[rax+16]
; [731] i := nil;
%LINE 731+0
		mov	qword [rbx],0
..@j328:
; [733] end;
%LINE 733+0
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
; [735] begin
%LINE 735+0
		lea	rsp,[rsp-40]
..@c134:
; Var i located in register rax
; [736] fpcintfdecrref(i);
%LINE 736+0
		call	SYSTEM_$$_FPCINTFDECRREF$POINTER
; [737] end;
%LINE 737+0
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
; [750] begin
%LINE 750+0
		lea	rsp,[rsp-40]
..@c137:
		mov	rax,rcx
; Var i located in register rax
; [751] if i <> nil then IUnknown(i)._AddRef;
%LINE 751+0
		test	rcx,rcx
		je	..@j334
		mov	rcx,rax
		mov	rax,qword [rax]
		call	[rax+8]
..@j334:
; [752] end;
%LINE 752+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c136:

SECTION .text
SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
..@c138:
; Temps allocated between rsp+32 and rsp+40
; [exceptions.inc]
; [166] begin
%LINE 166+0 exceptions.inc
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
; [167] result := nil;
%LINE 167+0
		mov	qword [rsp+32],0
; [169] if rec.ExceptionCode = FPC_EXCEPTION_CODE then
%LINE 169+0
		cmp	dword [rcx],-532262845
		jne	..@j338
; [170] TObject(rec.ExceptionInformation[1]).ClassType
%LINE 170+0
		mov	rax,qword [rcx+40]
		mov	rcx,qword [rax]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
		jmp	..@j339
..@j338:
; [171] else if ExceptClsProc <> nil then begin
%LINE 171+0
		cmp	qword [TC_$SYSTEM_$$_EXCEPTCLSPROC],0
		je	..@j335
; [172] exclass := TClass(TExceptClsProc(ExceptClsProc)(errcode));
%LINE 172+0
		mov	ecx,esi
		call	TC_$SYSTEM_$$_EXCEPTCLSPROC
		mov	r14,rax
..@j339:
; [177] filter := pointer(imagebase+filterRva);
%LINE 177+0
		and	ebx,ebx
		lea	r13,[rbx+r15]
; Var filter located in register rax
; Var filter located in register r13
; [178] for i := 0 to PLongint(filter)^-1 do begin
%LINE 178+0
		mov	eax,dword [r13]
		dec	eax
		mov	r12d,eax
		test	r12d,r12d
		jnge	..@j344
		mov	esi,-1
..@j345:
		inc	esi
; [179] curfilt := @PFilterRec(filter+sizeof(LongInt))[i];
%LINE 179+0
		lea	rdx,[r13+4]
		movsxd	rax,esi
		lea	rbx,[rdx+rax*8]
; [181] p := pointer(imagebase+curfilt^.RvaHandler);
%LINE 181+0
		mov	eax,dword [rbx+4]
		lea	rdi,[rax+r15]
; [183] if curfilt^.RvaClass = $FFFFFFFF then exit(p);
%LINE 183+0
		cmp	dword [rbx],-1
		jne	..@j349
		mov	qword [rsp+32],rdi
		jmp	..@j335
..@j349:
; [186] if exclass.InheritsFrom(TClass(imagebase+curfilt^.RvaClass)) then exit(p);
%LINE 186+0
		mov	eax,dword [rbx]
		lea	rdx,[rax+r15]
		mov	rcx,r14
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		je	..@j351
		mov	qword [rsp+32],rdi
		jmp	..@j335
..@j351:
%LINE 178+0
		cmp	r12d,esi
		jnle	..@j345
..@j344:
..@j335:
; [192] end;
%LINE 192+0
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
SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT:
..@c141:
; Var $result located in register eax
; Var rec located in register rcx
; [195] begin
%LINE 195+0
; [197] case rec.ExceptionCode of
%LINE 197+0
		mov	eax,dword [rcx]
		cmp	eax,-1073741819
		jb	..@j355
		sub	eax,-1073741819
		je	..@j365
		sub	eax,24
		je	..@j364
		sub	eax,111
		je	..@j358
		dec	eax
		je	..@j361
		dec	eax
		je	..@j357
		sub	eax,1
		jb	..@j355
		sub	eax,1
		jbe	..@j362
		dec	eax
		je	..@j360
		dec	eax
		je	..@j362
		dec	eax
		je	..@j361
		dec	eax
		je	..@j356
		dec	eax
		je	..@j363
		dec	eax
		je	..@j367
		sub	eax,103
		je	..@j359
		sub	eax,61
		je	..@j366
		sub	eax,378
		jb	..@j355
		sub	eax,1
		jbe	..@j368
		jmp	..@j355
..@j356:
; [198] STATUS_INTEGER_DIVIDE_BY_ZERO:        result := 200;  // reDivByZero
%LINE 198+0
		mov	eax,200
		ret
..@j357:
; [199] STATUS_FLOAT_DIVIDE_BY_ZERO:          result := -208; // !!reZeroDivide
%LINE 199+0
		mov	eax,-208
		ret
..@j358:
; [200] STATUS_ARRAY_BOUNDS_EXCEEDED:         result := 201;  // reRangeError
%LINE 200+0
		mov	eax,201
		ret
..@j359:
; [201] STATUS_STACK_OVERFLOW:                result := 202;  // reStackOverflow
%LINE 201+0
		mov	eax,202
		ret
..@j360:
; [202] STATUS_FLOAT_OVERFLOW:                result := -205; // reOverflow
%LINE 202+0
		mov	eax,-205
		ret
..@j361:
; [204] STATUS_FLOAT_UNDERFLOW:               result := -206; // reUnderflow
%LINE 204+0
		mov	eax,-206
		ret
..@j362:
; [207] STATUS_FLOAT_STACK_CHECK:             result := -207; // reInvalidOp
%LINE 207+0
		mov	eax,-207
		ret
..@j363:
; [208] STATUS_INTEGER_OVERFLOW:              result := 215;  // reIntOverflow
%LINE 208+0
		mov	eax,215
		ret
..@j364:
; [209] STATUS_ILLEGAL_INSTRUCTION:           result := -216;
%LINE 209+0
		mov	eax,-216
		ret
..@j365:
; [210] STATUS_ACCESS_VIOLATION:              result := 216;  // reAccessViolation
%LINE 210+0
		mov	eax,216
		ret
..@j366:
; [211] STATUS_CONTROL_C_EXIT:                result := 217;  // reControlBreak
%LINE 211+0
		mov	eax,217
		ret
..@j367:
; [212] STATUS_PRIVILEGED_INSTRUCTION:        result := 218;  // rePrivilegedInstruction
%LINE 212+0
		mov	eax,218
		ret
..@j368:
; [214] STATUS_FLOAT_MULTIPLE_FAULTS:         result := -255; // indicate FPU reset
%LINE 214+0
		mov	eax,-255
		ret
..@j355:
; [216] result := 255; // reExternalException
%LINE 216+0
		mov	eax,255
; [218] end;
%LINE 218+0
		ret
..@c142:

SECTION .text
SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT:
..@c143:
; [221] begin
%LINE 221+0
		mov	eax,ecx
; Var mxcsr located in register eax
; Var code located in register rdx
; [224] if (mxcsr and 1) <> 0 then code := -207
%LINE 224+0
		and	ecx,1
		je	..@j372
		mov	dword [rdx],-207
		ret
..@j372:
; [226] else if (mxcsr and 2) <> 0 then code := -206
%LINE 226+0
		mov	ecx,eax
		and	ecx,2
		je	..@j375
		mov	dword [rdx],-206
		ret
..@j375:
; [228] else if (mxcsr and 4) <> 0 then code := -208
%LINE 228+0
		mov	ecx,eax
		and	ecx,4
		je	..@j378
		mov	dword [rdx],-208
		ret
..@j378:
; [230] else if (mxcsr and 8) <> 0 then code := -205
%LINE 230+0
		mov	ecx,eax
		and	ecx,8
		je	..@j381
		mov	dword [rdx],-205
		ret
..@j381:
; [232] else if (mxcsr and 16) <> 0 then code := -206
%LINE 232+0
		mov	ecx,eax
		and	ecx,16
		je	..@j384
		mov	dword [rdx],-206
		ret
..@j384:
; [234] else if (mxcsr and 32) <> 0 then code := -207
%LINE 234+0
		and	eax,32
		je	..@j387
		mov	dword [rdx],-207
		ret
..@j387:
; [236] code := -255;
%LINE 236+0
		mov	dword [rdx],-255
; [237] end;
%LINE 237+0
		ret
..@c144:

SECTION .text
SYSTEM_$$_JUMPTOHANDLESIGNAL:
..@c145:
; [exceptions64.inc]
; [185] begin
%LINE 185+0 exceptions64.inc
		push	rbx
		lea	rsp,[rsp-32]
..@c147:
; [186] writeln('JumpToHandleSignal');
%LINE 186+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld6]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [237] end;
%LINE 237+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c146:

SECTION .text
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
..@c148:
; [253] begin
%LINE 253+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c150:
; Var exrec located at rsp+32, size=OS_64
; Var excontext located at rsp+40, size=OS_64
; Var $result located in register eax
; Var frame located in register eax
; Var ret located in register eax
		mov	qword [rsp+32],rcx
; Var exframe located in register rdx
		mov	qword [rsp+40],r8
; Var dispatch located in register r9
; [254] writeln('signals_exception_handler');
%LINE 254+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld7]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [256] frame := excontext^.rbp;
%LINE 256+0
		mov	rax,qword [rsp+40]
; Var frame located in register esi
		mov	esi,dword [rax+160]
; Var ret located in register eax
; [258] ret := 1;
%LINE 258+0
		mov	eax,1
; [260] writeln('exrec^.ExceptionCode = ', exrec^.ExceptionCode);
%LINE 260+0
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
; [266] ret := CallSignal(SIGSEGV, frame, false);
%LINE 266+0
		mov	r8d,esi
; Var frame located in register r8d
		xor	r9b,r9b
		mov	edx,291
		mov	rcx,rsp
		call	SYSTEM$_$SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B
; Var ret located in register eax
; Var $result located in register eax
; Var ret located in register eax
; [269] end;
%LINE 269+0
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c149:

SECTION .text
SYSTEM$_$SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B:
..@c151:
; [241] begin
%LINE 241+0
		lea	rsp,[rsp-8]
..@c153:
; Var $parentfp located at rsp+0, size=OS_64
; Var $result located in register eax
		mov	qword [rsp],rcx
; Var sigtype located in register edx
; Var frame located in register r8d
; Var must_reset_fpu located in register r9b
; [242] if ex_level >= ex_max_level then exit;
%LINE 242+0
		cmp	byte [TC_$SYSTEM_$$_EX_LEVEL],16
		jae	..@j393
; [243] ex_rip[ex_level] := excontext^.Rip;
%LINE 243+0
		mov	rax,qword [rsp]
		mov	rax,qword [rax+40]
		movzx	r8d,byte [TC_$SYSTEM_$$_EX_LEVEL]
		lea	rcx,[U_$SYSTEM_$$_EX_RIP]
		mov	rax,qword [rax+248]
		mov	qword [rcx+r8*8],rax
; [244] except_signal[ex_level] := sigtype;
%LINE 244+0
		movzx	ecx,byte [TC_$SYSTEM_$$_EX_LEVEL]
		movsxd	rdx,edx
		lea	rax,[U_$SYSTEM_$$_EXCEPT_SIGNAL]
		mov	qword [rax+rcx*8],rdx
; [245] reset_fpu[ex_level] := must_reset_fpu;
%LINE 245+0
		movzx	edx,byte [TC_$SYSTEM_$$_EX_LEVEL]
; Var must_reset_fpu located in register r9b
		lea	rax,[U_$SYSTEM_$$_RESET_FPU]
		mov	byte [rax+rdx*1],r9b
; [246] inc(ex_level);
%LINE 246+0
		inc	byte [TC_$SYSTEM_$$_EX_LEVEL]
; [247] excontext^.rip := ptruint(@JumpToHandleSignal);
%LINE 247+0
		mov	rax,qword [rsp]
		mov	rax,qword [rax+40]
		lea	rdx,[SYSTEM_$$_JUMPTOHANDLESIGNAL]
		mov	qword [rax+248],rdx
; [248] exrec^.ExceptionCode := 0;
%LINE 248+0
		mov	rax,qword [rsp]
		mov	rax,qword [rax+32]
		mov	dword [rax],0
; [249] result := 0;
%LINE 249+0
		xor	eax,eax
..@j393:
; [250] end;
%LINE 250+0
		lea	rsp,[rsp+8]
		ret
..@c152:

SECTION .text
SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT:
..@c154:
; [272] begin
%LINE 272+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c156:
; Var $result located in register eax
		mov	rbx,rcx
; Var ex located in register rbx
; [273] writeln('syswin_x64_exception_handler');
%LINE 273+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld9]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; [275] result := signals_exception_handler(@ex^.ExceptionRecord, nil, @ex^.ContextRecord, nil);
%LINE 275+0
		mov	rcx,rbx
; Var ex located in register rcx
		lea	r8,[rcx+8]
; Var ex located in register rcx
		xor	r9,r9
		xor	edx,edx
		call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
		mov	ebx,eax
; Var $result located in register ebx
; [277] wait_for_enter;
%LINE 277+0
		call	SYSTEM_$$_WAIT_FOR_ENTER
; [278] end;
%LINE 278+0
		mov	eax,ebx
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c155:

SECTION .text
	GLOBAL SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS:
..@c157:
; [284] begin
%LINE 284+0
		lea	rsp,[rsp-40]
..@c159:
; [287] vectored_exception_handler := AddVectoredExceptionHandler(1{1 = higher priotity}, @syswin_x64_exception_handler);
%LINE 287+0
		lea	rdx,[SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT]
		mov	ecx,1
		call	_$dll$kernel32$AddVectoredExceptionHandler
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],rax
; [288] end;
%LINE 288+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c158:

SECTION .text
	GLOBAL SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS
SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS:
..@c160:
; [291] begin
%LINE 291+0
		lea	rsp,[rsp-40]
..@c162:
; [293] if vectored_exception_handler <> nil then
%LINE 293+0
		cmp	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
		je	..@j404
; [294] if RemoveVectoredExceptionHandler(vectored_exception_handler) then
%LINE 294+0
		mov	rcx,qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER]
		call	_$dll$kernel32$RemoveVectoredExceptionHandler
		test	eax,eax
		je	..@j406
; [295] vectored_exception_handler := nil;
%LINE 295+0
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
..@j406:
..@j404:
; [296] end;
%LINE 296+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c161:

SECTION .text
SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT:
..@c163:
; [300] begin
%LINE 300+0
		push	rbx
		lea	rsp,[rsp-48]
..@c165:
; Var $result located at rsp+32, size=OS_S32
		mov	rax,rcx
; Var rec located in register rax
		mov	rbx,rdx
; Var context located in register rbx
; [301] result := RunErrorCode(rec);
%LINE 301+0
		mov	rcx,rax
		call	SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT
		mov	dword [rsp+32],eax
; [302] if (result = -255) then TranslateMxcsr(context.MxCsr, result);
%LINE 302+0
		cmp	eax,-255
		jne	..@j410
		mov	ecx,dword [rbx+52]
		lea	rdx,[rsp+32]
		call	SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT
..@j410:
; [303] end;
%LINE 303+0
		mov	eax,dword [rsp+32]
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c164:

SECTION .text
SYSTEM_$$_SYSRESETFPU:
..@c166:
; [309] begin
%LINE 309+0
		push	rbp
..@c168:
..@c169:
		mov	rbp,rsp
..@c170:
		lea	rsp,[rsp-16]
; Var localmxcsr located at rbp-4, size=OS_32
; Var localfpucw located at rbp-8, size=OS_16
; [310] localfpucw := Default8087CW;
%LINE 310+0
		mov	ax,word [TC_$SYSTEM_$$_DEFAULT8087CW]
		mov	word [rbp-8],ax
; [311] localmxcsr := DefaultMXCSR;
%LINE 311+0
		mov	eax,dword [TC_$SYSTEM_$$_DEFAULTMXCSR]
		mov	dword [rbp-4],eax
CPU x64

; [313] fninit
%LINE 313+0
		fninit
; [314] fwait
%LINE 314+0
		DB	09bh
; [315] fldcw   localfpucw
%LINE 315+0
		fldcw	word [rbp-8]
; [316] ldmxcsr localmxcsr
%LINE 316+0
		ldmxcsr	dword [rbp-4]
CPU x64

; [318] end;
%LINE 318+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c167:

SECTION .text
SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT:
..@c171:
; Temps allocated between rsp+304 and rsp+1440
; [329] begin
%LINE 329+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-1440]
..@c173:
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
; [330] FillChar(UnwindHistory, sizeof(UNWIND_HISTORY_TABLE), 0);
%LINE 330+0
		lea	rcx,[rsp+64]
		xor	r8d,r8d
		mov	edx,216
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; [331] UnwindHistory.Unwind := 1;
%LINE 331+0
		mov	byte [rsp+70],1
; Var FrameCount located in register r13d
; [333] FrameCount := 0;
%LINE 333+0
		xor	r13d,r13d
; Var FrameBufSize located in register esi
; [334] FrameBufSize := 0;
%LINE 334+0
		xor	esi,esi
; [335] Frames := nil;
%LINE 335+0
		mov	qword [r12],0
..@j415:
; [337] RuntimeFunction := RtlLookupFunctionEntry(context.Rip, ImageBase, @UnwindHistory);
%LINE 337+0
		lea	r8,[rsp+64]
		mov	rcx,qword [rsp+552]
		lea	rdx,[rsp+296]
		call	_$dll$kernel32$RtlLookupFunctionEntry
		mov	rdi,rax
; [339] if Assigned(RuntimeFunction) then RtlVirtualUnwind(UNW_FLAG_NHANDLER, ImageBase, context.Rip,
%LINE 339+0
		test	rax,rax
		je	..@j419
		mov	qword [rsp+56],0
		lea	rax,[rsp+304]
		mov	qword [rsp+32],rax
; [340] RuntimeFunction, Context, @HandlerData, @EstablisherFrame, nil)
%LINE 340+0
		lea	rax,[rsp+288]
%LINE 339+0
		mov	qword [rsp+48],rax
%LINE 340+0
		lea	rax,[rsp+280]
%LINE 339+0
		mov	qword [rsp+40],rax
		mov	r8,qword [rsp+552]
		mov	r9,rdi
		mov	rdx,qword [rsp+296]
		xor	ecx,ecx
		call	_$dll$kernel32$RtlVirtualUnwind
		jmp	..@j420
..@j419:
; [342] Context.Rip := PQWord(Context.Rsp)^;
%LINE 342+0
		mov	rax,qword [rsp+456]
		mov	rax,qword [rax]
		mov	qword [rsp+552],rax
; [343] Inc(Context.Rsp, sizeof(Pointer));
%LINE 343+0
		add	qword [rsp+456],8
..@j420:
; [346] if (context.Rip = 0) or (FrameCount >= RaiseMaxFrameCount) then break;
%LINE 346+0
		cmp	qword [rsp+552],0
		je	..@j417
		cmp	r13d,dword [TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT]
		jge	..@j417
; [348] if (Pointer(context.Rbp) > StartingFrame) or (FrameCount > 0) then begin
%LINE 348+0
		cmp	rbx,qword [rsp+464]
		jb	..@j424
		test	r13d,r13d
		jng	..@j415
..@j424:
; [349] if (FrameCount >= FrameBufSize) then begin
%LINE 349+0
		cmp	esi,r13d
		jnle	..@j428
; [350] Inc(FrameBufSize, 16);
%LINE 350+0
		add	esi,16
; [351] ReallocMem(Frames, FrameBufSize * sizeof(Pointer));
%LINE 351+0
		movsxd	rdx,esi
		shl	rdx,3
		mov	rcx,r12
		call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
..@j428:
; [353] Frames[FrameCount] := Pointer(context.Rip);
%LINE 353+0
		mov	rdx,qword [r12]
		movsxd	rax,r13d
		mov	rcx,qword [rsp+552]
		mov	qword [rdx+rax*8],rcx
; [354] Inc(FrameCount);
%LINE 354+0
		inc	r13d
; [356] until false;
%LINE 356+0
		jmp	..@j415
..@j417:
; Var $result located in register eax
; [357] Result := FrameCount;
%LINE 357+0
		mov	eax,r13d
; Var FrameCount located in register eax
; [358] end;
%LINE 358+0
		nop
		lea	rsp,[rsp+1440]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c172:

SECTION .text
SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
..@c174:
; Temps allocated between rsp+40 and rsp+48
; [367] begin
%LINE 367+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-48]
..@c176:
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
; [368] Adr := Pointer(rec.ExceptionInformation[0]);
%LINE 368+0
		mov	r14,qword [rsi+32]
; [369] Obj := TObject(rec.ExceptionInformation[1]);
%LINE 369+0
		mov	rax,qword [rsi+40]
		mov	qword [r13],rax
; Var FrameCount located in register r15d
; [370] Framecount := longint(PtrUInt(rec.ExceptionInformation[2]));
%LINE 370+0
		mov	r15d,dword [rsi+48]
; [371] Frames := Pointer(rec.ExceptionInformation[3]);
%LINE 371+0
		mov	rax,qword [rsi+56]
		mov	qword [rsp+32],rax
; [373] if rec.ExceptionCode <> FPC_EXCEPTION_CODE then begin
%LINE 373+0
		cmp	dword [rsi],-532262845
		je	..@j432
; [374] Obj := nil;
%LINE 374+0
		mov	qword [r13],0
; [375] Result := false;
%LINE 375+0
		mov	byte [rsp+40],0
; [376] code := RunErrorCodeSEH(rec, context);
%LINE 376+0
		mov	rdx,r12
		mov	rcx,rsi
		call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
		mov	ebx,eax
; [377] if Assigned(ExceptObjProc) then Obj := TObject(TExceptObjProc(ExceptObjProc)(abs(code), rec));
%LINE 377+0
		cmp	qword [TC_$SYSTEM_$$_EXCEPTOBJPROC],0
		je	..@j434
		mov	eax,ebx
		mov	ecx,ebx
		neg	eax
		cmovns	ecx,eax
		mov	rdx,rsi
		call	TC_$SYSTEM_$$_EXCEPTOBJPROC
		mov	qword [r13],rax
..@j434:
; [378] if (Obj = nil) and (not AcceptNull) then Exit;
%LINE 378+0
		cmp	qword [r13],0
		jne	..@j436
		test	dil,dil
		je	..@j429
..@j436:
; [379] adr := rec.ExceptionAddress;
%LINE 379+0
		mov	r14,qword [rsi+16]
; [380] FrameCount := GetBacktrace(context, nil, Frames);
%LINE 380+0
		mov	rcx,r12
		lea	r8,[rsp+32]
		xor	edx,edx
		call	SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT
		mov	r15d,eax
; [381] if code < 0 then SysResetFPU;
%LINE 381+0
		test	ebx,ebx
		jnl	..@j439
		call	SYSTEM_$$_SYSRESETFPU
..@j439:
..@j432:
; [384] New(exc);
%LINE 384+0
		mov	ecx,40
		call	fpc_getmem
; Var exc located in register rax
; Var exc located in register rax
; [385] exc^.FObject := Obj;
%LINE 385+0
		mov	rdx,qword [r13]
		mov	qword [rax],rdx
; Var exc located in register rax
; [386] exc^.Addr := adr;
%LINE 386+0
		mov	qword [rax+8],r14
; Var adr located in register rdx
; Var exc located in register rax
; [387] exc^.Frames := Frames;
%LINE 387+0
		mov	rdx,qword [rsp+32]
		mov	qword [rax+32],rdx
; Var exc located in register rax
; [388] exc^.FrameCount := FrameCount;
%LINE 388+0
		mov	dword [rax+28],r15d
; Var FrameCount located in register edx
; Var exc located in register rax
; [389] exc^.Refcount := 0;
%LINE 389+0
		mov	dword [rax+24],0
; Var exc located in register rax
; [390] exc^.Next := ExceptObjectStack;
%LINE 390+0
		mov	rdx,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		mov	qword [rax+16],rdx
; Var exc located in register rax
; [391] ExceptObjectStack := exc;
%LINE 391+0
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [392] Result := true;
%LINE 392+0
		mov	byte [rsp+40],1
..@j429:
; [393] end;
%LINE 393+0
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
..@c175:

SECTION .text
	GLOBAL fpc_popobjectstack
fpc_popobjectstack:
	GLOBAL FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
..@c177:
; [399] begin
%LINE 399+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c179:
; Var $result located in register rsi
; Var hp located in register rax
; Var hp located in register rbx
; [400] hp := ExceptObjectStack;
%LINE 400+0
		mov	rbx,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
; [401] if hp = nil then
%LINE 401+0
		test	rbx,rbx
		jne	..@j443
; [402] halt(1)
%LINE 402+0
		mov	ecx,1
		call	SYSTEM_$$_HALT$LONGINT
		jmp	..@j444
..@j443:
; [404] if hp^.refcount = 0 then result := hp^.FObject else result := nil;
%LINE 404+0
		cmp	dword [rbx+24],0
		jne	..@j446
		mov	rsi,qword [rbx]
		jmp	..@j447
..@j446:
		xor	esi,esi
..@j447:
; [405] ExceptObjectStack := hp^.next;
%LINE 405+0
		mov	rax,qword [rbx+16]
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [406] if assigned(hp^.frames) then freemem(hp^.frames);
%LINE 406+0
		cmp	qword [rbx+32],0
		je	..@j449
		mov	rcx,qword [rbx+32]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j449:
; [407] dispose(hp);
%LINE 407+0
		mov	rcx,rbx
		call	fpc_freemem
; [408] erroraddr := nil;
%LINE 408+0
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],0
..@j444:
; [410] end;
%LINE 410+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c178:

SECTION .text
	GLOBAL SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073:
	GLOBAL __FPC_specific_handler
__FPC_specific_handler:
..@c180:
; Temps allocated between rsp+56 and rsp+72
; [427] begin
%LINE 427+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-80]
..@c182:
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
; [428] writeln('__FPC_specific_handler');
%LINE 428+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld10]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; Var $result located in register r14d
; [429] result := ExceptionContinueSearch;
%LINE 429+0
		mov	r14d,1
%LINE 427+0
		mov	rax,r15
; [430] ControlRva := dispatch.ControlPc - dispatch.ImageBase;
%LINE 430+0
		mov	rdx,qword [rax]
		mov	rax,qword [rax+8]
		sub	rdx,rax
; Var ControlRva located in register r13d
		mov	r13d,edx
; Var scopeIdx located in register r12d
; [431] ScopeIdx := dispatch.ScopeIndex;
%LINE 431+0
		mov	r12d,dword [r15+72]
; [432] if (rec.ExceptionFlags and EXCEPTION_UNWIND) = 0 then begin
%LINE 432+0
		mov	rdx,qword [rsp+64]
		mov	eax,dword [rdx+4]
		and	eax,6
		jne	..@j453
; [433] while ScopeIdx < PDWord(dispatch.HandlerData)^ do begin
%LINE 433+0
		jmp	..@j455
..@j454:
; [434] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
%LINE 434+0
		mov	rax,qword [r15+56]
		lea	rdx,[rax+4]
		mov	eax,r12d
		shl	rax,4
		lea	rdi,[rdx+rax]
; [437] if (ControlRva >= scope^.RvaEnd) and (ControlRva < scope^.RvaHandler) and ((scope^.Typ = SCOPE_CATCHALL) or (scope^.Typ > SCOPE_IMPLICIT)) then
%LINE 437+0
		cmp	r13d,dword [rdi+8]
		jnae	..@j458
		cmp	r13d,dword [rdi+12]
		jnb	..@j458
%LINE 427+0
		mov	eax,dword [rdi]
%LINE 437+0
		cmp	eax,1
		je	..@j460
		cmp	eax,2
		jna	..@j458
..@j460:
; [438] internal_popobjectstack.Free
%LINE 438+0
		call	FPC_POPOBJECTSTACK
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		jmp	..@j464
..@j458:
; [439] else if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and (scope^.Typ <> SCOPE_FINALLY) then begin
%LINE 439+0
		cmp	r13d,dword [rdi+4]
		jnae	..@j466
		cmp	r13d,dword [rdi+8]
		jnb	..@j466
		cmp	dword [rdi],0
		je	..@j466
; [440] if scope^.Typ > SCOPE_IMPLICIT then begin
%LINE 440+0
		cmp	dword [rdi],2
		jna	..@j470
; [441] TargetAddr := FilterException(rec, dispatch.ImageBase, scope^.Typ, abs(RunErrorCodeSEH(rec, context)));
%LINE 441+0
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
; [442] if TargetAddr = nil then begin
%LINE 442+0
		test	rax,rax
		jne	..@j473
; [443] inc(ScopeIdx);
%LINE 443+0
		inc	r12d
; [444] continue;
%LINE 444+0
		jmp	..@j455
		jmp	..@j473
..@j470:
; [447] TargetAddr := Pointer(scope^.RvaEnd + dispatch.ImageBase);
%LINE 447+0
		mov	eax,dword [rdi+8]
		add	rax,qword [r15+8]
		mov	rbx,rax
..@j473:
; [449] if not PushException(rec, context, obj, Scope^.Typ = SCOPE_IMPLICIT) then exit;
%LINE 449+0
		cmp	dword [rdi],2
		sete	r9b
		mov	rdx,qword [rsp+56]
		mov	rcx,qword [rsp+64]
		lea	r8,[rsp+48]
		call	SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j450
; [453] RtlUnwindEx(@frame, TargetAddr, @rec, obj, dispatch.ContextRecord, dispatch.HistoryTable);
%LINE 453+0
		mov	rax,qword [r15+64]
		mov	qword [rsp+40],rax
		mov	rax,qword [r15+40]
		mov	qword [rsp+32],rax
		mov	r8,qword [rsp+64]
		mov	rcx,rsi
		mov	r9,qword [rsp+48]
		mov	rdx,rbx
		call	_$dll$kernel32$RtlUnwindEx
..@j466:
..@j464:
; [455] inc(ScopeIdx);
%LINE 455+0
		inc	r12d
..@j455:
%LINE 433+0
		mov	rax,qword [r15+56]
		cmp	r12d,dword [rax]
		jb	..@j454
		jmp	..@j476
..@j453:
%LINE 427+0
		mov	rax,r15
; [458] TargetRva := dispatch.TargetIp - dispatch.ImageBase;
%LINE 458+0
		mov	rdx,qword [rax+32]
		mov	rax,qword [rax+8]
		sub	rdx,rax
		mov	ebx,edx
; [460] while ScopeIdx < PDword(dispatch.HandlerData)^ do begin
%LINE 460+0
		jmp	..@j478
..@j477:
; [461] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
%LINE 461+0
		mov	rax,qword [r15+56]
		lea	rdx,[rax+4]
		mov	eax,r12d
		shl	rax,4
		lea	rdi,[rdx+rax]
; [462] if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and ((scope^.Typ = SCOPE_FINALLY) or (scope^.Typ = SCOPE_IMPLICIT)) then begin
%LINE 462+0
		cmp	r13d,dword [rdi+4]
		jnae	..@j481
		cmp	r13d,dword [rdi+8]
		jnb	..@j481
%LINE 427+0
		mov	eax,dword [rdi]
%LINE 462+0
		test	eax,eax
		je	..@j483
		cmp	eax,2
		jne	..@j481
..@j483:
; [463] if (TargetRva >= scope^.RvaStart) and (TargetRva < scope^.RvaEnd) and ((rec.ExceptionFlags and EXCEPTION_TARGET_UNWIND) <> 0) then exit;
%LINE 463+0
		cmp	ebx,dword [rdi+4]
		jnae	..@j488
		cmp	ebx,dword [rdi+8]
		jnb	..@j488
		mov	rdx,qword [rsp+64]
		mov	eax,dword [rdx+4]
		and	eax,32
		jne	..@j450
..@j488:
; [465] dispatch.ScopeIndex := ScopeIdx + 1;
%LINE 465+0
		lea	eax,[r12d+1]
		mov	dword [r15+72],eax
; [467] TUnwindProc(dispatch.ImageBase + scope^.RvaHandler)(context.Rbp);
%LINE 467+0
		mov	rax,qword [rsp+56]
		mov	rcx,qword [rax+160]
		mov	eax,dword [rdi+12]
		add	rax,qword [r15+8]
		call	rax
..@j481:
; [469] inc(ScopeIdx);
%LINE 469+0
		inc	r12d
..@j478:
%LINE 460+0
		mov	rax,qword [r15+56]
		cmp	r12d,dword [rax]
		jb	..@j477
..@j476:
..@j450:
; [472] end;
%LINE 472+0
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
..@c181:

SECTION .text
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
..@c183:
; [476] begin
%LINE 476+0
		lea	rsp,[rsp-40]
..@c185:
; [477] internal_popobjectstack.Free;
%LINE 477+0
		call	FPC_POPOBJECTSTACK
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [478] end;
%LINE 478+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c184:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
	GLOBAL FPC_RERAISE
FPC_RERAISE:
..@c186:
; [481] begin
%LINE 481+0
; [482] end;
%LINE 482+0
		ret
..@c187:

SECTION .text
	GLOBAL fpc_raise_nested
fpc_raise_nested:
	GLOBAL FPC_RAISE_NESTED
FPC_RAISE_NESTED:
..@c188:
; [485] begin
%LINE 485+0
; [486] end;
%LINE 486+0
		ret
..@c189:

SECTION .text
	GLOBAL fpc_raiseexception
fpc_raiseexception:
	GLOBAL FPC_RAISEEXCEPTION
FPC_RAISEEXCEPTION:
..@c190:
; [489] begin
%LINE 489+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c192:
		mov	rbx,rcx
; Var obj located in register rbx
		mov	rsi,rdx
; Var anaddr located in register rsi
		mov	rdi,r8
; Var aframe located in register rdi
; [490] writeln('fpc_raiseexception');
%LINE 490+0
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld11]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
; [492] if obj = nil then writeln('obj nil');
%LINE 492+0
		test	rbx,rbx
		jne	..@j500
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld12]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
..@j500:
; [493] if anaddr = nil then writeln('anaddr nil');
%LINE 493+0
		test	rsi,rsi
		jne	..@j502
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld13]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j502:
; [494] if aframe = nil then writeln('aframe nil');
%LINE 494+0
		test	rdi,rdi
		jne	..@j504
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld14]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j504:
; [496] if obj <> nil then begin
%LINE 496+0
		test	rbx,rbx
		je	..@j506
; [497] writeln('exception message = ', TTestException(obj).test);
%LINE 497+0
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
..@j506:
; [499] end;
%LINE 499+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c191:

SECTION .text
	GLOBAL fpc_initialize
fpc_initialize:
	GLOBAL FPC_INITIALIZE
FPC_INITIALIZE:
..@c193:
; [rtti.inc]
; [35] begin
%LINE 35+0 rtti.inc
		push	rbx
		lea	rsp,[rsp-32]
..@c195:
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
..@c194:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
	GLOBAL FPC_FINALIZE
FPC_FINALIZE:
..@c196:
; [40] begin
%LINE 40+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c198:
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
		jb	..@j512
		sub	eax,14
		jne	..@j512
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
..@j512:
; [46] end;
%LINE 46+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c197:

SECTION .text
	GLOBAL fpc_addref
fpc_addref:
	GLOBAL FPC_ADDREF
FPC_ADDREF:
..@c199:
; [49] begin
%LINE 49+0
		push	rbx
		lea	rsp,[rsp-32]
..@c201:
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
..@c200:

SECTION .text
	GLOBAL fpc_decref
fpc_decref:
	GLOBAL FPC_DECREF
FPC_DECREF:
..@c202:
; [54] begin
%LINE 54+0
		push	rbx
		lea	rsp,[rsp-32]
..@c204:
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
..@c203:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c205:
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
..@c206:

SECTION .text
	GLOBAL fpc_get_output
fpc_get_output:
..@c207:
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
..@c208:

SECTION .text
	GLOBAL fpc_write_end
fpc_write_end:
..@c209:
; [95] begin
%LINE 95+0
		mov	rax,rcx
; Var f located in register rax
; [96] end;
%LINE 96+0
		ret
..@c210:

SECTION .text
SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000251:
..@c211:
; [104] end;
%LINE 104+0
		push	rbp
..@c213:
..@c214:
		mov	rbp,rcx
..@c215:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [101] begin
%LINE 101+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c212:

SECTION .text
	GLOBAL fpc_writeln_end
fpc_writeln_end:
..@c216:
		push	rbp
..@c218:
..@c219:
		mov	rbp,rsp
..@c220:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	rax,rcx
; Var f located in register rax
		mov	qword [rbp-8],0
..@j532:
		nop
..@j528:
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
		je	..@j533
		mov	r8,qword [r8-8]
..@j533:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j530:
%LINE 101+0
		nop
..@j529:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000251
%LINE 104+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c217:

SECTION .text
	GLOBAL fpc_write_text_char
fpc_write_text_char:
	GLOBAL FPC_WRITE_TEXT_CHAR
FPC_WRITE_TEXT_CHAR:
..@c221:
; [107] begin
%LINE 107+0
		lea	rsp,[rsp-56]
..@c223:
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
..@c222:

SECTION .text
	GLOBAL fpc_write_text_widechar
fpc_write_text_widechar:
..@c224:
; [112] begin
%LINE 112+0
		lea	rsp,[rsp-56]
..@c226:
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
..@c225:

SECTION .text
	GLOBAL fpc_write_text_shortstr
fpc_write_text_shortstr:
	GLOBAL FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
..@c227:
; [117] begin
%LINE 117+0
		lea	rsp,[rsp-40]
..@c229:
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
..@c228:

SECTION .text
	GLOBAL fpc_write_text_ansistr
fpc_write_text_ansistr:
	GLOBAL FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
..@c230:
; [127] begin
%LINE 127+0
		lea	rsp,[rsp-40]
..@c232:
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
		je	..@j542
		mov	r8,qword [r8-8]
..@j542:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
; [129] end;
%LINE 129+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c231:

SECTION .text
	GLOBAL fpc_write_text_widestr
fpc_write_text_widestr:
..@c233:
; [132] begin
%LINE 132+0
		lea	rsp,[rsp-40]
..@c235:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [133] if pointer(s) = nil then exit;
%LINE 133+0
		test	r8,r8
		je	..@j543
; [134] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
%LINE 134+0
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j547
		mov	r8d,dword [r8-4]
		shr	r8,1
..@j547:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleW
..@j543:
; [135] end;
%LINE 135+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c234:

SECTION .text
	GLOBAL fpc_write_text_unicodestr
fpc_write_text_unicodestr:
..@c236:
; [138] begin
%LINE 138+0
		lea	rsp,[rsp-40]
..@c238:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [139] if pointer(s) = nil then exit;
%LINE 139+0
		test	r8,r8
		je	..@j548
; [140] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
%LINE 140+0
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j552
		mov	r8,qword [r8-8]
..@j552:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleW
..@j548:
; [141] end;
%LINE 141+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c237:

SECTION .text
	GLOBAL fpc_read_end
fpc_read_end:
	GLOBAL FPC_READ_END
FPC_READ_END:
..@c239:
; [144] begin
%LINE 144+0
		mov	rax,rcx
; Var f located in register rax
; [145] end;
%LINE 145+0
		ret
..@c240:

SECTION .text
SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000252:
..@c241:
; [152] end;
%LINE 152+0
		push	rbp
..@c243:
..@c244:
		mov	rbp,rcx
..@c245:
		lea	rsp,[rsp-32]
; [150] begin
%LINE 150+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c242:

SECTION .text
SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING:
..@c246:
		push	rbp
..@c248:
..@c249:
		mov	rbp,rsp
..@c250:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var d located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j563:
		nop
..@j559:
; [151] WriteConsoleA(StdOut, @s[1], length(s), @d, nil);
%LINE 151+0
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j564
		mov	rax,qword [rax-8]
..@j564:
		mov	r8d,eax
		lea	r9,[rbp-12]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		call	_$dll$kernel32$WriteConsoleA
..@j561:
%LINE 150+0
		nop
..@j560:
		mov	rcx,rbp
		call	SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000252
%LINE 152+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c247:

SECTION .text
SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000254:
..@c251:
; [171] end;
%LINE 171+0
		push	rbp
..@c253:
..@c254:
		mov	rbp,rcx
..@c255:
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
..@c252:

SECTION .text
SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING:
..@c256:
; Temps allocated between rbp-32 and rbp-16
		push	rbp
..@c258:
..@c259:
		mov	rbp,rsp
..@c260:
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
..@j573:
		nop
..@j569:
; [160] s := '';
%LINE 160+0
		lea	rcx,[rbp-16]
		xor	edx,edx
		call	fpc_ansistr_assign
..@j574:
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
		je	..@j576
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
		jmp	..@j574
..@j576:
; [169] r := s;
%LINE 169+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-16]
		call	fpc_ansistr_assign
; [170] int_write_to_console(#13#10);
%LINE 170+0
		lea	rcx,[..@d21]
		call	SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING
..@j571:
%LINE 159+0
		nop
..@j570:
		mov	rcx,rbp
		call	SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000254
%LINE 171+0
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c257:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c261:
; [174] begin
%LINE 174+0
		mov	rax,rcx
; Var f located in register rax
; [181] end;
%LINE 181+0
		ret
..@c262:

SECTION .text
SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000258:
..@c263:
; [189] end;
%LINE 189+0
		push	rbp
..@c265:
..@c266:
		mov	rbp,rcx
..@c267:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [186] begin
%LINE 186+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c264:

SECTION .text
	GLOBAL fpc_read_text_shortstr
fpc_read_text_shortstr:
	GLOBAL FPC_READ_TEXT_SHORTSTR
FPC_READ_TEXT_SHORTSTR:
..@c268:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c270:
..@c271:
		mov	rbp,rsp
..@c272:
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
..@j589:
		nop
..@j585:
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
..@j587:
%LINE 186+0
		nop
..@j586:
		mov	rcx,rbp
		call	SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000258
%LINE 189+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c269:

SECTION .text
SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000025A:
..@c273:
; [197] end;
%LINE 197+0
		push	rbp
..@c275:
..@c276:
		mov	rbp,rcx
..@c277:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [194] begin
%LINE 194+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c274:

SECTION .text
	GLOBAL fpc_read_text_ansistr
fpc_read_text_ansistr:
	GLOBAL FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
..@c278:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c280:
..@c281:
		mov	rbp,rsp
..@c282:
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
..@j598:
		nop
..@j594:
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
..@j596:
%LINE 194+0
		nop
..@j595:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000025A
%LINE 197+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c279:

SECTION .text
SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000025B:
..@c283:
; [205] end;
%LINE 205+0
		push	rbp
..@c285:
..@c286:
		mov	rbp,rcx
..@c287:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [202] begin
%LINE 202+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c284:

SECTION .text
	GLOBAL fpc_write_text_sint
fpc_write_text_sint:
..@c288:
		push	rbp
..@c290:
..@c291:
		mov	rbp,rsp
..@c292:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var l located in register rcx
		mov	qword [rbp-8],0
..@j607:
		nop
..@j603:
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
		je	..@j608
		mov	r8,qword [r8-8]
..@j608:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j605:
%LINE 202+0
		nop
..@j604:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000025B
%LINE 205+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c289:

SECTION .text
SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000025C:
..@c293:
; [213] end;
%LINE 213+0
		push	rbp
..@c295:
..@c296:
		mov	rbp,rcx
..@c297:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [210] begin
%LINE 210+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c294:

SECTION .text
	GLOBAL fpc_write_text_uint
fpc_write_text_uint:
..@c298:
		push	rbp
..@c300:
..@c301:
		mov	rbp,rsp
..@c302:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var l located in register rcx
		mov	qword [rbp-8],0
..@j617:
		nop
..@j613:
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
		je	..@j618
		mov	r8,qword [r8-8]
..@j618:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j615:
%LINE 210+0
		nop
..@j614:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000025C
%LINE 213+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c299:

SECTION .text
SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$0000025D:
..@c303:
; [223] end;
%LINE 223+0
		push	rbp
..@c305:
..@c306:
		mov	rbp,rcx
..@c307:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [220] begin
%LINE 220+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c304:

SECTION .text
	GLOBAL fpc_write_text_qword
fpc_write_text_qword:
..@c308:
		push	rbp
..@c310:
..@c311:
		mov	rbp,rsp
..@c312:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var q located in register rcx
		mov	qword [rbp-8],0
..@j627:
		nop
..@j623:
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
		je	..@j628
		mov	r8,qword [r8-8]
..@j628:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j625:
%LINE 220+0
		nop
..@j624:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$0000025D
%LINE 223+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c309:

SECTION .text
SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000025E:
..@c313:
; [232] end;
%LINE 232+0
		push	rbp
..@c315:
..@c316:
		mov	rbp,rcx
..@c317:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [228] begin
%LINE 228+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c314:

SECTION .text
	GLOBAL fpc_write_text_boolean
fpc_write_text_boolean:
..@c318:
		push	rbp
..@c320:
..@c321:
		mov	rbp,rsp
..@c322:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
; Var b located in register r8b
		mov	qword [rbp-8],0
..@j637:
		nop
..@j633:
; [230] if b then s := 'TRUE' else s := 'FALSE';
%LINE 230+0
		test	r8b,r8b
		je	..@j639
		lea	rcx,[rbp-8]
		lea	rdx,[..@d22]
		call	fpc_ansistr_assign
		jmp	..@j640
..@j639:
		lea	rcx,[rbp-8]
		lea	rdx,[..@d23]
		call	fpc_ansistr_assign
..@j640:
; [231] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
%LINE 231+0
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j641
		mov	r8,qword [r8-8]
..@j641:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j635:
%LINE 228+0
		nop
..@j634:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000025E
%LINE 232+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c319:

SECTION .text
	GLOBAL fpc_shortstr_setlength
fpc_shortstr_setlength:
	GLOBAL FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
..@c323:
; [strings.inc]
; [102] begin
%LINE 102+0 strings.inc
		mov	rax,rcx
; Var s located in register rax
; Var len located in register rdx
; [103] if len > 255 then len := 255;
%LINE 103+0
		cmp	rdx,255
		jng	..@j645
		mov	edx,255
..@j645:
; [104] s[0] := chr(len);
%LINE 104+0
		mov	byte [rax],dl
; [105] end;
%LINE 105+0
		ret
..@c324:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING:
..@c325:
; [111] begin
%LINE 111+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c327:
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
..@c326:

SECTION .text
	GLOBAL fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
..@c328:
; [117] begin
%LINE 117+0
		lea	rsp,[rsp-40]
..@c330:
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
..@c329:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING:
..@c331:
; [133] begin
%LINE 133+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c333:
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
..@c332:

SECTION .text
	GLOBAL fpc_shortstr_to_shortstr
fpc_shortstr_to_shortstr:
	GLOBAL FPC_SHORTSTR_TO_SHORTSTR
FPC_SHORTSTR_TO_SHORTSTR:
..@c334:
; [139] begin
%LINE 139+0
		lea	rsp,[rsp-40]
..@c336:
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
..@c335:

SECTION .text
	GLOBAL fpc_val_sint_shortstr
fpc_val_sint_shortstr:
	GLOBAL FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
..@c337:
; [152] begin
%LINE 152+0
		push	rbx
		lea	rsp,[rsp-32]
..@c339:
; Var $result located in register rax
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
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c338:

SECTION .text
	GLOBAL fpc_shortstr_sint
fpc_shortstr_sint:
	GLOBAL FPC_SHORTSTR_SINT
FPC_SHORTSTR_SINT:
..@c340:
; [157] begin
%LINE 157+0
		push	rbx
		lea	rsp,[rsp-32]
..@c342:
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
..@c341:

SECTION .text
	GLOBAL fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
	GLOBAL FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
..@c343:
; [162] begin
%LINE 162+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c345:
		mov	rbx,rcx
; Var res located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [163] setlength(res, length(s2));
%LINE 163+0
		test	rdx,rdx
		je	..@j660
		mov	rdx,qword [rdx-8]
..@j660:
		mov	rcx,rbx
		call	fpc_shortstr_setlength
; [164] move(s2[1], res[1], length(s2));
%LINE 164+0
		mov	r8,rsi
		test	rsi,rsi
		je	..@j661
		mov	r8,qword [r8-8]
..@j661:
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
..@c344:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING:
..@c346:
; [171] begin
%LINE 171+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c348:
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
		jng	..@j665
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
..@j665:
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
..@c347:

SECTION .text
	GLOBAL fpc_shortstr_concat
fpc_shortstr_concat:
..@c349:
; [190] begin
%LINE 190+0
		lea	rsp,[rsp-40]
..@c351:
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
..@c350:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING:
..@c352:
; [204] begin
%LINE 204+0
		lea	rsp,[rsp-40]
..@c354:
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
		jnl	..@j673
		xor	r8,r8
..@j673:
; [206] if index > 1 then dec(index) else index := 0;
%LINE 206+0
		cmp	rcx,1
		jng	..@j675
		dec	rcx
		jmp	..@j676
..@j675:
		xor	ecx,ecx
..@j676:
; [207] if index > length(s) then
%LINE 207+0
		movzx	r9d,byte [rdx]
		cmp	r9,rcx
		jnl	..@j678
; [208] count := 0
%LINE 208+0
		xor	r8,r8
		jmp	..@j679
..@j678:
; [209] else if count > length(s)-index then
%LINE 209+0
		movzx	r9d,byte [rdx]
		sub	r9,rcx
		cmp	r9,r8
		jnl	..@j681
; [210] count := length(s)-index;
%LINE 210+0
		movzx	r9d,byte [rdx]
		sub	r9,rcx
		mov	r8,r9
..@j681:
..@j679:
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
..@c353:

SECTION .text
	GLOBAL fpc_shortstr_copy
fpc_shortstr_copy:
..@c355:
; [215] begin
%LINE 215+0
		lea	rsp,[rsp-40]
..@c357:
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
..@c356:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER:
..@c358:
; [229] begin
%LINE 229+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c360:
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [230] if dests = s2 then exit;
%LINE 230+0
		cmp	rsi,qword [rbx]
		je	..@j684
; [231] if s2 <> nil then
%LINE 231+0
		test	rsi,rsi
		je	..@j689
; [232] if PAnsiRec(s2-AnsiFirstOff)^.Ref > 0 then
%LINE 232+0
		cmp	qword [rsi-16],0
		jng	..@j691
; [234] inc(PAnsiRec(s2-AnsiFirstOff)^.Ref);
%LINE 234+0
		inc	qword [rsi-16]
..@j691:
..@j689:
; [236] fpc_ansistr_decr_ref(dests);
%LINE 236+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
; Var s2 located in register rsi
; [238] dests := s2;
%LINE 238+0
		mov	qword [rbx],rsi
..@j684:
; [239] end;
%LINE 239+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c359:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c361:
; [241] begin
%LINE 241+0
		lea	rsp,[rsp-40]
..@c363:
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
..@c362:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD:
..@c364:
; [258] begin
%LINE 258+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c366:
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
		jng	..@j697
; [260] if Pointer(S) = nil then begin
%LINE 260+0
		cmp	qword [rbx],0
		jne	..@j699
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
		mov	dword [rax-32],edi
		jmp	..@j700
..@j699:
; [265] end else if PAnsiRec(Pointer(S) - AnsiFirstOff)^.Ref = 1 then begin
%LINE 265+0
		mov	rax,qword [rbx]
		cmp	qword [rax-16],1
		jne	..@j702
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
		cmp	rdi,rax
		jl	..@j703
		cmp	rdi,32
		jng	..@j709
		mov	rdx,rdi
		shr	rdx,1
		cmp	rdx,rax
		jnge	..@j709
..@j703:
		lea	rcx,[rsp+32]
		mov	edx,4
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
		add	rax,32
		mov	qword [rbx],rax
		jmp	..@j709
..@j702:
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
..@j709:
..@j700:
; [285] pbyte(Pointer(S) + l)^ := 0;
%LINE 285+0
		mov	rax,qword [rbx]
		add	rax,rsi
		mov	byte [rax],0
; [286] PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len := l;
%LINE 286+0
		mov	rax,qword [rbx]
		mov	qword [rax-8],rsi
		jmp	..@j712
..@j697:
; [288] fpc_ansistr_decr_ref(Pointer(S));
%LINE 288+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
..@j712:
; [289] end;
%LINE 289+0
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c365:

SECTION .text
	GLOBAL fpc_ansistr_setlength
fpc_ansistr_setlength:
	GLOBAL FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
..@c367:
; [291] begin
%LINE 291+0
		lea	rsp,[rsp-40]
..@c369:
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
..@c368:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRDECRREF$POINTER
SYSTEM_$$_FPCANSISTRDECRREF$POINTER:
..@c370:
; [307] begin
%LINE 307+0
		lea	rsp,[rsp-40]
..@c372:
; Var p located in register rax
		mov	rax,rcx
; Var s located in register rax
; [308] if s = nil then exit;
%LINE 308+0
		cmp	qword [rax],0
		je	..@j715
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
		jl	..@j715
; Var p located in register rcx
; [315] dec(p^.Ref);
%LINE 315+0
		dec	qword [rcx+16]
; [316] if p^.Ref <= 0 then FreeMem(p);
%LINE 316+0
		cmp	qword [rcx+16],0
		jnle	..@j722
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j722:
..@j715:
; [317] end;
%LINE 317+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c371:

SECTION .text
	GLOBAL fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
	GLOBAL FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
..@c373:
; [319] begin
%LINE 319+0
		lea	rsp,[rsp-40]
..@c375:
; Var s located in register rax
; [320] fpcansistrdecrref(s);
%LINE 320+0
		call	SYSTEM_$$_FPCANSISTRDECRREF$POINTER
; [321] end;
%LINE 321+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c374:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRINCRREF$POINTER
SYSTEM_$$_FPCANSISTRINCRREF$POINTER:
..@c376:
; [336] begin
%LINE 336+0
		mov	rax,rcx
; Var s located in register rax
; [337] if s = nil then exit;
%LINE 337+0
		test	rcx,rcx
		je	..@j725
; [338] if PAnsiRec(s-AnsiFirstOff)^.Ref < 0 then exit;
%LINE 338+0
		cmp	qword [rax-16],0
		jl	..@j725
; Var s located in register rax
; [340] inc(PAnsiRec(s-AnsiFirstOff)^.Ref);
%LINE 340+0
		inc	qword [rax-16]
..@j725:
; [342] end;
%LINE 342+0
		ret
..@c377:

SECTION .text
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
..@c378:
; [344] begin
%LINE 344+0
		lea	rsp,[rsp-40]
..@c380:
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
..@c379:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD:
..@c381:
; [358] begin
%LINE 358+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c383:
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
		je	..@j735
		mov	rax,qword [rax-8]
..@j735:
		mov	rdx,rdi
		test	rdi,rdi
		je	..@j736
		mov	rdx,qword [rdx-8]
..@j736:
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
		je	..@j737
		mov	r8,qword [r8-8]
..@j737:
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [361] move(s2[1], dests[length(s1)+1], length(s2));
%LINE 361+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		test	rsi,rsi
		je	..@j738
		mov	rsi,qword [rsi-8]
..@j738:
		lea	rdx,[rsi+1]
		lea	rdx,[rax+rdx*1-1]
		mov	r8,rdi
		test	rdi,rdi
		je	..@j739
		mov	r8,qword [r8-8]
..@j739:
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
..@c382:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c384:
; [364] begin
%LINE 364+0
		lea	rsp,[rsp-40]
..@c386:
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
..@c385:

SECTION .text
	GLOBAL fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
..@c387:
; Temps allocated between rbp-8 and rbp+0
; [377] begin
%LINE 377+0
		push	rbp
..@c389:
..@c390:
		mov	rbp,rsp
..@c391:
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
..@c388:

SECTION .text
	GLOBAL SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER:
..@c392:
; [386] begin
%LINE 386+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c394:
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
..@c393:

SECTION .text
SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
..@c395:
; [397] begin
%LINE 397+0
		lea	rsp,[rsp-40]
..@c397:
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
..@c396:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
	GLOBAL FPC_ANSISTR_UNIQUE
FPC_ANSISTR_UNIQUE:
..@c398:
; [410] begin
%LINE 410+0
		push	rbx
		lea	rsp,[rsp-32]
..@c400:
; Var $result located in register rax
; Var s located in register rcx
; Var $result located in register rbx
; [411] pointer(result) := pointer(s);
%LINE 411+0
		mov	rbx,qword [rcx]
; [412] if (result <> nil) and (PAnsiRec(result - AnsiFirstOff)^.Ref <> 1) then result := fpc_truely_ansistr_unique(s);
%LINE 412+0
		test	rbx,rbx
		je	..@j751
		cmp	qword [rbx-16],1
		je	..@j751
		call	SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
		mov	rbx,rax
..@j751:
; [413] end;
%LINE 413+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c399:

SECTION .text
	GLOBAL fpc_ansistr_sint
fpc_ansistr_sint:
	GLOBAL FPC_ANSISTR_VALSINT
FPC_ANSISTR_VALSINT:
..@c401:
; [416] begin
%LINE 416+0
		push	rbx
		lea	rsp,[rsp-32]
..@c403:
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
..@c402:

SECTION .text
	GLOBAL SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING:
..@c404:
; [422] begin
%LINE 422+0
		push	rbx
		lea	rsp,[rsp-48]
..@c406:
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
..@c405:

SECTION .text
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c407:
; [427] begin
%LINE 427+0
		lea	rsp,[rsp-40]
..@c409:
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
..@c408:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64:
..@c410:
; [442] begin
%LINE 442+0
		push	rbx
		lea	rsp,[rsp-32]
..@c412:
; Var $result located in register rbx
; Var s1 located in register rcx
; Var s2 located in register rdx
; [443] if pointer(s1) = pointer(s2) then exit(0);
%LINE 443+0
		cmp	rdx,rcx
		jne	..@j762
		xor	ebx,ebx
		jmp	..@j759
..@j762:
; [444] if (pointer(s1) = nil) or (pointer(s2) = nil) then exit(-1);
%LINE 444+0
		test	rcx,rcx
		je	..@j763
		test	rdx,rdx
		jne	..@j765
..@j763:
		mov	rbx,-1
		jmp	..@j759
..@j765:
; [445] if length(s1) <> length(s2) then exit(-1);
%LINE 445+0
		mov	rax,rcx
		test	rcx,rcx
		je	..@j766
		mov	rax,qword [rax-8]
..@j766:
		mov	r8,rdx
		test	rdx,rdx
		je	..@j767
		mov	r8,qword [r8-8]
..@j767:
		cmp	rax,r8
		je	..@j769
		mov	rbx,-1
		jmp	..@j759
..@j769:
; [446] result := CompareByte(s1[1], s2[1], length(s1));
%LINE 446+0
		mov	r8,rcx
		test	rcx,rcx
		je	..@j770
		mov	r8,qword [r8-8]
..@j770:
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		mov	rbx,rax
..@j759:
; [447] end;
%LINE 447+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c411:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c413:
; [449] begin
%LINE 449+0
		lea	rsp,[rsp-40]
..@c415:
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
..@c414:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING:
..@c416:
; [465] begin
%LINE 465+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c418:
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
		jnl	..@j776
; [469] Index := 0;
%LINE 469+0
		xor	edi,edi
..@j776:
; [472] if (Size>Length(S)) or
%LINE 472+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j777
		mov	rax,qword [rax-8]
..@j777:
		cmp	rax,r12
		jl	..@j778
; [473] (Index+Size>Length(S)) then
%LINE 473+0
		lea	rdx,[rdi+r12]
		cmp	rdx,rax
		jng	..@j780
..@j778:
; [474] Size:=Length(S)-Index;
%LINE 474+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j781
		mov	rax,qword [rax-8]
..@j781:
		sub	rax,rdi
		mov	r12,rax
..@j780:
; [475] If Size>0 then
%LINE 475+0
		test	r12,r12
		jng	..@j783
; [477] ResultAddress:=new_ansistring(size);
%LINE 477+0
		mov	rcx,r12
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	r13,rax
; [478] if ResultAddress<>Nil then
%LINE 478+0
		test	rax,rax
		je	..@j785
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
..@j785:
..@j783:
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
..@c417:

SECTION .text
	GLOBAL fpc_ansistr_copy
fpc_ansistr_copy:
..@c419:
; [498] begin
%LINE 498+0
		lea	rsp,[rsp-40]
..@c421:
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
..@c420:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER:
..@c422:
; [512] begin
%LINE 512+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c424:
		mov	rbx,rcx
; Var s1 located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [513] if s1 = s2 then exit;
%LINE 513+0
		cmp	rsi,qword [rbx]
		je	..@j788
; [514] if s2 <> nil then begin
%LINE 514+0
		test	rsi,rsi
		je	..@j793
; [515] setlength(widestring(s1), length(widestring(s2)));
%LINE 515+0
		mov	rdx,rsi
		test	rsi,rsi
		je	..@j794
		mov	edx,dword [rdx-4]
		shr	rdx,1
..@j794:
		mov	rcx,rbx
		call	fpc_widestr_setlength
; [516] move(s2^, s1^, length(widestring(s1))+1*sizeof(WideChar));
%LINE 516+0
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j795
		mov	eax,dword [rax-4]
		shr	rax,1
..@j795:
		lea	r8,[rax+2]
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
		jmp	..@j796
..@j793:
; [518] fpc_widestr_decr_ref(s1); // will set s1 to nil
%LINE 518+0
		mov	rcx,rbx
		call	fpc_widestr_decr_ref
..@j796:
..@j788:
; [519] end;
%LINE 519+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c423:

SECTION .text
	GLOBAL fpc_widestr_assign
fpc_widestr_assign:
	GLOBAL FPC_WIDESTR_ASSIGN
FPC_WIDESTR_ASSIGN:
..@c425:
; [521] begin
%LINE 521+0
		lea	rsp,[rsp-40]
..@c427:
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
..@c426:

SECTION .text
	GLOBAL fpc_widestr_setlength
fpc_widestr_setlength:
	GLOBAL FPC_WIDESTR_SETLENGTH
FPC_WIDESTR_SETLENGTH:
..@c428:
; [534] begin
%LINE 534+0
		push	rbx
		lea	rsp,[rsp-32]
..@c430:
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
..@c429:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
SYSTEM_$$_FPCWIDESTRDECRREF$POINTER:
..@c431:
; [540] Begin
%LINE 540+0
		push	rbx
		lea	rsp,[rsp-32]
..@c433:
		mov	rbx,rcx
; Var s located in register rbx
; [541] if s = nil then exit;
%LINE 541+0
		cmp	qword [rbx],0
		je	..@j801
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
..@j801:
; [545] end;
%LINE 545+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c432:

SECTION .text
	GLOBAL fpc_widestr_decr_ref
fpc_widestr_decr_ref:
	GLOBAL FPC_WIDESTR_DECR_REF
FPC_WIDESTR_DECR_REF:
..@c434:
; [547] begin
%LINE 547+0
		lea	rsp,[rsp-40]
..@c436:
; Var s located in register rax
; [548] fpcwidestrdecrref(s);
%LINE 548+0
		call	SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
; [549] end;
%LINE 549+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c435:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
SYSTEM_$$_FPCWIDESTRINCRREF$POINTER:
..@c437:
; [566] Begin
%LINE 566+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c439:
; Var p located in register rax
		mov	rbx,rcx
; Var s located in register rbx
; [567] if s = nil then exit;
%LINE 567+0
		cmp	qword [rbx],0
		je	..@j807
; [568] p := new_widestring(length(WideString(s)));
%LINE 568+0
		mov	rcx,qword [rbx]
		test	rcx,rcx
		je	..@j811
		mov	ecx,dword [rcx-4]
		shr	rcx,1
..@j811:
		call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
		mov	rsi,rax
; Var p located in register rsi
; [569] move(s^, p^, (length(WideString(s))+1)*sizeof(widechar));
%LINE 569+0
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j812
		mov	eax,dword [rax-4]
		shr	rax,1
..@j812:
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
..@j807:
; [571] end;
%LINE 571+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c438:

SECTION .text
	GLOBAL fpc_widestr_incr_ref
fpc_widestr_incr_ref:
	GLOBAL FPC_WIDESTR_INCR_REF
FPC_WIDESTR_INCR_REF:
..@c440:
; [573] begin
%LINE 573+0
		lea	rsp,[rsp-40]
..@c442:
; Var s located in register rax
; [574] fpcwidestrincrref(s);
%LINE 574+0
		call	SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
; [575] end;
%LINE 575+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c441:

SECTION .text
	GLOBAL fpc_pchar_to_shortstr
fpc_pchar_to_shortstr:
	GLOBAL FPC_PCHAR_TO_SHORTSTR
FPC_PCHAR_TO_SHORTSTR:
..@c443:
; [593] begin
%LINE 593+0
		push	rbx
		lea	rsp,[rsp-32]
..@c445:
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
..@c444:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING:
..@c446:
; [601] begin
%LINE 601+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c448:
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
..@c447:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c449:
; [607] begin
%LINE 607+0
		lea	rsp,[rsp-40]
..@c451:
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
..@c450:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING:
..@c452:
; [627] begin
%LINE 627+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c454:
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
		je	..@j821
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
		jng	..@j826
		mov	r8,rdi
		shl	r8,1
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j826:
..@j821:
; [633] end;
%LINE 633+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c453:

SECTION .text
	GLOBAL fpc_pwidechar_to_widestr
fpc_pwidechar_to_widestr:
..@c455:
; [635] begin
%LINE 635+0
		lea	rsp,[rsp-40]
..@c457:
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
..@c456:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING:
..@c458:
; [651] begin
%LINE 651+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c460:
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
		je	..@j829
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
		jng	..@j834
; [657] for i := 0 to len-1 do begin
%LINE 657+0
		dec	rdi
		test	rdi,rdi
		jnge	..@j836
		mov	r12,-1
..@j837:
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
		jnle	..@j837
..@j836:
..@j834:
..@j829:
; [662] end;
%LINE 662+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c459:

SECTION .text
	GLOBAL fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
..@c461:
; [664] begin
%LINE 664+0
		lea	rsp,[rsp-40]
..@c463:
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
..@c462:

SECTION .text
	GLOBAL fpc_uchar_to_ansistr
fpc_uchar_to_ansistr:
..@c464:
; [681] begin
%LINE 681+0
		push	rbx
		lea	rsp,[rsp-32]
..@c466:
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
..@c465:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD:
..@c467:
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
		jne	..@j849
		ret
; [694] while (p+result)^ <> #0 do inc(result);
%LINE 694+0
		jmp	..@j849
..@j848:
		inc	eax
..@j849:
		mov	edx,eax
		add	rdx,rcx
		cmp	byte [rdx],0
		jne	..@j848
; [695] end;
%LINE 695+0
		ret
..@c468:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN$PCHAR$$LONGWORD:
..@c469:
; [697] begin
%LINE 697+0
		lea	rsp,[rsp-40]
..@c471:
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
..@c470:

SECTION .text
SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000268:
..@c472:
; [719] end;
%LINE 719+0
		push	rbp
..@c474:
..@c475:
		mov	rbp,rcx
..@c476:
		lea	rsp,[rsp-32]
; [717] begin
%LINE 717+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c473:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD
SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD:
..@c477:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c479:
..@c480:
		mov	rbp,rsp
..@c481:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var s located at rbp-8, size=OS_64
; Var $result located in register ebx
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j861:
		nop
..@j857:
; [718] result := length(s);
%LINE 718+0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j862
		mov	rax,qword [rax-8]
..@j862:
		mov	ebx,eax
..@j859:
%LINE 717+0
		nop
..@j858:
		mov	rcx,rbp
		call	SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000268
%LINE 719+0
		mov	eax,ebx
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c478:

SECTION .text
	GLOBAL SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
SYSTEM_$$_NEWANSISTRING$INT64$$POINTER:
..@c482:
; [724] begin
%LINE 724+0
		push	rbx
		lea	rsp,[rsp-32]
..@c484:
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
		je	..@j863
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
..@j863:
; [733] end;
%LINE 733+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c483:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER:
..@c485:
; [735] begin
%LINE 735+0
		lea	rsp,[rsp-40]
..@c487:
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
..@c486:

SECTION .text
	GLOBAL SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER:
..@c488:
; [750] begin
%LINE 750+0
		push	rbx
		lea	rsp,[rsp-32]
..@c490:
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
		je	..@j869
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
..@j869:
; [756] end;
%LINE 756+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c489:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER:
..@c491:
; [758] begin
%LINE 758+0
		lea	rsp,[rsp-40]
..@c493:
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
..@c492:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000269:
..@c494:
; [776] end;
%LINE 776+0
		push	rbp
..@c496:
..@c497:
		mov	rbp,rcx
..@c498:
		lea	rsp,[rsp-32]
; [772] begin
%LINE 772+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c495:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING:
..@c499:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c501:
..@c502:
		mov	rbp,rsp
..@c503:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var s located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
..@j883:
		nop
..@j879:
; [773] pointer(result) := new_ansistring(length(s));
%LINE 773+0
		mov	rcx,qword [rbp-8]
		test	rcx,rcx
		je	..@j884
		mov	rcx,qword [rcx-8]
..@j884:
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [774] setlength(result, length(s));
%LINE 774+0
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j885
		mov	rdx,qword [rdx-8]
..@j885:
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
		je	..@j886
		mov	r8,qword [r8-8]
..@j886:
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j881:
%LINE 772+0
		nop
..@j880:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000269
%LINE 776+0
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c500:

SECTION .text
SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000026B:
..@c504:
; [780] end;
%LINE 780+0
		push	rbp
..@c506:
..@c507:
		mov	rbp,rcx
..@c508:
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
..@c505:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING:
..@c509:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c511:
..@c512:
		mov	rbp,rsp
..@c513:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	rax,rcx
; Var $result located in register rax
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-16],0
..@j895:
		nop
..@j891:
; [779] makeuniqueansistring(s);
%LINE 779+0
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-16]
		call	SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
..@j893:
%LINE 778+0
		nop
..@j892:
		mov	rcx,rbp
		call	SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000026B
%LINE 780+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c510:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000026C:
..@c514:
; [800] end;
%LINE 800+0
		push	rbp
..@c516:
..@c517:
		mov	rbp,rcx
..@c518:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
; [795] begin
%LINE 795+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c515:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER:
..@c519:
; Temps allocated between rbp-24 and rbp-16
		push	rbp
..@c521:
..@c522:
		mov	rbp,rsp
..@c523:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var $result located in register rbx
; Var a located at rbp-8, size=OS_64
; Var s located at rbp-16, size=OS_64
; Var p located in register rcx
		mov	qword [rbp-16],0
..@j904:
		nop
..@j900:
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
..@j902:
%LINE 795+0
		nop
..@j901:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000026C
%LINE 800+0
		mov	rax,rbx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c520:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER:
..@c524:
; [802] begin
%LINE 802+0
		lea	rsp,[rsp-40]
..@c526:
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
..@c525:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT:
..@c527:
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
..@j909:
; [824] c := (str+i)^;
%LINE 824+0
		movsxd	rdx,r8d
		add	rdx,rcx
		mov	r9b,byte [rdx]
; [825] if c = #0 then break;
%LINE 825+0
		test	r9b,r9b
		je	..@j911
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
		jmp	..@j909
..@j911:
; [829] end;
%LINE 829+0
		ret
..@c528:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI$PANSICHAR$$LONGINT:
..@c529:
; [831] begin
%LINE 831+0
		lea	rsp,[rsp-40]
..@c531:
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
..@c530:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR:
..@c532:
; [865] begin
%LINE 865+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c534:
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
		je	..@j916
; [870] if num < 0 then begin
%LINE 870+0
		test	ebx,ebx
		jnl	..@j923
; [872] if base <> 10 then exit;
%LINE 872+0
		cmp	esi,10
		jne	..@j916
; [873] neg := true;
%LINE 873+0
		mov	dil,1
; [874] num := -num;
%LINE 874+0
		movsxd	rax,ebx
		neg	rax
		mov	ebx,eax
..@j923:
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
		jmp	..@j927
..@j926:
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
		jng	..@j930
		mov	rcx,qword [rsp+32]
		movsxd	rax,r12d
		lea	edx,[r8d-10]
		add	edx,97
		mov	byte [rcx+rax*1],dl
		jmp	..@j931
..@j930:
		mov	rcx,qword [rsp+32]
		movsxd	rax,r12d
		lea	edx,[r8d+48]
		mov	byte [rcx+rax*1],dl
..@j931:
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
..@j927:
%LINE 880+0
		test	ebx,ebx
		jne	..@j926
; [887] if neg then begin
%LINE 887+0
		test	dil,dil
		je	..@j933
; [888] result[i] := '-';
%LINE 888+0
		mov	rdx,qword [rsp+32]
		movsxd	rax,r12d
		mov	byte [rdx+rax*1],45
; [889] inc(i);
%LINE 889+0
		inc	r12d
..@j933:
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
..@j916:
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
..@c533:

SECTION .text
SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT:
..@c535:
; [851] begin
%LINE 851+0
		lea	rsp,[rsp-8]
..@c537:
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
		jmp	..@j935
..@j934:
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
..@j935:
%LINE 854+0
		cmp	eax,r9d
		jg	..@j934
; [861] end;
%LINE 861+0
		lea	rsp,[rsp+8]
		ret
..@c536:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR:
..@c538:
; [899] begin
%LINE 899+0
		lea	rsp,[rsp-40]
..@c540:
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
..@c539:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN:
..@c541:
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
		je	..@j942
		cmp	rdx,qword [rcx]
		jnbe	..@j942
		xor	al,al
		jmp	..@j939
..@j942:
; [41] if cur^ = #0 then exit(false);
%LINE 41+0
		mov	r10,qword [rcx]
		cmp	byte [r10],0
		jne	..@j945
		xor	al,al
		jmp	..@j939
..@j945:
; [42] if (byte(cur^) and $f0 = $f0) then begin
%LINE 42+0
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,240
		cmp	r10b,240
		jne	..@j947
; [44] if (curend <> nil) and (cur+4 > curend) then exit(false);
%LINE 44+0
		test	rdx,rdx
		je	..@j949
		mov	r10,qword [rcx]
		add	r10,4
		cmp	r10,rdx
		jna	..@j949
		xor	al,al
		jmp	..@j939
..@j949:
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
		jmp	..@j951
..@j947:
; [51] else if (byte(cur^) and $e0 = $e0) then begin
%LINE 51+0
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,224
		cmp	r10b,224
		jne	..@j953
; [53] if (curend <> nil) and (cur+3 > curend) then exit(false);
%LINE 53+0
		test	rdx,rdx
		je	..@j955
		mov	r10,qword [rcx]
		add	r10,3
		cmp	r10,rdx
		jna	..@j955
		xor	al,al
		jmp	..@j939
..@j955:
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
		jmp	..@j957
..@j953:
; [59] else if (byte(cur^) and $c0 = $c0) then begin
%LINE 59+0
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,192
		cmp	r10b,192
		jne	..@j959
; [61] if (curend <> nil) and (cur+2 > curend) then exit(false);
%LINE 61+0
		test	rdx,rdx
		je	..@j961
		mov	r10,qword [rcx]
		add	r10,2
		cmp	r10,rdx
		jna	..@j961
		xor	al,al
		jmp	..@j939
..@j961:
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
		jmp	..@j963
..@j959:
; [68] codepoint := byte(cur^);
%LINE 68+0
		mov	rdx,qword [rcx]
		movzx	edx,byte [rdx]
		mov	dword [r8],edx
; [69] size := 1;
%LINE 69+0
		mov	byte [r9],1
..@j963:
..@j957:
..@j951:
; [71] inc(cur, size);
%LINE 71+0
		movzx	edx,byte [r9]
		add	qword [rcx],rdx
; [72] result := true;
%LINE 72+0
		mov	al,1
..@j939:
; [73] end;
%LINE 73+0
		pop	rbx
		ret
..@c542:

SECTION .text
SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000272:
..@c543:
; [94] end;
%LINE 94+0
		push	rbp
..@c545:
..@c546:
		mov	rbp,rcx
..@c547:
		lea	rsp,[rsp-32]
; [76] begin
%LINE 76+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c544:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING
SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING:
..@c548:
; Temps allocated between rbp-24 and rbp+0
		push	rbp
..@c550:
..@c551:
		mov	rbp,rsp
..@c552:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
; Var $result located in register rbx
		mov	esi,edx
; Var codepoint located in register esi
		mov	qword [rbp-8],0
..@j972:
		nop
..@j968:
; [77] if codepoint <= $7F then
%LINE 77+0
		cmp	esi,127
		jnbe	..@j974
; [78] result := ansichar(codepoint)
%LINE 78+0
		movzx	edx,sil
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
		jmp	..@j975
..@j974:
; [79] else if codepoint <= $7ff then begin
%LINE 79+0
		cmp	esi,2047
		jnbe	..@j977
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
		jmp	..@j978
..@j977:
; [83] else if codepoint <= $ffff then begin
%LINE 83+0
		cmp	esi,65535
		jnbe	..@j980
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
		jmp	..@j981
..@j980:
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
..@j981:
..@j978:
..@j975:
..@j970:
%LINE 76+0
		nop
..@j969:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000272
%LINE 94+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c549:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN:
..@c553:
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
		je	..@j985
		cmp	rdx,qword [rcx]
		jnbe	..@j985
		xor	al,al
		ret
..@j985:
; [99] if cur^ = #0 then exit(false);
%LINE 99+0
		mov	r10,qword [rcx]
		cmp	word [r10],0
		jne	..@j988
		xor	al,al
		ret
..@j988:
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
		jnae	..@j990
		cmp	r10d,56319
		jnbe	..@j990
; [104] if (curend = nil) or ((cur+1 <= curend) and (dword((cur+1)^) >= $dc00) and (dword((cur+1)^) <= $dfff)) then begin
%LINE 104+0
		test	rdx,rdx
		je	..@j992
		mov	r10,qword [rcx]
		add	r10,2
		cmp	rdx,r10
		jnae	..@j994
		movzx	edx,word [r10]
		cmp	edx,56320
		jnae	..@j994
		cmp	edx,57343
		jnbe	..@j994
..@j992:
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
..@j994:
..@j990:
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
..@c554:

SECTION .text
SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000273:
..@c555:
; [120] end;
%LINE 120+0
		push	rbp
..@c557:
..@c558:
		mov	rbp,rcx
..@c559:
		lea	rsp,[rsp-32]
; [114] begin
%LINE 114+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c556:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING
SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING:
..@c560:
; Temps allocated between rbp-24 and rbp+0
		push	rbp
..@c562:
..@c563:
		mov	rbp,rsp
..@c564:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
; Var $result located in register rbx
		mov	esi,edx
; Var codepoint located in register esi
		mov	qword [rbp-8],0
..@j1007:
		nop
..@j1003:
; [115] if codepoint > $ffff then begin
%LINE 115+0
		cmp	esi,65535
		jna	..@j1009
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
		jmp	..@j1010
..@j1009:
; [119] result := widechar(codepoint);
%LINE 119+0
		movzx	edx,si
		mov	rcx,rbx
		call	fpc_uchar_to_unicodestr
..@j1010:
..@j1005:
%LINE 114+0
		nop
..@j1004:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000273
%LINE 120+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c561:

SECTION .text
SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000274:
..@c565:
; [144] end;
%LINE 144+0
		push	rbp
..@c567:
..@c568:
		mov	rbp,rcx
..@c569:
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
..@c566:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING:
..@c570:
; Temps allocated between rbp-80 and rbp-24
		push	rbp
..@c572:
..@c573:
		mov	rbp,rsp
..@c574:
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
..@j1019:
		nop
..@j1015:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [129] curend := @utf8[1]+length(utf8);
%LINE 129+0
		mov	rdx,rax
		test	rax,rax
		je	..@j1020
		mov	rdx,qword [rdx-8]
..@j1020:
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
		jmp	..@j1022
..@j1021:
; [133] cur := @utf8[i];
%LINE 133+0
		mov	rdx,qword [rbp-8]
		movsxd	rax,edi
		lea	rax,[rdx+rax*1-1]
		mov	qword [rbp-16],rax
; [134] if utf8decode(cur, curend, codepoint, size) then begin
%LINE 134+0
		test	rsi,rsi
		je	..@j1026
		cmp	rsi,qword [rbp-16]
		jnbe	..@j1026
		xor	cl,cl
		jmp	..@j1024
..@j1026:
		mov	rax,qword [rbp-16]
		cmp	byte [rax],0
		jne	..@j1029
		xor	cl,cl
		jmp	..@j1024
..@j1029:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		jne	..@j1031
		test	rsi,rsi
		je	..@j1033
		mov	rax,qword [rbp-16]
		add	rax,4
		cmp	rax,rsi
		jna	..@j1033
		xor	cl,cl
		jmp	..@j1024
..@j1033:
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
		jmp	..@j1035
..@j1031:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		jne	..@j1037
		test	rsi,rsi
		je	..@j1039
		mov	rax,qword [rbp-16]
		add	rax,3
		cmp	rax,rsi
		jna	..@j1039
		xor	cl,cl
		jmp	..@j1024
..@j1039:
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
		jmp	..@j1041
..@j1037:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		jne	..@j1043
		test	rsi,rsi
		je	..@j1045
		mov	rax,qword [rbp-16]
		add	rax,2
		cmp	rax,rsi
		jna	..@j1045
		xor	cl,cl
		jmp	..@j1024
..@j1045:
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
		jmp	..@j1047
..@j1043:
		mov	rax,qword [rbp-16]
		movzx	eax,byte [rax]
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],1
..@j1047:
..@j1041:
..@j1035:
		movzx	eax,byte [rbp-24]
		add	qword [rbp-16],rax
		mov	cl,1
..@j1024:
		test	cl,cl
		je	..@j1049
; [136] result := result + utf16encode(codepoint);
%LINE 136+0
		mov	r12d,dword [rbp-20]
		cmp	r12d,65535
		jna	..@j1051
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
		jmp	..@j1052
..@j1051:
		movzx	edx,r12w
		lea	rcx,[rbp-40]
		call	fpc_uchar_to_unicodestr
..@j1052:
		mov	r8,qword [rbp-40]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
; [137] inc(i, size);
%LINE 137+0
		movzx	eax,byte [rbp-24]
		add	edi,eax
		jmp	..@j1053
..@j1049:
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
..@j1053:
..@j1022:
%LINE 132+0
		movsxd	rax,edi
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1054
		mov	rdx,qword [rdx-8]
..@j1054:
		cmp	rax,rdx
		jle	..@j1021
..@j1017:
%LINE 128+0
		nop
..@j1016:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000274
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
..@c571:

SECTION .text
SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000275:
..@c575:
; [161] end;
%LINE 161+0
		push	rbp
..@c577:
..@c578:
		mov	rbp,rcx
..@c579:
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
..@c576:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING:
..@c580:
; Temps allocated between rbp-56 and rbp-16
		push	rbp
..@c582:
..@c583:
		mov	rbp,rsp
..@c584:
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
..@j1063:
		nop
..@j1059:
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
		jmp	..@j1065
..@j1064:
; [158] result := result + utf16encode(codepoint);
%LINE 158+0
		mov	esi,dword [rbp-12]
		cmp	esi,65535
		jna	..@j1068
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
		jmp	..@j1069
..@j1068:
		movzx	edx,si
		lea	rcx,[rbp-24]
		call	fpc_uchar_to_unicodestr
..@j1069:
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
; [159] inc(i, size);
%LINE 159+0
		movzx	eax,byte [rbp-16]
		add	edi,eax
..@j1065:
%LINE 156+0
		mov	rax,qword [rbp-8]
		cmp	byte [rax],0
		jne	..@j1072
		xor	cl,cl
		jmp	..@j1070
..@j1072:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		jne	..@j1074
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
		jmp	..@j1075
..@j1074:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		jne	..@j1077
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
		jmp	..@j1078
..@j1077:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		jne	..@j1080
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
		jmp	..@j1081
..@j1080:
		mov	rax,qword [rbp-8]
		movzx	eax,byte [rax]
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],1
..@j1081:
..@j1078:
..@j1075:
		movzx	eax,byte [rbp-16]
		add	qword [rbp-8],rax
		mov	cl,1
..@j1070:
		test	cl,cl
		jne	..@j1064
..@j1061:
%LINE 152+0
		nop
..@j1060:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000275
%LINE 161+0
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c581:

SECTION .text
SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000276:
..@c585:
; [185] end;
%LINE 185+0
		push	rbp
..@c587:
..@c588:
		mov	rbp,rcx
..@c589:
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
..@c586:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING:
..@c590:
; Temps allocated between rbp-80 and rbp-24
		push	rbp
..@c592:
..@c593:
		mov	rbp,rsp
..@c594:
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
..@j1090:
		nop
..@j1086:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [170] curend := @utf16[1]+(length(utf16)*2);
%LINE 170+0
		mov	rdx,rax
		test	rax,rax
		je	..@j1091
		mov	rdx,qword [rdx-8]
..@j1091:
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
		jmp	..@j1093
..@j1092:
; [174] cur := @utf16[i];
%LINE 174+0
		mov	rdx,qword [rbp-8]
		movsxd	rax,edi
		lea	rax,[rdx+rax*2-2]
		mov	qword [rbp-16],rax
; [175] if utf16decode(cur, curend, codepoint, size) then begin
%LINE 175+0
		test	rsi,rsi
		je	..@j1097
		cmp	rsi,qword [rbp-16]
		jnbe	..@j1097
		xor	cl,cl
		jmp	..@j1095
..@j1097:
		mov	rax,qword [rbp-16]
		cmp	word [rax],0
		jne	..@j1100
		xor	cl,cl
		jmp	..@j1095
..@j1100:
		mov	rax,qword [rbp-16]
		movzx	eax,word [rax]
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],1
		cmp	dword [rbp-20],55296
		jnae	..@j1102
		cmp	dword [rbp-20],56319
		jnbe	..@j1102
		test	rsi,rsi
		je	..@j1104
		mov	rax,qword [rbp-16]
		add	rax,2
		cmp	rsi,rax
		jnae	..@j1106
		movzx	eax,word [rax]
		cmp	eax,56320
		jnae	..@j1106
		cmp	eax,57343
		jnbe	..@j1106
..@j1104:
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
..@j1106:
..@j1102:
		movzx	eax,byte [rbp-24]
		shl	rax,1
		add	qword [rbp-16],rax
		mov	cl,1
..@j1095:
		test	cl,cl
		je	..@j1112
; [177] result := result + utf8encode(codepoint);
%LINE 177+0
		mov	r12d,dword [rbp-20]
		cmp	r12d,127
		jnbe	..@j1114
		xor	r8d,r8d
		movzx	edx,r12b
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		jmp	..@j1115
..@j1114:
		cmp	r12d,2047
		jnbe	..@j1117
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
		jmp	..@j1118
..@j1117:
		cmp	r12d,65535
		jnbe	..@j1120
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
		jmp	..@j1121
..@j1120:
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
..@j1121:
..@j1118:
..@j1115:
		mov	r8,qword [rbp-40]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [178] inc(i, size);
%LINE 178+0
		movzx	eax,byte [rbp-24]
		add	edi,eax
		jmp	..@j1122
..@j1112:
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
..@j1122:
..@j1093:
%LINE 173+0
		movsxd	rax,edi
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1123
		mov	rdx,qword [rdx-8]
..@j1123:
		cmp	rax,rdx
		jle	..@j1092
..@j1088:
%LINE 169+0
		nop
..@j1087:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000276
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
..@c591:

SECTION .text
SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000277:
..@c595:
; [202] end;
%LINE 202+0
		push	rbp
..@c597:
..@c598:
		mov	rbp,rcx
..@c599:
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
..@c596:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING:
..@c600:
; Temps allocated between rbp-56 and rbp-16
		push	rbp
..@c602:
..@c603:
		mov	rbp,rsp
..@c604:
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
..@j1132:
		nop
..@j1128:
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
		jmp	..@j1134
..@j1133:
; [199] result := result + utf8encode(codepoint);
%LINE 199+0
		mov	esi,dword [rbp-12]
		cmp	esi,127
		jnbe	..@j1137
		xor	r8d,r8d
		movzx	edx,sil
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		jmp	..@j1138
..@j1137:
		cmp	esi,2047
		jnbe	..@j1140
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
		jmp	..@j1141
..@j1140:
		cmp	esi,65535
		jnbe	..@j1143
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
		jmp	..@j1144
..@j1143:
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
..@j1144:
..@j1141:
..@j1138:
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [200] inc(i, size);
%LINE 200+0
		movzx	eax,byte [rbp-16]
		add	edi,eax
..@j1134:
%LINE 197+0
		mov	rax,qword [rbp-8]
		cmp	word [rax],0
		jne	..@j1147
		xor	cl,cl
		jmp	..@j1145
..@j1147:
		mov	rax,qword [rbp-8]
		movzx	eax,word [rax]
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],1
		cmp	dword [rbp-12],55296
		jnae	..@j1149
		cmp	dword [rbp-12],56319
		jnbe	..@j1149
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
..@j1149:
		movzx	eax,byte [rbp-16]
		shl	rax,1
		add	qword [rbp-8],rax
		mov	cl,1
..@j1145:
		test	cl,cl
		jne	..@j1133
..@j1130:
%LINE 193+0
		nop
..@j1129:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000277
%LINE 202+0
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c601:

SECTION .text
	GLOBAL SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN
SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN:
..@c605:
; Var $result located in register al
; Var u located in register ecx
; [205] begin
%LINE 205+0
; [206] result := ((u <= 127) and ((u = 10) or (u = 13) or (u = $85))) or ((u = $2028) or (u = $2029));
%LINE 206+0
		cmp	ecx,127
		jnbe	..@j1154
		cmp	ecx,10
		je	..@j1155
		cmp	ecx,13
		je	..@j1155
		cmp	ecx,133
		je	..@j1155
..@j1154:
		cmp	ecx,8232
		je	..@j1155
		cmp	ecx,8233
		jne	..@j1160
; Var $result located in register al
..@j1155:
		mov	al,1
		ret
..@j1160:
		xor	al,al
; [207] end;
%LINE 207+0
		ret
..@c606:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64
SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64:
..@c607:
; [214] begin
%LINE 214+0
		lea	rsp,[rsp-24]
..@c609:
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
		jmp	..@j1168
..@j1167:
; [218] inc(result);
%LINE 218+0
		inc	rax
..@j1168:
%LINE 217+0
		mov	rdx,qword [rsp]
		cmp	byte [rdx],0
		jne	..@j1172
		xor	r8b,r8b
		jmp	..@j1170
..@j1172:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,240
		cmp	dl,240
		jne	..@j1174
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
		jmp	..@j1175
..@j1174:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,224
		cmp	dl,224
		jne	..@j1177
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
		jmp	..@j1178
..@j1177:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,192
		cmp	dl,192
		jne	..@j1180
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
		jmp	..@j1181
..@j1180:
		mov	rdx,qword [rsp]
		movzx	edx,byte [rdx]
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],1
..@j1181:
..@j1178:
..@j1175:
		movzx	edx,byte [rsp+12]
		add	qword [rsp],rdx
		mov	r8b,1
..@j1170:
		test	r8b,r8b
		jne	..@j1167
; [220] end;
%LINE 220+0
		lea	rsp,[rsp+24]
		ret
..@c608:

SECTION .text
SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER:
..@c610:
; [ustrings.inc]
; [41] begin
%LINE 41+0 ustrings.inc
		push	rbx
		lea	rsp,[rsp-48]
..@c612:
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
..@c611:

SECTION .text
	GLOBAL fpc_unicodestr_assign
fpc_unicodestr_assign:
	GLOBAL FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
..@c613:
; [52] begin
%LINE 52+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c615:
		mov	rbx,rcx
; Var s1 located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [53] if s2 <> nil then
%LINE 53+0
		test	rdx,rdx
		je	..@j1187
; [54] if punicoderec(s2-ufirstoff)^.ref > 0 then
%LINE 54+0
		cmp	qword [rsi-16],0
		jng	..@j1189
; [55] inc(punicoderec(s2-ufirstoff)^.ref);
%LINE 55+0
		inc	qword [rsi-16]
..@j1189:
..@j1187:
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
..@c614:

SECTION .text
SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$00000279:
..@c616:
; [77] end;
%LINE 77+0
		push	rbp
..@c618:
..@c619:
		mov	rbp,rcx
..@c620:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [64] begin
%LINE 64+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c617:

SECTION .text
	GLOBAL fpc_unicodestr_setlength
fpc_unicodestr_setlength:
	GLOBAL FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
..@c621:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c623:
..@c624:
		mov	rbp,rsp
..@c625:
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
..@j1198:
		nop
..@j1194:
; [65] if l = 0 then begin
%LINE 65+0
		test	rsi,rsi
		jne	..@j1200
; [66] fpc_unicodestr_decr_ref(pointer(s));
%LINE 66+0
		mov	rcx,rbx
		call	fpc_unicodestr_decr_ref
; [67] exit;
%LINE 67+0
		jmp	..@j1196
..@j1200:
; [69] pointer(u) := newunicodestring(l);
%LINE 69+0
		mov	rcx,rsi
		call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
		mov	qword [rbp-8],rax
; [70] if pointer(s) <> nil then begin
%LINE 70+0
		cmp	qword [rbx],0
		je	..@j1202
; [71] n := length(s)+1; // inc terminator
%LINE 71+0
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j1203
		mov	rax,qword [rax-8]
..@j1203:
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
..@j1202:
; [76] s := u;
%LINE 76+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_unicodestr_assign
..@j1196:
%LINE 64+0
		nop
..@j1195:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$00000279
%LINE 77+0
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c622:

SECTION .text
SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000027A:
..@c626:
; [95] end;
%LINE 95+0
		push	rbp
..@c628:
..@c629:
		mov	rbp,rcx
..@c630:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [82] begin
%LINE 82+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c627:

SECTION .text
	GLOBAL fpc_unicodestr_concat
fpc_unicodestr_concat:
..@c631:
; Temps allocated between rbp-32 and rbp-8
		push	rbp
..@c633:
..@c634:
		mov	rbp,rsp
..@c635:
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
..@j1214:
		nop
..@j1210:
; [83] if s1 = '' then begin
%LINE 83+0
		test	rsi,rsi
		jne	..@j1216
; [84] dests := s2;
%LINE 84+0
		mov	rcx,rbx
		mov	rdx,rdi
		call	fpc_unicodestr_assign
; [85] exit;
%LINE 85+0
		jmp	..@j1212
..@j1216:
; [87] if s2 = '' then begin
%LINE 87+0
		test	rdi,rdi
		jne	..@j1218
; [88] dests := s1;
%LINE 88+0
		mov	rcx,rbx
		mov	rdx,rsi
		call	fpc_unicodestr_assign
; [89] exit;
%LINE 89+0
		jmp	..@j1212
..@j1218:
; [91] setlength(u, length(s1)+length(s2));
%LINE 91+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1219
		mov	rax,qword [rax-8]
..@j1219:
		mov	rdx,rdi
		test	rdi,rdi
		je	..@j1220
		mov	rdx,qword [rdx-8]
..@j1220:
		add	rdx,rax
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_setlength
; [92] move(pointer(s1)^, pointer(u)^, length(s1)*2);
%LINE 92+0
		mov	r8,rsi
		test	rsi,rsi
		je	..@j1221
		mov	r8,qword [r8-8]
..@j1221:
		shl	r8,1
		mov	rdx,qword [rbp-8]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [93] move(pointer(s2)^, (pointer(u)+(length(s1)*2))^, length(s2)*2);
%LINE 93+0
		mov	rdx,rsi
		test	rsi,rsi
		je	..@j1222
		mov	rdx,qword [rdx-8]
..@j1222:
		shl	rdx,1
		add	rdx,qword [rbp-8]
		mov	r8,rdi
		test	rdi,rdi
		je	..@j1223
		mov	r8,qword [r8-8]
..@j1223:
		shl	r8,1
		mov	rcx,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [94] dests := u;
%LINE 94+0
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_unicodestr_assign
..@j1212:
%LINE 82+0
		nop
..@j1211:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000027A
%LINE 95+0
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c632:

SECTION .text
	GLOBAL fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
..@c636:
; Temps allocated between rbp-40 and rbp+0
; [101] begin
%LINE 101+0
		push	rbp
..@c638:
..@c639:
		mov	rbp,rsp
..@c640:
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
		jnge	..@j1227
		mov	r12d,-1
..@j1228:
		inc	r12d
; [104] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then l := l + length(sarr[i]);
%LINE 104+0
		movsxd	rcx,r12d
%LINE 101+0
		mov	rcx,qword [rsi+rcx*8]
%LINE 104+0
		test	rcx,rcx
		je	..@j1232
		test	rcx,rcx
		je	..@j1232
		movsxd	rcx,r12d
		mov	rcx,qword [rsi+rcx*8]
		test	rcx,rcx
		je	..@j1234
		mov	rcx,qword [rcx-8]
..@j1234:
		add	rdx,rcx
..@j1232:
%LINE 103+0
		cmp	eax,r12d
		jnle	..@j1228
..@j1227:
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
		jnge	..@j1236
		mov	r12d,-1
..@j1237:
		inc	r12d
; [109] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then begin
%LINE 109+0
		movsxd	rax,r12d
%LINE 101+0
		mov	rax,qword [rsi+rax*8]
%LINE 109+0
		test	rax,rax
		je	..@j1241
		test	rax,rax
		je	..@j1241
; [110] move(pointer(sarr[i])^, pointer(@dests[p])^, length(sarr[i]));
%LINE 110+0
		movsxd	rax,r12d
		mov	r8,qword [rsi+rax*8]
		test	r8,r8
		je	..@j1243
		mov	r8,qword [r8-8]
..@j1243:
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
		je	..@j1244
		mov	rax,qword [rax-8]
..@j1244:
		add	r13,rax
..@j1241:
%LINE 108+0
		cmp	edi,r12d
		jnle	..@j1237
..@j1236:
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
..@c637:

SECTION .text
	GLOBAL fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
	GLOBAL FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
..@c641:
; [117] begin
%LINE 117+0
		mov	rax,rcx
; Var s located in register rax
; [118] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
%LINE 118+0
		test	rcx,rcx
		je	..@j1245
		cmp	qword [rax-16],0
		jl	..@j1245
; Var s located in register rax
; [119] inc(punicoderec(s-ufirstoff)^.ref);
%LINE 119+0
		inc	qword [rax-16]
..@j1245:
; [120] end;
%LINE 120+0
		ret
..@c642:

SECTION .text
	GLOBAL fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
	GLOBAL FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
..@c643:
; [123] begin
%LINE 123+0
		push	rbx
		lea	rsp,[rsp-32]
..@c645:
		mov	rbx,rcx
; Var s located in register rbx
		mov	rax,qword [rbx]
; [124] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
%LINE 124+0
		test	rax,rax
		je	..@j1250
		cmp	qword [rax-16],0
		jl	..@j1250
; [125] dec(punicoderec(s-ufirstoff)^.ref);
%LINE 125+0
		mov	rax,qword [rbx]
		dec	qword [rax-16]
; [126] if punicoderec(s-ufirstoff)^.ref <= 0 then FreeMem(s-ufirstoff);
%LINE 126+0
		mov	rax,qword [rbx]
		cmp	qword [rax-16],0
		jnle	..@j1256
		mov	rax,qword [rbx]
		lea	rcx,[rax-24]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1256:
; [127] s := nil;
%LINE 127+0
		mov	qword [rbx],0
..@j1250:
; [128] end;
%LINE 128+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c644:

SECTION .text
SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000027B:
..@c646:
; [137] end;
%LINE 137+0
		push	rbp
..@c648:
..@c649:
		mov	rbp,rcx
..@c650:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [133] begin
%LINE 133+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c647:

SECTION .text
	GLOBAL fpc_unicodestr_unique
fpc_unicodestr_unique:
	GLOBAL FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
..@c651:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c653:
..@c654:
		mov	rbp,rsp
..@c655:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var $result located in register rax
; Var u located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var s located in register rbx
		mov	qword [rbp-8],0
..@j1265:
		nop
..@j1261:
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
..@j1263:
%LINE 133+0
		nop
..@j1262:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000027B
%LINE 137+0
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c652:

SECTION .text
	GLOBAL fpc_unicodestr_copy
fpc_unicodestr_copy:
..@c656:
; [140] begin
%LINE 140+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c658:
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
		jnl	..@j1269
		xor	edi,edi
..@j1269:
; [143] if (size > length(s)) or (size+index > length(s)) then size := length(s)-index;
%LINE 143+0
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1270
		mov	rax,qword [rax-8]
..@j1270:
		cmp	rax,r12
		jl	..@j1271
		lea	rdx,[r12+rdi]
		cmp	rdx,rax
		jng	..@j1273
..@j1271:
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1274
		mov	rax,qword [rax-8]
..@j1274:
		sub	rax,rdi
		mov	r12,rax
..@j1273:
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
..@c657:

SECTION .text
	GLOBAL fpc_uchar_to_unicodestr
fpc_uchar_to_unicodestr:
..@c659:
; [149] begin
%LINE 149+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c661:
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
..@c660:

SECTION .text
	GLOBAL fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
..@c662:
; [155] begin
%LINE 155+0
		lea	rsp,[rsp-40]
..@c664:
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
..@c663:

SECTION .text
	GLOBAL fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
..@c665:
; [162] begin
%LINE 162+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c667:
; Var p located at rsp+32, size=OS_64
; Var s located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rsp+32],rdx
; [163] if p = nil then exit('');
%LINE 163+0
		test	rdx,rdx
		jne	..@j1282
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
		jmp	..@j1279
..@j1282:
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
..@j1279:
; [167] end;
%LINE 167+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c666:

SECTION .text
	GLOBAL fpc_widestr_to_unicodestr
fpc_widestr_to_unicodestr:
..@c668:
; [170] begin
%LINE 170+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c670:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [171] setlength(result, length(s2));
%LINE 171+0
		test	rdx,rdx
		je	..@j1285
		mov	edx,dword [rdx-4]
		shr	rdx,1
..@j1285:
		mov	rcx,rbx
		call	fpc_unicodestr_setlength
; [172] move(pointer(s2)^, pointer(result)^, length(s2)*2);
%LINE 172+0
		mov	r8,rsi
		test	rsi,rsi
		je	..@j1286
		mov	r8d,dword [r8-4]
		shr	r8,1
..@j1286:
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
..@c669:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$LONGINT
SYSTEM_$$_INCLOCKED$LONGINT:
..@c701:
; [misc.inc]
; [105] begin
%LINE 105+0 misc.inc
		push	rbx
		lea	rsp,[rsp-32]
..@c703:
		mov	rbx,rcx
; Var target located in register rbx
; [106] if IsMultithread then AtomicIncrement(target) else inc(target);
%LINE 106+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1302
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
		jmp	..@j1303
..@j1302:
		inc	dword [rbx]
..@j1303:
; [107] end;
%LINE 107+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c702:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$INT64
SYSTEM_$$_INCLOCKED$INT64:
..@c704:
; [110] begin
%LINE 110+0
		push	rbx
		lea	rsp,[rsp-32]
..@c706:
		mov	rbx,rcx
; Var target located in register rbx
; [111] if IsMultithread then AtomicIncrement(target) else inc(target);
%LINE 111+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1307
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
		jmp	..@j1308
..@j1307:
		inc	qword [rbx]
..@j1308:
; [112] end;
%LINE 112+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c705:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN:
..@c707:
; [115] begin
%LINE 115+0
		push	rbx
		lea	rsp,[rsp-32]
..@c709:
; Var $result located in register al
		mov	rbx,rcx
; Var target located in register rbx
; [116] if IsMultithread then
%LINE 116+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1312
; [117] result := AtomicDecrement(target) = 0
%LINE 117+0
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
		test	eax,eax
		sete	al
		jmp	..@j1313
..@j1312:
; [119] dec(target);
%LINE 119+0
		dec	dword [rbx]
; [120] result := target = 0;
%LINE 120+0
		cmp	dword [rbx],0
		sete	al
..@j1313:
; [122] end;
%LINE 122+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c708:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN
SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN:
..@c710:
; [125] begin
%LINE 125+0
		push	rbx
		lea	rsp,[rsp-32]
..@c712:
; Var $result located in register al
		mov	rbx,rcx
; Var target located in register rbx
; [126] if IsMultithread then
%LINE 126+0
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1317
; [127] result := AtomicDecrement(target) = 0
%LINE 127+0
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
		test	rax,rax
		sete	al
		jmp	..@j1318
..@j1317:
; [129] dec(target);
%LINE 129+0
		dec	qword [rbx]
; [130] result := target = 0;
%LINE 130+0
		cmp	qword [rbx],0
		sete	al
..@j1318:
; [132] end;
%LINE 132+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c711:

SECTION .text
	GLOBAL SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD
SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD:
..@c713:
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
..@c714:

SECTION .text
	GLOBAL SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64:
..@c715:
; [182] begin
%LINE 182+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c717:
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
		je	..@j1323
		mov	rax,qword [rax-8]
..@j1323:
		mov	rdx,rbx
		test	rbx,rbx
		je	..@j1324
		mov	rdx,qword [rdx-8]
..@j1324:
		sub	rax,rdx
		lea	r12,[rax+1]
		cmp	r12,r8
		jnge	..@j1326
		lea	r13,[r8-1]
..@j1327:
		inc	r13
; [185] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
%LINE 185+0
		mov	r8,rbx
		test	rbx,rbx
		je	..@j1330
		mov	r8,qword [r8-8]
..@j1330:
		lea	rdx,[rsi+r13*1-1]
		mov	rcx,rbx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1332
; [186] exit(i);
%LINE 186+0
		mov	rdi,r13
		jmp	..@j1321
..@j1332:
%LINE 184+0
		cmp	r12,r13
		jnle	..@j1327
..@j1326:
..@j1321:
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
..@c716:

SECTION .text
	GLOBAL SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64
SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64:
..@c718:
; [192] begin
%LINE 192+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c720:
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
; [195] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
%LINE 195+0
		mov	r8,rbx
		test	rbx,rbx
		je	..@j1342
		mov	r8,qword [r8-8]
..@j1342:
		lea	rdx,[rsi+r13*2-2]
		mov	rcx,rbx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1344
; [196] exit(i);
%LINE 196+0
		mov	rdi,r13
		jmp	..@j1333
..@j1344:
%LINE 194+0
		cmp	r12,r13
		jnle	..@j1339
..@j1338:
..@j1333:
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
..@c719:

SECTION .text
SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000027C:
..@c721:
; [202] end;
%LINE 202+0
		push	rbp
..@c723:
..@c724:
		mov	rbp,rcx
..@c725:
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
..@c722:

SECTION .text
	GLOBAL SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64
SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64:
..@c726:
; Temps allocated between rbp-56 and rbp+0
		push	rbp
..@c728:
..@c729:
		mov	rbp,rsp
..@c730:
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
..@j1353:
		nop
..@j1349:
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
		je	..@j1355
		mov	rax,qword [rax-8]
..@j1355:
		mov	rdx,qword [rbp-24]
		test	rdx,rdx
		je	..@j1356
		mov	rdx,qword [rdx-8]
..@j1356:
		sub	rax,rdx
		lea	rdi,[rax+1]
		cmp	rdi,rsi
		jnge	..@j1358
		dec	rsi
..@j1359:
		inc	rsi
		mov	rcx,qword [rbp-24]
		mov	r8,qword [rbp-24]
		test	r8,r8
		je	..@j1362
		mov	r8,qword [r8-8]
..@j1362:
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+rsi*2-2]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1364
		mov	rbx,rsi
		jmp	..@j1354
..@j1364:
		cmp	rdi,rsi
		jnle	..@j1359
..@j1358:
..@j1354:
..@j1351:
%LINE 200+0
		nop
..@j1350:
		mov	rcx,rbp
		call	SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000027C
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
..@c727:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$QWORD$$POINTER
SYSTEM_$$_GETMEM$QWORD$$POINTER:
..@c731:
; [heap.inc]
; [53] begin
%LINE 53+0 heap.inc
		lea	rsp,[rsp-40]
..@c733:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [54] result := xgetmem(size);
%LINE 54+0
		call	XMM_$$_XGETMEM$QWORD$$POINTER
; Var $result located in register rax
; [55] end;
%LINE 55+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c732:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER:
..@c734:
; [58] begin
%LINE 58+0
		push	rbx
		lea	rsp,[rsp-32]
..@c736:
; Var $result located in register rax
		mov	rbx,rcx
; Var p located in register rbx
		mov	rcx,rdx
; Var size located in register rcx
; Var size located in register rcx
; [59] result := xgetmem(size);
%LINE 59+0
		call	XMM_$$_XGETMEM$QWORD$$POINTER
; Var $result located in register rax
; Var $result located in register rax
; [60] p := result;
%LINE 60+0
		mov	qword [rbx],rax
; [61] end;
%LINE 61+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c735:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER$$QWORD
SYSTEM_$$_FREEMEM$POINTER$$QWORD:
..@c737:
; [64] begin
%LINE 64+0
		lea	rsp,[rsp-40]
..@c739:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [65] result := xfreemem(p);
%LINE 65+0
		call	_$dll$rtllib$xfreemem
; Var $result located in register rax
; [66] end;
%LINE 66+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c738:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD
SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD:
..@c740:
; [69] begin
%LINE 69+0
		lea	rsp,[rsp-40]
..@c742:
; Var $result located in register rax
; Var p located in register rcx
; Var size located in register rdx
; Var p located in register rcx
; [70] result := xfreemem(p);
%LINE 70+0
		call	_$dll$rtllib$xfreemem
; Var $result located in register rax
; [71] end;
%LINE 71+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c741:

SECTION .text
	GLOBAL SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
SYSTEM_$$_ALLOCMEM$QWORD$$POINTER:
..@c743:
; [74] begin
%LINE 74+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c745:
; Var $result located in register rax
		mov	rsi,rcx
; Var size located in register rsi
; Var size located in register rsi
; [75] result := xallocmem(size);
%LINE 75+0
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	rbx,rax
		test	rax,rax
		je	..@j1375
		mov	rdx,rsi
		xor	r8d,r8d
		mov	rcx,rbx
		call	_$dll$kernel32$RtlFillMemory
..@j1375:
		mov	rax,rbx
; [76] end;
%LINE 76+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c744:

SECTION .text
	GLOBAL SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER:
..@c746:
; [79] begin
%LINE 79+0
		lea	rsp,[rsp-40]
..@c748:
; Var $result located in register rax
; Var p located in register rcx
; Var size located in register rdx
; Var size located in register rdx
; [80] result := xreallocmem(p, size);
%LINE 80+0
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
; Var $result located in register rax
; [81] end;
%LINE 81+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c747:

SECTION .text
	GLOBAL SYSTEM_$$_MEMSIZE$POINTER$$QWORD
SYSTEM_$$_MEMSIZE$POINTER$$QWORD:
..@c749:
; [84] begin
%LINE 84+0
		lea	rsp,[rsp-40]
..@c751:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [85] result := xmemsize(p);
%LINE 85+0
		call	XMM_$$_XMEMSIZE$POINTER$$QWORD
; Var $result located in register rax
; [86] end;
%LINE 86+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c750:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$QWORD
SYSTEM_$$_MOVE$formal$formal$QWORD:
..@c752:
; [91] begin
%LINE 91+0
		push	rbx
		lea	rsp,[rsp-32]
..@c754:
		mov	rax,rcx
; Var src located in register rax
		mov	rcx,rdx
; Var dst located in register rcx
		mov	rbx,r8
; Var count located in register rbx
; [92] xmovemem(@src, @dst, count);
%LINE 92+0
		mov	rdx,rax
; Var count located in register rbx
		mov	r8,rbx
		call	_$dll$kernel32$RtlMoveMemory
; Var count located in register rbx
		mov	rax,rbx
; [93] end;
%LINE 93+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c753:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c755:
; [96] begin
%LINE 96+0
		push	rbx
		lea	rsp,[rsp-32]
..@c757:
		mov	rax,rcx
; Var x located in register rax
		mov	rbx,rdx
; Var count located in register rbx
; Var value located in register r8b
; [97] xfillmem(@x, count, ord(value));
%LINE 97+0
		mov	rcx,rax
		movzx	r8d,r8b
; Var count located in register rbx
		mov	rdx,rbx
		call	_$dll$kernel32$RtlFillMemory
; Var count located in register rbx
		mov	rax,rbx
; [98] end;
%LINE 98+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c756:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE:
..@c758:
; [101] begin
%LINE 101+0
		push	rbx
		lea	rsp,[rsp-32]
..@c760:
		mov	rax,rcx
; Var x located in register rax
		mov	rbx,rdx
; Var count located in register rbx
; Var value located in register r8b
; [102] xfillmem(@x, count, value);
%LINE 102+0
		mov	rcx,rax
		movzx	r8d,r8b
; Var count located in register rbx
		mov	rdx,rbx
		call	_$dll$kernel32$RtlFillMemory
; Var count located in register rbx
		mov	rax,rbx
; [103] end;
%LINE 103+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c759:

SECTION .text
	GLOBAL SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE
SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE:
..@c761:
; [106] begin
%LINE 106+0
		push	rbx
		lea	rsp,[rsp-32]
..@c763:
		mov	rax,rcx
; Var x located in register rax
		mov	rbx,rdx
; Var count located in register rbx
; Var value located in register r8b
; [107] xfillmem(@x, count, value);
%LINE 107+0
		mov	rcx,rax
		movzx	r8d,r8b
; Var count located in register rbx
		mov	rdx,rbx
		call	_$dll$kernel32$RtlFillMemory
; Var count located in register rbx
		mov	rax,rbx
; [108] end;
%LINE 108+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c762:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64
SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64:
..@c764:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var b located in register r8b
; [113] begin
%LINE 113+0
; Var $result located in register rax
; [114] result := -1;
%LINE 114+0
		mov	rax,-1
; Var i located in register r9
; [115] i := 0;
%LINE 115+0
		xor	r9,r9
; [116] while (i < len) or (len = -1){len may not be given} do begin
%LINE 116+0
		jmp	..@j1398
..@j1397:
; [117] if pbyte(pointer(buf)+i)^ = b then exit(i);
%LINE 117+0
		mov	r10,qword [rcx]
		add	r10,r9
		cmp	r8b,byte [r10]
		jne	..@j1401
		mov	rax,r9
		ret
..@j1401:
; [118] inc(i);
%LINE 118+0
		inc	r9
..@j1398:
%LINE 116+0
		cmp	rdx,r9
		jg	..@j1397
		cmp	rdx,-1
		je	..@j1397
; [120] end;
%LINE 120+0
		ret
..@c765:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64
SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64:
..@c766:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var b located in register r8b
; [125] begin
%LINE 125+0
; Var $result located in register rax
; [126] result := -1;
%LINE 126+0
		mov	rax,-1
; Var i located in register r9
; [127] i := 0;
%LINE 127+0
		xor	r9,r9
; [128] while (i < len) or (len = -1){len may not be given} do begin
%LINE 128+0
		jmp	..@j1408
..@j1407:
; [129] if pchar(pointer(buf)+i)^ = b then exit(i);
%LINE 129+0
		mov	r10,qword [rcx]
		add	r10,r9
		cmp	r8b,byte [r10]
		jne	..@j1411
		mov	rax,r9
		ret
..@j1411:
; [130] inc(i);
%LINE 130+0
		inc	r9
..@j1408:
%LINE 128+0
		cmp	rdx,r9
		jg	..@j1407
		cmp	rdx,-1
		je	..@j1407
; [132] end;
%LINE 132+0
		ret
..@c767:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64:
..@c768:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var w located in register r8w
; [137] begin
%LINE 137+0
; Var $result located in register rax
; [138] result := -1;
%LINE 138+0
		mov	rax,-1
; Var i located in register r10
; [139] i := 0;
%LINE 139+0
		xor	r10,r10
; [140] while (i < len) or (len = -1){len may not be given} do begin
%LINE 140+0
		jmp	..@j1418
..@j1417:
; [141] if pword(pointer(buf)+i)^ = w then exit(i div 2);
%LINE 141+0
		mov	r9,qword [rcx]
		add	r9,r10
		cmp	r8w,word [r9]
		jne	..@j1421
		mov	r9,r10
		mov	r11,r9
		shr	r11,63
		add	r9,r11
		sar	r9,1
		mov	rax,r9
		ret
..@j1421:
; [142] inc(i, 2);
%LINE 142+0
		add	r10,2
..@j1418:
%LINE 140+0
		cmp	rdx,r10
		jg	..@j1417
		cmp	rdx,-1
		je	..@j1417
; [144] end;
%LINE 144+0
		ret
..@c769:

SECTION .text
	GLOBAL SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64:
..@c770:
; [149] begin
%LINE 149+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c772:
; Var $result located in register rdx
; Var u located in register rax
		mov	rbx,rcx
; Var buf1 located in register rbx
		mov	rsi,rdx
; Var buf2 located in register rsi
		mov	rdi,r8
; Var len located in register rdi
; [150] u := xmemdiffat(@buf1, @buf2, len);
%LINE 150+0
		mov	rdx,rsi
		mov	rcx,rbx
; Var len located in register rdi
		mov	r8,rdi
		call	_$dll$ntdll$RtlCompareMemory
; Var u located in register rax
; [151] if u = len then result := 0 else result := pbyte(@buf1+u)^-pbyte(@buf2+u)^;
%LINE 151+0
		cmp	rdi,rax
		jne	..@j1428
		xor	edx,edx
		jmp	..@j1429
..@j1428:
		lea	rcx,[rbx+rax]
		movzx	ecx,byte [rcx]
		add	rax,rsi
		movzx	eax,byte [rax]
		sub	rcx,rax
		mov	rdx,rcx
..@j1429:
; [152] end;
%LINE 152+0
		mov	rax,rdx
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c771:

SECTION .text
	GLOBAL SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64:
..@c773:
; [155] begin
%LINE 155+0
		lea	rsp,[rsp-40]
..@c775:
; Var $result located in register rax
; Var buf1 located in register rcx
; Var buf2 located in register rdx
; Var len located in register r8
; Var len located in register r8
; [156] result := CompareByte(buf1, buf2, len);
%LINE 156+0
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
; Var $result located in register rax
; [157] end;
%LINE 157+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c774:

SECTION .text
	GLOBAL fpc_getmem
fpc_getmem:
	GLOBAL FPC_GETMEM
FPC_GETMEM:
..@c776:
; [162] begin
%LINE 162+0
		lea	rsp,[rsp-40]
..@c778:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [163] result := GetMem(size);
%LINE 163+0
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
; Var $result located in register rax
; [164] end;
%LINE 164+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c777:

SECTION .text
	GLOBAL fpc_freemem
fpc_freemem:
	GLOBAL FPC_FREEMEM
FPC_FREEMEM:
..@c779:
; [167] begin
%LINE 167+0
		lea	rsp,[rsp-40]
..@c781:
; Var p located in register rax
; Var p located in register rcx
; [168] FreeMem(p);
%LINE 168+0
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [169] end;
%LINE 169+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c780:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_SETSTRING_ANSISTR_PANSICHAR$ANSISTRING$PANSICHAR
SYSTEM_$$_FPC_SETSTRING_ANSISTR_PANSICHAR$ANSISTRING$PANSICHAR:
..@c782:
; [StrUtils.pas]
; [41] begin
%LINE 41+0 StrUtils.pas
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c784:
; Var len located in register rax
; Var i located in register r12
		mov	rbx,rcx
; Var dest located in register rbx
		mov	rsi,rdx
; Var source located in register rsi
; [42] if source = nil then
%LINE 42+0
		test	rdx,rdx
		jne	..@j1439
; [44] dest := '';
%LINE 44+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [45] Exit;
%LINE 45+0
		jmp	..@j1436
..@j1439:
; Var len located in register rdi
; [48] len := 0;
%LINE 48+0
		xor	edi,edi
; [49] while source[len] <> #0 do
%LINE 49+0
		jmp	..@j1441
..@j1440:
; [50] Inc(len);
%LINE 50+0
		inc	rdi
..@j1441:
%LINE 49+0
		cmp	byte [rsi+rdi*1],0
		jne	..@j1440
; [52] SetLength(dest, len);
%LINE 52+0
		mov	rcx,rbx
; Var len located in register rdi
		mov	rdx,rdi
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; Var len located in register rdi
; [53] for i := 1 to len do
%LINE 53+0
		cmp	rdi,1
		jnge	..@j1444
		xor	r12,r12
..@j1445:
		inc	r12
; [54] dest[i] := source[i - 1];
%LINE 54+0
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	dl,byte [rsi+r12*1-1]
		mov	byte [rax+r12*1-1],dl
%LINE 53+0
		cmp	rdi,r12
		jnle	..@j1445
..@j1444:
..@j1436:
; [55] end;
%LINE 55+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c783:

SECTION .text
SYSTEM$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$0000027D:
..@c785:
; [96] end;
%LINE 96+0
		push	rbp
..@c787:
..@c788:
		mov	rbp,rcx
..@c789:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [63] begin
%LINE 63+0
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c786:

SECTION .text
	GLOBAL SYSTEM_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
SYSTEM_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
..@c790:
; Temps allocated between rbp-72 and rbp-8
		push	rbp
..@c792:
..@c793:
		mov	rbp,rsp
..@c794:
		lea	rsp,[rsp-112]
		mov	qword [rbp-72],rbx
		mov	qword [rbp-64],rdi
		mov	qword [rbp-56],rsi
		mov	qword [rbp-48],r12
		mov	qword [rbp-40],r13
		mov	qword [rbp-32],r14
		mov	qword [rbp-24],r15
; Var i located in register r13d
; Var StartPos located in register edi
; Var OldLen located in register r12d
; Var ResultStr located at rbp-8, size=OS_64
		mov	r15,rcx
; Var $result located in register r15
		mov	r14,rdx
; Var S located in register r14
		mov	rbx,r8
; Var OldPattern located in register rbx
		mov	rsi,r9
; Var NewPattern located in register rsi
		mov	eax,dword [rbp+48]
; Var Flags located in register eax
		mov	qword [rbp-8],0
		mov	qword [rbp-16],0
..@j1456:
		nop
..@j1452:
; [64] ResultStr := '';
%LINE 64+0
		lea	rcx,[rbp-8]
		xor	edx,edx
		call	fpc_ansistr_assign
; [65] StartPos := 1;
%LINE 65+0
		mov	edi,1
; [66] OldLen := Length(OldPattern);
%LINE 66+0
		mov	rax,rbx
		test	rbx,rbx
		je	..@j1457
		mov	rax,qword [rax-8]
..@j1457:
		mov	r12d,eax
; [68] if OldLen = 0 then
%LINE 68+0
		test	eax,eax
		jne	..@j1459
; [70] Exit(S);
%LINE 70+0
		mov	rcx,r15
		mov	rdx,r14
		call	fpc_ansistr_assign
		jmp	..@j1454
..@j1459:
; [73] i := Pos(OldPattern, S);
%LINE 73+0
		mov	rdx,r14
		mov	rcx,rbx
		mov	r8d,1
		call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
		mov	r13d,eax
; [75] while i > 0 do
%LINE 75+0
		jmp	..@j1461
..@j1460:
; [78] ResultStr := ResultStr + Copy(S, StartPos, i - StartPos);
%LINE 78+0
		movsxd	r9,r13d
		movsxd	rax,edi
		sub	r9,rax
		movsxd	r8,edi
		mov	rdx,r14
		lea	rcx,[rbp-16]
		call	fpc_ansistr_copy
		mov	r8,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-8]
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [81] ResultStr := ResultStr + NewPattern;
%LINE 81+0
		mov	r8,rsi
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-8]
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [84] StartPos := i + OldLen;
%LINE 84+0
		lea	edi,[r12d+r13d]
; [87] i := Pos(OldPattern, Copy(S, StartPos, Length(S) - StartPos + 1));
%LINE 87+0
		mov	rax,r14
		test	r14,r14
		je	..@j1463
		mov	rax,qword [rax-8]
..@j1463:
		movsxd	rdx,edi
		sub	rax,rdx
		lea	r9,[rax+1]
		movsxd	r8,edi
		mov	rdx,r14
		lea	rcx,[rbp-16]
		call	fpc_ansistr_copy
		mov	rdx,qword [rbp-16]
		mov	rcx,rbx
		mov	r8d,1
		call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
		mov	r13d,eax
; [88] if i > 0 then
%LINE 88+0
		test	r13d,r13d
		jng	..@j1465
; [89] i := i + StartPos - 1;
%LINE 89+0
		lea	eax,[edi+r13d]
		dec	eax
		mov	r13d,eax
..@j1465:
..@j1461:
%LINE 75+0
		test	r13d,r13d
		jg	..@j1460
; [93] ResultStr := ResultStr + Copy(S, StartPos, Length(S) - StartPos + 1);
%LINE 93+0
		mov	rax,r14
		test	r14,r14
		je	..@j1466
		mov	rax,qword [rax-8]
..@j1466:
		movsxd	rdx,edi
		sub	rax,rdx
		lea	r9,[rax+1]
		movsxd	r8,edi
		mov	rdx,r14
		lea	rcx,[rbp-16]
		call	fpc_ansistr_copy
		mov	r8,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-8]
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [95] Exit(ResultStr);
%LINE 95+0
		mov	rcx,r15
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j1454:
%LINE 63+0
		nop
..@j1453:
		mov	rcx,rbp
		call	SYSTEM$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$0000027D
%LINE 96+0
		mov	rbx,qword [rbp-72]
		mov	rdi,qword [rbp-64]
		mov	rsi,qword [rbp-56]
		mov	r12,qword [rbp-48]
		mov	r13,qword [rbp-40]
		mov	r14,qword [rbp-32]
		mov	r15,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c791:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
..@c795:
; [Dialogs.pas]
; [30] begin
%LINE 30+0 Dialogs.pas
		lea	rsp,[rsp-40]
..@c797:
		mov	rdx,rcx
; Var msg located in register rax
; Var msg located in register rdx
; [31] MessageBoxA(0, msg, PChar(' '), 0);
%LINE 31+0
		xor	r9d,r9d
		lea	r8,[..@d33]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [32] end;
%LINE 32+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c796:

SECTION .text
SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000027E:
..@c798:
; [system.pas]
; [242] end;
%LINE 242+0 system.pas
		push	rbp
..@c800:
..@c801:
		mov	rbp,rcx
..@c802:
		lea	rsp,[rsp-32]
; [240] begin
%LINE 240+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c799:

SECTION .text
	GLOBAL SYSTEM_$$_MSGDEBUG$ANSISTRING
SYSTEM_$$_MSGDEBUG$ANSISTRING:
..@c803:
		push	rbp
..@c805:
..@c806:
		mov	rbp,rsp
..@c807:
		lea	rsp,[rsp-48]
; Var msg located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j1477:
		nop
..@j1473:
; [241] MessageBoxA(0, @msg[1], 'DEBUG', 0);
%LINE 241+0
		mov	rdx,qword [rbp-8]
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld34]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
..@j1475:
%LINE 240+0
		nop
..@j1474:
		mov	rcx,rbp
		call	SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000027E
%LINE 242+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c804:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c808:
; [266] begin
%LINE 266+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c810:
; Var i located in register ebx
; [267] for i := 1 to InitFinalTable.TableCount do begin
%LINE 267+0
		mov	esi,dword [INITFINAL]
		cmp	esi,1
		jnge	..@j1481
		xor	ebx,ebx
..@j1482:
		inc	ebx
; [268] if InitFinalTable.Procs[i].InitProc <> nil then begin
%LINE 268+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax],0
		je	..@j1486
; [269] InitFinalTable.Procs[i].InitProc();
%LINE 269+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax]
..@j1486:
%LINE 267+0
		cmp	esi,ebx
		jnle	..@j1482
..@j1481:
; [272] end;
%LINE 272+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c809:

SECTION .text
	GLOBAL fpc_finalizeunits
fpc_finalizeunits:
	GLOBAL FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
..@c811:
; [281] begin
%LINE 281+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c813:
; Var i located in register ebx
; [282] for i := 1 to InitFinalTable.TableCount do begin
%LINE 282+0
		mov	esi,dword [INITFINAL]
		cmp	esi,1
		jnge	..@j1490
		xor	ebx,ebx
..@j1491:
		inc	ebx
; [283] if InitFinalTable.Procs[i].FinalProc <> nil then begin
%LINE 283+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax+8],0
		je	..@j1495
; [284] InitFinalTable.Procs[i].FinalProc();
%LINE 284+0
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax+8]
..@j1495:
%LINE 282+0
		cmp	esi,ebx
		jnle	..@j1491
..@j1490:
; [287] end;
%LINE 287+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c812:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c814:
; [294] begin
%LINE 294+0
		lea	rsp,[rsp-40]
..@c816:
; [295] is_library := true;
%LINE 295+0
		mov	byte [operatingsystem_islibrary],1
; [296] fpc_initializeunits;
%LINE 296+0
		call	FPC_INITIALIZEUNITS
; [297] end;
%LINE 297+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c815:

SECTION .text
	GLOBAL SYSTEM_$$_HALT$LONGINT
SYSTEM_$$_HALT$LONGINT:
..@c817:
; [300] Begin
%LINE 300+0
		lea	rsp,[rsp-40]
..@c819:
		mov	eax,ecx
; Var err located in register eax
; [301] internal_do_exit;
%LINE 301+0
		call	FPC_DO_EXIT
; [302] end;
%LINE 302+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c818:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c820:
; [305] begin
%LINE 305+0
		lea	rsp,[rsp-40]
..@c822:
; [306] fpc_finalizeunits;
%LINE 306+0
		call	FPC_FINALIZEUNITS
; [307] ExitProcess(ExitCode);
%LINE 307+0
		mov	ecx,dword [operatingsystem_result]
		call	_$dll$kernel32$ExitProcess
; [308] end;
%LINE 308+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c821:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
	GLOBAL FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
..@c825:
; [322] begin
%LINE 322+0
; [323] end;
%LINE 323+0
		ret
..@c826:

SECTION .text
	GLOBAL SYSTEM_$$_BSRBYTE$BYTE$$BYTE
SYSTEM_$$_BSRBYTE$BYTE$$BYTE:
..@c827:
; Var $result located in register al
; Var avalue located in register cl
; [346] begin
%LINE 346+0
; [347] result:=bsr8bit[AValue];
%LINE 347+0
		movzx	ecx,cl
; Var $result located in register al
		lea	rax,[TC_$SYSTEM$_$BSRBYTE$BYTE$$BYTE_$$_BSR8BIT]
		mov	al,byte [rax+rcx*1]
; [348] end;
%LINE 348+0
		movzx	eax,al
		ret
..@c828:

SECTION .text
	GLOBAL SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL:
..@c829:
; [353] begin
%LINE 353+0
		push	rbx
		lea	rsp,[rsp-32]
..@c831:
; Var $result located in register eax
; Var tmp located in register eax
		mov	eax,ecx
; Var avalue located in register eax
; [354] result:=ord(AValue>$FFFF)*16;
%LINE 354+0
		cmp	eax,65535
		seta	dl
		movzx	edx,dl
		shl	edx,4
; Var $result located in register edx
; [355] tmp:=AValue shr result;
%LINE 355+0
		mov	ecx,edx
		shr	eax,cl
; Var tmp located in register eax
; [356] result:=result or (ord(tmp>$FF)*8);
%LINE 356+0
		cmp	eax,255
		seta	bl
		movzx	ebx,bl
		shl	ebx,3
		or	ebx,edx
; Var $result located in register ebx
; [357] tmp:=tmp shr (result and 8);
%LINE 357+0
		mov	edx,ebx
		and	edx,8
		mov	ecx,edx
		shr	eax,cl
; Var tmp located in register ecx
		mov	ecx,eax
; [358] result:=result or BsrByte(byte(tmp));
%LINE 358+0
		movzx	ecx,cl
		call	SYSTEM_$$_BSRBYTE$BYTE$$BYTE
		movzx	eax,al
		or	eax,ebx
; Var $result located in register eax
; [359] end;
%LINE 359+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c830:

SECTION .text
	GLOBAL SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL:
..@c832:
; [364] begin
%LINE 364+0
		push	rbx
		lea	rsp,[rsp-32]
..@c834:
; Var $result located in register eax
; Var tmp located in register eax
		mov	rax,rcx
; Var avalue located in register rax
; Var $result located in register ebx
; [365] result:=32;
%LINE 365+0
		mov	ebx,32
; [366] tmp:=hi(AValue);
%LINE 366+0
		mov	rcx,rax
		shr	rcx,32
; Var tmp located in register ecx
; [367] if (tmp=0) then
%LINE 367+0
		test	ecx,ecx
		jne	..@j1513
; [369] tmp:=lo(AValue);
%LINE 369+0
		mov	ecx,eax
; [370] result:=0;
%LINE 370+0
		xor	ebx,ebx
..@j1513:
; Var tmp located in register ecx
; [372] result:=result or BsrDword(tmp);
%LINE 372+0
		call	SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
		or	eax,ebx
; Var $result located in register eax
; [373] end;
%LINE 373+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c833:

SECTION .text
	GLOBAL fpc_div_qword
fpc_div_qword:
	GLOBAL FPC_DIV_QWORD
FPC_DIV_QWORD:
..@c835:
; [378] begin
%LINE 378+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c837:
; Var $result located in register rbx
; Var shift located in register eax
; Var lzz located in register eax
; Var lzn located in register eax
		mov	rsi,rcx
; Var n located in register rsi
		mov	rdi,rdx
; Var z located in register rdi
; [380] if (hi(z) = 0) and (hi(n) = 0) then begin
%LINE 380+0
		mov	rax,rdi
		shr	rax,32
		test	eax,eax
		jne	..@j1517
		mov	rax,rsi
		shr	rax,32
		test	eax,eax
		jne	..@j1517
; [381] fpc_div_qword := Dword(z) div Dword(n);
%LINE 381+0
		mov	eax,edi
		mov	ecx,esi
		cqo
		idiv	rcx
		mov	rbx,rax
; [382] exit;
%LINE 382+0
		jmp	..@j1514
..@j1517:
; [385] fpc_div_qword:=0;
%LINE 385+0
		xor	ebx,ebx
; Var z located in register rdi
; [388] lzz:=BsrQWord(z);
%LINE 388+0
		mov	rcx,rdi
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
		mov	r12d,eax
; Var lzz located in register r12d
; Var n located in register rsi
; [389] lzn:=BsrQWord(n);
%LINE 389+0
		mov	rcx,rsi
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
; Var lzn located in register eax
; [393] if lzn > lzz then exit;
%LINE 393+0
		cmp	r12d,eax
		jl	..@j1514
; [395] shift:=lzz-lzn;
%LINE 395+0
		sub	r12d,eax
; Var shift located in register r12d
; [396] n:=n shl shift;
%LINE 396+0
		movsxd	rcx,r12d
		shl	rsi,cl
; Var n located in register rsi
; [397] for shift:=shift downto 0 do
%LINE 397+0
		test	r12d,r12d
		jnge	..@j1522
		inc	r12d
..@j1523:
		dec	r12d
; [399] if z>=n then
%LINE 399+0
		cmp	rsi,rdi
		jnbe	..@j1527
; [401] z:=z-n;
%LINE 401+0
		sub	rdi,rsi
; [402] fpc_div_qword:=fpc_div_qword+(qword(1) shl shift);
%LINE 402+0
		movsxd	rcx,r12d
		mov	eax,1
		shl	rax,cl
		add	rbx,rax
..@j1527:
; [404] n:=n shr 1;
%LINE 404+0
		shr	rsi,1
%LINE 397+0
		test	r12d,r12d
		jnle	..@j1523
..@j1522:
..@j1514:
; [406] end;
%LINE 406+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c836:

SECTION .text
	GLOBAL fpc_div_int64
fpc_div_int64:
	GLOBAL FPC_DIV_INT64
FPC_DIV_INT64:
..@c838:
; Var $result located in register rcx
; Var sign located in register al
; Var q1 located in register r8
; Var q2 located in register r9
; Var n located in register rcx
; Var z located in register rdx
; [412] begin
%LINE 412+0
; Var sign located in register al
; [417] sign := false;
%LINE 417+0
		xor	al,al
; [418] if z < 0 then begin
%LINE 418+0
		test	rdx,rdx
		jnl	..@j1531
; [419] sign := not sign;
%LINE 419+0
		test	al,al
		sete	al
; [420] q1 := qword(-z);
%LINE 420+0
		mov	r8,rdx
		neg	r8
		jmp	..@j1532
..@j1531:
; [423] q1 := z;
%LINE 423+0
		mov	r8,rdx
..@j1532:
; [425] if n < 0 then begin
%LINE 425+0
		test	rcx,rcx
		jnl	..@j1534
; [426] sign := not sign;
%LINE 426+0
		test	al,al
		sete	al
; [427] q2 := qword(-n);
%LINE 427+0
		mov	r9,rcx
		neg	r9
		jmp	..@j1535
..@j1534:
; [430] q2 := n;
%LINE 430+0
		mov	r9,rcx
..@j1535:
; [432] if sign then
%LINE 432+0
		test	al,al
		je	..@j1537
; [433] result := -(q1 div q2)
%LINE 433+0
		mov	rax,r8
		xor	edx,edx
		div	r9
		neg	rax
		mov	rcx,rax
		jmp	..@j1538
..@j1537:
; [435] result := q1 div q2;
%LINE 435+0
		mov	rax,r8
		xor	edx,edx
		div	r9
		mov	rcx,rax
..@j1538:
; [436] end;
%LINE 436+0
		mov	rax,rcx
		ret
..@c839:

SECTION .text
	GLOBAL fpc_handleerror
fpc_handleerror:
	GLOBAL FPC_HANDLEERROR
FPC_HANDLEERROR:
..@c840:
; [451] begin
%LINE 451+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c842:
		mov	ebx,ecx
; Var errno located in register ebx
; [452] writeln('fpc_handleerror, errno = ', errno, ', meaning = ', errmap[errno]);
%LINE 452+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld72]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		movsxd	r8,ebx
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_sint
		lea	r8,[_$SYSTEM$_Ld73]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	eax,ebx
		lea	rdx,[TC_$SYSTEM$_$FPC_HANDLEERROR$LONGINT_$$_ERRMAP]
		mov	r8,qword [rdx+rax*8-1600]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_ansistr
		mov	rcx,rsi
		call	fpc_writeln_end
; [453] end;
%LINE 453+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c841:

SECTION .text
	GLOBAL fpc_popaddrstack
fpc_popaddrstack:
	GLOBAL FPC_POPADDRSTACK
FPC_POPADDRSTACK:
..@c843:
; [457] begin
%LINE 457+0
		push	rbx
		lea	rsp,[rsp-32]
..@c845:
; [458] writeln('fpc_popaddrstack');
%LINE 458+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld74]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [459] end;
%LINE 459+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c844:

SECTION .text
	GLOBAL fpc_pushexceptaddr
fpc_pushexceptaddr:
	GLOBAL FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
..@c846:
; [462] begin
%LINE 462+0
		push	rbx
		lea	rsp,[rsp-32]
..@c848:
; Var $result located in register rax
; Var ft located in register ecx
; Var _buf located in register rdx
; Var _newaddr located in register r8
; [463] writeln('fpc_pushexceptaddr');
%LINE 463+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld75]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [464] end;
%LINE 464+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c847:

SECTION .text
	GLOBAL SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER:
	GLOBAL FPC_BREAK_ERROR
FPC_BREAK_ERROR:
..@c853:
; [562] begin
%LINE 562+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c855:
		mov	ebx,ecx
; Var Errno located in register ebx
		mov	rsi,rdx
; Var addr located in register rsi
		mov	rdi,r8
; Var frame located in register rdi
; [563] if CodePointer(ErrorProc) <> nil then ErrorProc(Errno, addr, frame);
%LINE 563+0
		cmp	qword [TC_$SYSTEM_$$_ERRORPROC],0
		je	..@j1552
		mov	r8,rdi
		mov	rdx,rsi
		mov	ecx,ebx
		call	TC_$SYSTEM_$$_ERRORPROC
..@j1552:
; [564] ErrorCode := Word(Errno);
%LINE 564+0
		mov	word [TC_$SYSTEM_$$_ERRORCODE],bx
; [565] ErrorAddr := addr;
%LINE 565+0
		mov	rdx,rsi
; Var addr located in register rdx
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],rdx
; [566] ErrorBase := frame;
%LINE 566+0
		mov	r8,rdi
; Var frame located in register r8
		mov	qword [FPC_ERRORBASE],r8
; [567] if ExceptAddrStack <> nil then raise TObject(nil) at addr, frame;
%LINE 567+0
		cmp	qword [U_$SYSTEM_$$_EXCEPTADDRSTACK],0
		je	..@j1554
		xor	ecx,ecx
		call	fpc_raiseexception
..@j1554:
; [568] Halt(ErrorCode);
%LINE 568+0
		movzx	ecx,word [TC_$SYSTEM_$$_ERRORCODE]
		call	SYSTEM_$$_HALT$LONGINT
; [569] end;
%LINE 569+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c854:

SECTION .text
	GLOBAL fpc_overflow
fpc_overflow:
	GLOBAL FPC_OVERFLOW
FPC_OVERFLOW:
..@c856:
; [572] begin
%LINE 572+0
		lea	rsp,[rsp-40]
..@c858:
; [573] Halt(215); // IntOverflow
%LINE 573+0
		mov	ecx,215
		call	SYSTEM_$$_HALT$LONGINT
; [574] end;
%LINE 574+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c857:

SECTION .text
SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$000002B0:
..@c859:
; [579] end;
%LINE 579+0
		push	rbp
..@c861:
..@c862:
		mov	rbp,rcx
..@c863:
		lea	rsp,[rsp-32]
; [577] begin
%LINE 577+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c860:

SECTION .text
	GLOBAL SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION:
..@c864:
		push	rbp
..@c866:
..@c867:
		mov	rbp,rsp
..@c868:
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
		jne	..@j1562
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-24],rax
..@j1562:
		cmp	qword [rbp-24],0
		je	..@j1557
..@j1570:
		nop
..@j1569:
		mov	qword [rbp-32],-1
..@j1575:
		nop
..@j1571:
; [578] test := msg;
%LINE 578+0
		mov	rax,qword [rbp-24]
		lea	rcx,[rax+8]
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j1573:
%LINE 577+0
		nop
..@j1572:
		mov	rcx,rbp
		call	SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$000002B0
%LINE 579+0
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j1567
		cmp	qword [rbp-16],0
		je	..@j1567
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 577+0
		jmp	..@j1567
..@j1566:
%LINE 579+0
		cmp	qword [rbp-16],0
		je	..@j1580
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+96]
..@j1580:
		call	fpc_reraise
%LINE 577+0
		call	FPC_DONEEXCEPTION
..@j1581:
		nop
..@j1567:
..@j1557:
%LINE 579+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	2,0
	DD	1

SECTION .text
..@c865:

SECTION .text
	GLOBAL fpc_dynarray_setlength
fpc_dynarray_setlength:
	GLOBAL FPC_DYNARR_SETLENGTH
FPC_DYNARR_SETLENGTH:
..@c869:
; [591] begin
%LINE 591+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c871:
; Var elesize located in register rax
; Var eletype located in register rax
; Var eletypemngd located in register rax
; Var ti located in register rax
; Var size located in register rax
; Var newp located in register r12
		mov	rbx,rcx
; Var p located in register rbx
; Var pti located in register rdx
; Var dimcount located in register r8
		mov	rsi,r9
; Var dims located in register rsi
; [602] if dimcount > 1 then begin
%LINE 602+0
		cmp	r8,1
		jg	..@j1582
; [607] if dims[0] < 0 then begin
%LINE 607+0
		cmp	qword [rsi],0
; [612] if dims[0] = 0 then begin
%LINE 612+0
		cmp	qword [rsi],0
		je	..@j1582
; [618] ti := pointer(pti)+2+pbyte(pti)[1];
%LINE 618+0
		lea	rcx,[rdx+2]
		movzx	eax,byte [rdx+1]
		add	rax,rcx
; Var ti located in register rax
; Var ti located in register rax
; Var elesize located in register rcx
; [619] elesize := psizeuint(ti)^;
%LINE 619+0
		mov	rcx,qword [rax]
; Var ti located in register rax
; [621] eletype := pdynarraytypedata(ti)^.elType2^;
%LINE 621+0
		mov	rdx,qword [rax+8]
; Var eletype located in register rdx
		mov	rdx,qword [rdx]
; [625] if assigned(pdynarraytypedata(ti)^.elType) then eletypemngd := pdynarraytypedata(ti)^.elType^ else eletypemngd := nil;
%LINE 625+0
		cmp	qword [rax+20],0
		je	..@j1591
		mov	rax,qword [rax+20]
		mov	rax,qword [rax]
		jmp	..@j1592
..@j1591:
		xor	eax,eax
..@j1592:
; [631] size := elesize*dims[0]+sizeof(tdynarray);
%LINE 631+0
		mov	rdi,qword [rsi]
		imul	rdi,rcx
		jno	..@j1593
		call	FPC_OVERFLOW
..@j1593:
		add	rdi,16
		jno	..@j1594
		call	FPC_OVERFLOW
..@j1594:
; Var size located in register rdi
; [635] if not assigned(p) then begin
%LINE 635+0
		cmp	qword [rbx],0
		jne	..@j1596
; [638] newp := xallocmem(size);
%LINE 638+0
		mov	rcx,rdi
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	r12,rax
		test	rax,rax
		je	..@j1601
		mov	rdx,rdi
		xor	r8d,r8d
		mov	rcx,r12
		call	_$dll$kernel32$RtlFillMemory
		jmp	..@j1601
..@j1596:
; [645] writeln('array needs reallocation');
%LINE 645+0
		call	fpc_get_output
		mov	rdi,rax
		lea	r8,[_$SYSTEM$_Ld76]
		mov	rdx,rdi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rdi
		call	fpc_writeln_end
; [646] writeln('@@todo to be implemented!');
%LINE 646+0
		call	fpc_get_output
		mov	rdi,rax
		lea	r8,[_$SYSTEM$_Ld77]
		mov	rdx,rdi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rdi
		call	fpc_writeln_end
..@j1601:
; [649] p := pointer(newp)+sizeof(tdynarray);
%LINE 649+0
		lea	rax,[r12+16]
		mov	qword [rbx],rax
; [651] newp^.refcount := 1;
%LINE 651+0
		mov	qword [r12],1
; [652] newp^.high := dims[0]-1;
%LINE 652+0
		mov	rax,qword [rsi]
		dec	rax
		mov	qword [r12+8],rax
..@j1582:
; [653] end;
%LINE 653+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c870:

SECTION .text
	GLOBAL fpc_dynarray_length
fpc_dynarray_length:
	GLOBAL FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
..@c872:
; Var $result located in register rax
; Var p located in register rcx
; [656] begin
%LINE 656+0
; [657] if p = nil then exit(0);
%LINE 657+0
		test	rcx,rcx
		jne	..@j1605
		xor	eax,eax
		ret
..@j1605:
; Var p located in register rcx
; [658] result := pdynarray(p-sizeof(tdynarray))^.high+1;
%LINE 658+0
		mov	rdx,qword [rcx-8]
		inc	rdx
		mov	rax,rdx
; [659] end;
%LINE 659+0
		ret
..@c873:

SECTION .text
	GLOBAL fpc_dynarray_high
fpc_dynarray_high:
	GLOBAL FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
..@c874:
; Var $result located in register rax
; Var p located in register rcx
; [662] begin
%LINE 662+0
; [663] if p = nil then exit(0);
%LINE 663+0
		test	rcx,rcx
		jne	..@j1609
		xor	eax,eax
		ret
..@j1609:
; Var p located in register rcx
; [664] result := pdynarray(p-sizeof(tdynarray))^.high;
%LINE 664+0
		mov	rax,qword [rcx-8]
; [665] end;
%LINE 665+0
		ret
..@c875:

SECTION .text
	GLOBAL fpc_dynarray_incr_ref
fpc_dynarray_incr_ref:
	GLOBAL FPC_DYNARRAY_INCR_REF
FPC_DYNARRAY_INCR_REF:
..@c876:
; [670] begin
%LINE 670+0
		push	rbx
		lea	rsp,[rsp-32]
..@c878:
; Var d located in register rax
; Var p located in register rcx
; [671] if p = nil then exit;
%LINE 671+0
		test	rcx,rcx
		je	..@j1610
; [672] d := pdynarray(p-sizeof(tdynarray));
%LINE 672+0
		lea	rbx,[rcx-16]
; Var d located in register rbx
; [673] if d^.refcount = 0 then
%LINE 673+0
		cmp	qword [rbx],0
		jne	..@j1615
; [675] HandleError(204)
%LINE 675+0
		mov	ecx,204
		call	FPC_HANDLEERROR
		jmp	..@j1616
..@j1615:
; [676] else if d^.refcount>0 then
%LINE 676+0
		cmp	qword [rbx],0
		jng	..@j1618
; [679] inc(d^.refcount);
%LINE 679+0
		inc	qword [rbx]
..@j1618:
..@j1616:
..@j1610:
; [680] end;
%LINE 680+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c877:

SECTION .text
	GLOBAL fpc_dynarray_clear
fpc_dynarray_clear:
	GLOBAL FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
..@c879:
; [685] begin
%LINE 685+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c881:
; Var d located in register rax
		mov	rbx,rcx
; Var p located in register rbx
; Var ti located in register rdx
; [686] if p = nil then exit;
%LINE 686+0
		cmp	qword [rbx],0
		je	..@j1619
; [687] d := pdynarray(p-sizeof(tdynarray));
%LINE 687+0
		mov	rax,qword [rbx]
		lea	rsi,[rax-16]
; Var d located in register rsi
; [688] if d^.refcount = 0 then
%LINE 688+0
		cmp	qword [rsi],0
		jne	..@j1624
; [690] HandleError(204);
%LINE 690+0
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j1624:
; [691] if d^.refcount > 0 then begin
%LINE 691+0
		cmp	qword [rsi],0
		jng	..@j1626
; [692] dec(d^.refcount); // todo: locked
%LINE 692+0
		dec	qword [rsi]
; [696] FreeMem(d);
%LINE 696+0
		mov	rcx,rsi
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1626:
; [698] p := nil;
%LINE 698+0
		mov	qword [rbx],0
..@j1619:
; [699] end;
%LINE 699+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c880:

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1:
; [objects.inc]
; [568] function TInterfacedObject.QueryInterface(constref iid: TGUID; out obj): LongInt; stdcall;
%LINE 568+0 objects.inc
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
; [573] function TInterfacedObject._AddRef: LongInt; stdcall;
%LINE 573+0
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
; [580] function TInterfacedObject._Release: LongInt; stdcall;
%LINE 580+0
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

SECTION .text
	GLOBAL INIT$_$SYSTEM
INIT$_$SYSTEM:
	GLOBAL SYSTEM_$$_init$
SYSTEM_$$_init$:
..@c892:
; [system.pas]
; [810] initialization
%LINE 810+0 system.pas
		lea	rsp,[rsp-40]
..@c894:
; [811] install_exception_handlers;
%LINE 811+0
		call	SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
; [813] end.
%LINE 813+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c893:
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
; [148] ExceptAddrStack:   PExceptAddr;
%LINE 148+0 exceptions.inc
	GLOBAL U_$SYSTEM_$$_EXCEPTADDRSTACK
U_$SYSTEM_$$_EXCEPTADDRSTACK:	RESB	8

SECTION .bss
	ALIGNB 8
; [149] ExceptObjectStack: PExceptObject;
%LINE 149+0
	GLOBAL U_$SYSTEM_$$_EXCEPTOBJECTSTACK
U_$SYSTEM_$$_EXCEPTOBJECTSTACK:	RESB	8

SECTION .bss
	ALIGNB 8
; [system.pas]
; [189] StdIn, StdOut, StdErr: HANDLE;       // initialized in sysinitpas if app type is CONSOLE
%LINE 189+0 system.pas
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
; [190] EntryInformation: TEntryInformation; // @@todo: check if EntryInformation is used
%LINE 190+0
	GLOBAL U_$SYSTEM_$$_ENTRYINFORMATION
U_$SYSTEM_$$_ENTRYINFORMATION:	RESB	56

SECTION .bss
	ALIGNB 4
; [192] ExitCode: LongInt;           public name 'operatingsystem_result';
%LINE 192+0
	GLOBAL operatingsystem_result
operatingsystem_result:	RESB	4

SECTION .bss
	ALIGNB 8
; [exceptions64.inc]
; [178] ex_rip   : array[0..ex_max_level-1] of qword;
%LINE 178+0 exceptions64.inc
U_$SYSTEM_$$_EX_RIP:	RESB	128

SECTION .bss
	ALIGNB 8
; [179] except_signal : array[0..ex_max_level-1] of qword;
%LINE 179+0
U_$SYSTEM_$$_EXCEPT_SIGNAL:	RESB	128

SECTION .bss
; [180] reset_fpu    : array[0..ex_max_level-1] of boolean;
%LINE 180+0
U_$SYSTEM_$$_RESET_FPU:	RESB	16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d78,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; [system.pas]
%LINE 813+0 system.pas

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
VMT_$SYSTEM_$$_TINTERFACEDOBJECT	DQ	24,-24,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d79,0,0,0,RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
	DQ	0,0,..@d81,0,SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY,SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TTESTEXCEPTION
VMT_$SYSTEM_$$_TTESTEXCEPTION	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d82,0,0,0,RTTI_$SYSTEM_$$_TTESTEXCEPTION
	DQ	INIT_$SYSTEM_$$_TTESTEXCEPTION,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d35:
; [442] 'DivByZero',        'RangeError',      'StackOverflow',     '203',            '204',
%LINE 442+0 system.pas
		DB	"DivByZero",0

SECTION .rodata
..@d36$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d36:
		DB	"RangeError",0

SECTION .rodata
..@d37$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d37:
		DB	"StackOverflow",0

SECTION .rodata
..@d38$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d38:
		DB	"203",0

SECTION .rodata
..@d39$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d39:
		DB	"204",0

SECTION .rodata
..@d40$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d40:
; [443] 'Overflow',         'Underflow',       'InvalidOp',         'ZeroDivide',     '209',
%LINE 443+0
		DB	"Overflow",0

SECTION .rodata
..@d41$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d41:
		DB	"Underflow",0

SECTION .rodata
..@d42$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d42:
		DB	"InvalidOp",0

SECTION .rodata
..@d43$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d43:
		DB	"ZeroDivide",0

SECTION .rodata
..@d44$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d44:
		DB	"209",0

SECTION .rodata
..@d45$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d45:
; [444] 'ObjectCheckError', 'AbstractError',   'ExternalException', '213',            'BusError',
%LINE 444+0
		DB	"ObjectCheckError",0

SECTION .rodata
..@d46$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d46:
		DB	"AbstractError",0

SECTION .rodata
..@d47$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d47:
		DB	"ExternalException",0

SECTION .rodata
..@d48$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d48:
		DB	"213",0

SECTION .rodata
..@d49$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d49:
		DB	"BusError",0

SECTION .rodata
..@d50$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d50:
; [445] 'IntOverflow',      'AccessViolation', 'ControlC',          'Privilege',      'InvalidCast',
%LINE 445+0
		DB	"IntOverflow",0

SECTION .rodata
..@d51$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d51:
		DB	"AccessViolation",0

SECTION .rodata
..@d52$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d52:
		DB	"ControlC",0

SECTION .rodata
..@d53$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d53:
		DB	"Privilege",0

SECTION .rodata
..@d54$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d54:
		DB	"InvalidCast",0

SECTION .rodata
..@d55$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d55:
; [446] 'InvalidVarCast',   'InvalidVarOp',    'DispatchError',     'VarArrayCreate', 'VarNotArray',
%LINE 446+0
		DB	"InvalidVarCast",0

SECTION .rodata
..@d56$strlab:
	DW	0,1
	DD	0
	DQ	-1,12
..@d56:
		DB	"InvalidVarOp",0

SECTION .rodata
..@d57$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d57:
		DB	"DispatchError",0

SECTION .rodata
..@d58$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d58:
		DB	"VarArrayCreate",0

SECTION .rodata
..@d59$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d59:
		DB	"VarNotArray",0

SECTION .rodata
..@d60$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d60:
; [447] 'VarArrayBounds',   '226',             'AssertionFailed',   'IntfCastError',  'SafecallException',
%LINE 447+0
		DB	"VarArrayBounds",0

SECTION .rodata
..@d61$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d61:
		DB	"226",0

SECTION .rodata
..@d62$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d62:
		DB	"AssertionFailed",0

SECTION .rodata
..@d63$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d63:
		DB	"IntfCastError",0

SECTION .rodata
..@d64$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d64:
		DB	"SafecallException",0

SECTION .rodata
..@d65$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d65:
; [448] '230',              'iconvError',      'NoThreadSupport',   'SigQuit',        'MissingWStringManager',
%LINE 448+0
		DB	"230",0

SECTION .rodata
..@d66$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d66:
		DB	"iconvError",0

SECTION .rodata
..@d67$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d67:
		DB	"NoThreadSupport",0

SECTION .rodata
..@d68$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d68:
		DB	"SigQuit",0

SECTION .rodata
..@d69$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d69:
		DB	"MissingWStringManager",0

SECTION .rodata
..@d70$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d70:
; [449] 'NoDynLibsSupport', 'ThreadError'
%LINE 449+0
		DB	"NoDynLibsSupport",0

SECTION .rodata
..@d71$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d71:
; [450] );
%LINE 450+0
		DB	"ThreadError",0

SECTION .data
	ALIGN 8,DB 0
..@d78:
	DB	7
%LINE 813+0
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d79:
	DB	17
		DB	"TInterfacedObject"

SECTION .data
	ALIGN 8,DB 0
..@d80:
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

SECTION .data
	ALIGN 8,DB 0
..@d81:
	DQ	1,IID_$SYSTEM_$$_IUNKNOWN$indirect,..@d80,16,IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
	DD	0
	DB	0,0,0,0

SECTION .data
	ALIGN 8,DB 0
..@d82:
	DB	14
		DB	"TTestException"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXITPROC
TC_$SYSTEM_$$_EXITPROC	DQ	0
; [39] ErrorAddr: CodePointer = nil;
%LINE 39+0 system.pas

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORADDR
TC_$SYSTEM_$$_ERRORADDR	DQ	0
; [40] ErrorCode: Word = 0;
%LINE 40+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORCODE
TC_$SYSTEM_$$_ERRORCODE	DW	0
; [41] ErrorBase: Pointer = nil; public name 'FPC_ERRORBASE';
%LINE 41+0

SECTION .data
	GLOBAL FPC_ERRORBASE
FPC_ERRORBASE	DQ	0
; [45] const
%LINE 45+0

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
; [61] DefaultMXCSR: DWord = $1900;
%LINE 61+0 exceptions.inc

SECTION .data
	GLOBAL TC_$SYSTEM_$$_DEFAULTMXCSR
TC_$SYSTEM_$$_DEFAULTMXCSR	DD	6400
; [64] const
%LINE 64+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXCEPTOBJPROC
TC_$SYSTEM_$$_EXCEPTOBJPROC	DQ	0
; [153] ExceptClsProc: TExceptClsProc = nil;
%LINE 153+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXCEPTCLSPROC
TC_$SYSTEM_$$_EXCEPTCLSPROC	DQ	0
; [154] ErrorProc: TErrorProc = nil;
%LINE 154+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORPROC
TC_$SYSTEM_$$_ERRORPROC	DQ	0
; [exceptions64.inc]
; [7] type
%LINE 7+0 exceptions64.inc

SECTION .data
	GLOBAL TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT
TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT	DD	16
; [98] type
%LINE 98+0

SECTION .data
	GLOBAL operatingsystem_islibrary
operatingsystem_islibrary	DB	0
; [system.pas]
; [194] is_console: boolean = false; public name 'operatingsystem_isconsole';
%LINE 194+0 system.pas

SECTION .data
	GLOBAL operatingsystem_isconsole
operatingsystem_isconsole	DB	0
; [195] IsMultithread: boolean = false;
%LINE 195+0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ISMULTITHREAD
TC_$SYSTEM_$$_ISMULTITHREAD	DB	0
; [197] implementation
%LINE 197+0

SECTION .rodata
_$SYSTEM$_Ld1:
%LINE 208+0
		DB	16,"press <enter>...",0

SECTION .rodata
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d3:
; [objects.inc]
%LINE 589+0 objects.inc
		DB	"$Capturer",0

SECTION .rodata
_$SYSTEM$_Ld4:
	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70
%LINE 681+0

SECTION .rodata
..@d5$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d5:
%LINE 723+0
		DB	"@@todo: fpc_intf_cast",0

SECTION .data
TC_$SYSTEM_$$_EX_LEVEL	DB	0
; [exceptions64.inc]
; [177] var
%LINE 177+0 exceptions64.inc

SECTION .rodata
_$SYSTEM$_Ld6:
%LINE 186+0
		DB	18,"JumpToHandleSignal",0

SECTION .rodata
_$SYSTEM$_Ld7:
%LINE 254+0
		DB	25,"signals_exception_handler",0

SECTION .rodata
_$SYSTEM$_Ld8:
%LINE 260+0
		DB	23,"exrec^.ExceptionCode = ",0

SECTION .rodata
_$SYSTEM$_Ld9:
%LINE 273+0
		DB	28,"syswin_x64_exception_handler",0

SECTION .data
TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER	DQ	0
; [283] procedure install_exception_handlers;
%LINE 283+0

SECTION .rodata
_$SYSTEM$_Ld10:
%LINE 428+0
		DB	22,"__FPC_specific_handler",0

SECTION .rodata
_$SYSTEM$_Ld11:
%LINE 490+0
		DB	18,"fpc_raiseexception",0

SECTION .rodata
_$SYSTEM$_Ld12:
%LINE 492+0
		DB	7,"obj nil",0

SECTION .rodata
_$SYSTEM$_Ld13:
%LINE 493+0
		DB	10,"anaddr nil",0

SECTION .rodata
_$SYSTEM$_Ld14:
%LINE 494+0
		DB	10,"aframe nil",0

SECTION .rodata
_$SYSTEM$_Ld15:
%LINE 497+0
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
..@d33$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d33:
; [Dialogs.pas]
%LINE 31+0 Dialogs.pas
		DB	" ",0

SECTION .rodata
_$SYSTEM$_Ld34:
; [system.pas]
%LINE 241+0 system.pas
		DB	"DEBUG",0

SECTION .data
TC_$SYSTEM$_$BSRBYTE$BYTE$$BYTE_$$_BSR8BIT	DB	255,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5
	DB	5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
	DB	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
	DB	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
%LINE 346+0

SECTION .data
TC_$SYSTEM$_$FPC_HANDLEERROR$LONGINT_$$_ERRMAP	DQ	..@d35,..@d36,..@d37,..@d38,..@d39,..@d40,..@d41,..@d42,..@d43,..@d44,..@d45
	DQ	..@d46,..@d47,..@d48,..@d49,..@d50,..@d51,..@d52,..@d53,..@d54,..@d55,..@d56
	DQ	..@d57,..@d58,..@d59,..@d60,..@d61,..@d62,..@d63,..@d64,..@d65,..@d66,..@d67
	DQ	..@d68,..@d69,..@d70,..@d71
%LINE 451+0

SECTION .rodata
_$SYSTEM$_Ld72:
%LINE 452+0
		DB	25,"fpc_handleerror, errno = ",0

SECTION .rodata
_$SYSTEM$_Ld73:
		DB	12,", meaning = ",0

SECTION .rodata
_$SYSTEM$_Ld74:
%LINE 458+0
		DB	16,"fpc_popaddrstack",0

SECTION .rodata
_$SYSTEM$_Ld75:
%LINE 463+0
		DB	18,"fpc_pushexceptaddr",0

SECTION .rodata
_$SYSTEM$_Ld76:
%LINE 645+0
		DB	24,"array needs reallocation",0

SECTION .rodata
_$SYSTEM$_Ld77:
%LINE 646+0
		DB	25,"@@todo to be implemented!",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal	DB	0,7
; [814] 
%LINE 814+0 system.pas
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
	GLOBAL INIT_$SYSTEM_$$_def00000074
INIT_$SYSTEM_$$_def00000074	DB	13,0
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000074
RTTI_$SYSTEM_$$_def00000074	DB	13,0
	DQ	INIT_$SYSTEM_$$_def00000074
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
	DQ	RTTI_$SYSTEM_$$_def00000074$indirect,80,RTTI_$SYSTEM_$$_def00000074$indirect
	DQ	96,RTTI_$SYSTEM_$$_def00000074$indirect,112,RTTI_$SYSTEM_$$_def00000074$indirect
	DQ	128,RTTI_$SYSTEM_$$_def00000074$indirect,144,RTTI_$SYSTEM_$$_def00000074$indirect
	DQ	160,RTTI_$SYSTEM_$$_def00000074$indirect,176,RTTI_$SYSTEM_$$_def00000074$indirect
	DQ	192,RTTI_$SYSTEM_$$_def00000074$indirect,208,RTTI_$SYSTEM_$$_def00000074$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def0000007E
RTTI_$SYSTEM_$$_def0000007E	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000007F
RTTI_$SYSTEM_$$_def0000007F	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000080
RTTI_$SYSTEM_$$_def00000080	DB	12,0
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
	DQ	6,RTTI_$SYSTEM_$$_def0000007E$indirect,8,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_def0000007F$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4
	DQ	RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_BYTE$indirect,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DQ	9,RTTI_$SYSTEM_$$_def00000080$indirect,10

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
	GLOBAL RTTI_$SYSTEM_$$_def00000084
RTTI_$SYSTEM_$$_def00000084	DB	29,0
	DQ	RTTI_$SYSTEM_$$_TEXTBUF$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000085
RTTI_$SYSTEM_$$_def00000085	DB	12,0
	DQ	32,32,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000086
RTTI_$SYSTEM_$$_def00000086	DB	12,0
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
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,40,RTTI_$SYSTEM_$$_def00000084$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_POINTER$indirect,72,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	80,RTTI_$SYSTEM_$$_def00000085$indirect,88,RTTI_$SYSTEM_$$_def00000086$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def0000008F
RTTI_$SYSTEM_$$_def0000008F	DB	12,0
	DQ	64,64,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000090
RTTI_$SYSTEM_$$_def00000090	DB	12,0
	DQ	32,32,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000091
RTTI_$SYSTEM_$$_def00000091	DB	12,0
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
	DQ	16,RTTI_$SYSTEM_$$_def0000008F$indirect,24,RTTI_$SYSTEM_$$_def00000090$indirect
	DQ	88,RTTI_$SYSTEM_$$_def00000091$indirect,120

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
	GLOBAL RTTI_$SYSTEM_$$_def000000C2
RTTI_$SYSTEM_$$_def000000C2	DB	29,0
	DQ	RTTI_$SYSTEM_$$_PGUID$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000C4
RTTI_$SYSTEM_$$_def000000C4	DB	29,0
	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRY
RTTI_$SYSTEM_$$_TINTERFACEENTRY	DB	13,15
		DB	"TInterfaceEntry"
	DQ	INIT_$SYSTEM_$$_TINTERFACEENTRY
	DD	40,6
	DQ	RTTI_$SYSTEM_$$_def000000C2$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	16,RTTI_$SYSTEM_$$_def000000C4$indirect,24,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def000000C7
RTTI_$SYSTEM_$$_def000000C7	DB	12,0
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
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_def000000C7$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def000000CC
RTTI_$SYSTEM_$$_def000000CC	DB	12,0
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
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect,0,RTTI_$SYSTEM_$$_def000000CC$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def00000123
RTTI_$SYSTEM_$$_def00000123	DB	12,0
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
	DQ	16,RTTI_$SYSTEM_$$_LONGWORD$indirect,24,RTTI_$SYSTEM_$$_def00000123$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def00000134
RTTI_$SYSTEM_$$_def00000134	DB	12,0
	DQ	32,2,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000135
RTTI_$SYSTEM_$$_def00000135	DB	12,0
	DQ	128,8,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000136
RTTI_$SYSTEM_$$_def00000136	DB	12,0
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
	DQ	248,RTTI_$SYSTEM_$$_def00000134$indirect,256,RTTI_$SYSTEM_$$_def00000135$indirect
	DQ	288,RTTI_$SYSTEM_$$_M128A$indirect,416,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	432,RTTI_$SYSTEM_$$_M128A$indirect,448,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	464,RTTI_$SYSTEM_$$_M128A$indirect,480,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	496,RTTI_$SYSTEM_$$_M128A$indirect,512,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	528,RTTI_$SYSTEM_$$_M128A$indirect,544,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	560,RTTI_$SYSTEM_$$_M128A$indirect,576,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	592,RTTI_$SYSTEM_$$_M128A$indirect,608,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	624,RTTI_$SYSTEM_$$_M128A$indirect,640,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	656,RTTI_$SYSTEM_$$_def00000136$indirect,672,RTTI_$SYSTEM_$$_QWORD$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def00000141
RTTI_$SYSTEM_$$_def00000141	DB	12,0
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
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_def00000141$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def0000018B
RTTI_$SYSTEM_$$_def0000018B	DB	12,13
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
	GLOBAL RTTI_$SYSTEM_$$_def000001B2
RTTI_$SYSTEM_$$_def000001B2	DB	12,13
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
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAG
RTTI_$SYSTEM_$$_TREPLACEFLAG	DB	3,12
		DB	"TReplaceFlag"
	DB	5
	DD	0,1
	DQ	0
	DB	12
		DB	"rfReplaceAll"
	DB	12
		DB	"rfIgnoreCase"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o
RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o	DD	2,1
	DQ	RTTI_$SYSTEM_$$_TREPLACEFLAG+44
	DD	0
	DQ	RTTI_$SYSTEM_$$_TREPLACEFLAG+31

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s
RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_TREPLACEFLAG+31,RTTI_$SYSTEM_$$_TREPLACEFLAG+44

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAGS
RTTI_$SYSTEM_$$_TREPLACEFLAGS	DB	5,13
		DB	"TReplaceFlags"
	DB	5
	DQ	4,RTTI_$SYSTEM_$$_TREPLACEFLAG$indirect

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
	GLOBAL RTTI_$SYSTEM_$$_def00000214
RTTI_$SYSTEM_$$_def00000214	DB	23,0,0,0
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
	DQ	24,RTTI_$SYSTEM_$$_POINTER$indirect,32,RTTI_$SYSTEM_$$_def00000214$indirect
	DQ	40,RTTI_$SYSTEM_$$_BOOLEAN$indirect,48

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000286
RTTI_$SYSTEM_$$_def00000286	DB	12,0
	DQ	296,37,RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT$indirect
VMT_$SYSTEM_$$_TOBJECT$indirect	DQ	VMT_$SYSTEM_$$_TOBJECT
%LINE 813+0 system.pas

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
%LINE 814+0

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
	GLOBAL INIT_$SYSTEM_$$_def00000074$indirect
INIT_$SYSTEM_$$_def00000074$indirect	DQ	INIT_$SYSTEM_$$_def00000074

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000074$indirect
RTTI_$SYSTEM_$$_def00000074$indirect	DQ	RTTI_$SYSTEM_$$_def00000074

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
	GLOBAL RTTI_$SYSTEM_$$_def0000007E$indirect
RTTI_$SYSTEM_$$_def0000007E$indirect	DQ	RTTI_$SYSTEM_$$_def0000007E

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000007F$indirect
RTTI_$SYSTEM_$$_def0000007F$indirect	DQ	RTTI_$SYSTEM_$$_def0000007F

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000080$indirect
RTTI_$SYSTEM_$$_def00000080$indirect	DQ	RTTI_$SYSTEM_$$_def00000080

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
	GLOBAL RTTI_$SYSTEM_$$_def00000084$indirect
RTTI_$SYSTEM_$$_def00000084$indirect	DQ	RTTI_$SYSTEM_$$_def00000084

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000085$indirect
RTTI_$SYSTEM_$$_def00000085$indirect	DQ	RTTI_$SYSTEM_$$_def00000085

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000086$indirect
RTTI_$SYSTEM_$$_def00000086$indirect	DQ	RTTI_$SYSTEM_$$_def00000086

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
	GLOBAL RTTI_$SYSTEM_$$_def0000008F$indirect
RTTI_$SYSTEM_$$_def0000008F$indirect	DQ	RTTI_$SYSTEM_$$_def0000008F

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000090$indirect
RTTI_$SYSTEM_$$_def00000090$indirect	DQ	RTTI_$SYSTEM_$$_def00000090

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000091$indirect
RTTI_$SYSTEM_$$_def00000091$indirect	DQ	RTTI_$SYSTEM_$$_def00000091

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
	GLOBAL RTTI_$SYSTEM_$$_def000000C2$indirect
RTTI_$SYSTEM_$$_def000000C2$indirect	DQ	RTTI_$SYSTEM_$$_def000000C2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000C4$indirect
RTTI_$SYSTEM_$$_def000000C4$indirect	DQ	RTTI_$SYSTEM_$$_def000000C4

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
	GLOBAL RTTI_$SYSTEM_$$_def000000C7$indirect
RTTI_$SYSTEM_$$_def000000C7$indirect	DQ	RTTI_$SYSTEM_$$_def000000C7

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
	GLOBAL RTTI_$SYSTEM_$$_def000000CC$indirect
RTTI_$SYSTEM_$$_def000000CC$indirect	DQ	RTTI_$SYSTEM_$$_def000000CC

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
	GLOBAL RTTI_$SYSTEM_$$_def00000123$indirect
RTTI_$SYSTEM_$$_def00000123$indirect	DQ	RTTI_$SYSTEM_$$_def00000123

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
	GLOBAL RTTI_$SYSTEM_$$_def00000134$indirect
RTTI_$SYSTEM_$$_def00000134$indirect	DQ	RTTI_$SYSTEM_$$_def00000134

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000135$indirect
RTTI_$SYSTEM_$$_def00000135$indirect	DQ	RTTI_$SYSTEM_$$_def00000135

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000136$indirect
RTTI_$SYSTEM_$$_def00000136$indirect	DQ	RTTI_$SYSTEM_$$_def00000136

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
	GLOBAL RTTI_$SYSTEM_$$_def00000141$indirect
RTTI_$SYSTEM_$$_def00000141$indirect	DQ	RTTI_$SYSTEM_$$_def00000141

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
	GLOBAL RTTI_$SYSTEM_$$_def0000018B$indirect
RTTI_$SYSTEM_$$_def0000018B$indirect	DQ	RTTI_$SYSTEM_$$_def0000018B

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
	GLOBAL RTTI_$SYSTEM_$$_def000001B2$indirect
RTTI_$SYSTEM_$$_def000001B2$indirect	DQ	RTTI_$SYSTEM_$$_def000001B2

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
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAG$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAG$indirect	DQ	RTTI_$SYSTEM_$$_TREPLACEFLAG

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o$indirect	DQ	RTTI_$SYSTEM_$$_TREPLACEFLAG_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s$indirect	DQ	RTTI_$SYSTEM_$$_TREPLACEFLAG_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TREPLACEFLAGS$indirect
RTTI_$SYSTEM_$$_TREPLACEFLAGS$indirect	DQ	RTTI_$SYSTEM_$$_TREPLACEFLAGS

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
	GLOBAL RTTI_$SYSTEM_$$_def00000214$indirect
RTTI_$SYSTEM_$$_def00000214$indirect	DQ	RTTI_$SYSTEM_$$_def00000214

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect
RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect	DQ	RTTI_$SYSTEM_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000286$indirect
RTTI_$SYSTEM_$$_def00000286$indirect	DQ	RTTI_$SYSTEM_$$_def00000286
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c895:
	DD	..@c897-..@c896
..@c896:
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
..@c897:
	DD	..@c899-..@c898
..@c898:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c899:
	DD	..@c901-..@c900
..@c900:
	DQ	..@c4,..@c5-..@c4
	ALIGN 4,DB 0
..@c901:
	DD	..@c903-..@c902
..@c902:
	DQ	..@c6,..@c7-..@c6
	ALIGN 4,DB 0
..@c903:
	DD	..@c905-..@c904
..@c904:
	DQ	..@c8,..@c9-..@c8
	ALIGN 4,DB 0
..@c905:
	DD	..@c907-..@c906
..@c906:
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
..@c907:
	DD	..@c909-..@c908
..@c908:
	DQ	..@c15,..@c16-..@c15
	DB	4
	DD	..@c17-..@c15
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c909:
	DD	..@c911-..@c910
..@c910:
	DQ	..@c18,..@c19-..@c18
	DB	4
	DD	..@c20-..@c18
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c911:
	DD	..@c913-..@c912
..@c912:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c913:
	DD	..@c915-..@c914
..@c914:
	DQ	..@c24,..@c25-..@c24
	ALIGN 4,DB 0
..@c915:
	DD	..@c917-..@c916
..@c916:
	DQ	..@c26,..@c27-..@c26
	DB	4
	DD	..@c28-..@c26
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c917:
	DD	..@c919-..@c918
..@c918:
	DQ	..@c29,..@c30-..@c29
	ALIGN 4,DB 0
..@c919:
	DD	..@c921-..@c920
..@c920:
	DQ	..@c31,..@c32-..@c31
	DB	4
	DD	..@c33-..@c31
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c921:
	DD	..@c923-..@c922
..@c922:
	DQ	..@c34,..@c35-..@c34
	ALIGN 4,DB 0
..@c923:
	DD	..@c925-..@c924
..@c924:
	DQ	..@c36,..@c37-..@c36
	ALIGN 4,DB 0
..@c925:
	DD	..@c927-..@c926
..@c926:
	DQ	..@c38,..@c39-..@c38
	DB	4
	DD	..@c40-..@c38
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c927:
	DD	..@c929-..@c928
..@c928:
	DQ	..@c41,..@c42-..@c41
	ALIGN 4,DB 0
..@c929:
	DD	..@c931-..@c930
..@c930:
	DQ	..@c43,..@c44-..@c43
	ALIGN 4,DB 0
..@c931:
	DD	..@c933-..@c932
..@c932:
	DQ	..@c45,..@c46-..@c45
	ALIGN 4,DB 0
..@c933:
	DD	..@c935-..@c934
..@c934:
	DQ	..@c47,..@c48-..@c47
	ALIGN 4,DB 0
..@c935:
	DD	..@c937-..@c936
..@c936:
	DQ	..@c49,..@c50-..@c49
	ALIGN 4,DB 0
..@c937:
	DD	..@c939-..@c938
..@c938:
	DQ	..@c51,..@c52-..@c51
	ALIGN 4,DB 0
..@c939:
	DD	..@c941-..@c940
..@c940:
	DQ	..@c53,..@c54-..@c53
	DB	4
	DD	..@c55-..@c53
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c941:
	DD	..@c943-..@c942
..@c942:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c943:
	DD	..@c945-..@c944
..@c944:
	DQ	..@c59,..@c60-..@c59
	DB	4
	DD	..@c61-..@c59
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c945:
	DD	..@c947-..@c946
..@c946:
	DQ	..@c62,..@c63-..@c62
	DB	4
	DD	..@c64-..@c62
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c947:
	DD	..@c949-..@c948
..@c948:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c949:
	DD	..@c951-..@c950
..@c950:
	DQ	..@c68,..@c69-..@c68
	DB	4
	DD	..@c70-..@c68
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c951:
	DD	..@c953-..@c952
..@c952:
	DQ	..@c71,..@c72-..@c71
	DB	4
	DD	..@c73-..@c71
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c953:
	DD	..@c955-..@c954
..@c954:
	DQ	..@c74,..@c75-..@c74
	DB	4
	DD	..@c76-..@c74
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c955:
	DD	..@c957-..@c956
..@c956:
	DQ	..@c77,..@c78-..@c77
	ALIGN 4,DB 0
..@c957:
	DD	..@c959-..@c958
..@c958:
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
..@c959:
	DD	..@c961-..@c960
..@c960:
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
..@c961:
	DD	..@c963-..@c962
..@c962:
	DQ	..@c89,..@c90-..@c89
	DB	4
	DD	..@c91-..@c89
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c963:
	DD	..@c965-..@c964
..@c964:
	DQ	..@c92,..@c93-..@c92
	ALIGN 4,DB 0
..@c965:
	DD	..@c967-..@c966
..@c966:
	DQ	..@c94,..@c95-..@c94
	DB	4
	DD	..@c96-..@c94
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c967:
	DD	..@c969-..@c968
..@c968:
	DQ	..@c97,..@c98-..@c97
	DB	4
	DD	..@c99-..@c97
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c969:
	DD	..@c971-..@c970
..@c970:
	DQ	..@c100,..@c101-..@c100
	ALIGN 4,DB 0
..@c971:
	DD	..@c973-..@c972
..@c972:
	DQ	..@c102,..@c103-..@c102
	ALIGN 4,DB 0
..@c973:
	DD	..@c975-..@c974
..@c974:
	DQ	..@c104,..@c105-..@c104
	ALIGN 4,DB 0
..@c975:
	DD	..@c977-..@c976
..@c976:
	DQ	..@c106,..@c107-..@c106
	ALIGN 4,DB 0
..@c977:
	DD	..@c979-..@c978
..@c978:
	DQ	..@c108,..@c109-..@c108
	ALIGN 4,DB 0
..@c979:
	DD	..@c981-..@c980
..@c980:
	DQ	..@c110,..@c111-..@c110
	ALIGN 4,DB 0
..@c981:
	DD	..@c983-..@c982
..@c982:
	DQ	..@c112,..@c113-..@c112
	DB	4
	DD	..@c114-..@c112
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c983:
	DD	..@c985-..@c984
..@c984:
	DQ	..@c115,..@c116-..@c115
	DB	4
	DD	..@c117-..@c115
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c985:
	DD	..@c987-..@c986
..@c986:
	DQ	..@c118,..@c119-..@c118
	ALIGN 4,DB 0
..@c987:
	DD	..@c989-..@c988
..@c988:
	DQ	..@c120,..@c121-..@c120
	DB	4
	DD	..@c122-..@c120
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c989:
	DD	..@c991-..@c990
..@c990:
	DQ	..@c123,..@c124-..@c123
	DB	4
	DD	..@c125-..@c123
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c991:
	DD	..@c993-..@c992
..@c992:
	DQ	..@c126,..@c127-..@c126
	DB	4
	DD	..@c128-..@c126
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c993:
	DD	..@c995-..@c994
..@c994:
	DQ	..@c129,..@c130-..@c129
	DB	4
	DD	..@c131-..@c129
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c995:
	DD	..@c997-..@c996
..@c996:
	DQ	..@c132,..@c133-..@c132
	DB	4
	DD	..@c134-..@c132
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c997:
	DD	..@c999-..@c998
..@c998:
	DQ	..@c135,..@c136-..@c135
	DB	4
	DD	..@c137-..@c135
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c999:
	DD	..@c1001-..@c1000
..@c1000:
	DQ	..@c138,..@c139-..@c138
	DB	4
	DD	..@c140-..@c138
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1001:
	DD	..@c1003-..@c1002
..@c1002:
	DQ	..@c141,..@c142-..@c141
	ALIGN 4,DB 0
..@c1003:
	DD	..@c1005-..@c1004
..@c1004:
	DQ	..@c143,..@c144-..@c143
	ALIGN 4,DB 0
..@c1005:
	DD	..@c1007-..@c1006
..@c1006:
	DQ	..@c145,..@c146-..@c145
	DB	4
	DD	..@c147-..@c145
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1007:
	DD	..@c1009-..@c1008
..@c1008:
	DQ	..@c148,..@c149-..@c148
	DB	4
	DD	..@c150-..@c148
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1009:
	DD	..@c1011-..@c1010
..@c1010:
	DQ	..@c151,..@c152-..@c151
	DB	4
	DD	..@c153-..@c151
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1011:
	DD	..@c1013-..@c1012
..@c1012:
	DQ	..@c154,..@c155-..@c154
	DB	4
	DD	..@c156-..@c154
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1013:
	DD	..@c1015-..@c1014
..@c1014:
	DQ	..@c157,..@c158-..@c157
	DB	4
	DD	..@c159-..@c157
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1015:
	DD	..@c1017-..@c1016
..@c1016:
	DQ	..@c160,..@c161-..@c160
	DB	4
	DD	..@c162-..@c160
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1017:
	DD	..@c1019-..@c1018
..@c1018:
	DQ	..@c163,..@c164-..@c163
	DB	4
	DD	..@c165-..@c163
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1019:
	DD	..@c1021-..@c1020
..@c1020:
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
..@c1021:
	DD	..@c1023-..@c1022
..@c1022:
	DQ	..@c171,..@c172-..@c171
	DB	4
	DD	..@c173-..@c171
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1023:
	DD	..@c1025-..@c1024
..@c1024:
	DQ	..@c174,..@c175-..@c174
	DB	4
	DD	..@c176-..@c174
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1025:
	DD	..@c1027-..@c1026
..@c1026:
	DQ	..@c177,..@c178-..@c177
	DB	4
	DD	..@c179-..@c177
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1027:
	DD	..@c1029-..@c1028
..@c1028:
	DQ	..@c180,..@c181-..@c180
	DB	4
	DD	..@c182-..@c180
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1029:
	DD	..@c1031-..@c1030
..@c1030:
	DQ	..@c183,..@c184-..@c183
	DB	4
	DD	..@c185-..@c183
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1031:
	DD	..@c1033-..@c1032
..@c1032:
	DQ	..@c186,..@c187-..@c186
	ALIGN 4,DB 0
..@c1033:
	DD	..@c1035-..@c1034
..@c1034:
	DQ	..@c188,..@c189-..@c188
	ALIGN 4,DB 0
..@c1035:
	DD	..@c1037-..@c1036
..@c1036:
	DQ	..@c190,..@c191-..@c190
	DB	4
	DD	..@c192-..@c190
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1037:
	DD	..@c1039-..@c1038
..@c1038:
	DQ	..@c193,..@c194-..@c193
	DB	4
	DD	..@c195-..@c193
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1039:
	DD	..@c1041-..@c1040
..@c1040:
	DQ	..@c196,..@c197-..@c196
	DB	4
	DD	..@c198-..@c196
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1041:
	DD	..@c1043-..@c1042
..@c1042:
	DQ	..@c199,..@c200-..@c199
	DB	4
	DD	..@c201-..@c199
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1043:
	DD	..@c1045-..@c1044
..@c1044:
	DQ	..@c202,..@c203-..@c202
	DB	4
	DD	..@c204-..@c202
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1045:
	DD	..@c1047-..@c1046
..@c1046:
	DQ	..@c205,..@c206-..@c205
	ALIGN 4,DB 0
..@c1047:
	DD	..@c1049-..@c1048
..@c1048:
	DQ	..@c207,..@c208-..@c207
	ALIGN 4,DB 0
..@c1049:
	DD	..@c1051-..@c1050
..@c1050:
	DQ	..@c209,..@c210-..@c209
	ALIGN 4,DB 0
..@c1051:
	DD	..@c1053-..@c1052
..@c1052:
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
..@c1053:
	DD	..@c1055-..@c1054
..@c1054:
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
..@c1055:
	DD	..@c1057-..@c1056
..@c1056:
	DQ	..@c221,..@c222-..@c221
	DB	4
	DD	..@c223-..@c221
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1057:
	DD	..@c1059-..@c1058
..@c1058:
	DQ	..@c224,..@c225-..@c224
	DB	4
	DD	..@c226-..@c224
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1059:
	DD	..@c1061-..@c1060
..@c1060:
	DQ	..@c227,..@c228-..@c227
	DB	4
	DD	..@c229-..@c227
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1061:
	DD	..@c1063-..@c1062
..@c1062:
	DQ	..@c230,..@c231-..@c230
	DB	4
	DD	..@c232-..@c230
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1063:
	DD	..@c1065-..@c1064
..@c1064:
	DQ	..@c233,..@c234-..@c233
	DB	4
	DD	..@c235-..@c233
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1065:
	DD	..@c1067-..@c1066
..@c1066:
	DQ	..@c236,..@c237-..@c236
	DB	4
	DD	..@c238-..@c236
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1067:
	DD	..@c1069-..@c1068
..@c1068:
	DQ	..@c239,..@c240-..@c239
	ALIGN 4,DB 0
..@c1069:
	DD	..@c1071-..@c1070
..@c1070:
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
..@c1071:
	DD	..@c1073-..@c1072
..@c1072:
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
..@c1073:
	DD	..@c1075-..@c1074
..@c1074:
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
..@c1075:
	DD	..@c1077-..@c1076
..@c1076:
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
..@c1077:
	DD	..@c1079-..@c1078
..@c1078:
	DQ	..@c261,..@c262-..@c261
	ALIGN 4,DB 0
..@c1079:
	DD	..@c1081-..@c1080
..@c1080:
	DQ	..@c263,..@c264-..@c263
	DB	4
	DD	..@c265-..@c263
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c266-..@c265
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c267-..@c266
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1081:
	DD	..@c1083-..@c1082
..@c1082:
	DQ	..@c268,..@c269-..@c268
	DB	4
	DD	..@c270-..@c268
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c271-..@c270
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c272-..@c271
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1083:
	DD	..@c1085-..@c1084
..@c1084:
	DQ	..@c273,..@c274-..@c273
	DB	4
	DD	..@c275-..@c273
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c276-..@c275
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c277-..@c276
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1085:
	DD	..@c1087-..@c1086
..@c1086:
	DQ	..@c278,..@c279-..@c278
	DB	4
	DD	..@c280-..@c278
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c281-..@c280
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c282-..@c281
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1087:
	DD	..@c1089-..@c1088
..@c1088:
	DQ	..@c283,..@c284-..@c283
	DB	4
	DD	..@c285-..@c283
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c286-..@c285
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c287-..@c286
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1089:
	DD	..@c1091-..@c1090
..@c1090:
	DQ	..@c288,..@c289-..@c288
	DB	4
	DD	..@c290-..@c288
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c291-..@c290
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c292-..@c291
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1091:
	DD	..@c1093-..@c1092
..@c1092:
	DQ	..@c293,..@c294-..@c293
	DB	4
	DD	..@c295-..@c293
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c296-..@c295
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c297-..@c296
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1093:
	DD	..@c1095-..@c1094
..@c1094:
	DQ	..@c298,..@c299-..@c298
	DB	4
	DD	..@c300-..@c298
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c301-..@c300
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c302-..@c301
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1095:
	DD	..@c1097-..@c1096
..@c1096:
	DQ	..@c303,..@c304-..@c303
	DB	4
	DD	..@c305-..@c303
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c306-..@c305
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c307-..@c306
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1097:
	DD	..@c1099-..@c1098
..@c1098:
	DQ	..@c308,..@c309-..@c308
	DB	4
	DD	..@c310-..@c308
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c311-..@c310
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c312-..@c311
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1099:
	DD	..@c1101-..@c1100
..@c1100:
	DQ	..@c313,..@c314-..@c313
	DB	4
	DD	..@c315-..@c313
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c316-..@c315
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c317-..@c316
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1101:
	DD	..@c1103-..@c1102
..@c1102:
	DQ	..@c318,..@c319-..@c318
	DB	4
	DD	..@c320-..@c318
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c321-..@c320
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c322-..@c321
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1103:
	DD	..@c1105-..@c1104
..@c1104:
	DQ	..@c323,..@c324-..@c323
	ALIGN 4,DB 0
..@c1105:
	DD	..@c1107-..@c1106
..@c1106:
	DQ	..@c325,..@c326-..@c325
	DB	4
	DD	..@c327-..@c325
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1107:
	DD	..@c1109-..@c1108
..@c1108:
	DQ	..@c328,..@c329-..@c328
	DB	4
	DD	..@c330-..@c328
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1109:
	DD	..@c1111-..@c1110
..@c1110:
	DQ	..@c331,..@c332-..@c331
	DB	4
	DD	..@c333-..@c331
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1111:
	DD	..@c1113-..@c1112
..@c1112:
	DQ	..@c334,..@c335-..@c334
	DB	4
	DD	..@c336-..@c334
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1113:
	DD	..@c1115-..@c1114
..@c1114:
	DQ	..@c337,..@c338-..@c337
	DB	4
	DD	..@c339-..@c337
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1115:
	DD	..@c1117-..@c1116
..@c1116:
	DQ	..@c340,..@c341-..@c340
	DB	4
	DD	..@c342-..@c340
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1117:
	DD	..@c1119-..@c1118
..@c1118:
	DQ	..@c343,..@c344-..@c343
	DB	4
	DD	..@c345-..@c343
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1119:
	DD	..@c1121-..@c1120
..@c1120:
	DQ	..@c346,..@c347-..@c346
	DB	4
	DD	..@c348-..@c346
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1121:
	DD	..@c1123-..@c1122
..@c1122:
	DQ	..@c349,..@c350-..@c349
	DB	4
	DD	..@c351-..@c349
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1123:
	DD	..@c1125-..@c1124
..@c1124:
	DQ	..@c352,..@c353-..@c352
	DB	4
	DD	..@c354-..@c352
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1125:
	DD	..@c1127-..@c1126
..@c1126:
	DQ	..@c355,..@c356-..@c355
	DB	4
	DD	..@c357-..@c355
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1127:
	DD	..@c1129-..@c1128
..@c1128:
	DQ	..@c358,..@c359-..@c358
	DB	4
	DD	..@c360-..@c358
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1129:
	DD	..@c1131-..@c1130
..@c1130:
	DQ	..@c361,..@c362-..@c361
	DB	4
	DD	..@c363-..@c361
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1131:
	DD	..@c1133-..@c1132
..@c1132:
	DQ	..@c364,..@c365-..@c364
	DB	4
	DD	..@c366-..@c364
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1133:
	DD	..@c1135-..@c1134
..@c1134:
	DQ	..@c367,..@c368-..@c367
	DB	4
	DD	..@c369-..@c367
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1135:
	DD	..@c1137-..@c1136
..@c1136:
	DQ	..@c370,..@c371-..@c370
	DB	4
	DD	..@c372-..@c370
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1137:
	DD	..@c1139-..@c1138
..@c1138:
	DQ	..@c373,..@c374-..@c373
	DB	4
	DD	..@c375-..@c373
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1139:
	DD	..@c1141-..@c1140
..@c1140:
	DQ	..@c376,..@c377-..@c376
	ALIGN 4,DB 0
..@c1141:
	DD	..@c1143-..@c1142
..@c1142:
	DQ	..@c378,..@c379-..@c378
	DB	4
	DD	..@c380-..@c378
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1143:
	DD	..@c1145-..@c1144
..@c1144:
	DQ	..@c381,..@c382-..@c381
	DB	4
	DD	..@c383-..@c381
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1145:
	DD	..@c1147-..@c1146
..@c1146:
	DQ	..@c384,..@c385-..@c384
	DB	4
	DD	..@c386-..@c384
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1147:
	DD	..@c1149-..@c1148
..@c1148:
	DQ	..@c387,..@c388-..@c387
	DB	4
	DD	..@c389-..@c387
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c390-..@c389
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c391-..@c390
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1149:
	DD	..@c1151-..@c1150
..@c1150:
	DQ	..@c392,..@c393-..@c392
	DB	4
	DD	..@c394-..@c392
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1151:
	DD	..@c1153-..@c1152
..@c1152:
	DQ	..@c395,..@c396-..@c395
	DB	4
	DD	..@c397-..@c395
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1153:
	DD	..@c1155-..@c1154
..@c1154:
	DQ	..@c398,..@c399-..@c398
	DB	4
	DD	..@c400-..@c398
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1155:
	DD	..@c1157-..@c1156
..@c1156:
	DQ	..@c401,..@c402-..@c401
	DB	4
	DD	..@c403-..@c401
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1157:
	DD	..@c1159-..@c1158
..@c1158:
	DQ	..@c404,..@c405-..@c404
	DB	4
	DD	..@c406-..@c404
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1159:
	DD	..@c1161-..@c1160
..@c1160:
	DQ	..@c407,..@c408-..@c407
	DB	4
	DD	..@c409-..@c407
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1161:
	DD	..@c1163-..@c1162
..@c1162:
	DQ	..@c410,..@c411-..@c410
	DB	4
	DD	..@c412-..@c410
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1163:
	DD	..@c1165-..@c1164
..@c1164:
	DQ	..@c413,..@c414-..@c413
	DB	4
	DD	..@c415-..@c413
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1165:
	DD	..@c1167-..@c1166
..@c1166:
	DQ	..@c416,..@c417-..@c416
	DB	4
	DD	..@c418-..@c416
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1167:
	DD	..@c1169-..@c1168
..@c1168:
	DQ	..@c419,..@c420-..@c419
	DB	4
	DD	..@c421-..@c419
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1169:
	DD	..@c1171-..@c1170
..@c1170:
	DQ	..@c422,..@c423-..@c422
	DB	4
	DD	..@c424-..@c422
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1171:
	DD	..@c1173-..@c1172
..@c1172:
	DQ	..@c425,..@c426-..@c425
	DB	4
	DD	..@c427-..@c425
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1173:
	DD	..@c1175-..@c1174
..@c1174:
	DQ	..@c428,..@c429-..@c428
	DB	4
	DD	..@c430-..@c428
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1175:
	DD	..@c1177-..@c1176
..@c1176:
	DQ	..@c431,..@c432-..@c431
	DB	4
	DD	..@c433-..@c431
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1177:
	DD	..@c1179-..@c1178
..@c1178:
	DQ	..@c434,..@c435-..@c434
	DB	4
	DD	..@c436-..@c434
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1179:
	DD	..@c1181-..@c1180
..@c1180:
	DQ	..@c437,..@c438-..@c437
	DB	4
	DD	..@c439-..@c437
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1181:
	DD	..@c1183-..@c1182
..@c1182:
	DQ	..@c440,..@c441-..@c440
	DB	4
	DD	..@c442-..@c440
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1183:
	DD	..@c1185-..@c1184
..@c1184:
	DQ	..@c443,..@c444-..@c443
	DB	4
	DD	..@c445-..@c443
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1185:
	DD	..@c1187-..@c1186
..@c1186:
	DQ	..@c446,..@c447-..@c446
	DB	4
	DD	..@c448-..@c446
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1187:
	DD	..@c1189-..@c1188
..@c1188:
	DQ	..@c449,..@c450-..@c449
	DB	4
	DD	..@c451-..@c449
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1189:
	DD	..@c1191-..@c1190
..@c1190:
	DQ	..@c452,..@c453-..@c452
	DB	4
	DD	..@c454-..@c452
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1191:
	DD	..@c1193-..@c1192
..@c1192:
	DQ	..@c455,..@c456-..@c455
	DB	4
	DD	..@c457-..@c455
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1193:
	DD	..@c1195-..@c1194
..@c1194:
	DQ	..@c458,..@c459-..@c458
	DB	4
	DD	..@c460-..@c458
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1195:
	DD	..@c1197-..@c1196
..@c1196:
	DQ	..@c461,..@c462-..@c461
	DB	4
	DD	..@c463-..@c461
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1197:
	DD	..@c1199-..@c1198
..@c1198:
	DQ	..@c464,..@c465-..@c464
	DB	4
	DD	..@c466-..@c464
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1199:
	DD	..@c1201-..@c1200
..@c1200:
	DQ	..@c467,..@c468-..@c467
	ALIGN 4,DB 0
..@c1201:
	DD	..@c1203-..@c1202
..@c1202:
	DQ	..@c469,..@c470-..@c469
	DB	4
	DD	..@c471-..@c469
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1203:
	DD	..@c1205-..@c1204
..@c1204:
	DQ	..@c472,..@c473-..@c472
	DB	4
	DD	..@c474-..@c472
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c475-..@c474
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c476-..@c475
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1205:
	DD	..@c1207-..@c1206
..@c1206:
	DQ	..@c477,..@c478-..@c477
	DB	4
	DD	..@c479-..@c477
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c480-..@c479
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c481-..@c480
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1207:
	DD	..@c1209-..@c1208
..@c1208:
	DQ	..@c482,..@c483-..@c482
	DB	4
	DD	..@c484-..@c482
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1209:
	DD	..@c1211-..@c1210
..@c1210:
	DQ	..@c485,..@c486-..@c485
	DB	4
	DD	..@c487-..@c485
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1211:
	DD	..@c1213-..@c1212
..@c1212:
	DQ	..@c488,..@c489-..@c488
	DB	4
	DD	..@c490-..@c488
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1213:
	DD	..@c1215-..@c1214
..@c1214:
	DQ	..@c491,..@c492-..@c491
	DB	4
	DD	..@c493-..@c491
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1215:
	DD	..@c1217-..@c1216
..@c1216:
	DQ	..@c494,..@c495-..@c494
	DB	4
	DD	..@c496-..@c494
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c497-..@c496
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c498-..@c497
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1217:
	DD	..@c1219-..@c1218
..@c1218:
	DQ	..@c499,..@c500-..@c499
	DB	4
	DD	..@c501-..@c499
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c502-..@c501
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c503-..@c502
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1219:
	DD	..@c1221-..@c1220
..@c1220:
	DQ	..@c504,..@c505-..@c504
	DB	4
	DD	..@c506-..@c504
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c507-..@c506
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c508-..@c507
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1221:
	DD	..@c1223-..@c1222
..@c1222:
	DQ	..@c509,..@c510-..@c509
	DB	4
	DD	..@c511-..@c509
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c512-..@c511
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c513-..@c512
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1223:
	DD	..@c1225-..@c1224
..@c1224:
	DQ	..@c514,..@c515-..@c514
	DB	4
	DD	..@c516-..@c514
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c517-..@c516
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c518-..@c517
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1225:
	DD	..@c1227-..@c1226
..@c1226:
	DQ	..@c519,..@c520-..@c519
	DB	4
	DD	..@c521-..@c519
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c522-..@c521
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c523-..@c522
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1227:
	DD	..@c1229-..@c1228
..@c1228:
	DQ	..@c524,..@c525-..@c524
	DB	4
	DD	..@c526-..@c524
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1229:
	DD	..@c1231-..@c1230
..@c1230:
	DQ	..@c527,..@c528-..@c527
	ALIGN 4,DB 0
..@c1231:
	DD	..@c1233-..@c1232
..@c1232:
	DQ	..@c529,..@c530-..@c529
	DB	4
	DD	..@c531-..@c529
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1233:
	DD	..@c1235-..@c1234
..@c1234:
	DQ	..@c532,..@c533-..@c532
	DB	4
	DD	..@c534-..@c532
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1235:
	DD	..@c1237-..@c1236
..@c1236:
	DQ	..@c535,..@c536-..@c535
	DB	4
	DD	..@c537-..@c535
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1237:
	DD	..@c1239-..@c1238
..@c1238:
	DQ	..@c538,..@c539-..@c538
	DB	4
	DD	..@c540-..@c538
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1239:
	DD	..@c1241-..@c1240
..@c1240:
	DQ	..@c541,..@c542-..@c541
	ALIGN 4,DB 0
..@c1241:
	DD	..@c1243-..@c1242
..@c1242:
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
..@c1243:
	DD	..@c1245-..@c1244
..@c1244:
	DQ	..@c548,..@c549-..@c548
	DB	4
	DD	..@c550-..@c548
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c551-..@c550
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c552-..@c551
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1245:
	DD	..@c1247-..@c1246
..@c1246:
	DQ	..@c553,..@c554-..@c553
	ALIGN 4,DB 0
..@c1247:
	DD	..@c1249-..@c1248
..@c1248:
	DQ	..@c555,..@c556-..@c555
	DB	4
	DD	..@c557-..@c555
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c558-..@c557
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c559-..@c558
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1249:
	DD	..@c1251-..@c1250
..@c1250:
	DQ	..@c560,..@c561-..@c560
	DB	4
	DD	..@c562-..@c560
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c563-..@c562
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c564-..@c563
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1251:
	DD	..@c1253-..@c1252
..@c1252:
	DQ	..@c565,..@c566-..@c565
	DB	4
	DD	..@c567-..@c565
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c568-..@c567
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c569-..@c568
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1253:
	DD	..@c1255-..@c1254
..@c1254:
	DQ	..@c570,..@c571-..@c570
	DB	4
	DD	..@c572-..@c570
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c573-..@c572
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c574-..@c573
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1255:
	DD	..@c1257-..@c1256
..@c1256:
	DQ	..@c575,..@c576-..@c575
	DB	4
	DD	..@c577-..@c575
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c578-..@c577
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c579-..@c578
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1257:
	DD	..@c1259-..@c1258
..@c1258:
	DQ	..@c580,..@c581-..@c580
	DB	4
	DD	..@c582-..@c580
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c583-..@c582
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c584-..@c583
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1259:
	DD	..@c1261-..@c1260
..@c1260:
	DQ	..@c585,..@c586-..@c585
	DB	4
	DD	..@c587-..@c585
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c588-..@c587
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c589-..@c588
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1261:
	DD	..@c1263-..@c1262
..@c1262:
	DQ	..@c590,..@c591-..@c590
	DB	4
	DD	..@c592-..@c590
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c593-..@c592
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c594-..@c593
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1263:
	DD	..@c1265-..@c1264
..@c1264:
	DQ	..@c595,..@c596-..@c595
	DB	4
	DD	..@c597-..@c595
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c598-..@c597
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c599-..@c598
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1265:
	DD	..@c1267-..@c1266
..@c1266:
	DQ	..@c600,..@c601-..@c600
	DB	4
	DD	..@c602-..@c600
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c603-..@c602
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c604-..@c603
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1267:
	DD	..@c1269-..@c1268
..@c1268:
	DQ	..@c605,..@c606-..@c605
	ALIGN 4,DB 0
..@c1269:
	DD	..@c1271-..@c1270
..@c1270:
	DQ	..@c607,..@c608-..@c607
	DB	4
	DD	..@c609-..@c607
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1271:
	DD	..@c1273-..@c1272
..@c1272:
	DQ	..@c610,..@c611-..@c610
	DB	4
	DD	..@c612-..@c610
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1273:
	DD	..@c1275-..@c1274
..@c1274:
	DQ	..@c613,..@c614-..@c613
	DB	4
	DD	..@c615-..@c613
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1275:
	DD	..@c1277-..@c1276
..@c1276:
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
..@c1277:
	DD	..@c1279-..@c1278
..@c1278:
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
..@c1279:
	DD	..@c1281-..@c1280
..@c1280:
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
..@c1281:
	DD	..@c1283-..@c1282
..@c1282:
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
..@c1283:
	DD	..@c1285-..@c1284
..@c1284:
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
..@c1285:
	DD	..@c1287-..@c1286
..@c1286:
	DQ	..@c641,..@c642-..@c641
	ALIGN 4,DB 0
..@c1287:
	DD	..@c1289-..@c1288
..@c1288:
	DQ	..@c643,..@c644-..@c643
	DB	4
	DD	..@c645-..@c643
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1289:
	DD	..@c1291-..@c1290
..@c1290:
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
..@c1291:
	DD	..@c1293-..@c1292
..@c1292:
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
..@c1293:
	DD	..@c1295-..@c1294
..@c1294:
	DQ	..@c656,..@c657-..@c656
	DB	4
	DD	..@c658-..@c656
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1295:
	DD	..@c1297-..@c1296
..@c1296:
	DQ	..@c659,..@c660-..@c659
	DB	4
	DD	..@c661-..@c659
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1297:
	DD	..@c1299-..@c1298
..@c1298:
	DQ	..@c662,..@c663-..@c662
	DB	4
	DD	..@c664-..@c662
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1299:
	DD	..@c1301-..@c1300
..@c1300:
	DQ	..@c665,..@c666-..@c665
	DB	4
	DD	..@c667-..@c665
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1301:
	DD	..@c1303-..@c1302
..@c1302:
	DQ	..@c668,..@c669-..@c668
	DB	4
	DD	..@c670-..@c668
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1303:
	DD	..@c1305-..@c1304
..@c1304:
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
..@c1305:
	DD	..@c1307-..@c1306
..@c1306:
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
..@c1307:
	DD	..@c1309-..@c1308
..@c1308:
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
..@c1309:
	DD	..@c1311-..@c1310
..@c1310:
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
..@c1311:
	DD	..@c1313-..@c1312
..@c1312:
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
..@c1313:
	DD	..@c1315-..@c1314
..@c1314:
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
..@c1315:
	DD	..@c1317-..@c1316
..@c1316:
	DQ	..@c701,..@c702-..@c701
	DB	4
	DD	..@c703-..@c701
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1317:
	DD	..@c1319-..@c1318
..@c1318:
	DQ	..@c704,..@c705-..@c704
	DB	4
	DD	..@c706-..@c704
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1319:
	DD	..@c1321-..@c1320
..@c1320:
	DQ	..@c707,..@c708-..@c707
	DB	4
	DD	..@c709-..@c707
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1321:
	DD	..@c1323-..@c1322
..@c1322:
	DQ	..@c710,..@c711-..@c710
	DB	4
	DD	..@c712-..@c710
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1323:
	DD	..@c1325-..@c1324
..@c1324:
	DQ	..@c713,..@c714-..@c713
	ALIGN 4,DB 0
..@c1325:
	DD	..@c1327-..@c1326
..@c1326:
	DQ	..@c715,..@c716-..@c715
	DB	4
	DD	..@c717-..@c715
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1327:
	DD	..@c1329-..@c1328
..@c1328:
	DQ	..@c718,..@c719-..@c718
	DB	4
	DD	..@c720-..@c718
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1329:
	DD	..@c1331-..@c1330
..@c1330:
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
..@c1331:
	DD	..@c1333-..@c1332
..@c1332:
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
..@c1333:
	DD	..@c1335-..@c1334
..@c1334:
	DQ	..@c731,..@c732-..@c731
	DB	4
	DD	..@c733-..@c731
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1335:
	DD	..@c1337-..@c1336
..@c1336:
	DQ	..@c734,..@c735-..@c734
	DB	4
	DD	..@c736-..@c734
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1337:
	DD	..@c1339-..@c1338
..@c1338:
	DQ	..@c737,..@c738-..@c737
	DB	4
	DD	..@c739-..@c737
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1339:
	DD	..@c1341-..@c1340
..@c1340:
	DQ	..@c740,..@c741-..@c740
	DB	4
	DD	..@c742-..@c740
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1341:
	DD	..@c1343-..@c1342
..@c1342:
	DQ	..@c743,..@c744-..@c743
	DB	4
	DD	..@c745-..@c743
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1343:
	DD	..@c1345-..@c1344
..@c1344:
	DQ	..@c746,..@c747-..@c746
	DB	4
	DD	..@c748-..@c746
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1345:
	DD	..@c1347-..@c1346
..@c1346:
	DQ	..@c749,..@c750-..@c749
	DB	4
	DD	..@c751-..@c749
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1347:
	DD	..@c1349-..@c1348
..@c1348:
	DQ	..@c752,..@c753-..@c752
	DB	4
	DD	..@c754-..@c752
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1349:
	DD	..@c1351-..@c1350
..@c1350:
	DQ	..@c755,..@c756-..@c755
	DB	4
	DD	..@c757-..@c755
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1351:
	DD	..@c1353-..@c1352
..@c1352:
	DQ	..@c758,..@c759-..@c758
	DB	4
	DD	..@c760-..@c758
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1353:
	DD	..@c1355-..@c1354
..@c1354:
	DQ	..@c761,..@c762-..@c761
	DB	4
	DD	..@c763-..@c761
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1355:
	DD	..@c1357-..@c1356
..@c1356:
	DQ	..@c764,..@c765-..@c764
	ALIGN 4,DB 0
..@c1357:
	DD	..@c1359-..@c1358
..@c1358:
	DQ	..@c766,..@c767-..@c766
	ALIGN 4,DB 0
..@c1359:
	DD	..@c1361-..@c1360
..@c1360:
	DQ	..@c768,..@c769-..@c768
	ALIGN 4,DB 0
..@c1361:
	DD	..@c1363-..@c1362
..@c1362:
	DQ	..@c770,..@c771-..@c770
	DB	4
	DD	..@c772-..@c770
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1363:
	DD	..@c1365-..@c1364
..@c1364:
	DQ	..@c773,..@c774-..@c773
	DB	4
	DD	..@c775-..@c773
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1365:
	DD	..@c1367-..@c1366
..@c1366:
	DQ	..@c776,..@c777-..@c776
	DB	4
	DD	..@c778-..@c776
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1367:
	DD	..@c1369-..@c1368
..@c1368:
	DQ	..@c779,..@c780-..@c779
	DB	4
	DD	..@c781-..@c779
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1369:
	DD	..@c1371-..@c1370
..@c1370:
	DQ	..@c782,..@c783-..@c782
	DB	4
	DD	..@c784-..@c782
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1371:
	DD	..@c1373-..@c1372
..@c1372:
	DQ	..@c785,..@c786-..@c785
	DB	4
	DD	..@c787-..@c785
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c788-..@c787
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c789-..@c788
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1373:
	DD	..@c1375-..@c1374
..@c1374:
	DQ	..@c790,..@c791-..@c790
	DB	4
	DD	..@c792-..@c790
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c793-..@c792
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c794-..@c793
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1375:
	DD	..@c1377-..@c1376
..@c1376:
	DQ	..@c795,..@c796-..@c795
	DB	4
	DD	..@c797-..@c795
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1377:
	DD	..@c1379-..@c1378
..@c1378:
	DQ	..@c798,..@c799-..@c798
	DB	4
	DD	..@c800-..@c798
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c801-..@c800
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c802-..@c801
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1379:
	DD	..@c1381-..@c1380
..@c1380:
	DQ	..@c803,..@c804-..@c803
	DB	4
	DD	..@c805-..@c803
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c806-..@c805
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c807-..@c806
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1381:
	DD	..@c1383-..@c1382
..@c1382:
	DQ	..@c808,..@c809-..@c808
	DB	4
	DD	..@c810-..@c808
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1383:
	DD	..@c1385-..@c1384
..@c1384:
	DQ	..@c811,..@c812-..@c811
	DB	4
	DD	..@c813-..@c811
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1385:
	DD	..@c1387-..@c1386
..@c1386:
	DQ	..@c814,..@c815-..@c814
	DB	4
	DD	..@c816-..@c814
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1387:
	DD	..@c1389-..@c1388
..@c1388:
	DQ	..@c817,..@c818-..@c817
	DB	4
	DD	..@c819-..@c817
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1389:
	DD	..@c1391-..@c1390
..@c1390:
	DQ	..@c820,..@c821-..@c820
	DB	4
	DD	..@c822-..@c820
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1391:
	DD	..@c1393-..@c1392
..@c1392:
	DQ	..@c823,..@c824-..@c823
	ALIGN 4,DB 0
..@c1393:
	DD	..@c1395-..@c1394
..@c1394:
	DQ	..@c825,..@c826-..@c825
	ALIGN 4,DB 0
..@c1395:
	DD	..@c1397-..@c1396
..@c1396:
	DQ	..@c827,..@c828-..@c827
	ALIGN 4,DB 0
..@c1397:
	DD	..@c1399-..@c1398
..@c1398:
	DQ	..@c829,..@c830-..@c829
	DB	4
	DD	..@c831-..@c829
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1399:
	DD	..@c1401-..@c1400
..@c1400:
	DQ	..@c832,..@c833-..@c832
	DB	4
	DD	..@c834-..@c832
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1401:
	DD	..@c1403-..@c1402
..@c1402:
	DQ	..@c835,..@c836-..@c835
	DB	4
	DD	..@c837-..@c835
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1403:
	DD	..@c1405-..@c1404
..@c1404:
	DQ	..@c838,..@c839-..@c838
	ALIGN 4,DB 0
..@c1405:
	DD	..@c1407-..@c1406
..@c1406:
	DQ	..@c840,..@c841-..@c840
	DB	4
	DD	..@c842-..@c840
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1407:
	DD	..@c1409-..@c1408
..@c1408:
	DQ	..@c843,..@c844-..@c843
	DB	4
	DD	..@c845-..@c843
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1409:
	DD	..@c1411-..@c1410
..@c1410:
	DQ	..@c846,..@c847-..@c846
	DB	4
	DD	..@c848-..@c846
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1411:
	DD	..@c1413-..@c1412
..@c1412:
	DQ	..@c849,..@c850-..@c849
	ALIGN 4,DB 0
..@c1413:
	DD	..@c1415-..@c1414
..@c1414:
	DQ	..@c851,..@c852-..@c851
	ALIGN 4,DB 0
..@c1415:
	DD	..@c1417-..@c1416
..@c1416:
	DQ	..@c853,..@c854-..@c853
	DB	4
	DD	..@c855-..@c853
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1417:
	DD	..@c1419-..@c1418
..@c1418:
	DQ	..@c856,..@c857-..@c856
	DB	4
	DD	..@c858-..@c856
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1419:
	DD	..@c1421-..@c1420
..@c1420:
	DQ	..@c859,..@c860-..@c859
	DB	4
	DD	..@c861-..@c859
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c862-..@c861
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c863-..@c862
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1421:
	DD	..@c1423-..@c1422
..@c1422:
	DQ	..@c864,..@c865-..@c864
	DB	4
	DD	..@c866-..@c864
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c867-..@c866
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c868-..@c867
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1423:
	DD	..@c1425-..@c1424
..@c1424:
	DQ	..@c869,..@c870-..@c869
	DB	4
	DD	..@c871-..@c869
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1425:
	DD	..@c1427-..@c1426
..@c1426:
	DQ	..@c872,..@c873-..@c872
	ALIGN 4,DB 0
..@c1427:
	DD	..@c1429-..@c1428
..@c1428:
	DQ	..@c874,..@c875-..@c874
	ALIGN 4,DB 0
..@c1429:
	DD	..@c1431-..@c1430
..@c1430:
	DQ	..@c876,..@c877-..@c876
	DB	4
	DD	..@c878-..@c876
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1431:
	DD	..@c1433-..@c1432
..@c1432:
	DQ	..@c879,..@c880-..@c879
	DB	4
	DD	..@c881-..@c879
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1433:
	DD	..@c1435-..@c1434
..@c1434:
	DQ	..@c882,..@c883-..@c882
	DB	4
	DD	..@c884-..@c882
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c885-..@c884
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c886-..@c885
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1435:
	DD	..@c1437-..@c1436
..@c1436:
	DQ	..@c887,..@c888-..@c887
	DB	4
	DD	..@c889-..@c887
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c890-..@c889
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c891-..@c890
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1437:
	DD	..@c1439-..@c1438
..@c1438:
	DQ	..@c892,..@c893-..@c892
	DB	4
	DD	..@c894-..@c892
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c1439:
; End asmlist al_dwarf_frame

