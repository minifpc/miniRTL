BITS 64
default rel
CPU x64

EXTERN	PASCALMAIN
EXTERN	FPC_FINALIZEUNITS
EXTERN	operatingsystem_isconsole
EXTERN	_$dll$kernel32$GetStdHandle
EXTERN	U_$SYSTEM_$$_STDIN
EXTERN	U_$SYSTEM_$$_STDOUT
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	_$dll$kernel32$SetConsoleMode
EXTERN	FPC_DO_EXIT
EXTERN	RTTI_$SYSTEM_$$_POINTER$indirect
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN$indirect
; Begin asmlist al_procedures

SECTION .text
	GLOBAL SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL:
	GLOBAL _FPC_DLL_Entry
_FPC_DLL_Entry:
..@c1:
; [sysinitpas.pas]
; [72] begin
%LINE 72+0 sysinitpas.pas
		push	rbx
		lea	rsp,[rsp-32]
..@c3:
; Var $result located in register eax
; Var info located in register rcx
; Var $result located in register ebx
; [73] result := true;
%LINE 73+0
		mov	ebx,-1
; [75] case DLLReason of
%LINE 75+0
		mov	eax,dword [U_$SYSINITPAS_$$_DLLREASON]
		cmp	eax,3
		ja	..@j6
		and	eax,eax
		lea	rdx,[..@d1]
		movsxd	rax,dword [rdx+rax*4]
		add	rax,rdx
		jmp	rax
..@j7:
; [79] fpc_finalizeunits;
%LINE 79+0
		call	FPC_FINALIZEUNITS
		jmp	..@j5
..@j8:
; [85] PASCALMAIN;
%LINE 85+0
		call	PASCALMAIN
		jmp	..@j5
..@j9:
..@j10:
..@j6:
..@j5:
; [90] end;
%LINE 90+0
		mov	eax,ebx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c2:

SECTION .data
	ALIGN 4,DB 0
..@d1:
	DD	..@j7-..@d1,..@j8-..@d1,..@j9-..@d1,..@j10-..@d1

SECTION .text
	GLOBAL SYSINITPAS_$$__FPC_MAINCRTSTARTUP
SYSINITPAS_$$__FPC_MAINCRTSTARTUP:
	GLOBAL _mainCRTStartup
_mainCRTStartup:
..@c4:
; [97] begin
%LINE 97+0
		lea	rsp,[rsp-40]
..@c6:
; [98] is_console := true;
%LINE 98+0
		mov	byte [operatingsystem_isconsole],1
; [100] system.StdIn := GetStdHandle(STD_INPUT_HANDLE);
%LINE 100+0
		mov	ecx,-10
		call	_$dll$kernel32$GetStdHandle
		mov	qword [U_$SYSTEM_$$_STDIN],rax
; [101] system.StdOut := GetStdHandle(STD_OUTPUT_HANDLE);
%LINE 101+0
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		mov	qword [U_$SYSTEM_$$_STDOUT],rax
; [102] system.StdErr := GetStdHandle(STD_ERROR_HANDLE);
%LINE 102+0
		mov	ecx,-12
		call	_$dll$kernel32$GetStdHandle
		mov	qword [U_$SYSTEM_$$_STDERR],rax
; [105] SetConsoleMode(StdIn, ENABLE_ECHO_INPUT or ENABLE_LINE_INPUT);
%LINE 105+0
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	edx,6
		call	_$dll$kernel32$SetConsoleMode
; [107] PASCALMAIN;
%LINE 107+0
		call	PASCALMAIN
; [108] fpc_do_exit;
%LINE 108+0
		call	FPC_DO_EXIT
; [109] end;
%LINE 109+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c5:

SECTION .text
	GLOBAL SYSINITPAS_$$__WINMAINCRTSTARTUP
SYSINITPAS_$$__WINMAINCRTSTARTUP:
	GLOBAL _WinMainCRTStartup
_WinMainCRTStartup:
..@c7:
; [113] begin
%LINE 113+0
		lea	rsp,[rsp-40]
..@c9:
; [114] PASCALMAIN;
%LINE 114+0
		call	PASCALMAIN
; [115] fpc_do_exit;
%LINE 115+0
		call	FPC_DO_EXIT
; [116] end;
%LINE 116+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c8:

SECTION .text
	GLOBAL SYSINITPAS_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER
SYSINITPAS_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER:
	GLOBAL _DLLMainCRTStartup
_DLLMainCRTStartup:
..@c10:
; [120] begin
%LINE 120+0
		lea	rsp,[rsp-40]
..@c12:
		mov	eax,ecx
; Var _hinstance located in register eax
; Var _dllreason located in register edx
; Var _dllparam located in register r8
; [121] is_console := true;
%LINE 121+0
		mov	byte [operatingsystem_isconsole],1
; Var _hinstance located in register eax
; [122] SysInstance := _hinstance;
%LINE 122+0
		mov	dword [U_$SYSINITPAS_$$_SYSINSTANCE],eax
; Var _dllreason located in register edx
; [123] DLLReason := _dllreason;
%LINE 123+0
		mov	dword [U_$SYSINITPAS_$$_DLLREASON],edx
; Var _dllparam located in register r8
; [124] DLLParam := PtrUInt(_dllparam);
%LINE 124+0
		mov	qword [U_$SYSINITPAS_$$_DLLPARAM],r8
; [126] system.StdIn := GetStdHandle(STD_INPUT_HANDLE);
%LINE 126+0
		mov	ecx,-10
		call	_$dll$kernel32$GetStdHandle
		mov	qword [U_$SYSTEM_$$_STDIN],rax
