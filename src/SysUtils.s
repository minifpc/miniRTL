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
SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64:
..@c1:
; [SysUtils.pas]
; [77] begin
%LINE 77+0 SysUtils.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-32]
		mov	rax,rcx
; Var src located in register rax
		mov	rcx,rdx
; Var srcindex located in register rcx
		mov	rdx,r8
; Var dst located in register rdx
; Var dstindex located in register r9
		mov	r8,qword [rbp+48]
; Var len located in register r8
; [78] move(src[srcindex],pbyte(pointer(dst))[dstindex],len);
%LINE 78+0
		mov	rdx,qword [rdx]
		add	rdx,r9
		add	rcx,rax
; Var len located in register r8
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [79] end;
%LINE 79+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:

SECTION .text
SYSUTILS_$$_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$INT64$PCHAR$INT64$INT64:
..@c6:
; [82] begin
%LINE 82+0
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-32]
		mov	rax,rcx
; Var src located in register rax
		mov	rcx,rdx
; Var srcindex located in register rcx
		mov	rdx,r8
; Var dst located in register rdx
; Var dstindex located in register r9
		mov	r8,qword [rbp+48]
; Var len located in register r8
; [83] move(src[srcindex],dst[dstindex],len);
%LINE 83+0
		add	rdx,r9
		add	rcx,rax
; Var len located in register r8
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [84] end;
%LINE 84+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	GLOBAL SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64:
..@c11:
; [88] begin
%LINE 88+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c13:
		mov	rbx,rcx
; Var S located in register rbx
		mov	rsi,rdx
; Var Buf located in register rsi
		mov	rdi,r8
; Var Len located in register rdi
		mov	qword [rbx],0
; [89] SetLength(S,Len);
%LINE 89+0
		mov	rcx,rbx
; Var Len located in register rdi
		mov	rdx,rdi
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [90] If (Buf<>Nil) then
%LINE 90+0
		test	rsi,rsi
		je	..@j10
; [91] fpc_pchar_ansistr_intern_charmove(Buf,0,S,0,Len);
%LINE 91+0
		mov	qword [rsp+32],rdi
		mov	r8,rbx
		mov	rcx,rsi
		xor	r9,r9
		xor	edx,edx
		call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
..@j10:
; [92] end;
%LINE 92+0
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c12:

SECTION .text
	GLOBAL SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING:
..@c14:
; [100] begin
%LINE 100+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c16:
; Var Start located in register rax
; Var Len located in register eax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var P located in register rsi
; [101] if P = nil then
%LINE 101+0
		test	rdx,rdx
		jne	..@j14
; [102] Exit('');
%LINE 102+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j11
..@j14:
; Var Start located in register rdi
; Var P located in register rsi
; [103] Start := P;
%LINE 103+0
		mov	rdi,rsi
; [105] while P^ <> #0 do
%LINE 105+0
		jmp	..@j16
..@j15:
; [106] Inc(P);
%LINE 106+0
		inc	rsi
..@j16:
%LINE 105+0
		cmp	byte [rsi],0
		jne	..@j15
; [107] Len := P - Start;
%LINE 107+0
		sub	rsi,rdi
; Var Len located in register esi
; [109] SetString(Result, Start, Len);
%LINE 109+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		movsxd	r8,esi
		mov	rdx,rdi
; Var Start located in register rdx
		call	SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
..@j11:
; [110] end;
%LINE 110+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c15:

SECTION .text
SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001E:
..@c17:
; [132] end;
%LINE 132+0
		push	rbp
..@c19:
..@c20:
		mov	rbp,rcx
..@c21:
		lea	rsp,[rsp-32]
; [118] begin
%LINE 118+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c18:

SECTION .text
	GLOBAL SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING
SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING:
..@c22:
; Temps allocated between rbp-40 and rbp+0
		push	rbp
..@c24:
..@c25:
		mov	rbp,rsp
..@c26:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	qword [rbp-16],r12
; Var len located in register r12d
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var A located in register rsi
		mov	rdi,r8
; Var $highA located in register rdi
		mov	qword [rbp-8],0
..@j26:
		nop
..@j22:
; [119] result := '';
%LINE 119+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [120] if Length(A) = 0 then
%LINE 120+0
		lea	rax,[rdi+1]
		test	rax,rax
		jne	..@j28
