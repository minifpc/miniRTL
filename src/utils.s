BITS 64
default rel
CPU x64

EXTERN	_$dll$kernel32$GetCommandLineW
EXTERN	_$dll$shell32$CommandLineToArgvW
EXTERN	fpc_pwidechar_to_unicodestr
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_ansistr_incr_ref
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_decr_ref
EXTERN	_$dll$kernel32$GetCurrentDirectoryW
EXTERN	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$QWORD
EXTERN	fpc_unicodestr_incr_ref
EXTERN	FPC_EMPTYCHAR
EXTERN	_$dll$kernel32$CreateFileW
EXTERN	_$dll$kernel32$SetFilePointerEx
EXTERN	fpc_unicodestr_decr_ref
EXTERN	_$dll$kernel32$FlushFileBuffers
EXTERN	_$dll$kernel32$CloseHandle
EXTERN	_$dll$kernel32$GetFileSizeEx
EXTERN	_$dll$kernel32$WriteFile
EXTERN	_$dll$kernel32$ReadFile
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
EXTERN	fpc_char_to_ansistr
EXTERN	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
EXTERN	SYSTEM_$$_MOVE$formal$formal$QWORD
EXTERN	fpc_unicodestr_concat_multi
EXTERN	_$dll$kernel32$GetFileAttributesW
EXTERN	_$dll$kernel32$GetSystemTime
EXTERN	_$dll$kernel32$SystemTimeToFileTime
EXTERN	_$dll$kernel32$SetFileTime
EXTERN	RTTI_$SYSTEM_$$_UNICODESTRING$indirect
EXTERN	RTTI_$SYSTEM_$$_LONGINT$indirect
; Begin asmlist al_procedures

SECTION .text
	GLOBAL UTILS_$$_PARAMSTR$LONGINT$$UNICODESTRING
UTILS_$$_PARAMSTR$LONGINT$$UNICODESTRING:
..@c1:
; [utils.pas]
; [83] begin
%LINE 83+0 utils.pas
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c3:
; Var cmdline located in register rax
; Var argc located at rsp+32, size=OS_S32
; Var argv located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	esi,edx
; Var i located in register esi
; [84] cmdline := GetCommandLineW;
%LINE 84+0
		call	_$dll$kernel32$GetCommandLineW
		mov	rcx,rax
; Var cmdline located in register rcx
; [85] argv := CommandLineToArgvW(cmdline, argc);
%LINE 85+0
		lea	rdx,[rsp+32]
; Var cmdline located in register rcx
		call	_$dll$shell32$CommandLineToArgvW
; Var argv located in register rax
; [86] if (i >= 0) and (i <= argc-1) then result := argv[i] else result := '';
%LINE 86+0
		test	esi,esi
		jnge	..@j6
		movsxd	rcx,dword [rsp+32]
		dec	rcx
		movsxd	rdx,esi
		cmp	rcx,rdx
		jnge	..@j6
		movsxd	rsi,esi
		mov	rdx,qword [rax+rsi*8]
		mov	rcx,rbx
		call	fpc_pwidechar_to_unicodestr
		jmp	..@j8
..@j6:
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
..@j8:
; [87] end;
%LINE 87+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c2:

SECTION .text
UTILS_$$_IFTHEN$1$CRC713F463B$BOOLEAN$INT64$INT64$$INT64:
..@c4:
; Var $result located in register rax
; Var expression located in register cl
; Var iftrue located in register rdx
; Var iffalse located in register r8
; [90] begin
%LINE 90+0
; [91] if expression then result := iftrue else result := iffalse;
%LINE 91+0
		test	cl,cl
		cmovne	rax,rdx
		cmove	rax,r8
; [92] end;
%LINE 92+0
		ret
..@c5:

SECTION .text
	GLOBAL UTILS_$$_IFTHEN$BOOLEAN$INT64$INT64$$INT64
UTILS_$$_IFTHEN$BOOLEAN$INT64$INT64$$INT64:
..@c6:
; [95] begin
%LINE 95+0
		lea	rsp,[rsp-40]
..@c8:
; Var $result located in register rax
; Var expression located in register cl
; Var iftrue located in register rdx
; Var iffalse located in register r8
; Var iffalse located in register r8
; Var iftrue located in register rdx
; Var expression located in register cl
; [96] result := specialize ifthen<ptrint>(expression, iftrue, iffalse);
%LINE 96+0
		call	UTILS_$$_IFTHEN$1$CRC713F463B$BOOLEAN$INT64$INT64$$INT64
; Var $result located in register rax
; [97] end;
%LINE 97+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c7:

SECTION .text
UTILS$_$$CRC1798176F_$$_fin$00000024:
..@c9:
%LINE 92+0
		push	rbp
..@c11:
..@c12:
		mov	rbp,rcx
..@c13:
		lea	rsp,[rsp-32]
%LINE 90+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c10:

SECTION .text
UTILS_$$_IFTHEN$1$CRC6824777A$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING:
..@c14:
; Temps allocated between rbp-32 and rbp-16
		push	rbp
..@c16:
..@c17:
		mov	rbp,rsp
..@c18:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rsi
; Var iftrue located at rbp-8, size=OS_64
; Var iffalse located at rbp-16, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
		mov	sil,dl
; Var expression located in register sil
		mov	qword [rbp-8],r8
		mov	qword [rbp-16],r9
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j28:
		nop
..@j24:
%LINE 91+0
		test	sil,sil
		je	..@j30
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
		jmp	..@j31
..@j30:
		mov	rcx,rbx
		mov	rdx,qword [rbp-16]
		call	fpc_ansistr_assign
..@j31:
..@j26:
%LINE 90+0
		nop
..@j25:
		mov	rcx,rbp
		call	UTILS$_$$CRC1798176F_$$_fin$00000024
%LINE 92+0
		mov	rbx,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c15:

SECTION .text
UTILS$_$IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000025:
..@c19:
; [102] end;
%LINE 102+0
		push	rbp
..@c21:
..@c22:
		mov	rbp,rcx
..@c23:
		lea	rsp,[rsp-32]
; [100] begin
%LINE 100+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c20:

SECTION .text
	GLOBAL UTILS_$$_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
UTILS_$$_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING:
..@c24:
; Temps allocated between rbp-32 and rbp-16
		push	rbp
..@c26:
..@c27:
		mov	rbp,rsp
..@c28:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rsi
; Var iftrue located at rbp-8, size=OS_64
; Var iffalse located at rbp-16, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
		mov	sil,dl
; Var expression located in register sil
		mov	qword [rbp-8],r8
		mov	qword [rbp-16],r9
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j38:
		nop
..@j34:
; [101] result := specialize ifthen<string>(expression, iftrue, iffalse);
%LINE 101+0
		mov	rcx,rbx
		mov	r9,qword [rbp-16]
		mov	r8,qword [rbp-8]
		mov	dl,sil
		call	UTILS_$$_IFTHEN$1$CRC6824777A$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
..@j36:
%LINE 100+0
		nop
..@j35:
		mov	rcx,rbp
		call	UTILS$_$IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$00000025
%LINE 102+0
		mov	rbx,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c25:

SECTION .text
	GLOBAL UTILS_$$_GET_CWD$$UNICODESTRING
UTILS_$$_GET_CWD$$UNICODESTRING:
..@c29:
; [108] begin
%LINE 108+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c31:
; Var d located in register eax
; Var p located at rsp+32, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
; [109] result := '';
%LINE 109+0
		xor	edx,edx
		call	fpc_unicodestr_assign
; [110] d := GetCurrentDirectoryW(0, nil);
%LINE 110+0
		xor	edx,edx
		xor	ecx,ecx
		call	_$dll$kernel32$GetCurrentDirectoryW
		mov	esi,eax
; Var d located in register esi
; [111] if d = 0 then exit;
%LINE 111+0
		test	eax,eax
		je	..@j39
; [112] getmem(p, d*2);
%LINE 112+0
		mov	edx,esi
		shl	rdx,1
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [113] d := GetCurrentDirectoryW(d, p);
%LINE 113+0
		mov	rdx,qword [rsp+32]
		mov	ecx,esi
; Var d located in register ecx
		call	_$dll$kernel32$GetCurrentDirectoryW
; Var d located in register eax
; [114] if d = 0 then exit;
%LINE 114+0
		test	eax,eax
		je	..@j39
