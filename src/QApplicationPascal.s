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
%LINE 65+0 QApplicationPascal.pas
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
%LINE 66+0
		mov	rax,1
		lea	rcx,[VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION]
		mov	rdx,rax
		call	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
; [67] if p = nil then
%LINE 67+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j5
		jmp	..@j6
..@j5:
; [69] ShowMessage('Error: could not create QApplication.');
%LINE 69+0
		lea	rcx,[_$QAPPLICATIONPASCAL$_Ld1]
		call	DIALOGS_$$_SHOWMESSAGE$PCHAR
; [70] ExitProcess(1)
%LINE 70+0
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
	ALIGN 4
..@j6:
; [72] Exit(p);
%LINE 72+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-16],rax
		jmp	..@j3
..@j3:
; [73] end;
%LINE 73+0
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
%LINE 75+0
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [76] p.Free;
%LINE 76+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [77] end;
%LINE 77+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$QAPPLICATION
QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$QAPPLICATION:
..@c11:
; Temps allocated between rbp-48 and rbp-40
; [93] begin
%LINE 93+0
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-80]
		mov	qword [rbp-48],rbx
; Var ArgCount located at rbp-8, size=OS_S32
; Var Args located at rbp-16, size=OS_64
; Var $vmt located at rbp-24, size=OS_64
; Var $self located at rbp-32, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-40, size=OS_S64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-24],rdx
		mov	dword [rbp-8],r8d
		mov	qword [rbp-16],r9
		cmp	qword [rbp-24],1
		je	..@j11
		jmp	..@j12
..@j11:
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-32],rax
	ALIGN 4
..@j12:
		cmp	qword [rbp-32],0
		je	..@j13
		jmp	..@j14
..@j13:
		jmp	..@j9
	ALIGN 4
..@j14:
..@j20:
		nop
..@j19:
		mov	qword [rbp-40],-1
; [94] writeln('app create');
%LINE 94+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld2]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [96] end;
%LINE 96+0
		mov	qword [rbp-40],1
		cmp	qword [rbp-32],0
		jne	..@j22
		jmp	..@j23
..@j22:
		cmp	qword [rbp-24],0
		jne	..@j24
		jmp	..@j23
..@j24:
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j23:
%LINE 93+0
		jmp	..@j17
..@j16:
%LINE 96+0
		cmp	qword [rbp-24],0
		jne	..@j25
		jmp	..@j26
..@j25:
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		call	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_DESTROY
	ALIGN 4
..@j26:
		call	fpc_reraise
%LINE 93+0
		call	FPC_DONEEXCEPTION
..@j27:
		nop
..@j17:
..@j9:
%LINE 96+0
		mov	rax,qword [rbp-32]
		mov	rbx,qword [rbp-48]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c12:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION
QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION:
..@c16:
; Temps allocated between rbp-32 and rbp-24
; [107] begin
%LINE 107+0
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	qword [rbp-8],1
		je	..@j30
		jmp	..@j31
..@j30:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
	ALIGN 4
..@j31:
		cmp	qword [rbp-16],0
		je	..@j32
		jmp	..@j33
..@j32:
		jmp	..@j28
	ALIGN 4
..@j33:
..@j39:
		nop
..@j38:
		mov	qword [rbp-24],-1
; [108] writeln('cccccc');
%LINE 108+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld3]
		mov	rdx,rbx
		mov	ecx,0
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [110] end;
%LINE 110+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		jne	..@j41
		jmp	..@j42
..@j41:
		cmp	qword [rbp-8],0
		jne	..@j43
		jmp	..@j42
..@j43:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
	ALIGN 4
..@j42:
%LINE 107+0
		jmp	..@j36
..@j35:
%LINE 110+0
		cmp	qword [rbp-8],0
		jne	..@j44
		jmp	..@j45
..@j44:
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_DESTROY
	ALIGN 4
..@j45:
		call	fpc_reraise
%LINE 107+0
		call	FPC_DONEEXCEPTION
..@j46:
		nop
..@j36:
..@j28:
%LINE 110+0
		mov	rax,qword [rbp-16]
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c17:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_DESTROY
QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_DESTROY:
..@c21:
; [113] begin
%LINE 113+0
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
		jg	..@j49
		jmp	..@j50
..@j49:
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+136]
	ALIGN 4
..@j50:
; [115] end;
%LINE 115+0
		cmp	qword [rbp-16],0
		jne	..@j51
		jmp	..@j52
..@j51:
		cmp	qword [rbp-8],0
		jne	..@j53
		jmp	..@j52
..@j53:
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
	ALIGN 4
..@j52:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c22:

SECTION .text
	ALIGN 16
	GLOBAL QAPPLICATIONPASCAL_$$_QAPPLICATION__CREATE$$QAPPLICATION
QAPPLICATIONPASCAL_$$_QAPPLICATION__CREATE$$QAPPLICATION:
..@c26:
; [128] begin
%LINE 128+0
		push	rbp