; [122] MessageBoxA(0,'Error: Char Array empty.', 'Error', 0);
%LINE 122+0
		xor	r9d,r9d
		lea	r8,[_$SYSUTILS$_Ld1]
		lea	rdx,[_$SYSUTILS$_Ld2]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [123] Exit('');
%LINE 123+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j24
..@j28:
; [125] len := 0;
%LINE 125+0
		xor	r12d,r12d
..@j29:
; [127] result := result + A[len];
%LINE 127+0
		movsxd	rax,r12d
		movzx	edx,byte [rsi+rax*1]
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [128] inc(len);
%LINE 128+0
		inc	r12d
; [129] until len = Length(A);
%LINE 129+0
		movsxd	rax,r12d
		lea	rdx,[rdi+1]
		cmp	rax,rdx
		jne	..@j29
; [131] Exit(StrPas(PAnsiChar(@A[0])));
%LINE 131+0
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
..@j24:
%LINE 118+0
		nop
..@j23:
		mov	rcx,rbp
		call	SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001E
%LINE 132+0
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		mov	r12,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c23:

SECTION .text
	GLOBAL SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING:
..@c27:
; Temps allocated between rbp-32 and rbp+0
; [138] begin
%LINE 138+0
		push	rbp
..@c29:
..@c30:
		mov	rbp,rsp
..@c31:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rdi
		mov	qword [rbp-16],rsi
		mov	qword [rbp-8],r12
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var A located in register rsi
		mov	rdi,r8
; Var $highA located in register rdi
		mov	r12d,r9d
; Var BufLen located in register r12d
; [139] if (BufLen <= 0) or (Length(A) = 0) then
%LINE 139+0
		test	r12d,r12d
		jle	..@j34
		lea	rax,[rdi+1]
		test	rax,rax
		jne	..@j36
..@j34:
; [140] Exit('');
%LINE 140+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j32
..@j36:
; [141] if BufLen > Length(A) then
%LINE 141+0
		movsxd	rax,r12d
		lea	rdx,[rdi+1]
		cmp	rax,rdx
		jng	..@j38
; [142] BufLen := Length(A);
%LINE 142+0
		lea	rax,[rdi+1]
		mov	r12d,eax
..@j38:
; [143] SetString(Result, PAnsiChar(@A[0]), BufLen);
%LINE 143+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		mov	rdx,rsi
		movsxd	r8,r12d
		call	SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
..@j32:
; [144] end;
%LINE 144+0
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		mov	r12,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c28:

SECTION .text
	GLOBAL SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING:
..@c32:
; [150] begin
%LINE 150+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c34:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var P located in register rsi
		mov	edi,r8d
; Var BufLen located in register edi
; [151] if (P = nil) or (BufLen <= 0) then
%LINE 151+0
		test	rsi,rsi
		je	..@j41
		test	edi,edi
		jnle	..@j43
..@j41:
; [152] Exit('');
%LINE 152+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j39
..@j43:
; [153] SetString(Result, P, BufLen);
%LINE 153+0
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
		mov	rcx,rbx
		movsxd	r8,edi
		mov	rdx,rsi
; Var P located in register rdx
		call	SYSUTILS_$$_SETSTRING$ANSISTRING$PANSICHAR$INT64
..@j39:
; [154] end;
%LINE 154+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c33:

SECTION .text
	GLOBAL SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR:
..@c35:
; [158] begin
%LINE 158+0
		lea	rsp,[rsp-40]
..@c37:
; Var $result located at rsp+32, size=OS_64
		mov	eax,ecx
; Var Size located in register eax
; [159] GetMem(result, Size + 1); // +1 f..r Nullterminator
%LINE 159+0
		lea	rdx,[rax+1]
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [160] result[0] := #0;          // sicherstellen, dass String leer initialisiert ist
%LINE 160+0
		mov	rax,qword [rsp+32]
		mov	byte [rax],0
; [161] end;
%LINE 161+0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+40]
		ret
..@c36:

SECTION .text
	GLOBAL SYSUTILS_$$_STRDISPOSE$PCHAR
SYSUTILS_$$_STRDISPOSE$PCHAR:
..@c38:
; [164] begin
%LINE 164+0
		lea	rsp,[rsp-40]
