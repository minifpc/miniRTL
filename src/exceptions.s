BITS 64
default rel
CPU x64

EXTERN	_$dll$kernel32$FormatMessageA
EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	fpc_write_text_uint
EXTERN	fpc_writeln_end
EXTERN	fpc_pchar_to_ansistr
EXTERN	fpc_write_text_ansistr
EXTERN	_$dll$kernel32$LocalFree
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_assign
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	VMT_$SYSTEM_$$_TTESTEXCEPTION
EXTERN	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
EXTERN	fpc_raiseexception
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
EXTERN	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
EXTERN	TC_$SYSTEM_$$_EXCEPTOBJPROC
EXTERN	TC_$SYSTEM_$$_EXCEPTCLSPROC
EXTERN	TC_$SYSTEM_$$_ERRORPROC
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING$indirect
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017:
..@c1:
; [exceptions.pas]
; [78] end;
		push	rbp
..@c3:
..@c4:
		mov	rbp,rcx
..@c5:
		lea	rsp,[rsp-32]
; [56] begin
		lea	rcx,[rbp-40]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
	GLOBAL EXCEPTIONS_$$_TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING
EXCEPTIONS_$$_TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING:
..@c6:
; Temps allocated between rbp-48 and rbp-32
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-112]
		mov	qword [rbp-48],rbx
; Var code located at rbp-8, size=OS_S32
; Var $result located at rbp-16, size=OS_64
; Var len located at rbp-20, size=OS_32
; Var buf located at rbp-32, size=OS_64
		mov	qword [rbp-16],rcx
		mov	dword [rbp-8],edx
		mov	qword [rbp-40],0
..@j11:
		nop
..@j7:
; [57] len := FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM or FORMAT_MESSAGE_IGNORE_INSERTS or FORMAT_MESSAGE_ALLOCATE_BUFFER,
		mov	qword [rsp+48],0
		mov	dword [rsp+40],0
; [61] @buf,
		lea	rax,[rbp-32]
		mov	qword [rsp+32],rax
; [60] MAKELANGID(0{LANG_NEUTRAL}, 1{SUBLANG_DEFAULT}),
		mov	r9w,1024
		movzx	r9d,r9w
		mov	r8d,dword [rbp-8]
		mov	rdx,0
		mov	ecx,4864
		call	_$dll$kernel32$FormatMessageA
		mov	dword [rbp-20],eax
; [64] writeln('len = ', len);
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$EXCEPTIONS$_Ld1]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	r8d,dword [rbp-20]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_uint
		mov	rcx,rbx
		call	fpc_writeln_end
; [67] writeln('msg = ', string(buf));
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$EXCEPTIONS$_Ld2]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rdx,qword [rbp-32]
		mov	r8d,0
		lea	rcx,[rbp-40]
		call	fpc_pchar_to_ansistr
		mov	r8,qword [rbp-40]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_ansistr
		mov	rcx,rbx
		call	fpc_writeln_end
; [70] result := buf;
		mov	rcx,qword [rbp-16]
		mov	rdx,qword [rbp-32]
		mov	r8d,0
		call	fpc_pchar_to_ansistr
; [76] writeln('result = ', result);
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$EXCEPTIONS$_Ld3]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rax,qword [rbp-16]
		mov	r8,qword [rax]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_ansistr
		mov	rcx,rbx
		call	fpc_writeln_end
; [77] LocalFree(HLOCAL(buf));
		mov	rcx,qword [rbp-32]
		call	_$dll$kernel32$LocalFree
..@j9:
		nop
..@j8:
		mov	rcx,rbp
		call	EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017
		mov	rbx,qword [rbp-48]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL EXCEPTIONS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$LONGINT$$EXCEPTION
EXCEPTIONS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$LONGINT$$EXCEPTION:
..@c11:
; [82] begin
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-80]
; Var msg located at rbp-8, size=OS_64
; Var errcode located at rbp-16, size=OS_S32
; Var $vmt located at rbp-24, size=OS_64
; Var $self located at rbp-32, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-40, size=OS_S64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-24],rdx
		mov	qword [rbp-8],r8
		mov	dword [rbp-16],r9d
		cmp	qword [rbp-24],1
		je	..@j14
		jmp	..@j15
