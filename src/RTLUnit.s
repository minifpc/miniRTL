BITS 64
default rel
CPU x64

EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	fpc_writeln_end
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
EXTERN	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
EXTERN	RTTI_$SYSTEM_$$_BYTE$indirect
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN$indirect
EXTERN	RTTI_$SYSTEM_$$_CHAR$indirect
EXTERN	RTTI_$SYSTEM_$$_WORD$indirect
EXTERN	RTTI_$SYSTEM_$$_LONGWORD$indirect
EXTERN	RTTI_$SYSTEM_$$_LONGINT$indirect
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING$indirect
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
	GLOBAL RTLUNIT_$$_GETBSR8BIT$$PBYTELOOKUP
RTLUNIT_$$_GETBSR8BIT$$PBYTELOOKUP:
..@c1:
; [RTLunit.pas]
; [63] begin
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_64
; [64] result := @bsr8bit;
		lea	rax,[TC_$RTLUNIT_$$_BSR8BIT]
		mov	qword [rbp-8],rax
; [65] end;
		mov	rax,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
	GLOBAL RTLUNIT$_$TWIDGETSET_$__$$_CREATE$$TWIDGETSET
RTLUNIT$_$TWIDGETSET_$__$$_CREATE$$TWIDGETSET:
..@c6:
; [81] begin
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],1
		je	..@j7
		jmp	..@j8
..@j7:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
	ALIGN 4
..@j8:
		cmp	qword [rbp-16],0
		je	..@j9
		jmp	..@j10
..@j9:
		jmp	..@j5
	ALIGN 4
..@j10:
..@j16:
		nop
..@j15:
		mov	qword [rbp-24],-1
; [82] inherited Create;
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
; [83] end;
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		jne	..@j18
		jmp	..@j19
..@j18:
		cmp	qword [rbp-8],0
		jne	..@j20
		jmp	..@j19
..@j20:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j19:
		jmp	..@j13
..@j12:
		cmp	qword [rbp-8],0
		jne	..@j21
		jmp	..@j22
..@j21:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
	ALIGN 4
..@j22:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j23:
		nop
..@j13:
..@j5:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL RTLUNIT$_$TWIDGETSET_$__$$_DESTROY
RTLUNIT$_$TWIDGETSET_$__$$_DESTROY:
..@c11:
; [86] begin
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-48]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],0
		jg	..@j26
		jmp	..@j27
..@j26:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
	ALIGN 4
..@j27:
; [87] inherited Destroy;
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [88] end;
		cmp	qword [rbp-16],0
		jne	..@j28
		jmp	..@j29
..@j28:
		cmp	qword [rbp-8],0
		jne	..@j30
		jmp	..@j29
..@j30:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
	ALIGN 4
..@j29:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c12:

SECTION .text
	ALIGN 16
	GLOBAL RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL
RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL:
..@c16:
; [91] begin
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],1
		je	..@j33
		jmp	..@j34
..@j33:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
	ALIGN 4
..@j34:
		cmp	qword [rbp-16],0
		je	..@j35
		jmp	..@j36
..@j35:
		jmp	..@j31
	ALIGN 4
..@j36:
..@j42:
		nop
..@j41:
		mov	qword [rbp-24],-1
; [92] inherited Create;
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
; [93] end;
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		jne	..@j44
		jmp	..@j45
..@j44:
		cmp	qword [rbp-8],0
		jne	..@j46
		jmp	..@j45
..@j46:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j45:
		jmp	..@j39
..@j38:
		cmp	qword [rbp-8],0
		jne	..@j47
		jmp	..@j48
..@j47:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
	ALIGN 4
..@j48:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j49:
		nop
..@j39:
..@j31:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c17:

SECTION .text
	ALIGN 16
	GLOBAL RTLUNIT$_$TRTL_$__$$_DESTROY
RTLUNIT$_$TRTL_$__$$_DESTROY:
..@c21:
; [96] begin
		push	rbp
..@c23:
..@c24:
		mov	rbp,rsp
..@c25:
		lea	rsp,[rsp-48]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],0
		jg	..@j52
		jmp	..@j53