; [115] result := unicodestring(PWideChar(p));
%LINE 115+0
		mov	rcx,rbx
		mov	rdx,qword [rsp+32]
		call	fpc_pwidechar_to_unicodestr
; [116] freemem(p);
%LINE 116+0
		mov	rcx,qword [rsp+32]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j39:
; [117] end;
%LINE 117+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c30:

SECTION .text
UTILS$_$FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD_$$_fin$00000026:
..@c32:
; [161] end;
%LINE 161+0
		push	rbp
..@c34:
..@c35:
		mov	rbp,rcx
..@c36:
		lea	rsp,[rsp-32]
; [122] begin
%LINE 122+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c33:

SECTION .text
	GLOBAL UTILS_$$_FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD
UTILS_$$_FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD:
..@c37:
; Temps allocated between rbp-32 and rbp-8
		push	rbp
..@c39:
..@c40:
		mov	rbp,rsp
..@c41:
		lea	rsp,[rsp-96]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rdi
		mov	qword [rbp-16],rsi
; Var path located at rbp-8, size=OS_64
; Var $result located in register rdi
; Var access located in register edx
; Var creation located in register eax
		mov	qword [rbp-8],rcx
		mov	bl,dl
; Var mode located in register bl
		mov	esi,r8d
; Var share located in register esi
		mov	rcx,qword [rbp-8]
		call	fpc_unicodestr_incr_ref
..@j53:
		nop
..@j49:
; [123] result := 0;
%LINE 123+0
		xor	edi,edi
; [124] case mode of
%LINE 124+0
		mov	al,bl
		cmp	al,97
		jb	..@j51
		sub	al,97
		je	..@j60
		sub	al,13
		je	..@j56
		dec	al
		je	..@j58
		sub	al,3
		je	..@j57
		sub	al,5
		je	..@j59
		jmp	..@j51
..@j56:
; [127] access := 0;
%LINE 127+0
		xor	edx,edx
; [128] creation := OPEN_EXISTING;
%LINE 128+0
		mov	eax,3
; [129] if share = dword(-1) then share := FILE_SHARE_READ or FILE_SHARE_WRITE;
%LINE 129+0
		cmp	esi,-1
		jne	..@j54
		mov	esi,3
		jmp	..@j54
..@j57:
; [132] access := GENERIC_READ;
%LINE 132+0
		mov	edx,-2147483648
; [133] creation := OPEN_EXISTING;
%LINE 133+0
		mov	eax,3
; [134] if share = dword(-1) then share := FILE_SHARE_READ;
%LINE 134+0
		cmp	esi,-1
		jne	..@j54
		mov	esi,1
		jmp	..@j54
..@j58:
; [137] access := GENERIC_READ or GENERIC_WRITE;
%LINE 137+0
		mov	edx,-1073741824
; [138] creation := OPEN_ALWAYS;
%LINE 138+0
		mov	eax,4
; [139] if share = dword(-1) then share := FILE_SHARE_READ;
%LINE 139+0
		cmp	esi,-1
		jne	..@j54
		mov	esi,1
		jmp	..@j54
..@j59:
; [142] access := GENERIC_WRITE;
%LINE 142+0
		mov	edx,1073741824
; [143] creation := CREATE_ALWAYS;
%LINE 143+0
		mov	eax,2
; [144] if share = dword(-1) then share := FILE_SHARE_READ;
%LINE 144+0
		cmp	esi,-1
		jne	..@j54
		mov	esi,1
		jmp	..@j54
..@j60:
; [147] access := GENERIC_WRITE;
%LINE 147+0
		mov	edx,1073741824
; [148] creation := OPEN_ALWAYS;
%LINE 148+0
		mov	eax,4
; [149] if share = dword(-1) then share := FILE_SHARE_READ;
%LINE 149+0
		cmp	esi,-1
		jne	..@j54
		mov	esi,1
		jmp	..@j54
; [153] exit;
%LINE 153+0
		jmp	..@j51
..@j54:
; [155] result := CreateFileW(PWideChar(path), access, share, nil, creation, 0, 0);
%LINE 155+0
		mov	qword [rsp+48],0
		mov	dword [rsp+40],0
		mov	dword [rsp+32],eax
		mov	rcx,qword [rbp-8]
		test	rcx,rcx
		jne	..@j71
		lea	rcx,[FPC_EMPTYCHAR]
..@j71:
		mov	r8d,esi
		xor	r9,r9
		call	_$dll$kernel32$CreateFileW
		mov	rdi,rax
; [156] if result = INVALID_HANDLE_VALUE then exit(0);
%LINE 156+0
		cmp	rdi,-1
		jne	..@j73
		xor	edi,edi
		jmp	..@j51
..@j73:
; [158] if mode = 'a' then begin
%LINE 158+0
		cmp	bl,97
		jne	..@j75
; [159] SetFilePointerEx(result, 0, nil, FILE_END);
%LINE 159+0
		mov	rcx,rdi
		mov	r9d,2
		xor	r8,r8
		xor	edx,edx
		call	_$dll$kernel32$SetFilePointerEx
..@j75:
..@j51:
%LINE 122+0
		nop
..@j50:
		mov	rcx,rbp
		call	UTILS$_$FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD_$$_fin$00000026
%LINE 161+0
		mov	rax,rdi
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c38:

SECTION .text
	GLOBAL UTILS_$$_FFLUSH$QWORD$$BOOLEAN
UTILS_$$_FFLUSH$QWORD$$BOOLEAN:
..@c42:
; [164] begin
%LINE 164+0
		lea	rsp,[rsp-40]
..@c44:
; Var $result located in register al
; Var handle located in register rcx
; Var handle located in register rcx
; [165] result := FlushFileBuffers(handle);
%LINE 165+0
		call	_$dll$kernel32$FlushFileBuffers
		or	eax,eax
		setne	al
; Var $result located in register al
; [166] end;
%LINE 166+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c43:

SECTION .text
	GLOBAL UTILS_$$_FCLOSE$QWORD$$BOOLEAN
UTILS_$$_FCLOSE$QWORD$$BOOLEAN:
..@c45:
; [169] begin
%LINE 169+0
		lea	rsp,[rsp-40]
..@c47:
; Var $result located in register al
; Var handle located in register rcx
; Var handle located in register rcx
; [170] result := CloseHandle(handle);
%LINE 170+0
		call	_$dll$kernel32$CloseHandle
		or	eax,eax
		setne	al
; Var $result located in register al
; [171] end;
%LINE 171+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c46:

SECTION .text
	GLOBAL UTILS_$$_FSEEK$QWORD$INT64$LONGWORD$$BOOLEAN
UTILS_$$_FSEEK$QWORD$INT64$LONGWORD$$BOOLEAN:
..@c48:
; [174] begin
%LINE 174+0
		lea	rsp,[rsp-40]
..@c50:
; Var $result located in register al
; Var handle located in register rcx
; Var move located in register rdx
		mov	r9d,r8d
; Var mode located in register r9d
; Var mode located in register r9d
; Var move located in register rdx
; Var handle located in register rcx
; [175] result := SetFilePointerEx(handle, move, nil, mode);
%LINE 175+0
		xor	r8,r8
		call	_$dll$kernel32$SetFilePointerEx
		or	eax,eax
		setne	al
; Var $result located in register al
; [176] end;
%LINE 176+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c49:

SECTION .text
	GLOBAL UTILS_$$_FSIZE$QWORD$$QWORD
UTILS_$$_FSIZE$QWORD$$QWORD:
..@c51:
; [179] begin
%LINE 179+0
		lea	rsp,[rsp-40]
..@c53:
; Var $result located at rsp+32, size=OS_64
		mov	rax,rcx
; Var handle located in register rax
; [180] if not GetFileSizeEx(handle, @result) then result := 0;
%LINE 180+0
		lea	rdx,[rsp+32]
		mov	rcx,rax
		call	_$dll$kernel32$GetFileSizeEx
		test	eax,eax
		jne	..@j85
		mov	qword [rsp+32],0
..@j85:
; [181] end;
%LINE 181+0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+40]
		ret
..@c52:

SECTION .text
	GLOBAL UTILS_$$_FPOS$QWORD$$QWORD
UTILS_$$_FPOS$QWORD$$QWORD:
..@c54:
; [184] begin
%LINE 184+0
		lea	rsp,[rsp-40]
..@c56:
; Var $result located at rsp+32, size=OS_64
		mov	rax,rcx
