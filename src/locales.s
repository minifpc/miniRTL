BITS 64
default rel
CPU x64

EXTERN	fpc_ansistr_assign
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
	GLOBAL LOCALES_$$_SINFORMATION$$ANSISTRING
LOCALES_$$_SINFORMATION$$ANSISTRING:
..@c1:
; [locales.pas]
; [38] function sInformation: AnsiString; export; begin Exit('Information'); end;
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-48]
; Var $result located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		lea	rdx,[..@d1]
		call	fpc_ansistr_assign
		jmp	..@j3
..@j3:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
	GLOBAL LOCALES_$$_SWARNING$$ANSISTRING
LOCALES_$$_SWARNING$$ANSISTRING:
..@c6:
; [39] function sWarning    : AnsiString; export; begin Exit('Warnung'    ); end;
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-48]
; Var $result located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		lea	rdx,[..@d2]
		call	fpc_ansistr_assign
		jmp	..@j5
..@j5:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL LOCALES_$$_SERROR$$ANSISTRING
LOCALES_$$_SERROR$$ANSISTRING:
..@c11:
; [40] function sError      : AnsiString; export; begin Exit('Fehler'     ); end;
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-48]
; Var $result located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		lea	rdx,[..@d3]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j7:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c12:

SECTION .text
	ALIGN 16
	GLOBAL LOCALES_$$_SHELLO$$ANSISTRING
LOCALES_$$_SHELLO$$ANSISTRING:
..@c16:
; [41] function sHello      : AnsiString; export; begin Exit('Hallo'      ); end;
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-48]
; Var $result located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		lea	rdx,[..@d4]
		call	fpc_ansistr_assign
		jmp	..@j9
..@j9:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c17:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d1:
		DB	"Information",0

SECTION .rodata
	ALIGN 8,DB 0
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d2:
		DB	"Warnung",0

SECTION .rodata
	ALIGN 8,DB 0
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,6
..@d3:
		DB	"Fehler",0

SECTION .rodata
	ALIGN 8,DB 0
..@d4$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d4:
		DB	"Hallo",0
; End asmlist al_typedconsts

