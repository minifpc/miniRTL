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
EXTERN	FPC_EMPTYMETHOD
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
	GLOBAL RTLUNIT_$$_GETBSR8BIT$$PBYTELOOKUP
RTLUNIT_$$_GETBSR8BIT$$PBYTELOOKUP:
..@c1:
; Var $result located in register rax
; [RTLUnit.pas]
; [63] begin
%LINE 63+0 RTLUnit.pas
; [64] result := @bsr8bit;
%LINE 64+0
		lea	rax,[TC_$RTLUNIT_$$_BSR8BIT]
; Var $result located in register rax
; [65] end;
%LINE 65+0
		ret
..@c2:

SECTION .text
	GLOBAL RTLUNIT$_$TWIDGETSET_$__$$_CREATE$$TWIDGETSET
RTLUNIT$_$TWIDGETSET_$__$$_CREATE$$TWIDGETSET:
..@c3:
; [81] begin
%LINE 81+0
		push	rbp
..@c5:
..@c6:
		mov	rbp,rsp
..@c7:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j8
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j8:
		cmp	qword [rbp-16],0
		je	..@j5
..@j16:
		nop
..@j15:
		mov	qword [rbp-24],-1
; [82] inherited Create;
%LINE 82+0
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
; [83] end;
%LINE 83+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j13
		cmp	qword [rbp-8],0
		je	..@j13
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 81+0
		jmp	..@j13
..@j12:
%LINE 83+0
		cmp	qword [rbp-8],0
		je	..@j22
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j22:
		call	fpc_reraise
%LINE 81+0
		call	FPC_DONEEXCEPTION
..@j23:
		nop
..@j13:
..@j5:
%LINE 83+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c4:

SECTION .text
	GLOBAL RTLUNIT$_$TWIDGETSET_$__$$_DESTROY
RTLUNIT$_$TWIDGETSET_$__$$_DESTROY:
..@c8:
; [86] begin
%LINE 86+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c10:
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var $vmt located in register rsi
		test	rsi,rsi
		jng	..@j27
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j27:
; Var $self located in register rbx
; [87] inherited Destroy;
%LINE 87+0
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [88] end;
%LINE 88+0
		test	rbx,rbx
		je	..@j29
		test	rsi,rsi
		je	..@j29
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j29:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c9:

SECTION .text
	GLOBAL RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL
RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL:
..@c11:
; [91] begin
%LINE 91+0
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j34
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j34:
		cmp	qword [rbp-16],0
		je	..@j31
..@j42:
		nop
..@j41:
		mov	qword [rbp-24],-1
; [92] inherited Create;
%LINE 92+0
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
; [93] end;
%LINE 93+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j39
		cmp	qword [rbp-8],0
		je	..@j39
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 91+0
		jmp	..@j39
..@j38:
%LINE 93+0
		cmp	qword [rbp-8],0
		je	..@j48
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j48:
		call	fpc_reraise
%LINE 91+0
		call	FPC_DONEEXCEPTION
..@j49:
		nop
..@j39:
..@j31:
%LINE 93+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c12:

SECTION .text
	GLOBAL RTLUNIT$_$TRTL_$__$$_DESTROY
RTLUNIT$_$TRTL_$__$$_DESTROY:
..@c16:
; [96] begin
%LINE 96+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c18:
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var $vmt located in register rsi
		test	rsi,rsi
		jng	..@j53
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j53:
; Var $self located in register rbx
; [97] inherited Destroy;
%LINE 97+0
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [98] end;
%LINE 98+0
		test	rbx,rbx
		je	..@j55
		test	rsi,rsi
		je	..@j55
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j55:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c17:

SECTION .text
	GLOBAL RTLUNIT_$$_TRTL_CREATE$$TRTL
RTLUNIT_$$_TRTL_CREATE$$TRTL:
..@c19:
; [101] begin
%LINE 101+0
		push	rbx
		lea	rsp,[rsp-32]
..@c21:
; Var $result located in register rax
; [102] WriteLn('xxxx');
%LINE 102+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$RTLUNIT$_Ld1]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [103] result := TRTL.Create;
%LINE 103+0
		mov	edx,1
		lea	rcx,[VMT_$RTLUNIT_$$_TRTL]
		call	RTLUNIT$_$TRTL_$__$$_CREATE$$TRTL
; Var $result located in register rax
; [104] end;
%LINE 104+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c20:

SECTION .text
	GLOBAL RTLUNIT_$$_TRTL_DESTROY$TRTL
RTLUNIT_$$_TRTL_DESTROY$TRTL:
..@c22:
; [107] begin
%LINE 107+0
		lea	rsp,[rsp-40]
..@c24:
; Var AValue located in register rax
; Var AValue located in register rcx
; [108] AValue.Free;
%LINE 108+0
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [109] end;
%LINE 109+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c23:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLUNIT_$$_TWIDGETSET
VMT_$RTLUNIT_$$_TWIDGETSET	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d2,0,0,0,RTTI_$RTLUNIT_$$_TWIDGETSET
	DQ	0,0,0,0,RTLUNIT$_$TWIDGETSET_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; [154] end.
%LINE 154+0 RTLUnit.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLUNIT_$$_TRTL
VMT_$RTLUNIT_$$_TRTL	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d3,0,0,0,RTTI_$RTLUNIT_$$_TRTL
	DQ	0,0,0,0,RTLUNIT$_$TRTL_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
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
%LINE 28+0 RTLUnit.pas

SECTION .rodata
_$RTLUNIT$_Ld1:
%LINE 102+0
		DB	4,"xxxx",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TBYTELOOKUP
RTTI_$RTLUNIT_$$_TBYTELOOKUP	DB	12,11
; [155] 
%LINE 155+0 RTLUnit.pas
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
%LINE 154+0 RTLUnit.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$RTLUNIT_$$_TRTL$indirect
VMT_$RTLUNIT_$$_TRTL$indirect	DQ	VMT_$RTLUNIT_$$_TRTL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect
RTTI_$RTLUNIT_$$_TBYTELOOKUP$indirect	DQ	RTTI_$RTLUNIT_$$_TBYTELOOKUP
%LINE 155+0

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
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c25:
	DD	..@c27-..@c26
..@c26:
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
..@c27:
	DD	..@c29-..@c28
..@c28:
	DQ	..@c1,..@c2-..@c1
	ALIGN 4,DB 0
..@c29:
	DD	..@c31-..@c30
..@c30:
	DQ	..@c3,..@c4-..@c3
	DB	4
	DD	..@c5-..@c3
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c6-..@c5
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c7-..@c6
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c31:
	DD	..@c33-..@c32
..@c32:
	DQ	..@c8,..@c9-..@c8
	DB	4
	DD	..@c10-..@c8
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c33:
	DD	..@c35-..@c34
..@c34:
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
..@c35:
	DD	..@c37-..@c36
..@c36:
	DQ	..@c16,..@c17-..@c16
	DB	4
	DD	..@c18-..@c16
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c37:
	DD	..@c39-..@c38
..@c38:
	DQ	..@c19,..@c20-..@c19
	DB	4
	DD	..@c21-..@c19
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c39:
	DD	..@c41-..@c40
..@c40:
	DQ	..@c22,..@c23-..@c22
	DB	4
	DD	..@c24-..@c22
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c41:
; End asmlist al_dwarf_frame