..@j14:
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-32],rax
	ALIGN 4
..@j15:
		cmp	qword [rbp-32],0
		je	..@j16
		jmp	..@j17
..@j16:
		jmp	..@j12
	ALIGN 4
..@j17:
..@j23:
		nop
..@j22:
		mov	qword [rbp-40],-1
; [83] Message := msg;
		mov	rax,qword [rbp-32]
		lea	rcx,[rax+8]
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
; [84] Code := errcode;
		mov	rax,qword [rbp-32]
		mov	edx,dword [rbp-16]
		mov	dword [rax+16],edx
; [85] end;
		mov	qword [rbp-40],1
		cmp	qword [rbp-32],0
		jne	..@j25
		jmp	..@j26
..@j25:
		cmp	qword [rbp-24],0
		jne	..@j27
		jmp	..@j26
..@j27:
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j26:
		jmp	..@j20
..@j19:
		cmp	qword [rbp-24],0
		jne	..@j28
		jmp	..@j29
..@j28:
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+96]
	ALIGN 4
..@j29:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j30:
		nop
..@j20:
..@j12:
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c12:

SECTION .text
	ALIGN 16
	GLOBAL EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER
EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER:
..@c16:
; [95] begin
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-64]
; Var code located at rbp-8, size=OS_S32
; Var rec located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
; [96] result := TTestException.Create('@@todo');
		lea	rax,[..@d4]
		mov	r8,rax
		mov	rdx,1
		lea	rcx,[VMT_$SYSTEM_$$_TTESTEXCEPTION]
		call	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
		mov	qword [rbp-24],rax
; [97] end;
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c17:

SECTION .text
	ALIGN 16
	GLOBAL EXCEPTIONS_$$_DEFAULT_EXCEPTCLSPROC$LONGINT$$POINTER
EXCEPTIONS_$$_DEFAULT_EXCEPTCLSPROC$LONGINT$$POINTER:
..@c21:
; [102] begin
		push	rbp
..@c23:
..@c24:
		mov	rbp,rsp
..@c25:
		lea	rsp,[rsp-16]
; Var code located at rbp-8, size=OS_S32
; Var $result located at rbp-16, size=OS_64
		mov	dword [rbp-8],ecx
; [103] if (code >= low(exception_classes)) and (code <= high(exception_classes)) then result := exception_classes[code] else result := nil;
		cmp	dword [rbp-8],200
		jge	..@j35
		jmp	..@j36
..@j35:
		cmp	dword [rbp-8],236
		jle	..@j37
		jmp	..@j36
..@j37:
		mov	edx,dword [rbp-8]
		lea	rax,[U_$EXCEPTIONS_$$_EXCEPTION_CLASSES]
		mov	rax,qword [rax+rdx*8-1600]
		mov	qword [rbp-16],rax
		jmp	..@j38
..@j36:
		mov	qword [rbp-16],0
..@j38:
; [104] end;
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c22:

SECTION .text
	ALIGN 16
	GLOBAL EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER
EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER:
..@c26:
; [109] begin
		push	rbp
..@c28:
..@c29:
		mov	rbp,rsp
..@c30:
		lea	rsp,[rsp-64]
; Var code located at rbp-8, size=OS_S32
; Var addr located at rbp-16, size=OS_64
; Var frame located at rbp-24, size=OS_64
		mov	dword [rbp-8],ecx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
..@j41:
; [110] raise TTestException.Create('@@todo');
		lea	rax,[..@d4]
		mov	r8,rax
		mov	rdx,1
		lea	rcx,[VMT_$SYSTEM_$$_TTESTEXCEPTION]
		call	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
		mov	rcx,rax
		lea	rdx,[..@j41]
		mov	r8,rbp
		call	fpc_raiseexception
; [111] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c27:

SECTION .text
	ALIGN 16
	GLOBAL EXCEPTIONS_$$_INITEXCEPTIONS
EXCEPTIONS_$$_INITEXCEPTIONS:
..@c31:
; [118] begin
		push	rbp
..@c33:
..@c34:
		mov	rbp,rsp
..@c35:
		lea	rsp,[rsp-16]
