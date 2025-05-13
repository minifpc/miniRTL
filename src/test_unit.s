BITS 64
default rel
CPU x64

EXTERN	VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION
EXTERN	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION
EXTERN	fpc_ansistr_assign
EXTERN	_$dll$rtllib$StringReplace
EXTERN	_$dll$rtllib$ShowMessage
EXTERN	_$dll$rtllib$sError
EXTERN	fpc_ansistr_decr_ref
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
TEST_UNIT$_$EXESTART_$$_fin$00000005:
..@c1:
; [test_unit.pas]
; [36] end;
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
TEST_UNIT$_$EXESTART_$$_fin$00000006:
..@c6:
; [37] end;
		push	rbp
..@c8:
..@c9:
		mov	rbp,rcx
..@c10:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-8]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
; [26] begin
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
; Temps allocated between rbp-32 and rbp-24
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-80]
; Var s1 located at rbp-8, size=OS_64
; Var s2 located at rbp-16, size=OS_64
; Var app located at rbp-24, size=OS_64
		mov	qword [rbp-8],0
		mov	qword [rbp-16],0
		mov	qword [rbp-32],0
..@j13:
		nop
..@j9:
; [27] app := QApplication.Create;
		mov	rax,1
		lea	rcx,[VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION]
		mov	rdx,rax
		call	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION
		mov	qword [rbp-24],rax
..@j18:
; [28] try
		nop
..@j14:
; [29] s1 := 'hallo welt';
		lea	rcx,[rbp-8]
		lea	rdx,[..@d1]
		call	fpc_ansistr_assign
; [30] s2 := StringReplace(s1, 'hallo', 'dudu', TReplaceFlags([rfReplaceAll]));
		mov	byte [rsp+32],1
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-16]
		lea	r9,[..@d2]
		lea	r8,[..@d3]
		call	_$dll$rtllib$StringReplace
; [31] ShowMessage('mutti');
		lea	rcx,[..@d4]
		call	_$dll$rtllib$ShowMessage
; [32] ShowMessage(s2);
		mov	rcx,qword [rbp-16]
		call	_$dll$rtllib$ShowMessage
; [33] ShowMessage(sError);
		lea	rcx,[rbp-32]
		call	_$dll$rtllib$sError
		mov	rcx,qword [rbp-32]
		call	_$dll$rtllib$ShowMessage
..@j16:
		nop
..@j15:
		mov	rcx,rbp
		call	TEST_UNIT$_$EXESTART_$$_fin$00000005
..@j11:
		nop
..@j10:
		mov	rcx,rbp
		call	TEST_UNIT$_$EXESTART_$$_fin$00000006
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
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d1:
		DB	"hallo welt",0

SECTION .rodata
	ALIGN 8,DB 0
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d2:
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
..@d4$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d4:
		DB	"mutti",0
; End asmlist al_typedconsts