; Var handle located in register rax
; [185] if not SetFilePointerEx(handle, 0, @result, FILE_CURRENT) then result := 0;
%LINE 185+0
		lea	r8,[rsp+32]
		mov	rcx,rax
		mov	r9d,1
		xor	edx,edx
		call	_$dll$kernel32$SetFilePointerEx
		test	eax,eax
		jne	..@j89
		mov	qword [rsp+32],0
..@j89:
; [186] end;
%LINE 186+0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+40]
		ret
..@c55:

SECTION .text
	GLOBAL UTILS_$$_FEOF$QWORD$$BOOLEAN
UTILS_$$_FEOF$QWORD$$BOOLEAN:
..@c57:
; Temps allocated between rsp+32 and rsp+40
; [189] begin
%LINE 189+0
		push	rbx
		lea	rsp,[rsp-48]
..@c59:
; Var $result located in register al
		mov	rbx,rcx
; Var handle located in register rbx
; [190] result := fpos(handle) = filesize(handle);
%LINE 190+0
		mov	r9d,1
		lea	r8,[rsp+32]
		xor	edx,edx
		call	_$dll$kernel32$SetFilePointerEx
		test	eax,eax
		jne	..@j93
		mov	qword [rsp+32],0
..@j93:
		mov	rcx,rbx
		call	UTILS_$$_FILESIZE$QWORD$$QWORD
		cmp	rax,qword [rsp+32]
; Var $result located in register al
		sete	al
; [191] end;
%LINE 191+0
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c58:

SECTION .text
	GLOBAL UTILS_$$_FWRITE$QWORD$POINTER$LONGWORD$$LONGWORD
UTILS_$$_FWRITE$QWORD$POINTER$LONGWORD$$LONGWORD:
..@c60:
; [194] begin
%LINE 194+0
		lea	rsp,[rsp-56]
..@c62:
; Var $result located at rsp+40, size=OS_32
		mov	rax,rcx
; Var handle located in register rax
; Var data located in register rdx
; Var len located in register r8d
; [195] WriteFile(handle, data, len, @result, nil);
%LINE 195+0
		mov	qword [rsp+32],0
		lea	r9,[rsp+40]
; Var len located in register r8d
; Var data located in register rdx
		mov	rcx,rax
; Var handle located in register rcx
		call	_$dll$kernel32$WriteFile
; [196] end;
%LINE 196+0
		mov	eax,dword [rsp+40]
		nop
		lea	rsp,[rsp+56]
		ret
..@c61:

SECTION .text
UTILS$_$FWRITE$QWORD$ANSISTRING$$LONGWORD_$$_fin$00000027:
..@c63:
; [201] end;
%LINE 201+0
		push	rbp
..@c65:
..@c66:
		mov	rbp,rcx
..@c67:
		lea	rsp,[rsp-32]
; [199] begin
%LINE 199+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c64:

SECTION .text
	GLOBAL UTILS_$$_FWRITE$QWORD$ANSISTRING$$LONGWORD
UTILS_$$_FWRITE$QWORD$ANSISTRING$$LONGWORD:
..@c68:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c70:
..@c71:
		mov	rbp,rsp
..@c72:
		lea	rsp,[rsp-80]
		mov	qword [rbp-24],rbx
; Var data located at rbp-8, size=OS_64
; Var $result located in register ebx
		mov	rbx,rcx
; Var handle located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
..@j104:
		nop
..@j100:
; [200] result := fwrite(handle, @data[1], length(data));
%LINE 200+0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j105
		mov	r8,qword [r8-8]
..@j105:
		mov	rdx,qword [rbp-8]
		mov	qword [rsp+32],0
		mov	rcx,rbx
		lea	r9,[rbp-12]
		call	_$dll$kernel32$WriteFile
		mov	ebx,dword [rbp-12]
..@j102:
%LINE 199+0
		nop
..@j101:
		mov	rcx,rbp
		call	UTILS$_$FWRITE$QWORD$ANSISTRING$$LONGWORD_$$_fin$00000027
%LINE 201+0
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c69:

SECTION .text
	GLOBAL UTILS_$$_FPUTS$QWORD$POINTER$LONGWORD$$LONGWORD
UTILS_$$_FPUTS$QWORD$POINTER$LONGWORD$$LONGWORD:
..@c73:
; Temps allocated between rsp+40 and rsp+44
; [204] begin
%LINE 204+0
		lea	rsp,[rsp-56]
..@c75:
; Var $result located in register eax
; Var handle located in register rcx
; Var data located in register rdx
; Var len located in register r8d
; [205] result := fwrite(handle, data, len);
%LINE 205+0
		mov	qword [rsp+32],0
; Var len located in register r8d
; Var data located in register rdx
; Var handle located in register rcx
		lea	r9,[rsp+40]
		call	_$dll$kernel32$WriteFile
; Var $result located in register eax
		mov	eax,dword [rsp+40]
; [206] end;
%LINE 206+0
		nop
		lea	rsp,[rsp+56]
		ret
..@c74:

SECTION .text
UTILS$_$FPUTS$QWORD$ANSISTRING$$LONGWORD_$$_fin$00000028:
..@c76:
; [211] end;
%LINE 211+0
		push	rbp
..@c78:
..@c79:
		mov	rbp,rcx
..@c80:
		lea	rsp,[rsp-32]
; [209] begin
%LINE 209+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c77:

SECTION .text
	GLOBAL UTILS_$$_FPUTS$QWORD$ANSISTRING$$LONGWORD
UTILS_$$_FPUTS$QWORD$ANSISTRING$$LONGWORD:
..@c81:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c83:
..@c84:
		mov	rbp,rsp
..@c85:
		lea	rsp,[rsp-80]
		mov	qword [rbp-24],rbx
; Var data located at rbp-8, size=OS_64
; Var $result located in register ebx
		mov	rbx,rcx
; Var handle located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
..@j116:
		nop
..@j112:
; [210] result := fwrite(handle, @data[1], length(data));
%LINE 210+0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j117
		mov	r8,qword [r8-8]
..@j117:
		mov	rdx,qword [rbp-8]
		mov	qword [rsp+32],0
		mov	rcx,rbx
		lea	r9,[rbp-12]
		call	_$dll$kernel32$WriteFile
		mov	ebx,dword [rbp-12]
..@j114:
%LINE 209+0
		nop
..@j113:
		mov	rcx,rbp
		call	UTILS$_$FPUTS$QWORD$ANSISTRING$$LONGWORD_$$_fin$00000028
%LINE 211+0
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c82:

SECTION .text
	GLOBAL UTILS_$$_FREAD$QWORD$POINTER$LONGWORD$$LONGWORD
UTILS_$$_FREAD$QWORD$POINTER$LONGWORD$$LONGWORD:
..@c86:
; [216] begin
%LINE 216+0
		push	rbx
		lea	rsp,[rsp-48]
..@c88:
; Var $result located in register eax
; Var d located at rsp+40, size=OS_32
; Var handle located in register rcx
; Var data located in register rdx
; Var len located in register r8d
; Var $result located in register ebx
; [217] result := 0;
%LINE 217+0
		xor	ebx,ebx
; [218] if ReadFile(handle, data, len, @d, nil) then result := d;
%LINE 218+0
		mov	qword [rsp+32],0
		lea	r9,[rsp+40]
		call	_$dll$kernel32$ReadFile
		test	eax,eax
		je	..@j121
		mov	ebx,dword [rsp+40]
..@j121:
; [219] end;
%LINE 219+0
		mov	eax,ebx
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c87:

SECTION .text
	GLOBAL UTILS_$$_FREAD$QWORD$LONGWORD$$ANSISTRING
UTILS_$$_FREAD$QWORD$LONGWORD$$ANSISTRING:
..@c89:
; Temps allocated between rsp+40 and rsp+44
; [224] begin
%LINE 224+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-56]
..@c91:
; Var i located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var handle located in register rsi
		mov	edi,r8d
; Var len located in register edi
; [225] setlength(result, len);
%LINE 225+0
		mov	edx,edi
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [226] i := fread(handle, @result[1], len);
%LINE 226+0
		mov	rdx,qword [rbx]
		xor	r12d,r12d
		mov	qword [rsp+32],0
		mov	r8d,edi
		mov	rcx,rsi
		lea	r9,[rsp+40]
		call	_$dll$kernel32$ReadFile
		test	eax,eax
		je	..@j126
		mov	r12d,dword [rsp+40]
