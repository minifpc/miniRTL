BITS 64
default rel
CPU x64

EXTERN	_$dll$user32$MessageBoxA
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
	GLOBAL DIALOGS_$$_SHOWMESSAGE$PCHAR
DIALOGS_$$_SHOWMESSAGE$PCHAR:
..@c1:
; [dialogs.pas]
; [23] begin
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-48]
; Var msg located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [24] MessageBoxA(0, msg, PChar(' '), 0);
		mov	rax,qword [rbp-8]
		mov	r9d,0
		lea	r8,[..@d1]
		mov	rcx,0
		mov	rdx,rax
		call	_$dll$user32$MessageBoxA
; [25] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d1:
		DB	" ",0
; End asmlist al_typedconsts

