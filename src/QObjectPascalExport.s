BITS 64
default rel
CPU x64

EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
EXTERN	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
	GLOBAL QOBJECTPASCALEXPORT$_$QOBJECT_$__$$_CREATE$$QOBJECT
QOBJECTPASCALEXPORT$_$QOBJECT_$__$$_CREATE$$QOBJECT:
..@c1:
; [QObjectPascalExport.pas]
; [43] begin
%LINE 43+0 QObjectPascalExport.pas
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
		je	..@j5
		jmp	..@j6
..@j5:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
	ALIGN 4
..@j6:
		cmp	qword [rbp-16],0
		je	..@j7
		jmp	..@j8
..@j7:
		jmp	..@j3
	ALIGN 4
..@j8:
..@j14:
		nop
..@j13:
		mov	qword [rbp-24],-1
; [44] end;
%LINE 44+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		jne	..@j16
		jmp	..@j17
..@j16:
		cmp	qword [rbp-8],0
		jne	..@j18
		jmp	..@j17
..@j18:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j17:
%LINE 43+0
		jmp	..@j11
..@j10:
%LINE 44+0
		cmp	qword [rbp-8],0
		jne	..@j19
		jmp	..@j20
..@j19:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	QOBJECTPASCALEXPORT$_$QOBJECT_$__$$_DESTROY
	ALIGN 4
..@j20:
		call	fpc_reraise
%LINE 43+0
		call	FPC_DONEEXCEPTION
..@j21:
		nop
..@j11:
..@j3:
%LINE 44+0
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
	GLOBAL QOBJECTPASCALEXPORT$_$QOBJECT_$__$$_DESTROY
QOBJECTPASCALEXPORT$_$QOBJECT_$__$$_DESTROY:
..@c6:
; [47] begin
%LINE 47+0
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
		jg	..@j24
		jmp	..@j25
..@j24:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
	ALIGN 4
..@j25:
; [48] end;
%LINE 48+0
		cmp	qword [rbp-16],0
		jne	..@j26
		jmp	..@j27
..@j26:
		cmp	qword [rbp-8],0
		jne	..@j28
		jmp	..@j27
..@j28:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
	ALIGN 4
..@j27:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL QOBJECTPASCALEXPORT$_$QOBJECT_$__$$_TEST
QOBJECTPASCALEXPORT$_$QOBJECT_$__$$_TEST:
..@c11:
; [51] begin
%LINE 51+0
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-16]
; Var $self located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [52] end;
%LINE 52+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c12:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QOBJECTPASCALEXPORT_$$_QOBJECT
VMT_$QOBJECTPASCALEXPORT_$$_QOBJECT	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d1,0,0,0,RTTI_$QOBJECTPASCALEXPORT_$$_QOBJECT
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; [54] end.
%LINE 54+0 QObjectPascalExport.pas
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d1:
	DB	7
		DB	"QObject"
; End asmlist al_const
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QOBJECTPASCALEXPORT_$$_QOBJECT
INIT_$QOBJECTPASCALEXPORT_$$_QOBJECT	DB	15,7
; [55] 
%LINE 55+0 QObjectPascalExport.pas
		DB	"QObject"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QOBJECTPASCALEXPORT_$$_QOBJECT
RTTI_$QOBJECTPASCALEXPORT_$$_QOBJECT	DB	15,7
		DB	"QObject"
	DQ	VMT_$QOBJECTPASCALEXPORT_$$_QOBJECT,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	19
		DB	"QObjectPascalExport"
	DW	0
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QOBJECTPASCALEXPORT_$$_QOBJECT$indirect
VMT_$QOBJECTPASCALEXPORT_$$_QOBJECT$indirect	DQ	VMT_$QOBJECTPASCALEXPORT_$$_QOBJECT
%LINE 54+0 QObjectPascalExport.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QOBJECTPASCALEXPORT_$$_QOBJECT$indirect
INIT_$QOBJECTPASCALEXPORT_$$_QOBJECT$indirect	DQ	INIT_$QOBJECTPASCALEXPORT_$$_QOBJECT
%LINE 55+0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QOBJECTPASCALEXPORT_$$_QOBJECT$indirect
RTTI_$QOBJECTPASCALEXPORT_$$_QOBJECT$indirect	DQ	RTTI_$QOBJECTPASCALEXPORT_$$_QOBJECT
; End asmlist al_indirectglobals
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