..@j126:
		mov	edx,r12d
; Var i located in register rdx
; [227] setlength(result, i);
%LINE 227+0
		mov	rcx,rbx
; Var i located in register rdx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [228] end;
%LINE 228+0
		nop
		lea	rsp,[rsp+56]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c90:

SECTION .text
UTILS$_$FGETS$QWORD$POINTER$CHAR$LONGWORD$$LONGWORD_$$_fin$00000029:
..@c92:
; [248] end;
%LINE 248+0
		push	rbp
..@c94:
..@c95:
		mov	rbp,rcx
..@c96:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [235] begin
%LINE 235+0
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c93:

SECTION .text
	GLOBAL UTILS_$$_FGETS$QWORD$POINTER$CHAR$LONGWORD$$LONGWORD
UTILS_$$_FGETS$QWORD$POINTER$CHAR$LONGWORD$$LONGWORD:
..@c97:
; Temps allocated between rbp-80 and rbp-8
		push	rbp
..@c99:
..@c100:
		mov	rbp,rsp
..@c101:
		lea	rsp,[rsp-128]
		mov	qword [rbp-80],rbx
		mov	qword [rbp-72],rdi
		mov	qword [rbp-64],rsi
		mov	qword [rbp-56],r12
		mov	qword [rbp-48],r13
		mov	qword [rbp-40],r14
		mov	qword [rbp-32],r15
; Var $result located in register r15d
; Var s located at rbp-8, size=OS_64
; Var p located in register edi
; Var q located in register r12
		mov	rbx,rcx
; Var handle located in register rbx
		mov	rsi,rdx
; Var data located in register rsi
		mov	r14b,r8b
; Var until located in register r14b
		mov	edi,r9d
; Var limit located in register edi
		mov	qword [rbp-8],0
		mov	qword [rbp-24],0
..@j135:
		nop
..@j131:
; [236] result := 0;
%LINE 236+0
		xor	r15d,r15d
; [237] fillchar(data^, limit, 0);
%LINE 237+0
		mov	edx,edi
		mov	rcx,rsi
		xor	r8d,r8d
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; [238] q := fpos(handle);
%LINE 238+0
		mov	rcx,rbx
		mov	r9d,1
		lea	r8,[rbp-16]
		xor	edx,edx
		call	_$dll$kernel32$SetFilePointerEx
		test	eax,eax
		jne	..@j137
		mov	qword [rbp-16],0
..@j137:
		mov	r12,qword [rbp-16]
; [239] s := fread(handle, limit);
%LINE 239+0
		mov	edx,edi
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_ansistr_setlength
		mov	rdx,qword [rbp-8]
		xor	r13d,r13d
		mov	qword [rsp+32],0
		mov	r8d,edi
		mov	rcx,rbx
		lea	r9,[rbp-12]
		call	_$dll$kernel32$ReadFile
		test	eax,eax
		je	..@j141
		mov	r13d,dword [rbp-12]
..@j141:
		mov	edx,r13d
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [240] if s = '' then exit;
%LINE 240+0
		cmp	qword [rbp-8],0
		je	..@j133
; [241] p := pos(&until, s);
%LINE 241+0
		movzx	edx,r14b
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	rcx,qword [rbp-24]
		mov	rdx,qword [rbp-8]
		mov	r8d,1
		call	SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
		mov	rdi,rax
; [242] if p >= 1 then begin
%LINE 242+0
		cmp	edi,1
		jnge	..@j145
; [243] move(s[1], data^, p);
%LINE 243+0
		movsxd	r8,edi
		mov	rdx,rsi
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [244] fseek(handle, q+p, FILE_BEGIN);
%LINE 244+0
		movsxd	rax,edi
		lea	rdx,[rax+r12]
		mov	rcx,rbx
		xor	r9d,r9d
		xor	r8,r8
		call	_$dll$kernel32$SetFilePointerEx
		or	eax,eax
		setne	dl
		mov	al,dl
; [245] result := p;
%LINE 245+0
		mov	r15d,edi
..@j145:
..@j133:
%LINE 235+0
		nop
..@j132:
		mov	rcx,rbp
		call	UTILS$_$FGETS$QWORD$POINTER$CHAR$LONGWORD$$LONGWORD_$$_fin$00000029
%LINE 248+0
		mov	eax,r15d
		mov	rbx,qword [rbp-80]
		mov	rdi,qword [rbp-72]
		mov	rsi,qword [rbp-64]
		mov	r12,qword [rbp-56]
		mov	r13,qword [rbp-48]
		mov	r14,qword [rbp-40]
		mov	r15,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c98:

SECTION .text
	GLOBAL UTILS_$$_FGETS$QWORD$CHAR$LONGWORD$$ANSISTRING
UTILS_$$_FGETS$QWORD$CHAR$LONGWORD$$ANSISTRING:
..@c102:
; [253] begin
%LINE 253+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c104:
; Var i located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var handle located in register rsi
		mov	dil,r8b
; Var until located in register dil
		mov	r12d,r9d
; Var limit located in register r12d
; [254] setlength(result, limit);
%LINE 254+0
		mov	edx,r12d
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [255] i := fgets(handle, @result[1], &until, limit);
%LINE 255+0
		mov	rdx,qword [rbx]
		mov	r9d,r12d
; Var limit located in register r9d
; Var until located in register r8b
		movzx	r8d,dil
		mov	rcx,rsi
; Var handle located in register rcx
		call	UTILS_$$_FGETS$QWORD$POINTER$CHAR$LONGWORD$$LONGWORD
		mov	edx,eax
; Var i located in register rdx
; [256] setlength(result, i);
%LINE 256+0
		mov	rcx,rbx
; Var i located in register rdx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [257] end;
%LINE 257+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c103:

SECTION .text
	GLOBAL UTILS_$$_FILESIZE$QWORD$$QWORD
UTILS_$$_FILESIZE$QWORD$$QWORD:
..@c105:
; Temps allocated between rsp+32 and rsp+40
; [260] begin
%LINE 260+0
		lea	rsp,[rsp-40]
..@c107:
; Var $result located in register rax
; Var h located in register rcx
; [261] result := fsize(h);
%LINE 261+0
		lea	rdx,[rsp+32]
		call	_$dll$kernel32$GetFileSizeEx
		test	eax,eax
		jne	..@j151
		mov	qword [rsp+32],0
..@j151:
; Var $result located in register rax
		mov	rax,qword [rsp+32]
; [262] end;
%LINE 262+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c106:

SECTION .text
UTILS$_$FILESIZE$UNICODESTRING$$INT64_$$_fin$0000002A:
..@c108:
; [273] end;
%LINE 273+0
		push	rbp
..@c110:
..@c111:
		mov	rbp,rcx
..@c112:
		lea	rsp,[rsp-32]
; [267] begin
%LINE 267+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c109:

SECTION .text
	GLOBAL UTILS_$$_FILESIZE$UNICODESTRING$$INT64
UTILS_$$_FILESIZE$UNICODESTRING$$INT64:
..@c113:
; Temps allocated between rbp-32 and rbp-8
		push	rbp
..@c115:
..@c116:
		mov	rbp,rsp
..@c117:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rsi
; Var path located at rbp-8, size=OS_64
; Var $result located in register rsi
; Var h located in register rbx
		mov	qword [rbp-8],rcx
		call	fpc_unicodestr_incr_ref
..@j160:
		nop
..@j156:
; [268] result := -1;
%LINE 268+0
		mov	rsi,-1
; [269] h := fopen(path, 'r');
%LINE 269+0
		mov	rcx,qword [rbp-8]
		mov	r8d,-1
		mov	edx,114
		call	UTILS_$$_FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD
		mov	rbx,rax
; [270] if h = 0 then exit;
%LINE 270+0
		test	rax,rax
		je	..@j158
; [271] result := fsize(h);
%LINE 271+0
		mov	rcx,rbx
		lea	rdx,[rbp-16]
		call	_$dll$kernel32$GetFileSizeEx
		test	eax,eax
		jne	..@j164
		mov	qword [rbp-16],0
..@j164:
		mov	rsi,qword [rbp-16]
; [272] fclose(h);
%LINE 272+0
		mov	rcx,rbx
		call	_$dll$kernel32$CloseHandle
		or	eax,eax
		setne	dl
		mov	al,dl
..@j158:
%LINE 267+0
		nop