..@c40:
		mov	rax,rcx
; Var P located in register rax
; [165] if P <> nil then
%LINE 165+0
		test	rcx,rcx
		je	..@j49
; [166] FreeMem(P);
%LINE 166+0
		mov	rcx,rax
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j49:
; [167] end;
%LINE 167+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c39:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR:
..@c41:
; [174] begin
%LINE 174+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c43:
; Var $result located in register rax
; Var I located in register edx
; Var L located in register eax
		mov	rbx,rcx
; Var Dest located in register rbx
		mov	rsi,rdx
; Var Source located in register rsi
; Var Source located in register rsi
; [175] L      := StrLen(Source);
%LINE 175+0
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	edi,eax
; Var L located in register edi
; [176] Dest   := StrAlloc(L + 1);
%LINE 176+0
		lea	ecx,[edi+1]
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	qword [rbx],rax
; [178] for I := 0 to L - 1 do
%LINE 178+0
		lea	eax,[edi-1]
		test	eax,eax
		jnge	..@j53
		mov	edx,-1
..@j54:
		inc	edx
; [179] Dest  [i] := Source[i];
%LINE 179+0
		mov	r9,qword [rbx]
		movsxd	rcx,edx
		mov	r8b,byte [rsi+rcx*1]
		mov	byte [r9+rcx*1],r8b
%LINE 178+0
		cmp	eax,edx
		jnle	..@j54
..@j53:
; [180] Dest  [L] := #0;
%LINE 180+0
		mov	rax,qword [rbx]
		movsxd	rdi,edi
		mov	byte [rax+rdi*1],0
; Var $result located in register rax
; [182] Exit(Dest);
%LINE 182+0
		mov	rax,qword [rbx]
; [183] end;
%LINE 183+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c42:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR:
..@c44:
; [185] begin
%LINE 185+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c46:
; Var $result located in register rax
		mov	rbx,rcx
; Var Dest located in register rbx
		mov	rsi,rdx
; Var Source located in register rsi
; [186] if Dest = nil then
%LINE 186+0
		cmp	qword [rbx],0
		jne	..@j60
; [187] Dest := StrAlloc(StrLen(Source) + 1);
%LINE 187+0
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		lea	ecx,[eax+1]
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	qword [rbx],rax
..@j60:
; [188] StrCopy_(Dest, Source);
%LINE 188+0
		mov	rcx,rbx
		mov	rdx,rsi
; Var Source located in register rdx
		call	SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
; Var $result located in register rax
; [189] Exit(Dest);
%LINE 189+0
		mov	rax,qword [rbx]
; [190] end;
%LINE 190+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c45:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR:
..@c47:
; [205] begin
%LINE 205+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c49:
; Var $result located in register rax
; Var D located in register rax
; Var L located in register eax
; Var I located in register r12d
; Var J located in register edx
		mov	rbx,rcx
; Var Dest located in register rbx
		mov	rsi,rdx
; Var Source located in register rsi
; [206] L := StrLen(Dest) + StrLen(Source) + 1;
%LINE 206+0
		mov	rcx,qword [rbx]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	edi,eax
; Var Source located in register rsi
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		add	eax,edi
		lea	ecx,[eax+1]
; Var L located in register ecx
; [207] D := StrAlloc(L);
%LINE 207+0
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rdi,rax
; Var D located in register rdi
; [209] for i := 0 to StrLen(Dest) - 1 do
%LINE 209+0
		mov	rcx,qword [rbx]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		dec	eax
		test	eax,eax
		jnge	..@j64
		mov	r12d,-1
..@j65:
		inc	r12d
; [210] D[i] := Dest[i];
%LINE 210+0
		movsxd	rdx,r12d
		mov	rcx,qword [rbx]
		mov	cl,byte [rcx+rdx*1]
		mov	byte [rdi+rdx*1],cl
%LINE 209+0
		cmp	eax,r12d
		jnle	..@j65
..@j64:
; Var Source located in register rsi
; [212] for J := 0 to StrLen(Source) - 1 do
%LINE 212+0
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		dec	eax
		test	eax,eax
		jnge	..@j69
		mov	edx,-1
..@j70:
		inc	edx
