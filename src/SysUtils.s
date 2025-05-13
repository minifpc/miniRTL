BITS 64
default rel
CPU x64

EXTERN	SYSTEM_$$_MOVE$formal$formal$QWORD
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_decr_ref
EXTERN	_$dll$user32$MessageBoxA
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_concat
EXTERN	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$QWORD
EXTERN	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
EXTERN	_$dll$msvcrt$_itoa
EXTERN	_$dll$msvcrt$_i64toa
EXTERN	_$dll$kernel32$GlobalAlloc
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64:
..@c1:
; [sysutils.pas]
; [77] begin
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-64]
; Var src located at rbp-8, size=OS_64
; Var srcindex located at rbp-16, size=OS_S64
; Var dst located at rbp-24, size=OS_64
; Var dstindex located at rbp-32, size=OS_S64
; Var len located at rbp+48, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [78] move(src[srcindex],pbyte(pointer(dst))[dstindex],len);
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		mov	rdx,qword [rbp-32]
		lea	rdx,[rax+rdx*1]
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		lea	rcx,[rax+rcx*1]
		mov	r8,qword [rbp+48]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [79] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:

SECTION .text
	ALIGN 16
SYSUTILS_$$_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$INT64$PCHAR$INT64$INT64:
..@c6:
; [82] begin
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-64]
; Var src located at rbp-8, size=OS_64
; Var srcindex located at rbp-16, size=OS_S64
; Var dst located at rbp-24, size=OS_64
; Var dstindex located at rbp-32, size=OS_S64
; Var len located at rbp+48, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	qword [rbp-32],r9
; [83] move(src[srcindex],dst[dstindex],len);
		mov	rdx,qword [rbp-24]
		mov	rax,qword [rbp-32]
		lea	rdx,[rdx+rax*1]
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		lea	rcx,[rax+rcx*1]
		mov	r8,qword [rbp+48]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [84] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64:
..@c11:
; [88] begin
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-80]
; Var S located at rbp-8, size=OS_64
; Var Buf located at rbp-16, size=OS_64
; Var Len located at rbp-24, size=OS_S64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
; [89] SetLength(S,Len);
		mov	rcx,qword [rbp-8]
		mov	rdx,qword [rbp-24]
		mov	r8d,0
		call	fpc_ansistr_setlength
; [90] If (Buf<>Nil) then
		cmp	qword [rbp-16],0
		jne	..@j9
		jmp	..@j10
..@j9:
; [91] fpc_pchar_ansistr_intern_charmove(Buf,0,S,0,Len);
		mov	rax,qword [rbp-24]
		mov	qword [rsp+32],rax
		mov	r8,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		mov	r9,0
		mov	rdx,0
		call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
	ALIGN 4
..@j10:
; [92] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c12:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING:
..@c16:
; Temps allocated between rbp-40 and rbp-28
; [100] begin
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var P located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var Start located at rbp-24, size=OS_64
; Var Len located at rbp-28, size=OS_S32
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [101] if P = nil then
		cmp	qword [rbp-8],0
		je	..@j13
		jmp	..@j14
..@j13:
; [102] Exit('');
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_ansistr_assign
		jmp	..@j11
	ALIGN 4
..@j14:
; [103] Start := P;
		mov	rax,qword [rbp-8]
		mov	qword [rbp-24],rax
; [105] while P^ <> #0 do
		jmp	..@j16
	ALIGN 8
..@j15:
; [106] Inc(P);
		add	qword [rbp-8],1
..@j16:
		mov	rax,qword [rbp-8]
		cmp	byte [rax],0
		jne	..@j15
		jmp	..@j17
..@j17:
; [107] Len := P - Start;
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-24]
		sub	rax,rdx
		mov	dword [rbp-28],eax
; [109] SetString(Result, Start, Len);
		mov	rbx,qword [rbp-16]
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		movsxd	r8,dword [rbp-28]
		mov	rdx,qword [rbp-24]
		call	SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
..@j11:
; [110] end;
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c17:

SECTION .text
	ALIGN 16
SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001E:
..@c21:
; [132] end;
		push	rbp
..@c23:
..@c24:
		mov	rbp,rcx
..@c25:
		lea	rsp,[rsp-32]
; [118] begin
		lea	rcx,[rbp-40]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c22:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING
SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING:
..@c26:
; Temps allocated between rbp-40 and rbp-28
		push	rbp