..@j52:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
	ALIGN 4
..@j53:
; [97] inherited Destroy;
		mov	rcx,qword [rbp-16]
		mov	rdx,0
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [98] end;
		cmp	qword [rbp-16],0
		jne	..@j54
		jmp	..@j55
..@j54:
		cmp	qword [rbp-8],0
		jne	..@j56
		jmp	..@j55
..@j56:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
	ALIGN 4
..@j55:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c22:

SECTION .text
	ALIGN 16
	GLOBAL RTLUNIT_$$_TRTL_CREATE$$TRTL
RTLUNIT_$$_TRTL_CREATE$$TRTL:
..@c26:
; Temps allocated between rbp-16 and rbp-8
; [101] begin
		push	rbp
..@c28:
..@c29:
		mov	rbp,rsp
..@c30:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var $result located at rbp-8, size=OS_64
; [102] WriteLn('xxxx');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$RTLUNIT$_Ld1]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [103] result := TRTL.Create;
		mov	rdx,1
		lea	rcx,[VMT_$RTLUNIT_$$_TRTL]
		call	RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL
		mov	qword [rbp-8],rax
; [104] end;
		mov	rax,qword [rbp-8]
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c27:

SECTION .text
	ALIGN 16
	GLOBAL RTLUNIT_$$_TRTL_DESTROY$TRTL
RTLUNIT_$$_TRTL_DESTROY$TRTL:
..@c31:
; [107] begin
		push	rbp
..@c33:
..@c34:
		mov	rbp,rsp
..@c35:
		lea	rsp,[rsp-48]
; Var AValue located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [108] AValue.Free;
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [109] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c32:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLUNIT_$$_TWIDGETSET
VMT_$RTLUNIT_$$_TWIDGETSET	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d2,0,0,0,RTTI_$RTLUNIT_$$_TWIDGETSET
	DQ	0,0,0,0,RTLUNIT$_$TWIDGETSET_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; [165] end.

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLUNIT_$$_TRTL
VMT_$RTLUNIT_$$_TRTL	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d3,0,0,0,RTTI_$RTLUNIT_$$_TRTL
	DQ	0,0,0,0,RTLUNIT$_$TRTL_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d2:
	DB	10
		DB	"TWidgetSet"

SECTION .data
	ALIGN 8,DB 0
..@d3:
	DB	4
		DB	"TRtl"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .data
	GLOBAL TC_$RTLUNIT_$$_BSR8BIT
TC_$RTLUNIT_$$_BSR8BIT	DB	255,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5
	DB	5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
	DB	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
	DB	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
; [28] function GetBsr8bit: PByteLookup; stdcall; export;

SECTION .rodata
	ALIGN 8,DB 0
_$RTLUNIT$_Ld1:
		DB	4,"xxxx",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TBYTELOOKUP
RTTI_$RTLUNIT_$$_TBYTELOOKUP	DB	12,11
; [166] 
		DB	"TByteLookup"
	DQ	256,256,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_PBYTELOOKUP
RTTI_$RTLUNIT_$$_PBYTELOOKUP	DB	29,11
		DB	"PByteLookup"
	DQ	RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$RTLUNIT_$$_TWIDGETSET
INIT_$RTLUNIT_$$_TWIDGETSET	DB	15,10
		DB	"TWidgetSet"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TWIDGETSET
RTTI_$RTLUNIT_$$_TWIDGETSET	DB	15,10
		DB	"TWidgetSet"
	DQ	VMT_$RTLUNIT_$$_TWIDGETSET,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	7
		DB	"RTLUnit"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$RTLUNIT_$$_TRTL
INIT_$RTLUNIT_$$_TRTL	DB	15,4
		DB	"TRtl"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TRTL
RTTI_$RTLUNIT_$$_TRTL	DB	15,4
		DB	"TRtl"
	DQ	VMT_$RTLUNIT_$$_TRTL,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	7
		DB	"RTLUnit"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN
RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN	DB	21,15
		DB	"T_Array_Boolean"
	DQ	1,RTTI_$SYSTEM_$$_BOOLEAN$indirect
	DD	11
	DQ	0
	DB	7
		DB	"RTLUnit"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_CHAR