; [213] D[i + j + 1] := Source[J];
%LINE 213+0
		movsxd	rcx,r12d
		movsxd	r8,edx
		lea	r9,[rcx+r8]
		mov	cl,byte [rsi+r8*1]
		mov	byte [rdi+r9*1+1],cl
%LINE 212+0
		cmp	eax,edx
		jnle	..@j70
..@j69:
; [214] D[i + J + 2] := #0;
%LINE 214+0
		movsxd	r12,r12d
		movsxd	rdx,edx
		lea	rax,[r12+rdx]
		mov	byte [rdi+rax*1+2],0
; [216] Dest := D;
%LINE 216+0
		mov	rax,rdi
; Var D located in register rax
		mov	qword [rbx],rax
; Var $result located in register rax
; Var D located in register rax
; [218] end;
%LINE 218+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c48:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR:
..@c50:
; [220] begin
%LINE 220+0
		push	rbx
		lea	rsp,[rsp-32]
..@c52:
; Var $result located in register rax
		mov	rbx,rcx
; Var Dest located in register rbx
; Var Source located in register rdx
; Var Source located in register rdx
; [221] StrCat_(Dest, Source);
%LINE 221+0
		call	SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
; Var $result located in register rax
; [222] Exit(Dest);
%LINE 222+0
		mov	rax,qword [rbx]
; [223] end;
%LINE 223+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c51:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR:
..@c53:
; [243] begin
%LINE 243+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c55:
; Var $result located in register rax
; Var Buffer located at rsp+32, size=OS_NO
; Var I located in register eax
		mov	ebx,ecx
; Var Value located in register ebx
; [244] result := StrAlloc(16);
%LINE 244+0
		mov	ecx,16
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rsi,rax
; Var $result located in register rsi
; [245] _itoa(Value, Buffer, 10);
%LINE 245+0
		lea	rdx,[rsp+32]
		mov	ecx,ebx
; Var Value located in register ecx
		mov	r8d,10
		call	_$dll$msvcrt$_itoa
; Var I located in register edx
; [246] i := 0;
%LINE 246+0
		xor	edx,edx
..@j77:
; [248] result[i] := Buffer[i];
%LINE 248+0
		movsxd	rax,edx
		mov	ecx,edx
		mov	cl,byte [rsp+rcx*1+32]
		mov	byte [rsi+rax*1],cl
; [249] inc(i);
%LINE 249+0
		inc	edx
; [250] until i = Length(Buffer);
%LINE 250+0
		movsxd	rax,edx
		cmp	rax,17
		jne	..@j77
; [251] result[16] := #0;
%LINE 251+0
		mov	byte [rsi+16],0
; [252] end;
%LINE 252+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c54:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR:
..@c56:
; [257] begin
%LINE 257+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-72]
..@c58:
; Var $result located in register rax
; Var Buffer located at rsp+32, size=OS_NO
; Var I located in register eax
		mov	rbx,rcx
; Var Value located in register rbx
; [258] result := StrAlloc(32);
%LINE 258+0
		mov	ecx,32
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rsi,rax
; Var $result located in register rsi
; [259] _i64toa(Value, Buffer, 10);
%LINE 259+0
		lea	rdx,[rsp+32]
		mov	rcx,rbx
; Var Value located in register rcx
		mov	r8d,10
		call	_$dll$msvcrt$_i64toa
; Var I located in register edx
; [260] i := 0;
%LINE 260+0
		xor	edx,edx
..@j82:
; [262] result[i] := Buffer[i];
%LINE 262+0
		movsxd	rax,edx
		mov	ecx,edx
		mov	cl,byte [rsp+rcx*1+32]
		mov	byte [rsi+rax*1],cl
; [263] inc(i);
%LINE 263+0
		inc	edx
; [264] until i = Length(Buffer);
%LINE 264+0
		movsxd	rax,edx
		cmp	rax,33
		jne	..@j82
; [265] result[32] := #0;
%LINE 265+0
		mov	byte [rsi+32],0
; [266] end;
%LINE 266+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+72]
		pop	rsi
		pop	rbx
		ret
..@c57:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR:
..@c59:
; [268] function IntToStr(Value: Integer): PChar; stdcall; overload; begin result := IntToStrCRT32(Value); end;
%LINE 268+0
		lea	rsp,[rsp-40]
..@c61:
; Var $result located in register rax
; Var Value located in register ecx
; Var Value located in register ecx
		call	SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
