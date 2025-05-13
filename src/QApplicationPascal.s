BITS 64
default rel
CPU x64

EXTERN	DIALOGS_$$_SHOWMESSAGE$PCHAR
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	fpc_writeln_end
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	_$dll$kernel32$GetCommandLineA
EXTERN	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$rtllib$StrAlloc
EXTERN	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
EXTERN	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
EXTERN	SYSUTILS_$$_STRDISPOSE$PCHAR
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
	GLOBAL QAPPLICATIONPASCAL_$$_QAPPLICATION_CREATE$QAPPLICATION$$QAPPLICATION
QAPPLICATIONPASCAL_$$_QAPPLICATION_CREATE$QAPPLICATION$$QAPPLICATION:
..@c1:
; [QApplicationPascal.pas]
; [65] begin
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [66] p := QApplication.Create;
		mov	rax,1
		lea	rcx,[VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION]
		mov	rdx,rax
		call	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
; [67] if p = nil then
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j5
		jmp	..@j6
..@j5:
; [69] ShowMessage('Error: could not create QApplication.');
		lea	rcx,[_$QAPPLICATIONPASCAL$_Ld1]
		call	DIALOGS_$$_SHOWMESSAGE$PCHAR
; [70] ExitProcess(1)
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
	ALIGN 4
..@j6:
; [72] Exit(p);
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-16],rax
		jmp	..@j3
..@j3:
; [73] end;
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL_$$_QAPPLICATION_DESTROY$QAPPLICATION
QAPPLICATIONPASCAL_$$_QAPPLICATION_DESTROY$QAPPLICATION:
..@c6:
; [75] begin
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [76] p.Free;
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [77] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION
QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION:
..@c11:
; Temps allocated between rbp-32 and rbp-24
; [107] begin
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],1
		je	..@j11
		jmp	..@j12
..@j11:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
	ALIGN 4
..@j12:
		cmp	qword [rbp-16],0
		je	..@j13
		jmp	..@j14
..@j13:
		jmp	..@j9
	ALIGN 4
..@j14:
..@j20:
		nop
..@j19:
		mov	qword [rbp-24],-1
; [108] writeln('cccccc');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld2]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [110] end;
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		jne	..@j22
		jmp	..@j23
..@j22:
		cmp	qword [rbp-8],0
		jne	..@j24
		jmp	..@j23
..@j24:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j23:
		jmp	..@j17
..@j16:
		cmp	qword [rbp-8],0
		jne	..@j25
		jmp	..@j26
..@j25:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_DESTROY
	ALIGN 4
..@j26:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j27:
		nop
..@j17:
..@j9:
		mov	rax,qword [rbp-16]
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c12:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_DESTROY
QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_DESTROY:
..@c16:
; [113] begin
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-48]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],0
		jg	..@j30
		jmp	..@j31
..@j30:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
	ALIGN 4
..@j31:
; [115] end;
		cmp	qword [rbp-16],0
		jne	..@j32
		jmp	..@j33
..@j32:
		cmp	qword [rbp-8],0
		jne	..@j34
		jmp	..@j33
..@j34:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
	ALIGN 4
..@j33:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c17:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL_$$_QAPPLICATION__CREATE$$QAPPLICATION
QAPPLICATIONPASCAL_$$_QAPPLICATION__CREATE$$QAPPLICATION:
..@c21:
; [128] begin
		push	rbp
..@c23:
..@c24:
		mov	rbp,rsp
..@c25:
		lea	rsp,[rsp-112]
; Var $result located at rbp-8, size=OS_64
; Var cmdline located at rbp-16, size=OS_64
; Var Args located at rbp-24, size=OS_64
; Var ArgsCount located at rbp-28, size=OS_S32
; Var S located at rbp-40, size=OS_64
; Var R located at rbp-48, size=OS_64
; Var TotalLen located at rbp-52, size=OS_S32
; Var P located at rbp-64, size=OS_64
; Var I located at rbp-68, size=OS_S32
; [129] result  := nil;
		mov	qword [rbp-8],0
; [130] CmdLine := GetCommandLineA;
		call	_$dll$kernel32$GetCommandLineA
		mov	qword [rbp-16],rax
; [131] Args    := CommandLineToArgvA(CmdLine, ArgsCount);
		lea	rdx,[rbp-28]
		mov	rcx,qword [rbp-16]
		call	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
		mov	qword [rbp-24],rax
; [133] if Args = nil then
		cmp	qword [rbp-24],0
		je	..@j37
		jmp	..@j38
..@j37:
; [135] MessageBoxA(0,'Error: can not parse command line.', 'Error', MB_OK);
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld3]
		lea	rdx,[_$QAPPLICATIONPASCAL$_Ld4]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [136] ExitProcess(1);
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
	ALIGN 4
..@j38:
; [139] TotalLen := 128;
		mov	dword [rbp-52],128
; [141] R := StrAlloc(TotalLen);
		mov	ecx,dword [rbp-52]
		call	_$dll$rtllib$StrAlloc
		mov	qword [rbp-48],rax
; [142] S := StrAlloc(16);
		mov	ecx,16
		call	_$dll$rtllib$StrAlloc
		mov	qword [rbp-40],rax
; [146] StrCopy(R, 'Count of Parameters: ');
		lea	rcx,[rbp-48]
		lea	rdx,[_$QAPPLICATIONPASCAL$_Ld5]
		call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
; [147] StrCopy(S, IntToStr(ArgsCount));
		mov	ecx,dword [rbp-28]
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
		mov	rdx,rax
		lea	rcx,[rbp-40]
		call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
; [149] MessageBoxA(0, R, '222  11  222', 0);
		mov	rdx,qword [rbp-48]
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld6]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [150] MessageBoxA(0, S, '222  11  222', 0);
		mov	rdx,qword [rbp-40]
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld6]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [152] StrCat (R, S);
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-48]
		call	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
; [154] MessageBoxA(0, R, '222  11  222', 0);
		mov	rdx,qword [rbp-48]
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld6]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [156] StrDispose(R);
		mov	rcx,qword [rbp-48]
		call	SYSUTILS_$$_STRDISPOSE$PCHAR
; [159] end;
		mov	rax,qword [rbp-8]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c22:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION
VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d7,0,0,0,RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; [169] end.
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d7:
	DB	12
		DB	"QApplication"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld1:
		DB	"Error: could not create QApplication.",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld2:
		DB	6,"cccccc",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld3:
		DB	"Error",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld4:
		DB	"Error: can not parse command line.",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld5:
		DB	"Count of Parameters: ",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld6:
		DB	"222  11  222",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION
INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION	DB	15,12
; [170] 
		DB	"QApplication"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION
RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION	DB	15,12
		DB	"QApplication"
	DQ	VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	18
		DB	"QApplicationPascal"
	DW	0
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect
VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect	DQ	VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect
INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect	DQ	INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect
RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect	DQ	RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION
; End asmlist al_indirectglobals

