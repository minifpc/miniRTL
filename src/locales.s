BITS 64
default rel
CPU x64

EXTERN	fpc_ansistr_assign
; Begin asmlist al_procedures

SECTION .text
	GLOBAL LOCALES_$$_SINFORMATION$$ANSISTRING
LOCALES_$$_SINFORMATION$$ANSISTRING:
..@c1:
; [Locales.pas]
; [38] function sInformation: AnsiString; export; begin Exit('Information'); end;
%LINE 38+0 Locales.pas
		lea	rsp,[rsp-40]
..@c3:
; Var $result located in register rax
		lea	rdx,[..@d1]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c2:

SECTION .text
	GLOBAL LOCALES_$$_SWARNING$$ANSISTRING
LOCALES_$$_SWARNING$$ANSISTRING:
..@c4:
; [39] function sWarning    : AnsiString; export; begin Exit('Warnung'    ); end;
%LINE 39+0
		lea	rsp,[rsp-40]
..@c6:
; Var $result located in register rax
		lea	rdx,[..@d2]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c5:

SECTION .text
	GLOBAL LOCALES_$$_SERROR$$ANSISTRING
LOCALES_$$_SERROR$$ANSISTRING:
..@c7:
; [40] function sError      : AnsiString; export; begin Exit('Fehler'     ); end;
%LINE 40+0
		lea	rsp,[rsp-40]
..@c9:
; Var $result located in register rax
		lea	rdx,[..@d3]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c8:

SECTION .text
	GLOBAL LOCALES_$$_SHELLO$$ANSISTRING
LOCALES_$$_SHELLO$$ANSISTRING:
..@c10:
; [41] function sHello      : AnsiString; export; begin Exit('Hallo'      ); end;
%LINE 41+0
		lea	rsp,[rsp-40]
..@c12:
; Var $result located in register rax
		lea	rdx,[..@d4]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c11:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d1:
%LINE 38+0 Locales.pas
		DB	"Information",0

SECTION .rodata
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d2:
%LINE 39+0
		DB	"Warnung",0

SECTION .rodata
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,6
..@d3:
%LINE 40+0
		DB	"Fehler",0

SECTION .rodata
..@d4$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d4:
%LINE 41+0
		DB	"Hallo",0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c13:
	DD	..@c15-..@c14
..@c14:
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
..@c15:
	DD	..@c17-..@c16
..@c16:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c17:
	DD	..@c19-..@c18
..@c18:
	DQ	..@c4,..@c5-..@c4
	DB	4
	DD	..@c6-..@c4
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c19:
	DD	..@c21-..@c20
..@c20:
	DQ	..@c7,..@c8-..@c7
	DB	4
	DD	..@c9-..@c7
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c21:
	DD	..@c23-..@c22
..@c22:
	DQ	..@c10,..@c11-..@c10
	DB	4
	DD	..@c12-..@c10
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c23:
; End asmlist al_dwarf_frame