; Var $result located in register rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c60:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTR$INT64$$PCHAR
SYSUTILS_$$_INTTOSTR$INT64$$PCHAR:
..@c62:
; [269] function IntToStr(Value:   Int64): PChar; stdcall; overload; begin result := IntToStrCRT64(Value); end;
%LINE 269+0
		lea	rsp,[rsp-40]
..@c64:
; Var $result located in register rax
; Var Value located in register rcx
; Var Value located in register rcx
		call	SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
; Var $result located in register rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c63:

SECTION .text
	GLOBAL SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING:
..@c65:
; [285] begin
%LINE 285+0
		lea	rsp,[rsp-72]
..@c67:
; Var temp located at rsp+32, size=OS_NO
; Var i located in register eax
; Var $result located in register rcx
		mov	r8,rdx
; Var Value located in register r8
; Var i located in register eax
; [286] i := High(temp);
%LINE 286+0
		mov	eax,31
; [287] temp[i] := #0;
%LINE 287+0
		mov	byte [rsp+63],0
; Var i located in register r10d
%LINE 285+0
		mov	r10d,30
..@j91:
; [291] temp[i] := Char(Ord('0') + (Value mod 10));
%LINE 291+0
		mov	r9,r8
		mov	rax,-858993459
		mul	r9
		shr	rdx,3
		mov	eax,10
		imul	rdx,rax
		sub	r9,rdx
		lea	rax,[r9+48]
		mov	edx,r10d
		mov	byte [rsp+rdx*1+32],al
; [292] Value := Value div 10;
%LINE 292+0
		mov	rdx,r8
		mov	rax,-858993459
		mul	rdx
		shr	rdx,3
		mov	r8,rdx
; [293] Dec(i);
%LINE 293+0
		dec	r10d
; [294] until Value = 0;
%LINE 294+0
		test	r8,r8
		jne	..@j91
; [296] Result := AnsiString(@temp[i + 1]);
%LINE 296+0
		movsxd	r10,r10d
		lea	rdx,[rsp+r10*1+33]
		call	fpc_ansistr_assign
; [297] end;
%LINE 297+0
		nop
		lea	rsp,[rsp+72]
		ret
..@c66:

SECTION .text
	GLOBAL SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING:
..@c68:
; [299] begin
%LINE 299+0
		lea	rsp,[rsp-40]
..@c70:
; Var $result located in register rax
; Var Value located in register rdx
; Var Value located in register rdx
; [300] result := UIntToStrA(Value);
%LINE 300+0
		call	SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
; [301] end;
%LINE 301+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c69:

SECTION .text
	GLOBAL SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR:
..@c71:
; [323] begin
%LINE 323+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c73:
; Var $result located in register rdx
; Var argv located in register rax
; Var _argv located in register rax
; Var len located in register eax
; Var i located in register eax
; Var j located in register eax
; Var a located in register r12b
; Var in_QM located in register al
; Var in_TEXT located in register al
; Var in_SPACE located in register al
; Var allocSize located in register eax
		mov	rbx,rcx
; Var CmdLine located in register rbx
		mov	rsi,rdx
; Var argc located in register rsi
; Var CmdLine located in register rbx
; [324] len := StrLen(CmdLine);
%LINE 324+0
		mov	rcx,rbx
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
; Var len located in register eax
; [326] allocSize := ((len + 2) div 2) * SizeOf(Pointer) + SizeOf(Pointer);
%LINE 326+0
		lea	edx,[eax+2]
		shr	edx,1
		shl	edx,3
		lea	edi,[edx+8]
; Var allocSize located in register edi
; [328] argv := PPAnsiChar(GlobalAlloc(GMEM_FIXED, allocSize + (len + 2) * SizeOf(AnsiChar)));
%LINE 328+0
		and	eax,eax
		lea	rdx,[rax+2]
		mov	eax,edi
		add	rdx,rax
		xor	ecx,ecx
		call	_$dll$kernel32$GlobalAlloc
; Var argv located in register rax
; [329] if argv = nil then
%LINE 329+0
		test	rax,rax
		jne	..@j99
; [331] argc := 0;
%LINE 331+0
		mov	dword [rsi],0
; [332] Result := nil;
%LINE 332+0
		xor	edx,edx