; [127] system.StdOut := GetStdHandle(STD_OUTPUT_HANDLE);
%LINE 127+0
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		mov	qword [U_$SYSTEM_$$_STDOUT],rax
; [128] system.StdErr := GetStdHandle(STD_ERROR_HANDLE);
%LINE 128+0
		mov	ecx,-12
		call	_$dll$kernel32$GetStdHandle
		mov	qword [U_$SYSTEM_$$_STDERR],rax
; [130] DLL_Entry(SysInitEntryInformation);
%LINE 130+0
		lea	rcx,[TC_$SYSINITPAS_$$_SYSINITENTRYINFORMATION]
		call	SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
; [131] end;
%LINE 131+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c11:

SECTION .text
	GLOBAL SYSINITPAS_$$__FPC_DLLWINMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER
SYSINITPAS_$$__FPC_DLLWINMAINCRTSTARTUP$LONGINT$LONGWORD$POINTER:
	GLOBAL _DLLWinMainCRTStartup
_DLLWinMainCRTStartup:
..@c13:
; [135] begin
%LINE 135+0
		lea	rsp,[rsp-40]
..@c15:
		mov	dword [U_$SYSINITPAS_$$_SYSINSTANCE],ecx
; Var _hinstance located in register eax
; Var _dllreason located in register edx
; Var _dllparam located in register r8
; Var _hinstance located in register eax
; Var _dllreason located in register edx
; [137] DLLReason := _dllreason;
%LINE 137+0
		mov	dword [U_$SYSINITPAS_$$_DLLREASON],edx
; Var _dllparam located in register r8
; [138] DLLParam := PtrUInt(_dllparam);
%LINE 138+0
		mov	qword [U_$SYSINITPAS_$$_DLLPARAM],r8
; [140] DLL_Entry(SysInitEntryInformation);
%LINE 140+0
		lea	rcx,[TC_$SYSINITPAS_$$_SYSINITENTRYINFORMATION]
		call	SYSINITPAS_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
; [141] end;
%LINE 141+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c14:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 4
; [49] SysInstance: LongInt;
%LINE 49+0 sysinitpas.pas
	GLOBAL U_$SYSINITPAS_$$_SYSINSTANCE
U_$SYSINITPAS_$$_SYSINSTANCE:	RESB	4

SECTION .bss
	ALIGNB 4
; [50] DLLReason: DWord;
%LINE 50+0
	GLOBAL U_$SYSINITPAS_$$_DLLREASON
U_$SYSINITPAS_$$_DLLREASON:	RESB	4

SECTION .bss
	ALIGNB 8
; [51] DLLParam: PtrInt;
%LINE 51+0
	GLOBAL U_$SYSINITPAS_$$_DLLPARAM
U_$SYSINITPAS_$$_DLLPARAM:	RESB	8
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .data
TC_$SYSINITPAS_$$_SYSINITENTRYINFORMATION	DQ	0,0,0,0,0,PASCALMAIN
	DB	0,0,0,0,0,0,0,0
; [69] procedure fpc_finalizeunits; [external name 'FPC_FINALIZEUNITS'];
%LINE 69+0 sysinitpas.pas
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINITPAS_$$_TENTRYINFORMATION
INIT_$SYSINITPAS_$$_TENTRYINFORMATION	DB	13,17
; [144] 
%LINE 144+0 sysinitpas.pas
		DB	"TEntryInformation"
	DQ	0
	DD	56
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINITPAS_$$_def00000001
RTTI_$SYSINITPAS_$$_def00000001	DB	23,0,0,0
	DQ	0
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINITPAS_$$_TENTRYINFORMATION
RTTI_$SYSINITPAS_$$_TENTRYINFORMATION	DB	13,17
		DB	"TEntryInformation"
	DQ	INIT_$SYSINITPAS_$$_TENTRYINFORMATION
	DD	56,7
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	24,RTTI_$SYSTEM_$$_POINTER$indirect,32,RTTI_$SYSINITPAS_$$_def00000001$indirect
	DQ	40,RTTI_$SYSTEM_$$_BOOLEAN$indirect,48
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINITPAS_$$_TENTRYINFORMATION$indirect
INIT_$SYSINITPAS_$$_TENTRYINFORMATION$indirect	DQ	INIT_$SYSINITPAS_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINITPAS_$$_def00000001$indirect
RTTI_$SYSINITPAS_$$_def00000001$indirect	DQ	RTTI_$SYSINITPAS_$$_def00000001

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINITPAS_$$_TENTRYINFORMATION$indirect
RTTI_$SYSINITPAS_$$_TENTRYINFORMATION$indirect	DQ	RTTI_$SYSINITPAS_$$_TENTRYINFORMATION
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
	ALIGN 4,DB 0
..@c20:
	DD	..@c22-..@c21
..@c21:
	DQ	..@c4,..@c5-..@c4
	DB	4
	DD	..@c6-..@c4
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c22:
	DD	..@c24-..@c23
..@c23:
	DQ	..@c7,..@c8-..@c7
	DB	4
	DD	..@c9-..@c7
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c24:
	DD	..@c26-..@c25
..@c25:
	DQ	..@c10,..@c11-..@c10
	DB	4
	DD	..@c12-..@c10
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c26:
	DD	..@c28-..@c27
..@c27:
	DQ	..@c13,..@c14-..@c13
	DB	4
	DD	..@c15-..@c13
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c28:
; End asmlist al_dwarf_frame