..@c28:
..@c29:
		mov	rbp,rsp
..@c30:
		lea	rsp,[rsp-80]
; Var A located at rbp-8, size=OS_64
; Var $highA located at rbp-16, size=OS_S64
; Var $result located at rbp-24, size=OS_64
; Var len located at rbp-28, size=OS_S32
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	qword [rbp-40],0
..@j26:
		nop
..@j22:
; [119] result := '';
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_ansistr_assign
; [120] if Length(A) = 0 then
		mov	rax,qword [rbp-16]
		lea	rax,[rax+1]
		test	rax,rax
		je	..@j27
		jmp	..@j28
..@j27:
; [122] MessageBoxA(0,'Error: Char Array empty.', 'Error', 0);
		mov	r9d,0
		lea	r8,[_$SYSUTILS$_Ld1]
		lea	rdx,[_$SYSUTILS$_Ld2]
		mov	rcx,0
		call	_$dll$user32$MessageBoxA
; [123] Exit('');
		mov	rcx,qword [rbp-24]
		mov	rdx,0
		call	fpc_ansistr_assign
		jmp	..@j24
	ALIGN 4
..@j28:
; [125] len := 0;
		mov	dword [rbp-28],0
	ALIGN 8
..@j29:
; [127] result := result + A[len];
		mov	rax,qword [rbp-8]
		movsxd	rdx,dword [rbp-28]
		movzx	edx,byte [rax+rdx*1]
		mov	r8d,0
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-40]
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rax]
		mov	rcx,qword [rbp-24]
		mov	r9d,0
		call	fpc_ansistr_concat
; [128] inc(len);
		add	dword [rbp-28],1
; [129] until len = Length(A);
		movsxd	rdx,dword [rbp-28]
		mov	rax,qword [rbp-16]
		lea	rax,[rax+1]
		cmp	rdx,rax
		je	..@j31
		jmp	..@j29
..@j31:
; [131] Exit(StrPas(PAnsiChar(@A[0])));
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-24]
		call	SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
		jmp	..@j24
..@j24:
		nop
..@j23:
		mov	rcx,rbp
		call	SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001E
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c27:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING:
..@c31:
; Temps allocated between rbp-40 and rbp-32
; [138] begin
		push	rbp
..@c33:
..@c34:
		mov	rbp,rsp
..@c35:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
; Var A located at rbp-8, size=OS_64
; Var BufLen located at rbp-16, size=OS_S32
; Var $highA located at rbp-24, size=OS_S64
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-32],rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-24],r8
		mov	dword [rbp-16],r9d
; [139] if (BufLen <= 0) or (Length(A) = 0) then
		cmp	dword [rbp-16],0
		jle	..@j34
		jmp	..@j35
..@j35:
		mov	rax,qword [rbp-24]
		lea	rax,[rax+1]
		test	rax,rax
		je	..@j34
		jmp	..@j36
..@j34:
; [140] Exit('');
		mov	rcx,qword [rbp-32]
		mov	rdx,0
		call	fpc_ansistr_assign
		jmp	..@j32
	ALIGN 4
..@j36:
; [141] if BufLen > Length(A) then
		movsxd	rdx,dword [rbp-16]
		mov	rax,qword [rbp-24]
		lea	rax,[rax+1]
		cmp	rdx,rax
		jg	..@j37
		jmp	..@j38
..@j37:
; [142] BufLen := Length(A);
		mov	rax,qword [rbp-24]
		lea	rax,[rax+1]
		mov	dword [rbp-16],eax
	ALIGN 4
..@j38:
; [143] SetString(Result, PAnsiChar(@A[0]), BufLen);
		mov	rbx,qword [rbp-32]
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		movsxd	r8,dword [rbp-16]
		call	SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
..@j32:
; [144] end;
		mov	rbx,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c32:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING:
..@c36:
; Temps allocated between rbp-32 and rbp-24
; [150] begin
		push	rbp
..@c38:
..@c39:
		mov	rbp,rsp
..@c40:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
; Var P located at rbp-8, size=OS_64
; Var BufLen located at rbp-16, size=OS_S32
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-8],rdx
		mov	dword [rbp-16],r8d
; [151] if (P = nil) or (BufLen <= 0) then
		cmp	qword [rbp-8],0
		je	..@j41
		jmp	..@j42
..@j42:
		cmp	dword [rbp-16],0
		jle	..@j41
		jmp	..@j43