..@j157:
		mov	rcx,rbp
		call	UTILS$_$FILESIZE$UNICODESTRING$$INT64_$$_fin$0000002A
%LINE 273+0
		mov	rax,rsi
		mov	rbx,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c114:

SECTION .text
UTILS$_$FILE_GET_CONTENTS$UNICODESTRING$$ANSISTRING_$$_fin$0000002B:
..@c118:
; [287] end;
%LINE 287+0
		push	rbp
..@c120:
..@c121:
		mov	rbp,rcx
..@c122:
		lea	rsp,[rsp-32]
; [279] begin
%LINE 279+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c119:

SECTION .text
	GLOBAL UTILS_$$_FILE_GET_CONTENTS$UNICODESTRING$$ANSISTRING
UTILS_$$_FILE_GET_CONTENTS$UNICODESTRING$$ANSISTRING:
..@c123:
; Temps allocated between rbp-40 and rbp-8
		push	rbp
..@c125:
..@c126:
		mov	rbp,rsp
..@c127:
		lea	rsp,[rsp-96]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
; Var path located at rbp-8, size=OS_64
; Var h located in register rbx
; Var q located in register rdi
		mov	rsi,rcx
; Var $result located in register rsi
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_unicodestr_incr_ref
..@j173:
		nop
..@j169:
; [280] result := '';
%LINE 280+0
		mov	rcx,rsi
		xor	edx,edx
		call	fpc_ansistr_assign
; [281] h := fopen(path, 'r');
%LINE 281+0
		mov	rcx,qword [rbp-8]
		mov	r8d,-1
		mov	edx,114
		call	UTILS_$$_FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD
		mov	rbx,rax
; [282] if h = 0 then exit;
%LINE 282+0
		test	rax,rax
		je	..@j171
; [283] q := fsize(h);
%LINE 283+0
		mov	rcx,rbx
		lea	rdx,[rbp-16]
		call	_$dll$kernel32$GetFileSizeEx
		test	eax,eax
		jne	..@j177
		mov	qword [rbp-16],0
..@j177:
		mov	rdi,qword [rbp-16]
; [284] setlength(result, q);
%LINE 284+0
		mov	rcx,rsi
		mov	rdx,rdi
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [285] fread(h, @result[1], q);
%LINE 285+0
		mov	r8d,edi
		mov	rdx,qword [rsi]
		xor	esi,esi
		mov	qword [rsp+32],0
		mov	rcx,rbx
		lea	r9,[rbp-12]
		call	_$dll$kernel32$ReadFile
		test	eax,eax
		je	..@j180
		mov	esi,dword [rbp-12]
..@j180:
; [286] fclose(h);
%LINE 286+0
		mov	rcx,rbx
		call	_$dll$kernel32$CloseHandle
		or	eax,eax
		setne	dl
		mov	al,dl
..@j171:
%LINE 279+0
		nop
..@j170:
		mov	rcx,rbp
		call	UTILS$_$FILE_GET_CONTENTS$UNICODESTRING$$ANSISTRING_$$_fin$0000002B
%LINE 287+0
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c124:

SECTION .text
UTILS$_$FILE_PUT_CONTENTS$UNICODESTRING$POINTER$LONGWORD$BOOLEAN$$BOOLEAN_$$_fin$0000002C:
..@c128:
; [301] end;
%LINE 301+0
		push	rbp
..@c130:
..@c131:
		mov	rbp,rcx
..@c132:
		lea	rsp,[rsp-32]
; [292] begin
%LINE 292+0
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c129:

SECTION .text
	GLOBAL UTILS_$$_FILE_PUT_CONTENTS$UNICODESTRING$POINTER$LONGWORD$BOOLEAN$$BOOLEAN
UTILS_$$_FILE_PUT_CONTENTS$UNICODESTRING$POINTER$LONGWORD$BOOLEAN$$BOOLEAN:
..@c133:
; Temps allocated between rbp-72 and rbp-8
		push	rbp
..@c135:
..@c136:
		mov	rbp,rsp
..@c137:
		lea	rsp,[rsp-128]
		mov	qword [rbp-72],rbx
		mov	qword [rbp-64],rdi
		mov	qword [rbp-56],rsi
		mov	qword [rbp-48],r12
; Var path located at rbp-8, size=OS_64
; Var $result located in register r12b
; Var h located in register rdi
		mov	qword [rbp-8],rcx
		mov	rbx,rdx
; Var data located in register rbx
		mov	esi,r8d
; Var len located in register esi
		mov	dil,r9b
; Var append located in register dil
		mov	rcx,qword [rbp-8]
		call	fpc_unicodestr_incr_ref
		mov	qword [rbp-32],0
		mov	qword [rbp-24],0
		mov	qword [rbp-16],0
..@j189:
		nop
..@j185:
; [293] result := false;
%LINE 293+0
		xor	r12b,r12b
; [295] h := fopen(path, ifthen(append, 'a', 'w')[1]);
%LINE 295+0
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		lea	rdx,[..@d1]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_assign
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		lea	rdx,[..@d2]
		lea	rcx,[rbp-32]
		call	fpc_ansistr_assign
		mov	dl,dil
		mov	r9,qword [rbp-24]
		mov	r8,qword [rbp-32]
		lea	rcx,[rbp-16]
		call	UTILS_$$_IFTHEN$1$CRC6824777A$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
		mov	rax,qword [rbp-16]
		movzx	edx,byte [rax]
		mov	rcx,qword [rbp-8]
		mov	r8d,-1
		call	UTILS_$$_FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD
		mov	rdi,rax
; [296] if h = 0 then exit;
%LINE 296+0
		test	rax,rax
		je	..@j187
; [297] fwrite(h, data, len);
%LINE 297+0
		mov	qword [rsp+32],0
		mov	r8d,esi
		mov	rdx,rbx
		mov	rcx,rdi
		lea	r9,[rbp-36]
		call	_$dll$kernel32$WriteFile
; [298] fflush(h);
%LINE 298+0
		mov	rcx,rdi
		call	_$dll$kernel32$FlushFileBuffers
		or	eax,eax
		setne	dl
		mov	al,dl
; [299] fclose(h);
%LINE 299+0
		mov	rcx,rdi
		call	_$dll$kernel32$CloseHandle
		or	eax,eax
		setne	dl
		mov	al,dl
; [300] result := true;
%LINE 300+0
		mov	r12b,1
..@j187:
%LINE 292+0
		nop
..@j186:
		mov	rcx,rbp
		call	UTILS$_$FILE_PUT_CONTENTS$UNICODESTRING$POINTER$LONGWORD$BOOLEAN$$BOOLEAN_$$_fin$0000002C
%LINE 301+0
		mov	al,r12b
		mov	rbx,qword [rbp-72]
		mov	rdi,qword [rbp-64]
		mov	rsi,qword [rbp-56]
		mov	r12,qword [rbp-48]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c134:

SECTION .text
UTILS$_$FILE_PUT_CONTENTS$UNICODESTRING$ANSISTRING$BOOLEAN$$BOOLEAN_$$_fin$0000002D:
..@c138:
; [306] end;
%LINE 306+0
		push	rbp
..@c140:
..@c141:
		mov	rbp,rcx
..@c142:
		lea	rsp,[rsp-32]
; [304] begin
%LINE 304+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c139:

SECTION .text
	GLOBAL UTILS_$$_FILE_PUT_CONTENTS$UNICODESTRING$ANSISTRING$BOOLEAN$$BOOLEAN
UTILS_$$_FILE_PUT_CONTENTS$UNICODESTRING$ANSISTRING$BOOLEAN$$BOOLEAN:
..@c143:
; Temps allocated between rbp-24 and rbp-16
		push	rbp
..@c145:
..@c146:
		mov	rbp,rsp
..@c147:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var path located at rbp-8, size=OS_64
; Var content located at rbp-16, size=OS_64
; Var $result located in register bl
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	bl,r8b
; Var append located in register bl
		mov	rcx,qword [rbp-8]
		call	fpc_unicodestr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j200:
		nop
..@j196:
; [305] result := file_put_contents(path, @content[1], length(content), append);
%LINE 305+0
		mov	r8,qword [rbp-16]
		test	r8,r8
		je	..@j201
		mov	r8,qword [r8-8]