; Var i located at rbp-4, size=OS_S32
; [119] exception_classes[200] := EDivByZero;
		lea	rax,[VMT_$EXCEPTIONS_$$_EDIVBYZERO]
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES],rax
; [120] exception_classes[201] := nil;
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+8],0
; [121] exception_classes[202] := nil;
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+16],0
; [122] exception_classes[203] := EOutOfMemory;
		lea	rax,[VMT_$EXCEPTIONS_$$_EOUTOFMEMORY]
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+24],rax
; [124] for i := 204 to 215 do
		mov	dword [rbp-4],203
	ALIGN 8
..@j44:
		mov	eax,dword [rbp-4]
		lea	eax,[eax+1]
		mov	dword [rbp-4],eax
; [125] exception_classes[i] := nil;
		mov	edx,dword [rbp-4]
		lea	rax,[U_$EXCEPTIONS_$$_EXCEPTION_CLASSES]
		mov	qword [rax+rdx*8-1600],0
		cmp	dword [rbp-4],215
		jge	..@j46
		jmp	..@j44
..@j46:
; [127] exception_classes[216] := EAccessViolation;
		lea	rax,[VMT_$EXCEPTIONS_$$_EACCESSVIOLATION]
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+128],rax
; [129] for i := 217 to 236 do
		mov	dword [rbp-4],216
	ALIGN 8
..@j47:
		mov	eax,dword [rbp-4]
		lea	eax,[eax+1]
		mov	dword [rbp-4],eax
; [130] exception_classes[i] := nil;
		mov	eax,dword [rbp-4]
		lea	rdx,[U_$EXCEPTIONS_$$_EXCEPTION_CLASSES]
		mov	qword [rdx+rax*8-1600],0
		cmp	dword [rbp-4],236
		jge	..@j49
		jmp	..@j47
..@j49:
; [131] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c32:

SECTION .text
	ALIGN 16
	GLOBAL INIT$_$EXCEPTIONS
INIT$_$EXCEPTIONS:
	GLOBAL EXCEPTIONS_$$_init$
EXCEPTIONS_$$_init$:
..@c36:
; [148] initialization
		push	rbp
..@c38:
..@c39:
		mov	rbp,rsp
..@c40:
		lea	rsp,[rsp-32]
; [149] initExceptions;
		call	EXCEPTIONS_$$_INITEXCEPTIONS
; [151] ExceptObjProc := @default_ExceptObjProc;
		lea	rax,[EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER]
		mov	qword [TC_$SYSTEM_$$_EXCEPTOBJPROC],rax
; [152] ExceptClsProc := @default_ExceptClsProc;
		lea	rax,[EXCEPTIONS_$$_DEFAULT_EXCEPTCLSPROC$LONGINT$$POINTER]
		mov	qword [TC_$SYSTEM_$$_EXCEPTCLSPROC],rax
; [153] ErrorProc := @default_ErrorProc;
		lea	rax,[EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER]
		mov	qword [TC_$SYSTEM_$$_ERRORPROC],rax
; [155] end.
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c37:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
; [34] exception_classes: array[200..236] of TClass;
	GLOBAL U_$EXCEPTIONS_$$_EXCEPTION_CLASSES
U_$EXCEPTIONS_$$_EXCEPTION_CLASSES:	RESB	296

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EXCEPTION
VMT_$EXCEPTIONS_$$_EXCEPTION	DQ	24,-24,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d5,0,0,0,RTTI_$EXCEPTIONS_$$_EXCEPTION
	DQ	INIT_$EXCEPTIONS_$$_EXCEPTION,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EDIVBYZERO
VMT_$EXCEPTIONS_$$_EDIVBYZERO	DQ	24,-24,VMT_$EXCEPTIONS_$$_EXCEPTION$indirect,..@d6,0,0,0,RTTI_$EXCEPTIONS_$$_EDIVBYZERO
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EOUTOFMEMORY
VMT_$EXCEPTIONS_$$_EOUTOFMEMORY	DQ	24,-24,VMT_$EXCEPTIONS_$$_EXCEPTION$indirect,..@d7,0,0,0,RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EACCESSVIOLATION
VMT_$EXCEPTIONS_$$_EACCESSVIOLATION	DQ	24,-24,VMT_$EXCEPTIONS_$$_EXCEPTION$indirect,..@d8,0,0,0,RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d5:
	DB	9
		DB	"Exception"