..@j41:
; [152] Exit('');
		mov	rax,qword [rbp-24]
		mov	rcx,rax
		mov	rdx,0
		call	fpc_ansistr_assign
		jmp	..@j39
	ALIGN 4
..@j43:
; [153] SetString(Result, P, BufLen);
		mov	rbx,qword [rbp-24]
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		movsxd	r8,dword [rbp-16]
		mov	rdx,qword [rbp-8]
		call	SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
..@j39:
; [154] end;
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c37:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR:
..@c41:
; [158] begin
		push	rbp
..@c43:
..@c44:
		mov	rbp,rsp
..@c45:
		lea	rsp,[rsp-48]
; Var Size located at rbp-8, size=OS_32
; Var $result located at rbp-16, size=OS_64
		mov	dword [rbp-8],ecx
; [159] GetMem(result, Size + 1); // +1 f..r Nullterminator
		mov	eax,dword [rbp-8]
		lea	rdx,[rax+1]
		lea	rcx,[rbp-16]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [160] result[0] := #0;          // sicherstellen, dass String leer initialisiert ist
		mov	rax,qword [rbp-16]
		mov	byte [rax],0
; [161] end;
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c42:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_STRDISPOSE$PCHAR
SYSUTILS_$$_STRDISPOSE$PCHAR:
..@c46:
; [164] begin
		push	rbp
..@c48:
..@c49:
		mov	rbp,rsp
..@c50:
		lea	rsp,[rsp-48]
; Var P located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
; [165] if P <> nil then
		cmp	qword [rbp-8],0
		jne	..@j48
		jmp	..@j49
..@j48:
; [166] FreeMem(P);
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
	ALIGN 4
..@j49:
; [167] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c47:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR:
..@c51:
; [174] begin
		push	rbp
..@c53:
..@c54:
		mov	rbp,rsp
..@c55:
		lea	rsp,[rsp-64]
; Var Dest located at rbp-8, size=OS_64
; Var Source located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var I located at rbp-28, size=OS_S32
; Var L located at rbp-32, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [175] L      := StrLen(Source);
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	dword [rbp-32],eax
; [176] Dest   := StrAlloc(L + 1);
		mov	eax,dword [rbp-32]
		lea	ecx,[eax+1]
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
; [178] for I := 0 to L - 1 do
		mov	eax,dword [rbp-32]
		lea	eax,[eax-1]
		cmp	eax,0
		jge	..@j52
		jmp	..@j53
..@j52:
		mov	dword [rbp-28],-1
	ALIGN 8
..@j54:
		mov	edx,dword [rbp-28]
		lea	edx,[edx+1]
		mov	dword [rbp-28],edx
; [179] Dest  [i] := Source[i];
		mov	rdx,qword [rbp-8]
		mov	r8,qword [rdx]
		movsxd	r9,dword [rbp-28]
		mov	rdx,qword [rbp-16]
		movsxd	rcx,dword [rbp-28]
		mov	dl,byte [rdx+rcx*1]
		mov	byte [r8+r9*1],dl
		cmp	eax,dword [rbp-28]
		jle	..@j56
		jmp	..@j54
..@j56:
	ALIGN 4
..@j53:
; [180] Dest  [L] := #0;
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		movsxd	rdx,dword [rbp-32]
		mov	byte [rax+rdx*1],0
; [182] Exit(Dest);
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-24],rax
		jmp	..@j50
..@j50:
; [183] end;
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c52:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR:
..@c56:
; [185] begin
		push	rbp
..@c58:
..@c59:
		mov	rbp,rsp
..@c60:
		lea	rsp,[rsp-64]
; Var Dest located at rbp-8, size=OS_64
; Var Source located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [186] if Dest = nil then
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j59
		jmp	..@j60
..@j59:
; [187] Dest := StrAlloc(StrLen(Source) + 1);
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		lea	ecx,[eax+1]
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
	ALIGN 4
..@j60:
; [188] StrCopy_(Dest, Source);
		mov	rcx,qword [rbp-8]
		mov	rdx,qword [rbp-16]
		call	SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
; [189] Exit(Dest);
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-24],rax
		jmp	..@j57
..@j57:
; [190] end;
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c57:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR:
..@c61:
; Temps allocated between rbp-56 and rbp-44
; [205] begin
		push	rbp
..@c63:
..@c64:
		mov	rbp,rsp
