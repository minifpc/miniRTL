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
EXTERN	FPC_EMPTYMETHOD
EXTERN	TC_$SYSTEM_$$_EXCEPTOBJPROC
EXTERN	TC_$SYSTEM_$$_EXCEPTCLSPROC
EXTERN	TC_$SYSTEM_$$_ERRORPROC
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING$indirect
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
; Begin asmlist al_procedures

SECTION .text
EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017:
..@c1:
; [exceptions.pas]
; [71] end;
%LINE 71+0 exceptions.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rcx
..@c5:
		lea	rsp,[rsp-32]
; [49] begin
%LINE 49+0
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c2:

SECTION .text
	GLOBAL EXCEPTIONS_$$_TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING
EXCEPTIONS_$$_TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING:
..@c6:
; Temps allocated between rbp-40 and rbp-8
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-112]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
; Var len located in register ebx
; Var buf located at rbp-8, size=OS_64
		mov	rsi,rcx
; Var $result located in register rsi
		mov	r8d,edx
; Var code located in register r8d
		mov	qword [rbp-16],0
..@j11:
		nop
..@j7:
; [50] len := FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM or FORMAT_MESSAGE_IGNORE_INSERTS or FORMAT_MESSAGE_ALLOCATE_BUFFER,
%LINE 50+0
		mov	qword [rsp+48],0
		mov	dword [rsp+40],0
; [54] @buf,
%LINE 54+0
		lea	rax,[rbp-8]
%LINE 50+0
		mov	qword [rsp+32],rax
; [53] MAKELANGID(0{LANG_NEUTRAL}, 1{SUBLANG_DEFAULT}),
%LINE 53+0
		mov	r9w,1024
		movzx	r9d,r9w
%LINE 50+0
		xor	edx,edx
		mov	ecx,4864
		call	_$dll$kernel32$FormatMessageA
		mov	ebx,eax
; [57] writeln('len = ', len);
%LINE 57+0
		call	fpc_get_output
		mov	rdi,rax
		lea	r8,[_$EXCEPTIONS$_Ld1]
		mov	rdx,rdi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	r8d,ebx
		mov	rdx,rdi
		xor	ecx,ecx
		call	fpc_write_text_uint
		mov	rcx,rdi
		call	fpc_writeln_end
; [60] writeln('msg = ', string(buf));
%LINE 60+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$EXCEPTIONS$_Ld2]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rdx,qword [rbp-8]
		xor	r8d,r8d
		lea	rcx,[rbp-16]
		call	fpc_pchar_to_ansistr
		mov	r8,qword [rbp-16]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_ansistr
		mov	rcx,rbx
		call	fpc_writeln_end
; [63] result := buf;
%LINE 63+0
		mov	rcx,rsi
		mov	rdx,qword [rbp-8]
		xor	r8d,r8d
		call	fpc_pchar_to_ansistr
; [69] writeln('result = ', result);
%LINE 69+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$EXCEPTIONS$_Ld3]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	r8,qword [rsi]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_ansistr
		mov	rcx,rbx
		call	fpc_writeln_end
; [70] LocalFree(HLOCAL(buf));
%LINE 70+0
		mov	rcx,qword [rbp-8]
		call	_$dll$kernel32$LocalFree
..@j9:
%LINE 49+0
		nop
..@j8:
		mov	rcx,rbp
		call	EXCEPTIONS$_$TRANSLATE_WINDOWS_ERROR$LONGINT$$ANSISTRING_$$_fin$00000017
%LINE 71+0
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c7:

SECTION .text
	GLOBAL EXCEPTIONS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$LONGINT$$EXCEPTION
EXCEPTIONS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$LONGINT$$EXCEPTION:
..@c11:
; [74] begin
%LINE 74+0
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
		jne	..@j15
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-32],rax
..@j15:
		cmp	qword [rbp-32],0
		je	..@j12
..@j23:
		nop
..@j22:
		mov	qword [rbp-40],-1
; [75] Message := msg;
%LINE 75+0
		mov	rax,qword [rbp-32]
		lea	rcx,[rax+8]
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
; [76] Code := errcode;
%LINE 76+0
		mov	rax,qword [rbp-32]
		mov	edx,dword [rbp-16]
		mov	dword [rax+16],edx
; [77] end;
%LINE 77+0
		mov	qword [rbp-40],1
		cmp	qword [rbp-32],0
		je	..@j20
		cmp	qword [rbp-24],0
		je	..@j20
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 74+0
		jmp	..@j20
..@j19:
%LINE 77+0
		cmp	qword [rbp-24],0
		je	..@j29
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+96]
..@j29:
		call	fpc_reraise