SECTION .data
	ALIGN 8,DB 0
..@d6:
	DB	10
		DB	"EDivByZero"

SECTION .data
	ALIGN 8,DB 0
..@d7:
	DB	12
		DB	"EOutOfMemory"

SECTION .data
	ALIGN 8,DB 0
..@d8:
	DB	16
		DB	"EAccessViolation"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
_$EXCEPTIONS$_Ld1:
		DB	6,"len = ",0

SECTION .rodata
	ALIGN 8,DB 0
_$EXCEPTIONS$_Ld2:
		DB	6,"msg = ",0

SECTION .rodata
	ALIGN 8,DB 0
_$EXCEPTIONS$_Ld3:
		DB	9,"result = ",0

SECTION .rodata
	ALIGN 8,DB 0
..@d4$strlab:
	DW	0,1
	DD	0
	DQ	-1,6
..@d4:
		DB	"@@todo",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EXCEPTION
INIT_$EXCEPTIONS_$$_EXCEPTION	DB	15,9
; [156] 
		DB	"Exception"
	DQ	0
	DD	8
	DQ	0,0
	DD	1
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EXCEPTION
RTTI_$EXCEPTIONS_$$_EXCEPTION	DB	15,9
		DB	"Exception"
	DQ	VMT_$EXCEPTIONS_$$_EXCEPTION,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	10
		DB	"Exceptions"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EDIVBYZERO
INIT_$EXCEPTIONS_$$_EDIVBYZERO	DB	15,10
		DB	"EDivByZero"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EDIVBYZERO
RTTI_$EXCEPTIONS_$$_EDIVBYZERO	DB	15,10
		DB	"EDivByZero"
	DQ	VMT_$EXCEPTIONS_$$_EDIVBYZERO,RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
	DW	0
	DB	10
		DB	"Exceptions"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EOUTOFMEMORY
INIT_$EXCEPTIONS_$$_EOUTOFMEMORY	DB	15,12
		DB	"EOutOfMemory"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY
RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY	DB	15,12
		DB	"EOutOfMemory"
	DQ	VMT_$EXCEPTIONS_$$_EOUTOFMEMORY,RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
	DW	0
	DB	10
		DB	"Exceptions"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EACCESSVIOLATION
INIT_$EXCEPTIONS_$$_EACCESSVIOLATION	DB	15,16
		DB	"EAccessViolation"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION
RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION	DB	15,16
		DB	"EAccessViolation"
	DQ	VMT_$EXCEPTIONS_$$_EACCESSVIOLATION,RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
	DW	0
	DB	10
		DB	"Exceptions"
	DW	0
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EXCEPTION$indirect
VMT_$EXCEPTIONS_$$_EXCEPTION$indirect	DQ	VMT_$EXCEPTIONS_$$_EXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EDIVBYZERO$indirect
VMT_$EXCEPTIONS_$$_EDIVBYZERO$indirect	DQ	VMT_$EXCEPTIONS_$$_EDIVBYZERO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect
VMT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect	DQ	VMT_$EXCEPTIONS_$$_EOUTOFMEMORY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect
VMT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect	DQ	VMT_$EXCEPTIONS_$$_EACCESSVIOLATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EXCEPTION$indirect
INIT_$EXCEPTIONS_$$_EXCEPTION$indirect	DQ	INIT_$EXCEPTIONS_$$_EXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect
RTTI_$EXCEPTIONS_$$_EXCEPTION$indirect	DQ	RTTI_$EXCEPTIONS_$$_EXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EDIVBYZERO$indirect
INIT_$EXCEPTIONS_$$_EDIVBYZERO$indirect	DQ	INIT_$EXCEPTIONS_$$_EDIVBYZERO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EDIVBYZERO$indirect
RTTI_$EXCEPTIONS_$$_EDIVBYZERO$indirect	DQ	RTTI_$EXCEPTIONS_$$_EDIVBYZERO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect
INIT_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect	DQ	INIT_$EXCEPTIONS_$$_EOUTOFMEMORY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect
RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY$indirect	DQ	RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect
INIT_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect	DQ	INIT_$EXCEPTIONS_$$_EACCESSVIOLATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect
RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION$indirect	DQ	RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION
; End asmlist al_indirectglobals