..@c65:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
; Var Dest located at rbp-8, size=OS_64
; Var Source located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var D located at rbp-32, size=OS_64
; Var L located at rbp-36, size=OS_S32
; Var I located at rbp-40, size=OS_S32
; Var J located at rbp-44, size=OS_S32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [206] L := StrLen(Dest) + StrLen(Source) + 1;
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	ebx,eax
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		lea	eax,[ebx+eax]
		lea	eax,[eax+1]
		mov	dword [rbp-36],eax
; [207] D := StrAlloc(L);
		mov	ecx,dword [rbp-36]
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	qword [rbp-32],rax
; [209] for i := 0 to StrLen(Dest) - 1 do
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		sub	eax,1
		cmp	eax,0
		jge	..@j63
		jmp	..@j64
..@j63:
		mov	dword [rbp-40],-1
	ALIGN 8
..@j65:
		mov	edx,dword [rbp-40]
		lea	edx,[edx+1]
		mov	dword [rbp-40],edx
; [210] D[i] := Dest[i];
		mov	rdx,qword [rbp-8]
		mov	rdx,qword [rdx]
		movsxd	rcx,dword [rbp-40]
		mov	r8,qword [rbp-32]
		movsxd	r9,dword [rbp-40]
		mov	dl,byte [rdx+rcx*1]
		mov	byte [r8+r9*1],dl
		cmp	eax,dword [rbp-40]
		jle	..@j67
		jmp	..@j65
..@j67:
	ALIGN 4
..@j64:
; [212] for J := 0 to StrLen(Source) - 1 do
		mov	rcx,qword [rbp-16]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		sub	eax,1
		cmp	eax,0
		jge	..@j68
		jmp	..@j69
..@j68:
		mov	dword [rbp-44],-1
	ALIGN 8
..@j70:
		mov	edx,dword [rbp-44]
		lea	edx,[edx+1]
		mov	dword [rbp-44],edx
; [213] D[i + j + 1] := Source[J];
		mov	r9,qword [rbp-32]
		movsxd	rcx,dword [rbp-40]
		movsxd	rdx,dword [rbp-44]
		lea	rdx,[rcx+rdx]
		lea	r8,[rdx+1]
		mov	rcx,qword [rbp-16]
		movsxd	rdx,dword [rbp-44]
		mov	dl,byte [rcx+rdx*1]
		mov	byte [r9+r8*1],dl
		cmp	eax,dword [rbp-44]
		jle	..@j72
		jmp	..@j70
..@j72:
	ALIGN 4
..@j69:
; [214] D[i + J + 2] := #0;
		mov	rcx,qword [rbp-32]
		movsxd	rdx,dword [rbp-40]
		movsxd	rax,dword [rbp-44]
		lea	rax,[rdx+rax]
		lea	rax,[rax+2]
		mov	byte [rcx+rax*1],0
; [216] Dest := D;
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rbp-32]
		mov	qword [rdx],rax
; [217] Exit(D);
		mov	rax,qword [rbp-32]
		mov	qword [rbp-24],rax
		jmp	..@j61
..@j61:
; [218] end;
		mov	rax,qword [rbp-24]
		mov	rbx,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c62:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR:
..@c66:
; [220] begin
		push	rbp
..@c68:
..@c69:
		mov	rbp,rsp
..@c70:
		lea	rsp,[rsp-64]
; Var Dest located at rbp-8, size=OS_64
; Var Source located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [221] StrCat_(Dest, Source);
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		mov	rdx,qword [rbp-16]
		call	SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
; [222] Exit(Dest);
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-24],rax
		jmp	..@j73
..@j73:
; [223] end;
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c67:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR:
..@c71:
; [243] begin
		push	rbp
..@c73:
..@c74:
		mov	rbp,rsp
..@c75:
		lea	rsp,[rsp-80]
; Var Value located at rbp-8, size=OS_S32
; Var $result located at rbp-16, size=OS_64
; Var Buffer located at rbp-36, size=OS_NO
; Var I located at rbp-40, size=OS_S32
		mov	dword [rbp-8],ecx
; [244] result := StrAlloc(16);
		mov	eax,16
		mov	ecx,eax
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	qword [rbp-16],rax
; [245] _itoa(Value, Buffer, 10);
		lea	rdx,[rbp-36]
		mov	ecx,dword [rbp-8]
		mov	r8d,10
		call	_$dll$msvcrt$_itoa
; [246] i := 0;
		mov	dword [rbp-40],0
	ALIGN 8