%LINE 74+0
		call	FPC_DONEEXCEPTION
..@j30:
		nop
..@j20:
..@j12:
%LINE 77+0
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c12:

SECTION .text
EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER:
..@c16:
; [80] begin
%LINE 80+0
		lea	rsp,[rsp-40]
..@c18:
; Var $result located in register rax
; Var code located in register ecx
; Var rec located in register rdx
; [81] result := TTestException.Create('@@todo');
%LINE 81+0
		lea	r8,[..@d4]
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TTESTEXCEPTION]
		call	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
; Var $result located in register rax
; [82] end;
%LINE 82+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c17:

SECTION .text
EXCEPTIONS_$$_DEFAULT_EXCEPTCLSPROC$LONGINT$$POINTER:
..@c19:
; Var $result located in register rax
; Var code located in register ecx
; [84] begin
%LINE 84+0
; [85] if (code >= low(exception_classes)) and (code <= high(exception_classes)) then result := exception_classes[code] else result := nil;
%LINE 85+0
		cmp	ecx,200
		jnge	..@j36
		cmp	ecx,236
		jnle	..@j36
		and	ecx,ecx
		lea	rax,[U_$EXCEPTIONS_$$_EXCEPTION_CLASSES]
		mov	rax,qword [rax+rcx*8-1600]
		ret
..@j36:
		xor	eax,eax
; [86] end;
%LINE 86+0
		ret
..@c20:

SECTION .text
EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER:
..@c21:
; Temps allocated between rbp-24 and rbp+0
; [88] begin
%LINE 88+0
		push	rbp
..@c23:
..@c24:
		mov	rbp,rsp
..@c25:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rdi
		mov	qword [rbp-8],rsi
		mov	ebx,ecx
; Var code located in register ebx
		mov	rsi,rdx
; Var addr located in register rsi
		mov	rdi,r8
; Var frame located in register rdi
..@j41:
; [89] raise TTestException.Create('@@todo');
%LINE 89+0
		lea	r8,[..@d4]
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TTESTEXCEPTION]
		call	SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
		mov	rcx,rax
		lea	rdx,[..@j41]
		mov	r8,rbp
		call	fpc_raiseexception
; [90] end;
%LINE 90+0
		mov	rbx,qword [rbp-24]
		mov	rdi,qword [rbp-16]
		mov	rsi,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c22:

SECTION .text
EXCEPTIONS_$$_INITEXCEPTIONS:
..@c26:
; Var i located in register eax
; [95] begin
%LINE 95+0
; [96] exception_classes[200] := EDivByZero;
%LINE 96+0
		lea	rax,[VMT_$EXCEPTIONS_$$_EDIVBYZERO]
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES],rax
; [97] exception_classes[201] := nil;
%LINE 97+0
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+8],0
; [98] exception_classes[202] := nil;
%LINE 98+0
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+16],0
; [99] exception_classes[203] := EOutOfMemory;
%LINE 99+0
		lea	rax,[VMT_$EXCEPTIONS_$$_EOUTOFMEMORY]
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+24],rax
; Var i located in register eax
; [101] for i := 204 to 215 do
%LINE 101+0
		mov	eax,203
..@j44:
		inc	eax
; [102] exception_classes[i] := nil;
%LINE 102+0
		mov	edx,eax
		lea	rcx,[U_$EXCEPTIONS_$$_EXCEPTION_CLASSES]
		mov	qword [rcx+rdx*8-1600],0
%LINE 101+0
		cmp	eax,215
		jnge	..@j44
; [104] exception_classes[216] := EAccessViolation;
%LINE 104+0
		lea	rax,[VMT_$EXCEPTIONS_$$_EACCESSVIOLATION]
		mov	qword [U_$EXCEPTIONS_$$_EXCEPTION_CLASSES+128],rax
; Var i located in register eax
; [106] for i := 217 to 236 do
%LINE 106+0
		mov	eax,216
..@j47:
		inc	eax
; [107] exception_classes[i] := nil;
%LINE 107+0
		mov	edx,eax
		lea	rcx,[U_$EXCEPTIONS_$$_EXCEPTION_CLASSES]
		mov	qword [rcx+rdx*8-1600],0
%LINE 106+0
		cmp	eax,236
		jnge	..@j47
; [108] end;
%LINE 108+0
		ret
..@c27:

SECTION .text
	GLOBAL INIT$_$EXCEPTIONS
INIT$_$EXCEPTIONS:
	GLOBAL EXCEPTIONS_$$_init$
EXCEPTIONS_$$_init$:
..@c28:
; [110] initialization
%LINE 110+0
		lea	rsp,[rsp-40]
