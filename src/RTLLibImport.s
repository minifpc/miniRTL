BITS 64
default rel
CPU x64

EXTERN	_$dll$rtllib$TRTL_Create
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	_$dll$rtllib$TRTL_Destroy
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
EXTERN	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN$indirect
EXTERN	RTTI_$SYSTEM_$$_CHAR$indirect
EXTERN	RTTI_$SYSTEM_$$_BYTE$indirect
EXTERN	RTTI_$SYSTEM_$$_WORD$indirect
EXTERN	RTTI_$SYSTEM_$$_LONGWORD$indirect
EXTERN	RTTI_$SYSTEM_$$_LONGINT$indirect
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING$indirect
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
	GLOBAL RTLLIBIMPORT$_$TRTL_$__$$_CREATE$$TRTL
RTLLIBIMPORT$_$TRTL_$__$$_CREATE$$TRTL:
..@c1:
; [RTLLibImport.pas]
; [211] begin
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],1
		je	..@j19
		jmp	..@j20
..@j19:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
	ALIGN 4
..@j20:
		cmp	qword [rbp-16],0
		je	..@j21
		jmp	..@j22
..@j21:
		jmp	..@j17
	ALIGN 4
..@j22:
..@j28:
		nop
..@j27:
		mov	qword [rbp-24],-1
; [212] FOwner := TRTL_Create;
		call	_$dll$rtllib$TRTL_Create
		mov	rdx,qword [rbp-16]
		mov	qword [rdx+8],rax
; [214] end;
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		jne	..@j30
		jmp	..@j31
..@j30:
		cmp	qword [rbp-8],0
		jne	..@j32
		jmp	..@j31
..@j32:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j31:
		jmp	..@j25
..@j24:
		cmp	qword [rbp-8],0
		jne	..@j33
		jmp	..@j34
..@j33:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
	ALIGN 4
..@j34:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j35:
		nop
..@j25:
..@j17:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c2:

SECTION .text
	ALIGN 16
	GLOBAL RTLLIBIMPORT$_$TRTL_$__$$_DESTROY
RTLLIBIMPORT$_$TRTL_$__$$_DESTROY:
..@c6:
; [217] begin
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-48]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],0
		jg	..@j38
		jmp	..@j39
..@j38:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
	ALIGN 4
..@j39:
; [218] TRTL_Destroy(FOwner);
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rax+8]
		call	_$dll$rtllib$TRTL_Destroy
; [219] end;
		cmp	qword [rbp-16],0
		jne	..@j40
		jmp	..@j41
..@j40:
		cmp	qword [rbp-8],0
		jne	..@j42
		jmp	..@j41
..@j42:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
	ALIGN 4
..@j41:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLLIBIMPORT_$$_TRTL
VMT_$RTLLIBIMPORT_$$_TRTL	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d1,0,0,0,RTTI_$RTLLIBIMPORT_$$_TRTL
	DQ	0,0,0,0,RTLLIBIMPORT$_$TRTL_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; [222] end.
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d1:
	DB	4
		DB	"TRTL"
; End asmlist al_const
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$RTLLIBIMPORT_$$_TRTL
INIT_$RTLLIBIMPORT_$$_TRTL	DB	15,4
; [223] 
		DB	"TRTL"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_TRTL
RTTI_$RTLLIBIMPORT_$$_TRTL	DB	15,4
		DB	"TRTL"
	DQ	VMT_$RTLLIBIMPORT_$$_TRTL,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	12
		DB	"RTLLibImport"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BOOLEAN
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BOOLEAN	DB	21,15
		DB	"T_Array_Boolean"
	DQ	1,RTTI_$SYSTEM_$$_BOOLEAN$indirect
	DD	11
	DQ	0
	DB	12
		DB	"RTLLibImport"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_CHAR
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_CHAR	DB	21,12
		DB	"T_Array_Char"
	DQ	1,RTTI_$SYSTEM_$$_CHAR$indirect
	DD	-1
	DQ	0
	DB	12
		DB	"RTLLibImport"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BYTE
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BYTE	DB	21,12
		DB	"T_Array_Byte"
	DQ	1,RTTI_$SYSTEM_$$_BYTE$indirect
	DD	17
	DQ	0
	DB	12
		DB	"RTLLibImport"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_WORD
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_WORD	DB	21,12
		DB	"T_Array_Word"
	DQ	2,RTTI_$SYSTEM_$$_WORD$indirect
	DD	18
	DQ	0
	DB	12
		DB	"RTLLibImport"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_DWORD
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_DWORD	DB	21,13
		DB	"T_Array_DWord"
	DQ	4,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DD	19
	DQ	0
	DB	12
		DB	"RTLLibImport"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_INTEGER
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_INTEGER	DB	21,15
		DB	"T_Array_Integer"
	DQ	4,RTTI_$SYSTEM_$$_LONGINT$indirect
	DD	3
	DQ	0
	DB	12
		DB	"RTLLibImport"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_STRING
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_STRING	DB	21,14
		DB	"T_Array_String"
	DQ	8,RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DD	256
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DB	12
		DB	"RTLLibImport"
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLLIBIMPORT_$$_TRTL$indirect
VMT_$RTLLIBIMPORT_$$_TRTL$indirect	DQ	VMT_$RTLLIBIMPORT_$$_TRTL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$RTLLIBIMPORT_$$_TRTL$indirect
INIT_$RTLLIBIMPORT_$$_TRTL$indirect	DQ	INIT_$RTLLIBIMPORT_$$_TRTL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_TRTL$indirect
RTTI_$RTLLIBIMPORT_$$_TRTL$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_TRTL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BOOLEAN$indirect
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BOOLEAN$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BOOLEAN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_CHAR$indirect
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_CHAR$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_T_ARRAY_CHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BYTE$indirect
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BYTE$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_T_ARRAY_BYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_WORD$indirect
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_WORD$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_T_ARRAY_WORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_DWORD$indirect
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_DWORD$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_T_ARRAY_DWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_INTEGER$indirect
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_INTEGER$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_T_ARRAY_INTEGER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLLIBIMPORT_$$_T_ARRAY_STRING$indirect
RTTI_$RTLLIBIMPORT_$$_T_ARRAY_STRING$indirect	DQ	RTTI_$RTLLIBIMPORT_$$_T_ARRAY_STRING
; End asmlist al_indirectglobals