..@j77:
; [248] result[i] := Buffer[i];
		mov	rdx,qword [rbp-16]
		movsxd	rcx,dword [rbp-40]
		mov	eax,dword [rbp-40]
		mov	al,byte [rbp+rax*1-36]
		mov	byte [rdx+rcx*1],al
; [249] inc(i);
		add	dword [rbp-40],1
; [250] until i = Length(Buffer);
		movsxd	rax,dword [rbp-40]
		cmp	rax,17
		je	..@j79
		jmp	..@j77
..@j79:
; [251] result[16] := #0;
		mov	rax,qword [rbp-16]
		mov	byte [rax+16],0
; [252] end;
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c72:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR:
..@c76:
; [257] begin
		push	rbp
..@c78:
..@c79:
		mov	rbp,rsp
..@c80:
		lea	rsp,[rsp-96]
; Var Value located at rbp-8, size=OS_S64
; Var $result located at rbp-16, size=OS_64
; Var Buffer located at rbp-52, size=OS_NO
; Var I located at rbp-56, size=OS_S32
		mov	qword [rbp-8],rcx
; [258] result := StrAlloc(32);
		mov	eax,32
		mov	ecx,eax
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	qword [rbp-16],rax
; [259] _i64toa(Value, Buffer, 10);
		lea	rdx,[rbp-52]
		mov	rcx,qword [rbp-8]
		mov	r8d,10
		call	_$dll$msvcrt$_i64toa
; [260] i := 0;
		mov	dword [rbp-56],0
	ALIGN 8
..@j82:
; [262] result[i] := Buffer[i];
		mov	rdx,qword [rbp-16]
		movsxd	rcx,dword [rbp-56]
		mov	eax,dword [rbp-56]
		mov	al,byte [rbp+rax*1-52]
		mov	byte [rdx+rcx*1],al
; [263] inc(i);
		add	dword [rbp-56],1
; [264] until i = Length(Buffer);
		movsxd	rax,dword [rbp-56]
		cmp	rax,33
		je	..@j84
		jmp	..@j82
..@j84:
; [265] result[32] := #0;
		mov	rax,qword [rbp-16]
		mov	byte [rax+32],0
; [266] end;
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c77:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR:
..@c81:
; [268] function IntToStr(Value: Integer): PChar; stdcall; overload; begin result := IntToStrCRT32(Value); end;
		push	rbp
..@c83:
..@c84:
		mov	rbp,rsp
..@c85:
		lea	rsp,[rsp-48]
; Var Value located at rbp-8, size=OS_S32
; Var $result located at rbp-16, size=OS_64
		mov	dword [rbp-8],ecx
		mov	eax,dword [rbp-8]
		mov	ecx,eax
		call	SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
		mov	qword [rbp-16],rax
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c82:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_INTTOSTR$INT64$$PCHAR
SYSUTILS_$$_INTTOSTR$INT64$$PCHAR:
..@c86:
; [269] function IntToStr(Value:   Int64): PChar; stdcall; overload; begin result := IntToStrCRT64(Value); end;
		push	rbp
..@c88:
..@c89:
		mov	rbp,rsp
..@c90:
		lea	rsp,[rsp-48]
; Var Value located at rbp-8, size=OS_S64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
		mov	qword [rbp-16],rax
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c87:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING:
..@c91:
; [285] begin
		push	rbp
..@c93:
..@c94:
		mov	rbp,rsp
..@c95:
		lea	rsp,[rsp-96]
; Var Value located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var temp located at rbp-48, size=OS_NO
; Var i located at rbp-52, size=OS_S32
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [286] i := High(temp);
		mov	dword [rbp-52],31
; [287] temp[i] := #0;
		mov	eax,dword [rbp-52]
		mov	byte [rbp+rax*1-48],0
; [288] Dec(i);
		sub	dword [rbp-52],1
	ALIGN 8
..@j91:
; [291] temp[i] := Char(Ord('0') + (Value mod 10));
		mov	rcx,qword [rbp-8]
		mov	rax,-858993459
		mul	rcx
		shr	rdx,3
		mov	rax,10
		imul	rdx,rax
		sub	rcx,rdx
		lea	rax,[rcx+48]
		mov	edx,dword [rbp-52]
		mov	byte [rbp+rdx*1-48],al
; [292] Value := Value div 10;
		mov	rdx,qword [rbp-8]
		mov	rax,-858993459
		mul	rdx
		shr	rdx,3
		mov	qword [rbp-8],rdx
