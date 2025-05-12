BITS 64
default rel
CPU x64

EXTERN	_$dll$user32$MessageBoxA
; Begin asmlist al_procedures

SECTION .text
	GLOBAL DIALOGS_$$_SHOWMESSAGE$PCHAR
DIALOGS_$$_SHOWMESSAGE$PCHAR:
..@c1:
; [Dialogs.pas]
; [23] begin
%LINE 23+0 Dialogs.pas
		lea	rsp,[rsp-40]
..@c3:
		mov	rdx,rcx
; Var msg located in register rax
; Var msg located in register rdx
; [24] MessageBoxA(0, msg, PChar(' '), 0);
%LINE 24+0
		xor	r9d,r9d
		lea	r8,[..@d1]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [25] end;
%LINE 25+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c2:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d1:
%LINE 24+0 Dialogs.pas
		DB	" ",0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c4:
	DD	..@c6-..@c5
..@c5:
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
..@c6:
	DD	..@c8-..@c7
..@c7:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c8:
; End asmlist al_dwarf_frame

