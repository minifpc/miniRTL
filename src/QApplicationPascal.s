BITS 64
default rel
CPU x64

EXTERN	SYSTEM_$$_SHOWMESSAGE$PCHAR
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	fpc_writeln_end
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	_$dll$kernel32$GetCommandLineA
EXTERN	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$rtllib$StrAlloc
EXTERN	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
EXTERN	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
EXTERN	SYSUTILS_$$_STRDISPOSE$PCHAR
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
EXTERN	FPC_EMPTYMETHOD
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
; Begin asmlist al_procedures

SECTION .text
	GLOBAL QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION
QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION:
	GLOBAL TApplication_Create
TApplication_Create:
..@c1:
; [QApplicationPascal.pas]
; [79] begin
%LINE 79+0 QApplicationPascal.pas
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c3:
; Var $result located in register rax
		mov	rbx,rcx
; Var p located in register rbx
; [80] if p = nil then
%LINE 80+0
		test	rcx,rcx
		jne	..@j6
; [82] ShowMessage('Error: could not access TApplication.');
%LINE 82+0
		lea	rcx,[_$QAPPLICATIONPASCAL$_Ld1]
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
; [83] ExitProcess(1)
%LINE 83+0
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j6:
; [85] writeln('__init__');
%LINE 85+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld2]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; Var $result located in register rax
; [86] Exit(p);
%LINE 86+0
		mov	rax,rbx
; Var p located in register rax
; [87] end;
%LINE 87+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c2:

SECTION .text
	GLOBAL QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION
QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION:
	GLOBAL TApplication_Destroy
TApplication_Destroy:
..@c4:
; [89] begin
%LINE 89+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c6:
		mov	rbx,rcx
; Var P located in register rbx
; [90] writeln('delter');
%LINE 90+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld3]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; [91] p.Free;
%LINE 91+0
		mov	rcx,rbx
; Var P located in register rcx
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [92] end;
%LINE 92+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c5:

SECTION .text
	GLOBAL QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION
QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION:
	GLOBAL TApplication_Create2
TApplication_Create2:
..@c7:
; [102] begin
%LINE 102+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c9:
; Var $result located in register rax
; Var cmdline located in register rax
; Var ArgsCount located at rsp+32, size=OS_S32
; Var S located at rsp+40, size=OS_64
; Var R located at rsp+48, size=OS_64
; Var TotalLen located in register eax
; Var I located in register eax
; Var p located in register rcx
; Var ArgCount located in register rdx
		mov	rbx,r8
; Var Args located in register rbx
; [103] writeln('halplo');
%LINE 103+0
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld4]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; [105] CmdLine := GetCommandLineA;
%LINE 105+0
		call	_$dll$kernel32$GetCommandLineA
		mov	rcx,rax
; Var cmdline located in register rcx
; [106] Args    := CommandLineToArgvA(CmdLine, ArgsCount);
%LINE 106+0
		lea	rdx,[rsp+32]
; Var cmdline located in register rcx
		call	SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
		mov	qword [rbx],rax
; [108] if Args = nil then
%LINE 108+0
		test	rax,rax
		jne	..@j12
; [110] MessageBoxA(0,'Error: can not parse command line.', 'Error', MB_OK);
%LINE 110+0
		xor	r9d,r9d
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld5]
		lea	rdx,[_$QAPPLICATIONPASCAL$_Ld6]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [111] ExitProcess(1);
%LINE 111+0
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j12:
; Var TotalLen located in register ecx
; [114] TotalLen := 128;
%LINE 114+0
		mov	ecx,128
; [116] R := StrAlloc(TotalLen);
%LINE 116+0
		call	_$dll$rtllib$StrAlloc
		mov	qword [rsp+48],rax
; [117] S := StrAlloc(16);
%LINE 117+0
		mov	ecx,16
		call	_$dll$rtllib$StrAlloc
		mov	qword [rsp+40],rax
