BITS 64
default rel
CPU x64

EXTERN	fpc_pchar_to_ansistr
EXTERN	_$dll$rtllib$StringReplace
EXTERN	FPC_EMPTYCHAR
EXTERN	_$dll$rtllib$ShowMessage
EXTERN	_$dll$rtllib$sError
EXTERN	fpc_ansistr_decr_ref
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
TEST_UNIT$_$EXESTART_$$_fin$00000004:
..@c1:
; [test_unit.pas]
; [38] end;
%LINE 38+0 test_unit.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rcx
..@c5:
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
TEST_UNIT$_$EXESTART_$$_fin$00000005:
..@c6:
; [39] end;
%LINE 39+0
		push	rbp
..@c8:
..@c9:
		mov	rbp,rcx
..@c10:
		lea	rsp,[rsp-32]
; [28] begin
%LINE 28+0
		lea	rcx,[rbp-40]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL TEST_UNIT_$$_EXESTART
TEST_UNIT_$$_EXESTART:
	GLOBAL EXESTART
EXESTART:
..@c11:
; Temps allocated between rbp-40 and rbp-24
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-96]
; Var s1 located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
; Var app located at rbp-24, size=OS_64
		mov	qword [rbp-40],0
		mov	qword [rbp-32],0
..@j13:
		nop
..@j9:
..@j18:
; [30] try
%LINE 30+0
		nop
..@j14:
; [31] s1 := PChar('hallo welt');
%LINE 31+0
		lea	rax,[_$TEST_UNIT$_Ld1]
		mov	qword [rbp-8],rax
; [32] s2 := PChar(StringReplace(s1, 'hallo', 'dudu', TReplaceFlags([rfReplaceAll])));
%LINE 32+0
		mov	byte [rsp+32],1
		mov	rdx,qword [rbp-8]
		mov	r8d,0
		lea	rcx,[rbp-40]
		call	fpc_pchar_to_ansistr
		mov	rdx,qword [rbp-40]
		lea	r9,[..@d2]
		lea	r8,[..@d3]
		lea	rcx,[rbp-32]
		call	_$dll$rtllib$StringReplace
		mov	rax,qword [rbp-32]
		test	rax,rax
		jne	..@j19
		lea	rax,[FPC_EMPTYCHAR]
..@j19:
		mov	qword [rbp-16],rax
; [33] ShowMessage(PChar('mutti'));
%LINE 33+0
		lea	rcx,[_$TEST_UNIT$_Ld4]
		call	_$dll$rtllib$ShowMessage
; [34] ShowMessage(s2);
%LINE 34+0
		mov	rcx,qword [rbp-16]
		call	_$dll$rtllib$ShowMessage
; [35] ShowMessage(PChar(sError));
%LINE 35+0
		mov	rax,qword [_$dll$rtllib$sError]
		mov	rcx,qword [rax]
		call	_$dll$rtllib$ShowMessage
..@j16:
%LINE 30+0
		nop
..@j15:
		mov	rcx,rbp
		call	TEST_UNIT$_$EXESTART_$$_fin$00000004
..@j11:
%LINE 28+0
		nop
..@j10:
		mov	rcx,rbp
		call	TEST_UNIT$_$EXESTART_$$_fin$00000005
%LINE 39+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	2,0
	DD	0

SECTION .text
..@c12:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
_$TEST_UNIT$_Ld1:
%LINE 31+0 test_unit.pas
		DB	"hallo welt",0

SECTION .rodata
	ALIGN 8,DB 0
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d2:
%LINE 32+0
		DB	"dudu",0

SECTION .rodata
	ALIGN 8,DB 0
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d3:
		DB	"hallo",0

SECTION .rodata
	ALIGN 8,DB 0
_$TEST_UNIT$_Ld4:
%LINE 33+0
		DB	"mutti",0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c16:
	DD	..@c18-..@c17
..@c17:
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
..@c18:
	DD	..@c20-..@c19
..@c19:
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
..@c20:
	DD	..@c22-..@c21
..@c21:
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
..@c22:
	DD	..@c24-..@c23
..@c23:
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
..@c24:
; End asmlist al_dwarf_frame

