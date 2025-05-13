BITS 64
default rel
CPU x64

EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_decr_ref
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
STRUTILS$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000004:
..@c1:
; [strutils.pas]
; [68] end;
		push	rbp
..@c3:
..@c4:
		mov	rbp,rcx
..@c5:
		lea	rsp,[rsp-32]
		lea	rax,[rbp-56]
		mov	rcx,rax
		call	fpc_ansistr_decr_ref
; [35] begin
		lea	rcx,[rbp-64]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
	GLOBAL STRUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
STRUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
..@c6:
; Temps allocated between rbp-64 and rbp-56
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-96]
; Var S located at rbp-8, size=OS_64
; Var OldPattern located at rbp-16, size=OS_64
; Var NewPattern located at rbp-24, size=OS_64
; Var Flags located at rbp+48, size=OS_8
; Var $result located at rbp-32, size=OS_64
; Var i located at rbp-36, size=OS_S32
; Var StartPos located at rbp-40, size=OS_S32
; Var OldLen located at rbp-44, size=OS_S32
; Var ResultStr located at rbp-56, size=OS_64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	qword [rbp-24],r9
		mov	qword [rbp-56],0
		mov	qword [rbp-64],0
..@j11:
		nop
..@j7:
; [36] ResultStr := '';
		lea	rax,[rbp-56]
		mov	rdx,0
		mov	rcx,rax
		call	fpc_ansistr_assign
; [37] StartPos := 1;
		mov	dword [rbp-40],1
; [38] OldLen := Length(OldPattern);
		mov	rax,qword [rbp-16]
		test	rax,rax
		je	..@j12
		mov	rax,qword [rax-8]
..@j12:
		mov	dword [rbp-44],eax
; [40] if OldLen = 0 then
		cmp	dword [rbp-44],0
		je	..@j13
		jmp	..@j14
..@j13:
; [42] Exit(S);
		mov	rcx,qword [rbp-32]
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
		jmp	..@j9
	ALIGN 4
..@j14:
; [45] i := Pos(OldPattern, S);
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		mov	r8,1
		call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
		mov	dword [rbp-36],eax
; [47] while i > 0 do
		jmp	..@j16
	ALIGN 8
..@j15:
; [50] ResultStr := ResultStr + Copy(S, StartPos, i - StartPos);
		movsxd	r9,dword [rbp-36]
		movsxd	rax,dword [rbp-40]
		sub	r9,rax
		movsxd	r8,dword [rbp-40]
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-64]
		call	fpc_ansistr_copy
		mov	r8,qword [rbp-64]
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		mov	r9d,0
		call	fpc_ansistr_concat
; [53] ResultStr := ResultStr + NewPattern;
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		mov	r9d,0
		call	fpc_ansistr_concat
; [56] StartPos := i + OldLen;
		mov	edx,dword [rbp-36]
		mov	eax,dword [rbp-44]
		lea	eax,[edx+eax]
		mov	dword [rbp-40],eax
; [59] i := Pos(OldPattern, Copy(S, StartPos, Length(S) - StartPos + 1));
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j18
		mov	rax,qword [rax-8]
..@j18:
		movsxd	rdx,dword [rbp-40]
		sub	rax,rdx
		lea	r9,[rax+1]
		movsxd	r8,dword [rbp-40]
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-64]
		call	fpc_ansistr_copy
		mov	rdx,qword [rbp-64]
		mov	rcx,qword [rbp-16]
		mov	r8,1
		call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
		mov	dword [rbp-36],eax
; [60] if i > 0 then
		cmp	dword [rbp-36],0
		jg	..@j19
		jmp	..@j20
..@j19:
; [61] i := i + StartPos - 1;
		mov	eax,dword [rbp-36]
		mov	edx,dword [rbp-40]
		lea	eax,[eax+edx]
		sub	eax,1
		mov	dword [rbp-36],eax
	ALIGN 4
..@j20:
..@j16:
		cmp	dword [rbp-36],0
		jg	..@j15
		jmp	..@j17
..@j17:
; [65] ResultStr := ResultStr + Copy(S, StartPos, Length(S) - StartPos + 1);
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j21
		mov	rax,qword [rax-8]
..@j21:
		movsxd	rdx,dword [rbp-40]
		sub	rax,rdx
		lea	r9,[rax+1]
		movsxd	r8,dword [rbp-40]
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-64]
		call	fpc_ansistr_copy
		mov	r8,qword [rbp-64]
		mov	rdx,qword [rbp-56]
		lea	rcx,[rbp-56]
		mov	r9d,0
		call	fpc_ansistr_concat
; [67] Exit(ResultStr);
		mov	rcx,qword [rbp-32]
		mov	rdx,qword [rbp-56]
		call	fpc_ansistr_assign
		jmp	..@j9
..@j9:
		nop
..@j8:
		mov	rcx,rbp
		call	STRUTILS$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000004
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c7:
; End asmlist al_procedures
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAG
RTTI_$STRUTILS_$$_TREPLACEFLAG	DB	3,12
; [80] 
		DB	"TReplaceFlag"
	DB	1
	DD	0,1
	DQ	0
	DB	12
		DB	"rfReplaceAll"
	DB	12
		DB	"rfIgnoreCase"
	DB	8
		DB	"StrUtils"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAG_s2o
RTTI_$STRUTILS_$$_TREPLACEFLAG_s2o	DD	2,1
	DQ	RTTI_$STRUTILS_$$_TREPLACEFLAG+44
	DD	0
	DQ	RTTI_$STRUTILS_$$_TREPLACEFLAG+31

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAG_o2s
RTTI_$STRUTILS_$$_TREPLACEFLAG_o2s	DD	0
	DQ	RTTI_$STRUTILS_$$_TREPLACEFLAG+31,RTTI_$STRUTILS_$$_TREPLACEFLAG+44

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAGS
RTTI_$STRUTILS_$$_TREPLACEFLAGS	DB	5,13
		DB	"TReplaceFlags"
	DB	1
	DQ	1,RTTI_$STRUTILS_$$_TREPLACEFLAG$indirect
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAG$indirect
RTTI_$STRUTILS_$$_TREPLACEFLAG$indirect	DQ	RTTI_$STRUTILS_$$_TREPLACEFLAG

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAG_s2o$indirect
RTTI_$STRUTILS_$$_TREPLACEFLAG_s2o$indirect	DQ	RTTI_$STRUTILS_$$_TREPLACEFLAG_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAG_o2s$indirect
RTTI_$STRUTILS_$$_TREPLACEFLAG_o2s$indirect	DQ	RTTI_$STRUTILS_$$_TREPLACEFLAG_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAGS$indirect
RTTI_$STRUTILS_$$_TREPLACEFLAGS$indirect	DQ	RTTI_$STRUTILS_$$_TREPLACEFLAGS
; End asmlist al_indirectglobals