..@j201:
		mov	rdx,qword [rbp-16]
		mov	r9b,bl
		mov	rcx,qword [rbp-8]
		call	UTILS_$$_FILE_PUT_CONTENTS$UNICODESTRING$POINTER$LONGWORD$BOOLEAN$$BOOLEAN
		mov	bl,al
..@j198:
%LINE 304+0
		nop
..@j197:
		mov	rcx,rbp
		call	UTILS$_$FILE_PUT_CONTENTS$UNICODESTRING$ANSISTRING$BOOLEAN$$BOOLEAN_$$_fin$0000002D
%LINE 306+0
		mov	al,bl
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c144:

SECTION .text
UTILS$_$IS_FILE$UNICODESTRING$$BOOLEAN_$$_fin$0000002E:
..@c148:
; [319] end;
%LINE 319+0
		push	rbp
..@c150:
..@c151:
		mov	rbp,rcx
..@c152:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_unicodestr_decr_ref
; [312] begin
%LINE 312+0
		lea	rcx,[rbp-64]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c149:

SECTION .text
	GLOBAL UTILS_$$_IS_FILE$UNICODESTRING$$BOOLEAN
UTILS_$$_IS_FILE$UNICODESTRING$$BOOLEAN:
..@c153:
; Temps allocated between rbp-72 and rbp-16
		push	rbp
..@c155:
..@c156:
		mov	rbp,rsp
..@c157:
		lea	rsp,[rsp-112]
		mov	qword [rbp-72],rbx
; Var path located at rbp-8, size=OS_64
; Var $result located in register bl
; Var d located in register eax
; Var u located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		call	fpc_unicodestr_incr_ref
		mov	qword [rbp-16],0
		mov	qword [rbp-64],0
..@j210:
		nop
..@j206:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-24],rax
; [314] if (length(path) >= 2) and not (path[2] = ':') and not (path[1] = '\'){\\share} then begin
%LINE 314+0
		test	rax,rax
		je	..@j211
		mov	rax,qword [rax-8]
..@j211:
		cmp	rax,2
		jnge	..@j213
		mov	rax,qword [rbp-24]
		cmp	word [rax+2],58
		je	..@j213
		mov	rax,qword [rbp-24]
		cmp	word [rax],92
		je	..@j213
; [315] u := '\\?\'+get_cwd+'\'+path;
%LINE 315+0
		lea	rax,[..@d3]
		mov	qword [rbp-56],rax
		lea	rcx,[rbp-64]
		call	UTILS_$$_GET_CWD$$UNICODESTRING
		mov	rax,qword [rbp-64]
		mov	qword [rbp-48],rax
		lea	rax,[..@d4]
		mov	qword [rbp-40],rax
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
		lea	rdx,[rbp-56]
		lea	rcx,[rbp-16]
		mov	r8d,3
		call	fpc_unicodestr_concat_multi
		jmp	..@j216
..@j213:
; [316] end else u := path;
%LINE 316+0
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-16]
		call	fpc_unicodestr_assign
..@j216:
; [317] d := GetFileAttributesW(@u[1]);
%LINE 317+0
		mov	rcx,qword [rbp-16]
		call	_$dll$kernel32$GetFileAttributesW
; [318] result := not (d = INVALID_FILE_ATTRIBUTES) and not ((d and FILE_ATTRIBUTE_DIRECTORY) > 0);
%LINE 318+0
		cmp	eax,-1
		je	..@j218
		and	eax,16
		jnbe	..@j218
		mov	bl,1
		jmp	..@j220
..@j218:
		xor	bl,bl
..@j220:
..@j208:
%LINE 312+0
		nop
..@j207:
		mov	rcx,rbp
		call	UTILS$_$IS_FILE$UNICODESTRING$$BOOLEAN_$$_fin$0000002E
%LINE 319+0
		mov	al,bl
		mov	rbx,qword [rbp-72]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c154:

SECTION .text
UTILS$_$IS_DIR$UNICODESTRING$$BOOLEAN_$$_fin$0000002F:
..@c158:
; [332] end;
%LINE 332+0
		push	rbp
..@c160:
..@c161:
		mov	rbp,rcx
..@c162:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_unicodestr_decr_ref
; [325] begin
%LINE 325+0
		lea	rcx,[rbp-64]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c159:

SECTION .text
	GLOBAL UTILS_$$_IS_DIR$UNICODESTRING$$BOOLEAN
UTILS_$$_IS_DIR$UNICODESTRING$$BOOLEAN:
..@c163:
; Temps allocated between rbp-72 and rbp-16
		push	rbp
..@c165:
..@c166:
		mov	rbp,rsp
..@c167:
		lea	rsp,[rsp-112]
		mov	qword [rbp-72],rbx
; Var path located at rbp-8, size=OS_64
; Var $result located in register bl
; Var d located in register eax
; Var u located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		call	fpc_unicodestr_incr_ref
		mov	qword [rbp-16],0
		mov	qword [rbp-64],0
..@j229:
		nop
..@j225:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-24],rax
; [327] if (length(path) >= 2) and not (path[2] = ':') and not (path[1] = '\'){\\share} then begin
%LINE 327+0
		test	rax,rax
		je	..@j230
		mov	rax,qword [rax-8]
..@j230:
		cmp	rax,2
		jnge	..@j232
		mov	rax,qword [rbp-24]
		cmp	word [rax+2],58
		je	..@j232
		mov	rax,qword [rbp-24]
		cmp	word [rax],92
		je	..@j232
; [328] u := '\\?\'+get_cwd+'\'+path;
%LINE 328+0
		lea	rax,[..@d3]
		mov	qword [rbp-56],rax
		lea	rcx,[rbp-64]
		call	UTILS_$$_GET_CWD$$UNICODESTRING
		mov	rax,qword [rbp-64]
		mov	qword [rbp-48],rax
		lea	rax,[..@d4]
		mov	qword [rbp-40],rax
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
		lea	rdx,[rbp-56]
		lea	rcx,[rbp-16]
		mov	r8d,3
		call	fpc_unicodestr_concat_multi
		jmp	..@j235
..@j232:
; [329] end else u := path;
%LINE 329+0
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-16]
		call	fpc_unicodestr_assign
..@j235:
; [330] d := GetFileAttributesW(@u[1]);
%LINE 330+0
		mov	rcx,qword [rbp-16]
		call	_$dll$kernel32$GetFileAttributesW
; [331] result := not (d = INVALID_FILE_ATTRIBUTES) and ((d and FILE_ATTRIBUTE_DIRECTORY) > 0);
%LINE 331+0
		cmp	eax,-1
		je	..@j237
		and	eax,16
		jna	..@j237
		mov	bl,1
		jmp	..@j239
..@j237:
		xor	bl,bl
..@j239:
..@j227:
%LINE 325+0
		nop
..@j226:
		mov	rcx,rbp
		call	UTILS$_$IS_DIR$UNICODESTRING$$BOOLEAN_$$_fin$0000002F
%LINE 332+0
		mov	al,bl
		mov	rbx,qword [rbp-72]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c164:

SECTION .text
UTILS$_$FILE_EXISTS$UNICODESTRING$$BOOLEAN_$$_fin$00000030:
..@c168:
; [337] end;
%LINE 337+0
		push	rbp
..@c170:
..@c171:
		mov	rbp,rcx
..@c172:
		lea	rsp,[rsp-32]
; [335] begin
%LINE 335+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c169:

SECTION .text
	GLOBAL UTILS_$$_FILE_EXISTS$UNICODESTRING$$BOOLEAN
UTILS_$$_FILE_EXISTS$UNICODESTRING$$BOOLEAN:
..@c173:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c175:
..@c176:
		mov	rbp,rsp
..@c177:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var path located at rbp-8, size=OS_64
; Var $result located in register bl
		mov	qword [rbp-8],rcx
		call	fpc_unicodestr_incr_ref
..@j248:
		nop
..@j244:
; [336] result := is_file(path) or is_dir(path);
%LINE 336+0
		mov	rcx,qword [rbp-8]
		call	UTILS_$$_IS_FILE$UNICODESTRING$$BOOLEAN
		test	al,al
		jne	..@j249
		mov	rcx,qword [rbp-8]
		call	UTILS_$$_IS_DIR$UNICODESTRING$$BOOLEAN
		test	al,al
		je	..@j251
..@j249:
		mov	bl,1
		jmp	..@j252
..@j251:
		xor	bl,bl
..@j252:
..@j246:
%LINE 335+0
		nop