; [121] StrCopy(R, 'Count of Parameters: ');
%LINE 121+0
		lea	rcx,[rsp+48]
		lea	rdx,[_$QAPPLICATIONPASCAL$_Ld7]
		call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
; [122] StrCopy(S, IntToStr(ArgsCount));
%LINE 122+0
		mov	ecx,dword [rsp+32]
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
		mov	rdx,rax
		lea	rcx,[rsp+40]
		call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
; [124] MessageBoxA(0, R, '222  11  222', 0);
%LINE 124+0
		mov	rdx,qword [rsp+48]
		xor	r9d,r9d
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld8]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [125] MessageBoxA(0, S, '222  11  222', 0);
%LINE 125+0
		mov	rdx,qword [rsp+40]
		xor	r9d,r9d
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld8]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [127] StrCat (R, S);
%LINE 127+0
		mov	rdx,qword [rsp+40]
		lea	rcx,[rsp+48]
		call	SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
; [129] MessageBoxA(0, R, '222  11  222', 0);
%LINE 129+0
		mov	rdx,qword [rsp+48]
		xor	r9d,r9d
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld8]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [131] StrDispose(R);
%LINE 131+0
		mov	rcx,qword [rsp+48]
		call	SYSUTILS_$$_STRDISPOSE$PCHAR
; [134] end;
%LINE 134+0
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c8:

SECTION .text
	GLOBAL QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$$TAPPLICATION
QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$$TAPPLICATION:
..@c10:
; Temps allocated between rbp-32 and rbp-24
; [138] begin
%LINE 138+0
		push	rbp
..@c12:
..@c13:
		mov	rbp,rsp
..@c14:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j16
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j16:
		cmp	qword [rbp-16],0
		je	..@j13
..@j24:
		nop
..@j23:
		mov	qword [rbp-24],-1
; [139] writeln('cccccc');
%LINE 139+0
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld9]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [141] TApplication_Create(self);
%LINE 141+0
		mov	rcx,qword [rbp-16]
		call	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE$TAPPLICATION$$TAPPLICATION
; [142] end;
%LINE 142+0
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j21
		cmp	qword [rbp-8],0
		je	..@j21
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 138+0
		jmp	..@j21
..@j20:
%LINE 142+0
		cmp	qword [rbp-8],0
		je	..@j30
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY
..@j30:
		call	fpc_reraise
%LINE 138+0
		call	FPC_DONEEXCEPTION
..@j31:
		nop
..@j21:
..@j13:
%LINE 142+0
		mov	rax,qword [rbp-16]
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c11:

SECTION .text
	GLOBAL QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$TAPPLICATION
QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_CREATE$LONGINT$PPCHAR$$TAPPLICATION:
..@c15:
; [145] begin
%LINE 145+0
		push	rbp
..@c17:
..@c18:
		mov	rbp,rsp
..@c19:
		lea	rsp,[rsp-80]
; Var ArgCount located at rbp-8, size=OS_64
; Var Args located at rbp-16, size=OS_64
; Var $vmt located at rbp-24, size=OS_64
; Var $self located at rbp-32, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-40, size=OS_S64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-24],rdx
		mov	qword [rbp-8],r8
		mov	qword [rbp-16],r9
		cmp	qword [rbp-24],1
		jne	..@j35
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-32],rax
..@j35:
		cmp	qword [rbp-32],0
		je	..@j32
..@j43:
		nop
..@j42:
		mov	qword [rbp-40],-1
; [146] TApplication_Create2(self, ArgCount, Args);
%LINE 146+0
		mov	r8,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-32]
		call	QAPPLICATIONPASCAL_$$_TAPPLICATION_CREATE2$TAPPLICATION$LONGINT$PPCHAR$$TAPPLICATION
; [147] end;
%LINE 147+0
		mov	qword [rbp-40],1
		cmp	qword [rbp-32],0
		je	..@j40
		cmp	qword [rbp-24],0
		je	..@j40
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+128]
%LINE 145+0
		jmp	..@j40
