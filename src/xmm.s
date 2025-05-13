BITS 64
default rel
CPU x64

EXTERN	_$dll$rtllib$_atomic32
EXTERN	_$dll$rtllib$xgetmem_a
EXTERN	_$dll$rtllib$xfillmem_byte
EXTERN	_$dll$rtllib$xmminit
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
XMM_$$__XMEMCHUNKSBEGIN:
..@c1:
; [xmm.pas]
; [160] begin
%LINE 160+0 xmm.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-32]
; [161] while _atomic32(xmemchunks_critical_section, 1) <> 0 do; // consider adding a sleep to reduce CPU usage
%LINE 161+0
		jmp	..@j6
	ALIGN 8
..@j5:
..@j6:
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		mov	rcx,rax
		call	_$dll$rtllib$_atomic32
		test	eax,eax
		jne	..@j5
		jmp	..@j7
..@j7:
; [162] end;
%LINE 162+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
XMM_$$__XMEMCHUNKSEND:
..@c6:
; [166] begin
%LINE 166+0
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-32]
; [167] _atomic32(xmemchunks_critical_section, 0);
%LINE 167+0
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,0
		mov	rcx,rax
		call	_$dll$rtllib$_atomic32
; [168] end;
%LINE 168+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
XMM_$$_XGETMEM$QWORD$$POINTER:
..@c11:
; [247] begin
%LINE 247+0
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-48]
; Var size located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [248] Exit(xgetmem_a(size));
%LINE 248+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	_$dll$rtllib$xgetmem_a
		mov	qword [rbp-16],rax
		jmp	..@j10
..@j10:
; [249] end;
%LINE 249+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c12:

SECTION .text
	ALIGN 16
XMM_$$_XCLONE$POINTER$$POINTER:
..@c16:
; [349] begin
%LINE 349+0
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [350] Exit(xclone(p));
%LINE 350+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XCLONE$POINTER$$POINTER
		mov	qword [rbp-16],rax
		jmp	..@j12
..@j12:
; [351] end;
%LINE 351+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c17:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMEMREALSIZE$POINTER$$QWORD
XMM_$$_XMEMREALSIZE$POINTER$$QWORD:
..@c21:
; [365] begin
%LINE 365+0
		push	rbp
..@c23:
..@c24:
		mov	rbp,rsp
..@c25:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [369] result := pxmemheader(p-sizeof(txmemheader))^.realsize+sizeof(txmemheader);
%LINE 369+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax-24]
		lea	rax,[rax+40]
		mov	qword [rbp-16],rax
; [370] end;
%LINE 370+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c22:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD
XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD:
..@c26:
; [373] begin
%LINE 373+0
		push	rbp
..@c28:
..@c29:
		mov	rbp,rsp
..@c30:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [377] result := pxmemheader(p-sizeof(txmemheader))^.realsize;
%LINE 377+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax-24]
		mov	qword [rbp-16],rax
; [378] end;
%LINE 378+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c27:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD
XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD:
..@c31:
; [415] begin
%LINE 415+0
		push	rbp
..@c33:
..@c34:
		mov	rbp,rsp
..@c35:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [419] Exit(xfillmem_byte(p, len, 0));
%LINE 419+0
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r8d,0
		mov	rdx,rax
		call	_$dll$rtllib$xfillmem_byte
		mov	qword [rbp-24],rax
		jmp	..@j18
..@j18:
; [420] end;
%LINE 420+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c32:

SECTION .text
	ALIGN 16
	GLOBAL INIT$_$XMM
INIT$_$XMM:
	GLOBAL XMM_$$_init$
XMM_$$_init$:
..@c36:
; [529] initialization
%LINE 529+0
		push	rbp
..@c38:
..@c39:
		mov	rbp,rsp
..@c40:
		lea	rsp,[rsp-32]
; [531] xmminit;
%LINE 531+0
		call	_$dll$rtllib$xmminit
; [533] end.
%LINE 533+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c37:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
; [133] xmemchunks: array[0..XMMCHUNKCOUNT-1] of txmemchunk;
%LINE 133+0 xmm.pas
U_$XMM_$$_XMEMCHUNKS:	RESB	4521984
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .data
	ALIGN 4,DB 0
TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION	DD	0
; [135] xmemchunks_init_done: boolean = false;
%LINE 135+0 xmm.pas

SECTION .data
TC_$XMM_$$_XMEMCHUNKS_INIT_DONE	DB	0
; [155] function _atomic32(var target: integer; val: integer): integer; external RTLDLL;
%LINE 155+0
; End asmlist al_typedconsts