..@j245:
		mov	rcx,rbp
		call	UTILS$_$FILE_EXISTS$UNICODESTRING$$BOOLEAN_$$_fin$00000030
%LINE 337+0
		mov	al,bl
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c174:

SECTION .text
UTILS$_$DIR_EXISTS$UNICODESTRING$$BOOLEAN_$$_fin$00000031:
..@c178:
; [342] end;
%LINE 342+0
		push	rbp
..@c180:
..@c181:
		mov	rbp,rcx
..@c182:
		lea	rsp,[rsp-32]
; [340] begin
%LINE 340+0
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c179:

SECTION .text
	GLOBAL UTILS_$$_DIR_EXISTS$UNICODESTRING$$BOOLEAN
UTILS_$$_DIR_EXISTS$UNICODESTRING$$BOOLEAN:
..@c183:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c185:
..@c186:
		mov	rbp,rsp
..@c187:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var path located at rbp-8, size=OS_64
; Var $result located in register bl
		mov	qword [rbp-8],rcx
		call	fpc_unicodestr_incr_ref
..@j261:
		nop
..@j257:
; [341] result := is_dir(path);
%LINE 341+0
		mov	rcx,qword [rbp-8]
		call	UTILS_$$_IS_DIR$UNICODESTRING$$BOOLEAN
		mov	bl,al
..@j259:
%LINE 340+0
		nop
..@j258:
		mov	rcx,rbp
		call	UTILS$_$DIR_EXISTS$UNICODESTRING$$BOOLEAN_$$_fin$00000031
%LINE 342+0
		mov	al,bl
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c184:

SECTION .text
UTILS$_$TOUCH$UNICODESTRING$BOOLEAN$$BOOLEAN_$$_fin$00000032:
..@c188:
; [360] end;
%LINE 360+0
		push	rbp
..@c190:
..@c191:
		mov	rbp,rcx
..@c192:
		lea	rsp,[rsp-32]
; [359] fclose(h);
%LINE 359+0
		mov	rcx,qword [rbp-32]
		call	_$dll$kernel32$CloseHandle
		or	eax,eax
		setne	al
%LINE 360+0
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c189:

SECTION .text
UTILS$_$TOUCH$UNICODESTRING$BOOLEAN$$BOOLEAN_$$_fin$00000033:
..@c193:
; [363] end;
%LINE 363+0
		push	rbp
..@c195:
..@c196:
		mov	rbp,rcx
..@c197:
		lea	rsp,[rsp-32]
; [349] begin
%LINE 349+0
		lea	rcx,[rbp-64]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c194:

SECTION .text
	GLOBAL UTILS_$$_TOUCH$UNICODESTRING$BOOLEAN$$BOOLEAN
UTILS_$$_TOUCH$UNICODESTRING$BOOLEAN$$BOOLEAN:
..@c198:
; Temps allocated between rbp-64 and rbp-56
		push	rbp
..@c200:
..@c201:
		mov	rbp,rsp
..@c202:
		lea	rsp,[rsp-96]
; Var path located at rbp-8, size=OS_64
; Var dontcreate located at rbp-16, size=OS_8
; Var $result located at rbp-20, size=OS_8
; Var h located at rbp-32, size=OS_64
; Var st located at rbp-48, size=OS_128
; Var ft located at rbp-56, size=OS_64
		mov	qword [rbp-8],rcx
		mov	byte [rbp-16],dl
		mov	rcx,qword [rbp-8]
		call	fpc_unicodestr_incr_ref
		mov	qword [rbp-64],0
..@j272:
		nop
..@j268:
; [350] result := false;
%LINE 350+0
		mov	byte [rbp-20],0
; [351] if file_exists(path) then begin
%LINE 351+0
		mov	rcx,qword [rbp-8]
		call	UTILS_$$_IS_FILE$UNICODESTRING$$BOOLEAN
		test	al,al
		jne	..@j273
		mov	rcx,qword [rbp-8]
		call	UTILS_$$_IS_DIR$UNICODESTRING$$BOOLEAN
		test	al,al
		je	..@j275
..@j273:
		mov	al,1
		jmp	..@j276
..@j275:
		xor	al,al
..@j276:
		test	al,al
		je	..@j278
; [352] h := fopen(path);
%LINE 352+0
		mov	rcx,qword [rbp-8]
		mov	r8d,-1
		mov	edx,111
		call	UTILS_$$_FOPEN$UNICODESTRING$CHAR$LONGWORD$$QWORD
		mov	qword [rbp-32],rax
..@j283:
; [353] try
%LINE 353+0
		nop
..@j279:
; [354] GetSystemTime(@st);
%LINE 354+0
		lea	rcx,[rbp-48]
		call	_$dll$kernel32$GetSystemTime
; [355] if SystemTimeToFileTime(@st, @ft) then begin
%LINE 355+0
		lea	rdx,[rbp-56]
		lea	rcx,[rbp-48]
		call	_$dll$kernel32$SystemTimeToFileTime
		test	eax,eax
		je	..@j285
; [356] result := SetFileTime(h, nil, nil, @ft);
%LINE 356+0
		lea	r9,[rbp-56]
		mov	rcx,qword [rbp-32]
		xor	r8,r8
		xor	edx,edx
		call	_$dll$kernel32$SetFileTime
		or	eax,eax
		setne	al
		mov	byte [rbp-20],al
..@j285:
..@j281:
%LINE 353+0
		nop
..@j280:
		mov	rcx,rbp
		call	UTILS$_$TOUCH$UNICODESTRING$BOOLEAN$$BOOLEAN_$$_fin$00000032
		jmp	..@j286
..@j278:
; [362] if not dontcreate then file_put_contents(path, '');
%LINE 362+0
		cmp	byte [rbp-16],0
		jne	..@j288
		lea	rcx,[rbp-64]
		call	fpc_ansistr_decr_ref
		xor	edx,edx
		lea	rcx,[rbp-64]
		call	fpc_ansistr_assign
		mov	rdx,qword [rbp-64]
		mov	rcx,qword [rbp-8]
		xor	r9b,r9b
		mov	r8,qword [rbp-64]
		test	r8,r8
		je	..@j289
		mov	r8,qword [r8-8]
..@j289:
		call	UTILS_$$_FILE_PUT_CONTENTS$UNICODESTRING$POINTER$LONGWORD$BOOLEAN$$BOOLEAN
		mov	dl,al
..@j288:
..@j286:
..@j270:
%LINE 349+0
		nop
..@j269:
		mov	rcx,rbp
		call	UTILS$_$TOUCH$UNICODESTRING$BOOLEAN$$BOOLEAN_$$_fin$00000033
%LINE 363+0
		mov	al,byte [rbp-20]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	2,0
	DD	0

SECTION .text
..@c199:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d1:
%LINE 295+0 utils.pas
		DB	"w",0

SECTION .rodata
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d2:
		DB	"a",0

SECTION .rodata
..@d3$strlab:
	DW	1200,2
	DD	0
	DQ	-1,4
..@d3:
	DW	92,92,63,92,0
%LINE 315+0

SECTION .rodata
..@d4$strlab:
	DW	1200,2
	DD	0
	DQ	-1,1
..@d4:
	DW	92,0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$UTILS_$$_def00000034
RTTI_$UTILS_$$_def00000034	DB	12,0
	DQ	32,4,RTTI_$SYSTEM_$$_UNICODESTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
; [366] 
%LINE 366+0 utils.pas

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$UTILS_$$_def00000035
RTTI_$UTILS_$$_def00000035	DB	12,0
	DQ	32,4,RTTI_$SYSTEM_$$_UNICODESTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$UTILS_$$_def00000034$indirect
RTTI_$UTILS_$$_def00000034$indirect	DQ	RTTI_$UTILS_$$_def00000034

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$UTILS_$$_def00000035$indirect
RTTI_$UTILS_$$_def00000035$indirect	DQ	RTTI_$UTILS_$$_def00000035
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c203:
	DD	..@c205-..@c204
..@c204:
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
..@c205:
	DD	..@c207-..@c206
..@c206:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c207:
	DD	..@c209-..@c208
..@c208:
	DQ	..@c4,..@c5-..@c4
	ALIGN 4,DB 0
..@c209:
	DD	..@c211-..@c210
..@c210:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c211:
	DD	..@c213-..@c212
..@c212:
	DQ	..@c9,..@c10-..@c9
	DB	4
	DD	..@c11-..@c9
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c12-..@c11
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c13-..@c12
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c213:
	DD	..@c215-..@c214