; [293] Dec(i);
		sub	dword [rbp-52],1
; [294] until Value = 0;
		cmp	qword [rbp-8],0
		je	..@j93
		jmp	..@j91
..@j93:
; [296] Result := AnsiString(@temp[i + 1]);
		movsxd	rax,dword [rbp-52]
		lea	rax,[rax+1]
		lea	rdx,[rbp+rax*1-48]
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_assign
; [297] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c92:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING:
..@c96:
; [299] begin
		push	rbp
..@c98:
..@c99:
		mov	rbp,rsp
..@c100:
		lea	rsp,[rsp-48]
; Var Value located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
; [300] result := UIntToStrA(Value);
		mov	rax,qword [rbp-16]
		mov	rcx,rax
		mov	rdx,qword [rbp-8]
		call	SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
; [301] end;
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c97:

SECTION .text
	ALIGN 16
	GLOBAL SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR:
..@c101:
; [323] begin
		push	rbp
..@c103:
..@c104:
		mov	rbp,rsp
..@c105:
		lea	rsp,[rsp-112]
; Var CmdLine located at rbp-8, size=OS_64
; Var argc located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var argv located at rbp-32, size=OS_64
; Var _argv located at rbp-40, size=OS_64
; Var len located at rbp-44, size=OS_32
; Var i located at rbp-48, size=OS_32
; Var j located at rbp-52, size=OS_32
; Var a located at rbp-56, size=OS_8
; Var in_QM located at rbp-60, size=OS_8
; Var in_TEXT located at rbp-64, size=OS_8
; Var in_SPACE located at rbp-68, size=OS_8
; Var allocSize located at rbp-72, size=OS_32
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [324] len := StrLen(CmdLine);
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	dword [rbp-44],eax
; [326] allocSize := ((len + 2) div 2) * SizeOf(Pointer) + SizeOf(Pointer);
		mov	eax,dword [rbp-44]
		lea	eax,[eax+2]
		shr	eax,1
		shl	eax,3
		lea	eax,[eax+8]
		mov	dword [rbp-72],eax
; [328] argv := PPAnsiChar(GlobalAlloc(GMEM_FIXED, allocSize + (len + 2) * SizeOf(AnsiChar)));
		mov	eax,dword [rbp-44]
		lea	rax,[rax+2]
		mov	edx,dword [rbp-72]
		lea	rdx,[rax+rdx]
		mov	ecx,0
		call	_$dll$kernel32$GlobalAlloc
		mov	qword [rbp-32],rax
; [329] if argv = nil then
		cmp	qword [rbp-32],0
		je	..@j98
		jmp	..@j99
..@j98:
; [331] argc := 0;
		mov	rax,qword [rbp-16]
		mov	dword [rax],0
; [332] Result := nil;
		mov	qword [rbp-24],0
; [333] Exit;
		jmp	..@j96
	ALIGN 4
..@j99:
; [336] _argv := PAnsiChar(PByte(argv) + allocSize);
		mov	eax,dword [rbp-72]
		add	rax,qword [rbp-32]
		mov	qword [rbp-40],rax
; [338] argc := 0;
		mov	rax,qword [rbp-16]
		mov	dword [rax],0
; [339] argv[argc] := _argv;
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-16]
		movsxd	rax,dword [rax]
		mov	rdx,qword [rbp-40]
		mov	qword [rcx+rax*8],rdx
; [341] in_QM := False;
		mov	byte [rbp-60],0
; [342] in_TEXT := False;
		mov	byte [rbp-64],0
; [343] in_SPACE := True;
		mov	byte [rbp-68],1
; [344] i := 0;
		mov	dword [rbp-48],0
; [345] j := 0;
		mov	dword [rbp-52],0
; [347] while CmdLine[i] <> #0 do
		jmp	..@j101
	ALIGN 8
..@j100:
; [349] a := CmdLine[i];
		mov	rax,qword [rbp-8]
		mov	edx,dword [rbp-48]
		mov	al,byte [rax+rdx*1]
		mov	byte [rbp-56],al
; [350] if in_QM then
		cmp	byte [rbp-60],0
		jne	..@j103
		jmp	..@j104
..@j103:
; [352] if a = '"' then
		cmp	byte [rbp-56],34
		je	..@j105
		jmp	..@j106
..@j105:
; [353] in_QM := False
		mov	byte [rbp-60],0
		jmp	..@j107