..@j39:
%LINE 147+0
		cmp	qword [rbp-24],0
		je	..@j49
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		call	QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY
..@j49:
		call	fpc_reraise
%LINE 145+0
		call	FPC_DONEEXCEPTION
..@j50:
		nop
..@j40:
..@j32:
%LINE 147+0
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c16:

SECTION .text
	GLOBAL QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY
QAPPLICATIONPASCAL$_$TAPPLICATION_$__$$_DESTROY:
..@c20:
; [150] begin
%LINE 150+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c22:
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var $vmt located in register rsi
		test	rsi,rsi
		jng	..@j54
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j54:
; [151] writeln('destroyer');
%LINE 151+0
		call	fpc_get_output
		mov	rdi,rax
		lea	r8,[_$QAPPLICATIONPASCAL$_Ld10]
		mov	rdx,rdi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rdi
		call	fpc_writeln_end
; Var $self located in register rbx
; [152] TApplication_Destroy(self);
%LINE 152+0
		mov	rcx,rbx
		call	QAPPLICATIONPASCAL_$$_TAPPLICATION_DESTROY$TAPPLICATION
; [154] end;
%LINE 154+0
		test	rbx,rbx
		je	..@j56
		test	rsi,rsi
		je	..@j56
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j56:
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c21:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION
VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d11,0,0,0,RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; [157] end.
%LINE 157+0 QApplicationPascal.pas
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d11:
	DB	12
		DB	"TApplication"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld1:
%LINE 82+0 QApplicationPascal.pas
		DB	"Error: could not access TApplication.",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld2:
%LINE 85+0
		DB	8,"__init__",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld3:
%LINE 90+0
		DB	6,"delter",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld4:
%LINE 103+0
		DB	6,"halplo",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld5:
%LINE 110+0
		DB	"Error",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld6:
		DB	"Error: can not parse command line.",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld7:
%LINE 121+0
		DB	"Count of Parameters: ",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld8:
%LINE 124+0
		DB	"222  11  222",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld9:
%LINE 139+0
		DB	6,"cccccc",0

SECTION .rodata
_$QAPPLICATIONPASCAL$_Ld10:
%LINE 151+0
		DB	9,"destroyer",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION
INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION	DB	15,12
; [158] 
%LINE 158+0 QApplicationPascal.pas
		DB	"TApplication"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION
RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION	DB	15,12
		DB	"TApplication"
	DQ	VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	18
		DB	"QApplicationPascal"
	DW	0
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect
VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect	DQ	VMT_$QAPPLICATIONPASCAL_$$_TAPPLICATION
%LINE 157+0 QApplicationPascal.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect
INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect	DQ	INIT_$QAPPLICATIONPASCAL_$$_TAPPLICATION
%LINE 158+0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect
RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION$indirect	DQ	RTTI_$QAPPLICATIONPASCAL_$$_TAPPLICATION
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c23:
	DD	..@c25-..@c24
..@c24:
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
..@c25:
	DD	..@c27-..@c26
..@c26:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c27:
	DD	..@c29-..@c28
..@c28:
	DQ	..@c4,..@c5-..@c4
	DB	4
	DD	..@c6-..@c4
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c29:
	DD	..@c31-..@c30
..@c30:
	DQ	..@c7,..@c8-..@c7
	DB	4
	DD	..@c9-..@c7
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c31:
	DD	..@c33-..@c32
..@c32:
	DQ	..@c10,..@c11-..@c10
	DB	4
	DD	..@c12-..@c10
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c13-..@c12
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c14-..@c13
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c33:
	DD	..@c35-..@c34
..@c34:
	DQ	..@c15,..@c16-..@c15
	DB	4
	DD	..@c17-..@c15
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c18-..@c17
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c19-..@c18
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c35:
	DD	..@c37-..@c36
..@c36:
	DQ	..@c20,..@c21-..@c20
	DB	4
	DD	..@c22-..@c20
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c37:
; End asmlist al_dwarf_frame