..@c214:
	DQ	..@c14,..@c15-..@c14
	DB	4
	DD	..@c16-..@c14
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c17-..@c16
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c18-..@c17
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c215:
	DD	..@c217-..@c216
..@c216:
	DQ	..@c19,..@c20-..@c19
	DB	4
	DD	..@c21-..@c19
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c22-..@c21
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c23-..@c22
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c217:
	DD	..@c219-..@c218
..@c218:
	DQ	..@c24,..@c25-..@c24
	DB	4
	DD	..@c26-..@c24
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c27-..@c26
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c28-..@c27
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c219:
	DD	..@c221-..@c220
..@c220:
	DQ	..@c29,..@c30-..@c29
	DB	4
	DD	..@c31-..@c29
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c221:
	DD	..@c223-..@c222
..@c222:
	DQ	..@c32,..@c33-..@c32
	DB	4
	DD	..@c34-..@c32
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c35-..@c34
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c36-..@c35
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c223:
	DD	..@c225-..@c224
..@c224:
	DQ	..@c37,..@c38-..@c37
	DB	4
	DD	..@c39-..@c37
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c40-..@c39
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c41-..@c40
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c225:
	DD	..@c227-..@c226
..@c226:
	DQ	..@c42,..@c43-..@c42
	DB	4
	DD	..@c44-..@c42
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c227:
	DD	..@c229-..@c228
..@c228:
	DQ	..@c45,..@c46-..@c45
	DB	4
	DD	..@c47-..@c45
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c229:
	DD	..@c231-..@c230
..@c230:
	DQ	..@c48,..@c49-..@c48
	DB	4
	DD	..@c50-..@c48
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c231:
	DD	..@c233-..@c232
..@c232:
	DQ	..@c51,..@c52-..@c51
	DB	4
	DD	..@c53-..@c51
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c233:
	DD	..@c235-..@c234
..@c234:
	DQ	..@c54,..@c55-..@c54
	DB	4
	DD	..@c56-..@c54
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c235:
	DD	..@c237-..@c236
..@c236:
	DQ	..@c57,..@c58-..@c57
	DB	4
	DD	..@c59-..@c57
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c237:
	DD	..@c239-..@c238
..@c238:
	DQ	..@c60,..@c61-..@c60
	DB	4
	DD	..@c62-..@c60
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c239:
	DD	..@c241-..@c240
..@c240:
	DQ	..@c63,..@c64-..@c63
	DB	4
	DD	..@c65-..@c63
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c66-..@c65
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c67-..@c66
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c241:
	DD	..@c243-..@c242
..@c242:
	DQ	..@c68,..@c69-..@c68
	DB	4
	DD	..@c70-..@c68
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c71-..@c70
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c72-..@c71
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c243:
	DD	..@c245-..@c244
..@c244:
	DQ	..@c73,..@c74-..@c73
	DB	4
	DD	..@c75-..@c73
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c245:
	DD	..@c247-..@c246
..@c246:
	DQ	..@c76,..@c77-..@c76
	DB	4
	DD	..@c78-..@c76
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c79-..@c78
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c80-..@c79
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c247:
	DD	..@c249-..@c248
..@c248:
	DQ	..@c81,..@c82-..@c81
	DB	4
	DD	..@c83-..@c81
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c84-..@c83
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c85-..@c84
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c249:
	DD	..@c251-..@c250
..@c250:
	DQ	..@c86,..@c87-..@c86
	DB	4
	DD	..@c88-..@c86
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c251:
	DD	..@c253-..@c252
..@c252:
	DQ	..@c89,..@c90-..@c89
	DB	4
	DD	..@c91-..@c89
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c253:
	DD	..@c255-..@c254
..@c254:
	DQ	..@c92,..@c93-..@c92
	DB	4
	DD	..@c94-..@c92
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c95-..@c94
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c96-..@c95
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c255:
	DD	..@c257-..@c256
..@c256:
	DQ	..@c97,..@c98-..@c97
	DB	4
	DD	..@c99-..@c97
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c100-..@c99
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c101-..@c100
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c257:
	DD	..@c259-..@c258
..@c258:
	DQ	..@c102,..@c103-..@c102
	DB	4
	DD	..@c104-..@c102
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c259:
	DD	..@c261-..@c260
..@c260:
	DQ	..@c105,..@c106-..@c105
	DB	4
	DD	..@c107-..@c105
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c261:
	DD	..@c263-..@c262
..@c262:
	DQ	..@c108,..@c109-..@c108
	DB	4
	DD	..@c110-..@c108
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c111-..@c110
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c112-..@c111
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c263:
	DD	..@c265-..@c264
..@c264:
	DQ	..@c113,..@c114-..@c113
	DB	4
	DD	..@c115-..@c113
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c116-..@c115
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c117-..@c116
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c265:
	DD	..@c267-..@c266
..@c266:
	DQ	..@c118,..@c119-..@c118
	DB	4
	DD	..@c120-..@c118
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c121-..@c120
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c122-..@c121
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c267:
	DD	..@c269-..@c268
..@c268:
	DQ	..@c123,..@c124-..@c123
	DB	4
	DD	..@c125-..@c123
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c126-..@c125
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c127-..@c126
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c269:
	DD	..@c271-..@c270
..@c270:
	DQ	..@c128,..@c129-..@c128
	DB	4
	DD	..@c130-..@c128
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c131-..@c130
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c132-..@c131
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c271:
	DD	..@c273-..@c272
..@c272:
	DQ	..@c133,..@c134-..@c133
	DB	4
	DD	..@c135-..@c133
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c136-..@c135
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c137-..@c136
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c273:
	DD	..@c275-..@c274
..@c274:
	DQ	..@c138,..@c139-..@c138
	DB	4
	DD	..@c140-..@c138
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c141-..@c140
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c142-..@c141
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c275:
	DD	..@c277-..@c276
..@c276:
	DQ	..@c143,..@c144-..@c143
	DB	4
	DD	..@c145-..@c143
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c146-..@c145
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c147-..@c146
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c277:
	DD	..@c279-..@c278
..@c278:
	DQ	..@c148,..@c149-..@c148
	DB	4
	DD	..@c150-..@c148
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c151-..@c150
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c152-..@c151
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c279:
	DD	..@c281-..@c280
..@c280:
	DQ	..@c153,..@c154-..@c153
	DB	4
	DD	..@c155-..@c153
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c156-..@c155
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c157-..@c156
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c281:
	DD	..@c283-..@c282
..@c282:
	DQ	..@c158,..@c159-..@c158
	DB	4
	DD	..@c160-..@c158
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c161-..@c160
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c162-..@c161
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c283:
	DD	..@c285-..@c284
..@c284:
	DQ	..@c163,..@c164-..@c163
	DB	4
	DD	..@c165-..@c163
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c166-..@c165
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c167-..@c166
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c285:
	DD	..@c287-..@c286
..@c286:
	DQ	..@c168,..@c169-..@c168
	DB	4
	DD	..@c170-..@c168
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c171-..@c170
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c172-..@c171
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c287:
	DD	..@c289-..@c288
..@c288:
	DQ	..@c173,..@c174-..@c173
	DB	4
	DD	..@c175-..@c173
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c176-..@c175
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c177-..@c176
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c289:
	DD	..@c291-..@c290
..@c290:
	DQ	..@c178,..@c179-..@c178
	DB	4
	DD	..@c180-..@c178
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c181-..@c180
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c182-..@c181
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c291:
	DD	..@c293-..@c292
..@c292:
	DQ	..@c183,..@c184-..@c183
	DB	4
	DD	..@c185-..@c183
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c186-..@c185
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c187-..@c186
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c293:
	DD	..@c295-..@c294
..@c294:
	DQ	..@c188,..@c189-..@c188
	DB	4
	DD	..@c190-..@c188
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c191-..@c190
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c192-..@c191
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c295:
	DD	..@c297-..@c296
..@c296:
	DQ	..@c193,..@c194-..@c193
	DB	4
	DD	..@c195-..@c193
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c196-..@c195
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c197-..@c196
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c297:
	DD	..@c299-..@c298
..@c298:
	DQ	..@c198,..@c199-..@c198
	DB	4
	DD	..@c200-..@c198
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c201-..@c200
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c202-..@c201
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c299:
; End asmlist al_dwarf_frame