; [333] Exit;
%LINE 333+0
		jmp	..@j96
..@j99:
; [336] _argv := PAnsiChar(PByte(argv) + allocSize);
%LINE 336+0
		and	edi,edi
		lea	rcx,[rdi+rax]
; Var _argv located in register rcx
; [338] argc := 0;
%LINE 338+0
		mov	dword [rsi],0
; Var _argv located in register rcx
; [339] argv[argc] := _argv;
%LINE 339+0
		mov	qword [rax],rcx
; Var in_QM located in register r13b
; [341] in_QM := False;
%LINE 341+0
		xor	r13b,r13b
; Var in_TEXT located in register r11b
; [342] in_TEXT := False;
%LINE 342+0
		xor	r11b,r11b
; Var in_SPACE located in register dil
; [343] in_SPACE := True;
%LINE 343+0
		mov	dil,1
; Var i located in register r9d
; [344] i := 0;
%LINE 344+0
		xor	r9d,r9d
; Var j located in register r10d
; [345] j := 0;
%LINE 345+0
		xor	r10d,r10d
; [347] while CmdLine[i] <> #0 do
%LINE 347+0
		jmp	..@j101
..@j100:
; [349] a := CmdLine[i];
%LINE 349+0
		mov	r8d,r9d
		mov	r12b,byte [rbx+r8*1]
; [350] if in_QM then
%LINE 350+0
		test	r13b,r13b
		je	..@j104
; [352] if a = '"' then
%LINE 352+0
		cmp	r12b,34
		jne	..@j106
; [353] in_QM := False
%LINE 353+0
		xor	r13b,r13b
		jmp	..@j108
..@j106:
; [356] _argv[j] := a;
%LINE 356+0
		mov	r8d,r10d
		mov	byte [rcx+r8*1],r12b
; [357] Inc(j);
%LINE 357+0
		inc	r10d
		jmp	..@j108
..@j104:
; [362] case a of
%LINE 362+0
		mov	r8b,r12b
		cmp	r8b,9
		jb	..@j110
		sub	r8b,10
		jbe	..@j112
		sub	r8b,3
		je	..@j112
		sub	r8b,19
		je	..@j112
		sub	r8b,2
		jne	..@j110
; [365] in_QM := True;
%LINE 365+0
		mov	r13b,1
; [366] in_TEXT := True;
%LINE 366+0
		mov	r11b,1
; [367] if in_SPACE then
%LINE 367+0
		test	dil,dil
		je	..@j114
; [369] argv[argc] := @_argv[j];
%LINE 369+0
		movsxd	r14,dword [rsi]
		mov	r8d,r10d
		add	r8,rcx
		mov	qword [rax+r14*8],r8
; [370] Inc(argc);
%LINE 370+0
		inc	dword [rsi]
..@j114:
; [372] in_SPACE := False;
%LINE 372+0
		xor	dil,dil
		jmp	..@j109
..@j112:
; [376] if in_TEXT then
%LINE 376+0
		test	r11b,r11b
		je	..@j116
; [378] _argv[j] := #0;
%LINE 378+0
		mov	r8d,r10d
		mov	byte [rcx+r8*1],0
; [379] Inc(j);
%LINE 379+0
		inc	r10d
..@j116:
; [381] in_TEXT := False;
%LINE 381+0
		xor	r11b,r11b
; [382] in_SPACE := True;
%LINE 382+0
		mov	dil,1
		jmp	..@j109
..@j110:
; [385] in_TEXT := True;
%LINE 385+0
		mov	r11b,1
; [386] if in_SPACE then
%LINE 386+0
		test	dil,dil
		je	..@j118
; [388] argv[argc] := @_argv[j];
%LINE 388+0
		movsxd	r14,dword [rsi]
		mov	r8d,r10d
		add	r8,rcx
		mov	qword [rax+r14*8],r8
; [389] Inc(argc);
%LINE 389+0
		inc	dword [rsi]
..@j118:
; [391] _argv[j] := a;
%LINE 391+0
		mov	r8d,r10d
		mov	byte [rcx+r8*1],r12b
; [392] Inc(j);
%LINE 392+0
		inc	r10d
; [393] in_SPACE := False;
%LINE 393+0
		xor	dil,dil