..@j106:
; [356] _argv[j] := a;
		mov	rdx,qword [rbp-40]
		mov	eax,dword [rbp-52]
		mov	cl,byte [rbp-56]
		mov	byte [rdx+rax*1],cl
; [357] Inc(j);
		add	dword [rbp-52],1
..@j107:
		jmp	..@j108
..@j104:
; [362] case a of
		mov	al,byte [rbp-56]
		cmp	al,9
		jb	..@j110
		sub	al,9
		sub	al,1
		jbe	..@j112
		sub	al,3
		je	..@j112
		sub	al,19
		je	..@j112
		sub	al,2
		je	..@j111
		jmp	..@j110
	ALIGN 4
..@j111:
; [365] in_QM := True;
		mov	byte [rbp-60],1
; [366] in_TEXT := True;
		mov	byte [rbp-64],1
; [367] if in_SPACE then
		cmp	byte [rbp-68],0
		jne	..@j113
		jmp	..@j114
..@j113:
; [369] argv[argc] := @_argv[j];
		mov	r8,qword [rbp-32]
		mov	rax,qword [rbp-16]
		movsxd	rcx,dword [rax]
		mov	rax,qword [rbp-40]
		mov	edx,dword [rbp-52]
		lea	rax,[rax+rdx*1]
		mov	qword [r8+rcx*8],rax
; [370] Inc(argc);
		mov	rax,qword [rbp-16]
		add	dword [rax],1
	ALIGN 4
..@j114:
; [372] in_SPACE := False;
		mov	byte [rbp-68],0
		jmp	..@j109
	ALIGN 4
..@j112:
; [376] if in_TEXT then
		cmp	byte [rbp-64],0
		jne	..@j115
		jmp	..@j116
..@j115:
; [378] _argv[j] := #0;
		mov	rdx,qword [rbp-40]
		mov	eax,dword [rbp-52]
		mov	byte [rdx+rax*1],0
; [379] Inc(j);
		add	dword [rbp-52],1
	ALIGN 4
..@j116:
; [381] in_TEXT := False;
		mov	byte [rbp-64],0
; [382] in_SPACE := True;
		mov	byte [rbp-68],1
		jmp	..@j109
	ALIGN 4
..@j110:
; [385] in_TEXT := True;
		mov	byte [rbp-64],1
; [386] if in_SPACE then
		cmp	byte [rbp-68],0
		jne	..@j117
		jmp	..@j118
..@j117:
; [388] argv[argc] := @_argv[j];
		mov	r8,qword [rbp-32]
		mov	rax,qword [rbp-16]
		movsxd	rcx,dword [rax]
		mov	rdx,qword [rbp-40]
		mov	eax,dword [rbp-52]
		lea	rax,[rdx+rax*1]
		mov	qword [r8+rcx*8],rax
; [389] Inc(argc);
		mov	rax,qword [rbp-16]
		add	dword [rax],1
	ALIGN 4
..@j118:
; [391] _argv[j] := a;
		mov	rax,qword [rbp-40]
		mov	edx,dword [rbp-52]
		mov	cl,byte [rbp-56]
		mov	byte [rax+rdx*1],cl
; [392] Inc(j);
		add	dword [rbp-52],1
; [393] in_SPACE := False;
		mov	byte [rbp-68],0
	ALIGN 4
..@j109:
..@j108:
; [396] Inc(i);
		add	dword [rbp-48],1
..@j101:
		mov	rdx,qword [rbp-8]
		mov	eax,dword [rbp-48]
		cmp	byte [rdx+rax*1],0
		jne	..@j100
		jmp	..@j102
..@j102:
; [399] _argv[j] := #0;
		mov	rax,qword [rbp-40]
		mov	edx,dword [rbp-52]
		mov	byte [rax+rdx*1],0
; [400] argv[argc] := nil;
		mov	rdx,qword [rbp-32]
		mov	rax,qword [rbp-16]
		movsxd	rax,dword [rax]
		mov	qword [rdx+rax*8],0
; [402] Result := argv;
		mov	rax,qword [rbp-32]
		mov	qword [rbp-24],rax
..@j96:
; [403] end;
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c102:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
_$SYSUTILS$_Ld1:
		DB	"Error",0

SECTION .rodata
	ALIGN 8,DB 0
_$SYSUTILS$_Ld2:
		DB	"Error: Char Array empty.",0
; End asmlist al_typedconsts