RTTI_$RTLUNIT_$$_T_ARRAY_CHAR	DB	21,12
		DB	"T_Array_Char"
	DQ	1,RTTI_$SYSTEM_$$_CHAR$indirect
	DD	-1
	DQ	0
	DB	7
		DB	"RTLUnit"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_BYTE
RTTI_$RTLUNIT_$$_T_ARRAY_BYTE	DB	21,12
		DB	"T_Array_Byte"
	DQ	1,RTTI_$SYSTEM_$$_BYTE$indirect
	DD	17
	DQ	0
	DB	7
		DB	"RTLUnit"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_WORD
RTTI_$RTLUNIT_$$_T_ARRAY_WORD	DB	21,12
		DB	"T_Array_Word"
	DQ	2,RTTI_$SYSTEM_$$_WORD$indirect
	DD	18
	DQ	0
	DB	7
		DB	"RTLUnit"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_DWORD
RTTI_$RTLUNIT_$$_T_ARRAY_DWORD	DB	21,13
		DB	"T_Array_DWord"
	DQ	4,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DD	19
	DQ	0
	DB	7
		DB	"RTLUnit"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER
RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER	DB	21,15
		DB	"T_Array_Integer"
	DQ	4,RTTI_$SYSTEM_$$_LONGINT$indirect
	DD	3
	DQ	0
	DB	7
		DB	"RTLUnit"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_STRING
RTTI_$RTLUNIT_$$_T_ARRAY_STRING	DB	21,14
		DB	"T_Array_String"
	DQ	8,RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DD	256
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DB	7
		DB	"RTLUnit"
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLUNIT_$$_TWIDGETSET$indirect
VMT_$RTLUNIT_$$_TWIDGETSET$indirect	DQ	VMT_$RTLUNIT_$$_TWIDGETSET

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLUNIT_$$_TRTL$indirect
VMT_$RTLUNIT_$$_TRTL$indirect	DQ	VMT_$RTLUNIT_$$_TRTL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect
RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect	DQ	RTTI_$RTLUNIT_$$_TBYTELOOKUP

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_PBYTELOOKUP$indirect
RTTI_$RTLUNIT_$$_PBYTELOOKUP$indirect	DQ	RTTI_$RTLUNIT_$$_PBYTELOOKUP

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$RTLUNIT_$$_TWIDGETSET$indirect
INIT_$RTLUNIT_$$_TWIDGETSET$indirect	DQ	INIT_$RTLUNIT_$$_TWIDGETSET

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TWIDGETSET$indirect
RTTI_$RTLUNIT_$$_TWIDGETSET$indirect	DQ	RTTI_$RTLUNIT_$$_TWIDGETSET

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$RTLUNIT_$$_TRTL$indirect
INIT_$RTLUNIT_$$_TRTL$indirect	DQ	INIT_$RTLUNIT_$$_TRTL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TRTL$indirect
RTTI_$RTLUNIT_$$_TRTL$indirect	DQ	RTTI_$RTLUNIT_$$_TRTL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN$indirect	DQ	RTTI_$RTLUNIT_$$_T_ARRAY_BOOLEAN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_CHAR$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_CHAR$indirect	DQ	RTTI_$RTLUNIT_$$_T_ARRAY_CHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_BYTE$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_BYTE$indirect	DQ	RTTI_$RTLUNIT_$$_T_ARRAY_BYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_WORD$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_WORD$indirect	DQ	RTTI_$RTLUNIT_$$_T_ARRAY_WORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_DWORD$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_DWORD$indirect	DQ	RTTI_$RTLUNIT_$$_T_ARRAY_DWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER$indirect	DQ	RTTI_$RTLUNIT_$$_T_ARRAY_INTEGER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_T_ARRAY_STRING$indirect
RTTI_$RTLUNIT_$$_T_ARRAY_STRING$indirect	DQ	RTTI_$RTLUNIT_$$_T_ARRAY_STRING
; End asmlist al_indirectglobals

