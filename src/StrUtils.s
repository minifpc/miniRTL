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
STRUTILS$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000004:
..@c1:
; [StrUtils.pas]
; [68] end;
%LINE 68+0 StrUtils.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rcx
..@c5:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [35] begin
%LINE 35+0
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c2:

SECTION .text
	GLOBAL STRUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
STRUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
..@c6:
; Temps allocated between rbp-72 and rbp-8
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
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
		mov	al,byte [rbp+48]
; Var Flags located in register al
		mov	qword [rbp-8],0
		mov	qword [rbp-16],0
..@j11:
		nop
..@j7:
; [36] ResultStr := '';
%LINE 36+0
		lea	rcx,[rbp-8]
		xor	edx,edx
		call	fpc_ansistr_assign
; [37] StartPos := 1;
%LINE 37+0
		mov	edi,1
; [38] OldLen := Length(OldPattern);
%LINE 38+0
		mov	rax,rbx
		test	rbx,rbx
		je	..@j12
		mov	rax,qword [rax-8]
..@j12:
		mov	r12d,eax
; [40] if OldLen = 0 then
%LINE 40+0
		test	eax,eax
		jne	..@j14
; [42] Exit(S);
%LINE 42+0
		mov	rcx,r15
		mov	rdx,r14
		call	fpc_ansistr_assign
		jmp	..@j9
..@j14:
; [45] i := Pos(OldPattern, S);
%LINE 45+0
		mov	rdx,r14
		mov	rcx,rbx
		mov	r8d,1
		call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
		mov	r13d,eax
; [47] while i > 0 do
%LINE 47+0
		jmp	..@j16
..@j15:
; [50] ResultStr := ResultStr + Copy(S, StartPos, i - StartPos);
%LINE 50+0
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
; [53] ResultStr := ResultStr + NewPattern;
%LINE 53+0
		mov	r8,rsi
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-8]
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [56] StartPos := i + OldLen;
%LINE 56+0
		lea	edi,[r12d+r13d]
; [59] i := Pos(OldPattern, Copy(S, StartPos, Length(S) - StartPos + 1));
%LINE 59+0
		mov	rax,r14
		test	r14,r14
		je	..@j18
		mov	rax,qword [rax-8]
..@j18:
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
; [60] if i > 0 then
%LINE 60+0
		test	r13d,r13d
		jng	..@j20
; [61] i := i + StartPos - 1;
%LINE 61+0
		lea	eax,[edi+r13d]
		dec	eax
		mov	r13d,eax
..@j20:
..@j16:
%LINE 47+0
		test	r13d,r13d
		jg	..@j15
; [65] ResultStr := ResultStr + Copy(S, StartPos, Length(S) - StartPos + 1);
%LINE 65+0
		mov	rax,r14
		test	r14,r14
		je	..@j21
		mov	rax,qword [rax-8]
..@j21:
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
; [67] Exit(ResultStr);
%LINE 67+0
		mov	rcx,r15
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j9:
%LINE 35+0
		nop
..@j8:
		mov	rcx,rbp
		call	STRUTILS$_$STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING_$$_fin$00000004
%LINE 68+0
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
..@c7:
; End asmlist al_procedures
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$STRUTILS_$$_TREPLACEFLAG
RTTI_$STRUTILS_$$_TREPLACEFLAG	DB	3,12
; [80] 
%LINE 80+0 StrUtils.pas
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
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c11:
	DD	..@c13-..@c12
..@c12:
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
..@c13:
	DD	..@c15-..@c14
..@c14:
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
..@c15:
	DD	..@c17-..@c16
..@c16:
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
..@c17:
; End asmlist al_dwarf_frame

