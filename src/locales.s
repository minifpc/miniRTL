BITS 64
default rel
CPU x64

EXTERN	fpc_ansistr_decr_ref
; Begin asmlist al_procedures

SECTION .text
	GLOBAL INIT$_$LOCALES
INIT$_$LOCALES:
	GLOBAL LOCALES_$$_init_implicit$
LOCALES_$$_init_implicit$:
..@c1:
%LINE 0+0
		lea	rsp,[rsp-40]
..@c3:
		nop
		lea	rsp,[rsp+40]
		ret
..@c2:

SECTION .text
	GLOBAL FINALIZE$_$LOCALES
FINALIZE$_$LOCALES:
	GLOBAL LOCALES_$$_finalize_implicit$
LOCALES_$$_finalize_implicit$:
..@c4:
		push	rbp
..@c6:
..@c7:
		mov	rbp,rsp
..@c8:
		lea	rsp,[rsp-32]
		lea	rcx,[sInformation]
		call	fpc_ansistr_decr_ref
		lea	rcx,[sError]
		call	fpc_ansistr_decr_ref
		lea	rcx,[sHello]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c5:
; End asmlist al_procedures
; Begin asmlist al_const

SECTION .rodata
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d1:
; [Locales.pas]
; [22] sInformation: AnsiString = 'Information'; export;
%LINE 22+0 Locales.pas
		DB	"Information",0

SECTION .rodata
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,6
..@d2:
; [23] sError: AnsiString = 'Fehler'; export;
%LINE 23+0
		DB	"Fehler",0

SECTION .rodata
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d3:
; [24] sHello: AnsiString = 'Hallo Welt'; export;
%LINE 24+0
		DB	"Hallo Welt",0
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .data
	GLOBAL sInformation
sInformation	DQ	..@d1
%LINE 23+0 Locales.pas

SECTION .data
	GLOBAL sError
sError	DQ	..@d2
%LINE 24+0

SECTION .data
	GLOBAL sHello
sHello	DQ	..@d3
; [36] implementation
%LINE 36+0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c9:
	DD	..@c11-..@c10
..@c10:
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
..@c11:
	DD	..@c13-..@c12
..@c12:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c13:
	DD	..@c15-..@c14
..@c14:
	DQ	..@c4,..@c5-..@c4
	DB	4
	DD	..@c6-..@c4
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c7-..@c6
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c8-..@c7
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c15:
; End asmlist al_dwarf_frame