..@c30:
; [111] initExceptions;
%LINE 111+0
		call	EXCEPTIONS_$$_INITEXCEPTIONS
; [113] ExceptObjProc := @default_ExceptObjProc;
%LINE 113+0
		lea	rax,[EXCEPTIONS_$$_DEFAULT_EXCEPTOBJPROC$LONGINT$EXCEPTION_RECORD$$POINTER]
		mov	qword [TC_$SYSTEM_$$_EXCEPTOBJPROC],rax
; [114] ExceptClsProc := @default_ExceptClsProc;
%LINE 114+0
		lea	rax,[EXCEPTIONS_$$_DEFAULT_EXCEPTCLSPROC$LONGINT$$POINTER]
		mov	qword [TC_$SYSTEM_$$_EXCEPTCLSPROC],rax
; [115] ErrorProc := @default_ErrorProc;
%LINE 115+0
		lea	rax,[EXCEPTIONS_$$_DEFAULT_ERRORPROC$LONGINT$POINTER$POINTER]
		mov	qword [TC_$SYSTEM_$$_ERRORPROC],rax
; [117] end.
%LINE 117+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c29:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
; [28] exception_classes: array[200..236] of TClass;
%LINE 28+0 exceptions.pas
	GLOBAL U_$EXCEPTIONS_$$_EXCEPTION_CLASSES
U_$EXCEPTIONS_$$_EXCEPTION_CLASSES:	RESB	296

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EXCEPTION
VMT_$EXCEPTIONS_$$_EXCEPTION	DQ	24,-24,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d5,0,0,0,RTTI_$EXCEPTIONS_$$_EXCEPTION
	DQ	INIT_$EXCEPTIONS_$$_EXCEPTION,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
%LINE 117+0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EDIVBYZERO
VMT_$EXCEPTIONS_$$_EDIVBYZERO	DQ	24,-24,VMT_$EXCEPTIONS_$$_EXCEPTION$indirect,..@d6,0,0,0,RTTI_$EXCEPTIONS_$$_EDIVBYZERO
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EOUTOFMEMORY
VMT_$EXCEPTIONS_$$_EOUTOFMEMORY	DQ	24,-24,VMT_$EXCEPTIONS_$$_EXCEPTION$indirect,..@d7,0,0,0,RTTI_$EXCEPTIONS_$$_EOUTOFMEMORY
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$EXCEPTIONS_$$_EACCESSVIOLATION
VMT_$EXCEPTIONS_$$_EACCESSVIOLATION	DQ	24,-24,VMT_$EXCEPTIONS_$$_EXCEPTION$indirect,..@d8,0,0,0,RTTI_$EXCEPTIONS_$$_EACCESSVIOLATION
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
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
_$EXCEPTIONS$_Ld1:
%LINE 57+0 exceptions.pas
		DB	6,"len = ",0

SECTION .rodata
_$EXCEPTIONS$_Ld2:
%LINE 60+0
		DB	6,"msg = ",0

SECTION .rodata
_$EXCEPTIONS$_Ld3:
%LINE 69+0
		DB	9,"result = ",0

SECTION .rodata
..@d4$strlab:
	DW	0,1
	DD	0
	DQ	-1,6
..@d4:
%LINE 81+0
		DB	"@@todo",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$EXCEPTIONS_$$_EXCEPTION
INIT_$EXCEPTIONS_$$_EXCEPTION	DB	15,9
; [118] 
%LINE 118+0 exceptions.pas
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
%LINE 117+0 exceptions.pas

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
%LINE 118+0

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
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c31:
	DD	..@c33-..@c32
..@c32:
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
..@c33:
	DD	..@c35-..@c34
..@c34:
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
..@c35:
	DD	..@c37-..@c36
..@c36:
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
..@c37:
	DD	..@c39-..@c38
..@c38:
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
..@c39:
	DD	..@c41-..@c40
..@c40:
	DQ	..@c16,..@c17-..@c16
	DB	4
	DD	..@c18-..@c16
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c41:
	DD	..@c43-..@c42
..@c42:
	DQ	..@c19,..@c20-..@c19
	ALIGN 4,DB 0
..@c43:
	DD	..@c45-..@c44
..@c44:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c24-..@c23
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c25-..@c24
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c45:
	DD	..@c47-..@c46
..@c46:
	DQ	..@c26,..@c27-..@c26
	ALIGN 4,DB 0
..@c47:
	DD	..@c49-..@c48
..@c48:
	DQ	..@c28,..@c29-..@c28
	DB	4
	DD	..@c30-..@c28
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c49:
; End asmlist al_dwarf_frame