..@j109:
..@j108:
; [396] Inc(i);
%LINE 396+0
		inc	r9d
..@j101:
%LINE 347+0
		mov	r8d,r9d
		cmp	byte [rbx+r8*1],0
		jne	..@j100
; [399] _argv[j] := #0;
%LINE 399+0
		and	r10d,r10d
		mov	byte [rcx+r10*1],0
; [400] argv[argc] := nil;
%LINE 400+0
		movsxd	rcx,dword [rsi]
		mov	qword [rax+rcx*8],0
; Var argv located in register rax
; [402] Result := argv;
%LINE 402+0
		mov	rdx,rax
..@j96:
; [403] end;
%LINE 403+0
		mov	rax,rdx
		nop
		lea	rsp,[rsp+40]
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c72:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
_$SYSUTILS$_Ld1:
%LINE 122+0 SysUtils.pas
		DB	"Error",0

SECTION .rodata
_$SYSUTILS$_Ld2:
		DB	"Error: Char Array empty.",0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c74:
	DD	..@c76-..@c75
..@c75:
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
..@c76:
	DD	..@c78-..@c77
..@c77:
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
..@c78:
	DD	..@c80-..@c79
..@c79:
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
..@c80:
	DD	..@c82-..@c81
..@c81:
	DQ	..@c11,..@c12-..@c11
	DB	4
	DD	..@c13-..@c11
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c82:
	DD	..@c84-..@c83
..@c83:
	DQ	..@c14,..@c15-..@c14
	DB	4
	DD	..@c16-..@c14
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c84:
	DD	..@c86-..@c85
..@c85:
	DQ	..@c17,..@c18-..@c17
	DB	4
	DD	..@c19-..@c17
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c20-..@c19
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c21-..@c20
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c86:
	DD	..@c88-..@c87
..@c87:
	DQ	..@c22,..@c23-..@c22
	DB	4
	DD	..@c24-..@c22
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c25-..@c24
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c26-..@c25
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c88:
	DD	..@c90-..@c89
..@c89:
	DQ	..@c27,..@c28-..@c27
	DB	4
	DD	..@c29-..@c27
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c30-..@c29
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c31-..@c30
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c90:
	DD	..@c92-..@c91
..@c91:
	DQ	..@c32,..@c33-..@c32
	DB	4
	DD	..@c34-..@c32
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c92:
	DD	..@c94-..@c93
..@c93:
	DQ	..@c35,..@c36-..@c35
	DB	4
	DD	..@c37-..@c35
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c94:
	DD	..@c96-..@c95
..@c95:
	DQ	..@c38,..@c39-..@c38
	DB	4
	DD	..@c40-..@c38
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c96:
	DD	..@c98-..@c97
..@c97:
	DQ	..@c41,..@c42-..@c41
	DB	4
	DD	..@c43-..@c41
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c98:
	DD	..@c100-..@c99
..@c99:
	DQ	..@c44,..@c45-..@c44
	DB	4
	DD	..@c46-..@c44
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c100:
	DD	..@c102-..@c101
..@c101:
	DQ	..@c47,..@c48-..@c47
	DB	4
	DD	..@c49-..@c47
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c102:
	DD	..@c104-..@c103
..@c103:
	DQ	..@c50,..@c51-..@c50
	DB	4
	DD	..@c52-..@c50
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c104:
	DD	..@c106-..@c105
..@c105:
	DQ	..@c53,..@c54-..@c53
	DB	4
	DD	..@c55-..@c53
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c106:
	DD	..@c108-..@c107
..@c107:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c108:
	DD	..@c110-..@c109
..@c109:
	DQ	..@c59,..@c60-..@c59
	DB	4
	DD	..@c61-..@c59
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c110:
	DD	..@c112-..@c111
..@c111:
	DQ	..@c62,..@c63-..@c62
	DB	4
	DD	..@c64-..@c62
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c112:
	DD	..@c114-..@c113
..@c113:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c114:
	DD	..@c116-..@c115
..@c115:
	DQ	..@c68,..@c69-..@c68
	DB	4
	DD	..@c70-..@c68
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c116:
	DD	..@c118-..@c117
..@c117:
	DQ	..@c71,..@c72-..@c71
	DB	4
	DD	..@c73-..@c71
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c118:
; End asmlist al_dwarf_frame