..@c28:
..@c29:
		mov	rbp,rsp
..@c30:
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
%LINE 129+0
		mov	qword [rbp-8],0
; [130] CmdLine := GetCommandLineA;
%LINE 130+0
		call	_$dll$kernel32$GetCommandLineA
		mov	qword [rbp-16],rax
; [131] Args    := CommandLineToArgvA(CmdLine, ArgsCount);
%LINE 131+0
		lea	rdx,[rbp-28]
		mov	rcx,qword [rbp-16]
		call	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
		mov	qword [rbp-24],rax
; [133] if Args = nil then
%LINE 133+0
		cmp	qword [rbp-24],0
		je	..@j56
		jmp	..@j57
..@j56:
; [135] MessageBoxA(0,'Error: can not parse command line.', 'Error', MB_OK);
%LINE 135+0
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld4]
		lea	rdx,[_$QAPPLICATIONPASCAL$_Ld5]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [136] ExitProcess(1);
%LINE 136+0
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
	ALIGN 4
..@j57:
; [139] TotalLen := 128;
%LINE 139+0
		mov	dword [rbp-52],128
; [141] R := StrAlloc(TotalLen);
%LINE 141+0
		mov	ecx,dword [rbp-52]
		call	_$dll$rtllib$StrAlloc
		mov	qword [rbp-48],rax
; [142] S := StrAlloc(16);
%LINE 142+0
		mov	ecx,16
		call	_$dll$rtllib$StrAlloc
		mov	qword [rbp-40],rax
; [146] StrCopy(R, 'Count of Parameters: ');
%LINE 146+0
		lea	rcx,[rbp-48]
		lea	rdx,[_$QAPPLICATIONPASCAL$_Ld6]
		call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
; [147] StrCopy(S, IntToStr(ArgsCount));
%LINE 147+0
		mov	ecx,dword [rbp-28]
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
		mov	rdx,rax
		lea	rcx,[rbp-40]
		call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
; [149] MessageBoxA(0, R, '222  11  222', 0);
%LINE 149+0
		mov	rdx,qword [rbp-48]
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld7]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [150] MessageBoxA(0, S, '222  11  222', 0);
%LINE 150+0
		mov	rdx,qword [rbp-40]
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld7]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [152] StrCat (R, S);
%LINE 152+0
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-48]
		call	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
; [154] MessageBoxA(0, R, '222  11  222', 0);
%LINE 154+0
		mov	rdx,qword [rbp-48]
		mov	r9d,0
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld7]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [156] StrDispose(R);
%LINE 156+0
		mov	rcx,qword [rbp-48]
		call	SYSUTILS_$$_STRDISPOSE$PCHAR
; [158] Exit(QApplication.Create(ArgsCount, Args));
%LINE 158+0
		mov	r9,qword [rbp-24]
		mov	r8d,dword [rbp-28]
		mov	rdx,1
		lea	rcx,[VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION]
		call	QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$QAPPLICATION
		mov	qword [rbp-8],rax
		jmp	..@j54
..@j54:
; [159] end;
%LINE 159+0
		mov	rax,qword [rbp-8]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c27:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION
VMT_$QAPPLICATIONPASCAL_$$_QAPPLICATION	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d8,0,0,0,RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0
; [169] end.
%LINE 169+0 QApplicationPascal.pas
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d8:
	DB	12
		DB	"QApplication"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld1:
%LINE 69+0 QApplicationPascal.pas
		DB	"Error: could not create QApplication.",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld2:
%LINE 94+0
		DB	10,"app create",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld3:
%LINE 108+0
		DB	6,"cccccc",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld4:
%LINE 135+0
		DB	"Error",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld5:
		DB	"Error: can not parse command line.",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld6:
%LINE 146+0
		DB	"Count of Parameters: ",0

SECTION .rodata
	ALIGN 8,DB 0
_$QAPPLICATIONPASCAL$_Ld7:
%LINE 149+0
		DB	"222  11  222",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION
INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION	DB	15,12
; [170] 
%LINE 170+0 QApplicationPascal.pas
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
%LINE 169+0 QApplicationPascal.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect
INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect	DQ	INIT_$QAPPLICATIONPASCAL_$$_QAPPLICATION
%LINE 170+0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect
RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION$indirect	DQ	RTTI_$QAPPLICATIONPASCAL_$$_QAPPLICATION
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
	DB	4
	DD	..@c19-..@c18
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c20-..@c19
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c41:
	DD	..@c43-..@c42
..@c42:
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
..@c43:
	DD	..@c45-..@c44
..@c44:
	DQ	..@c26,..@c27-..@c26
	DB	4
	DD	..@c28-..@c26
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c29-..@c28
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c30-..@c29
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c45:
; End asmlist al_dwarf_frame

