BITS 64
default rel
CPU x64

EXTERN	SYSTEM_$$_MOVE$formal$formal$QWORD
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_setlength
EXTERN	_$dll$user32$MessageBoxA
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$QWORD
EXTERN	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
EXTERN	_$dll$msvcrt$_itoa
EXTERN	_$dll$msvcrt$_i64toa
EXTERN	_$dll$kernel32$GlobalAlloc
EXTERN	RTTI_$SYSTEM_$$_PANSICHAR$indirect
; Begin asmlist al_procedures

SECTION .text
SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64:
..@c1:
; [SysUtils.pas]
; [82] begin
%LINE 82+0 SysUtils.pas
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
; [83] move(src[srcindex],pbyte(pointer(dst))[dstindex],len);
%LINE 83+0
		mov	rdx,qword [rdx]
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
..@c2:

SECTION .text
SYSUTILS_$$_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$INT64$PCHAR$INT64$INT64:
..@c6:
; [87] begin
%LINE 87+0
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
; [88] move(src[srcindex],dst[dstindex],len);
%LINE 88+0
		add	rdx,r9
		add	rcx,rax
; Var len located in register r8
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [89] end;
%LINE 89+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	GLOBAL SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING:
..@c11:
; [103] begin
%LINE 103+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c13:
; Var Start located in register rax
; Var Len located in register eax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var P located in register rsi
; [104] if P = nil then
%LINE 104+0
		test	rdx,rdx
		jne	..@j10
; [105] Exit('');
%LINE 105+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j7
..@j10:
; Var Start located in register rdi
; Var P located in register rsi
; [106] Start := P;
%LINE 106+0
		mov	rdi,rsi
; [108] while P^ <> #0 do
%LINE 108+0
		jmp	..@j12
..@j11:
; [109] Inc(P);
%LINE 109+0
		inc	rsi
..@j12:
%LINE 108+0
		cmp	byte [rsi],0
		jne	..@j11
; [110] Len := P - Start;
%LINE 110+0
		sub	rsi,rdi
; Var Len located in register esi
; [112] SetLength(result, Len);
%LINE 112+0
		movsxd	rdx,esi
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [113] if Start <> nil then
%LINE 113+0
		test	rdi,rdi
		je	..@j15
; [114] fpc_pchar_ansistr_intern_charmove(Start,0,result,0,Len);
%LINE 114+0
		movsxd	rsi,esi
		mov	qword [rsp+32],rsi
		mov	r8,rbx
		mov	rcx,rdi
		xor	r9,r9
		xor	edx,edx
		call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
..@j15:
..@j7:
; [118] end;
%LINE 118+0
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c12:

SECTION .text
SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001F:
..@c14:
; [140] end;
%LINE 140+0
		push	rbp
..@c16:
..@c17:
		mov	rbp,rcx
..@c18:
		lea	rsp,[rsp-32]
; [126] begin
%LINE 126+0
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c15:

SECTION .text
	GLOBAL SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING
SYSUTILS_$$_CHATASTR1$array_of_CHAR$$ANSISTRING:
..@c19:
; Temps allocated between rbp-40 and rbp+0
		push	rbp
..@c21:
..@c22:
		mov	rbp,rsp
..@c23:
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
..@j24:
		nop
..@j20:
; [127] result := '';
%LINE 127+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [128] if Length(A) = 0 then
%LINE 128+0
		lea	rax,[rdi+1]
		test	rax,rax
		jne	..@j26
; [130] MessageBoxA(0,'Error: Char Array empty.', 'Error', 0);
%LINE 130+0
		xor	r9d,r9d
		lea	r8,[_$SYSUTILS$_Ld1]
		lea	rdx,[_$SYSUTILS$_Ld2]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [131] Exit('');
%LINE 131+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j22
..@j26:
; [133] len := 0;
%LINE 133+0
		xor	r12d,r12d
..@j27:
; [135] result := result + A[len];
%LINE 135+0
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
; [136] inc(len);
%LINE 136+0
		inc	r12d
; [137] until len = Length(A);
%LINE 137+0
		movsxd	rax,r12d
		lea	rdx,[rdi+1]
		cmp	rax,rdx
		jne	..@j27
; [139] Exit(StrPas(PAnsiChar(@A[0])));
%LINE 139+0
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSUTILS_$$_STRPAS$PANSICHAR$$ANSISTRING
..@j22:
%LINE 126+0
		nop
..@j21:
		mov	rcx,rbp
		call	SYSUTILS$_$CHATASTR1$array_of_CHAR$$ANSISTRING_$$_fin$0000001F
%LINE 140+0
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		mov	r12,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c20:

SECTION .text
	GLOBAL SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR2$array_of_CHAR$LONGINT$$ANSISTRING:
..@c24:
; Temps allocated between rbp-32 and rbp+0
; [146] begin
%LINE 146+0
		push	rbp
..@c26:
..@c27:
		mov	rbp,rsp
..@c28:
		lea	rsp,[rsp-80]
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
; [147] if (BufLen <= 0) or (Length(A) = 0) then
%LINE 147+0
		test	r12d,r12d
		jle	..@j32
		lea	rax,[rdi+1]
		test	rax,rax
		jne	..@j34
..@j32:
; [148] Exit('');
%LINE 148+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j30
..@j34:
; [149] if BufLen > Length(A) then
%LINE 149+0
		movsxd	rax,r12d
		lea	rdx,[rdi+1]
		cmp	rax,rdx
		jng	..@j36
; [150] BufLen := Length(A);
%LINE 150+0
		lea	rax,[rdi+1]
		mov	r12d,eax
..@j36:
; [153] SetLength(result, BufLen);
%LINE 153+0
		movsxd	rdx,r12d
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [154] if PAnsiChar(@A[0]) <> nil then
%LINE 154+0
		test	rsi,rsi
		je	..@j38
; [155] fpc_pchar_ansistr_intern_charmove(PAnsiChar(@A[0]),0,result,0,BufLen);
%LINE 155+0
		movsxd	r12,r12d
		mov	qword [rsp+32],r12
		mov	rcx,rsi
		mov	r8,rbx
		xor	r9,r9
		xor	edx,edx
		call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
..@j38:
..@j30:
; [157] end;
%LINE 157+0
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		mov	r12,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c25:

SECTION .text
	GLOBAL SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING
SYSUTILS_$$_CHATASTR3$PANSICHAR$LONGINT$$ANSISTRING:
..@c29:
; [163] begin
%LINE 163+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c31:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var P located in register rsi
		mov	edi,r8d
; Var BufLen located in register edi
; [164] if (P = nil) or (BufLen <= 0) then
%LINE 164+0
		test	rsi,rsi
		je	..@j41
		test	edi,edi
		jnle	..@j43
..@j41:
; [165] Exit('');
%LINE 165+0
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j39
..@j43:
; [176] SetLength(result, BufLen);
%LINE 176+0
		movsxd	rdx,edi
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [177] if P <> nil then
%LINE 177+0
		test	rsi,rsi
		je	..@j45
; [178] fpc_pchar_ansistr_intern_charmove(P,0,result,0,BufLen);
%LINE 178+0
		movsxd	rdi,edi
		mov	qword [rsp+32],rdi
		mov	r8,rbx
		mov	rcx,rsi
		xor	r9,r9
		xor	edx,edx
		call	SYSUTILS_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$INT64$RAWBYTESTRING$INT64$INT64
..@j45:
..@j39:
; [180] end;
%LINE 180+0
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c30:

SECTION .text
	GLOBAL SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR:
..@c32:
; [184] begin
%LINE 184+0
		lea	rsp,[rsp-40]
..@c34:
; Var $result located at rsp+32, size=OS_64
		mov	eax,ecx
; Var Size located in register eax
; [185] GetMem(result, Size + 1); // +1 f..r Nullterminator
%LINE 185+0
		lea	rdx,[rax+1]
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [186] result[0] := #0;          // sicherstellen, dass String leer initialisiert ist
%LINE 186+0
		mov	rax,qword [rsp+32]
		mov	byte [rax],0
; [187] end;
%LINE 187+0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+40]
		ret
..@c33:

SECTION .text
	GLOBAL SYSUTILS_$$_STRDISPOSE$PCHAR
SYSUTILS_$$_STRDISPOSE$PCHAR:
..@c35:
; [190] begin
%LINE 190+0
		lea	rsp,[rsp-40]
..@c37:
		mov	rax,rcx
; Var P located in register rax
; [191] if P <> nil then
%LINE 191+0
		test	rcx,rcx
		je	..@j51
; [192] FreeMem(P);
%LINE 192+0
		mov	rcx,rax
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j51:
; [193] end;
%LINE 193+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c36:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR:
..@c38:
; [200] begin
%LINE 200+0
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c40:
; Var $result located in register rax
; Var I located in register edx
; Var L located in register eax
		mov	rbx,rcx
; Var Dest located in register rbx
		mov	rsi,rdx
; Var Source located in register rsi
; Var Source located in register rsi
; [201] L      := StrLen(Source);
%LINE 201+0
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	edi,eax
; Var L located in register edi
; [202] Dest   := StrAlloc(L + 1);
%LINE 202+0
		lea	ecx,[edi+1]
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	qword [rbx],rax
; [204] for I := 0 to L - 1 do
%LINE 204+0
		lea	eax,[edi-1]
		test	eax,eax
		jnge	..@j55
		mov	edx,-1
..@j56:
		inc	edx
; [205] Dest  [i] := Source[i];
%LINE 205+0
		mov	r9,qword [rbx]
		movsxd	rcx,edx
		mov	r8b,byte [rsi+rcx*1]
		mov	byte [r9+rcx*1],r8b
%LINE 204+0
		cmp	eax,edx
		jnle	..@j56
..@j55:
; [206] Dest  [L] := #0;
%LINE 206+0
		mov	rax,qword [rbx]
		movsxd	rdi,edi
		mov	byte [rax+rdi*1],0
; Var $result located in register rax
; [208] Exit(Dest);
%LINE 208+0
		mov	rax,qword [rbx]
; [209] end;
%LINE 209+0
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c39:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR:
..@c41:
; [211] begin
%LINE 211+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c43:
; Var $result located in register rax
		mov	rbx,rcx
; Var Dest located in register rbx
		mov	rsi,rdx
; Var Source located in register rsi
; [212] if Dest = nil then
%LINE 212+0
		cmp	qword [rbx],0
		jne	..@j62
; [213] Dest := StrAlloc(StrLen(Source) + 1);
%LINE 213+0
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		lea	ecx,[eax+1]
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	qword [rbx],rax
..@j62:
; [214] StrCopy_(Dest, Source);
%LINE 214+0
		mov	rcx,rbx
		mov	rdx,rsi
; Var Source located in register rdx
		call	SYSUTILS_$$_STRCOPY_$PCHAR$PCHAR$$PCHAR
; Var $result located in register rax
; [215] Exit(Dest);
%LINE 215+0
		mov	rax,qword [rbx]
; [216] end;
%LINE 216+0
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c42:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR:
..@c44:
; [231] begin
%LINE 231+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c46:
; Var $result located in register rax
; Var D located in register rax
; Var L located in register eax
; Var I located in register r12d
; Var J located in register edx
		mov	rbx,rcx
; Var Dest located in register rbx
		mov	rsi,rdx
; Var Source located in register rsi
; [232] L := StrLen(Dest) + StrLen(Source) + 1;
%LINE 232+0
		mov	rcx,qword [rbx]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	edi,eax
; Var Source located in register rsi
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		add	eax,edi
		lea	ecx,[eax+1]
; Var L located in register ecx
; [233] D := StrAlloc(L);
%LINE 233+0
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rdi,rax
; Var D located in register rdi
; [235] for i := 0 to StrLen(Dest) - 1 do
%LINE 235+0
		mov	rcx,qword [rbx]
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		dec	eax
		test	eax,eax
		jnge	..@j66
		mov	r12d,-1
..@j67:
		inc	r12d
; [236] D[i] := Dest[i];
%LINE 236+0
		movsxd	rdx,r12d
		mov	rcx,qword [rbx]
		mov	cl,byte [rcx+rdx*1]
		mov	byte [rdi+rdx*1],cl
%LINE 235+0
		cmp	eax,r12d
		jnle	..@j67
..@j66:
; Var Source located in register rsi
; [238] for J := 0 to StrLen(Source) - 1 do
%LINE 238+0
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		dec	eax
		test	eax,eax
		jnge	..@j71
		mov	edx,-1
..@j72:
		inc	edx
; [239] D[i + j + 1] := Source[J];
%LINE 239+0
		movsxd	rcx,r12d
		movsxd	r8,edx
		lea	r9,[rcx+r8]
		mov	cl,byte [rsi+r8*1]
		mov	byte [rdi+r9*1+1],cl
%LINE 238+0
		cmp	eax,edx
		jnle	..@j72
..@j71:
; [240] D[i + J + 2] := #0;
%LINE 240+0
		movsxd	r12,r12d
		movsxd	rdx,edx
		lea	rax,[r12+rdx]
		mov	byte [rdi+rax*1+2],0
; [242] Dest := D;
%LINE 242+0
		mov	rax,rdi
; Var D located in register rax
		mov	qword [rbx],rax
; Var $result located in register rax
; Var D located in register rax
; [244] end;
%LINE 244+0
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c45:

SECTION .text
	GLOBAL SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR:
..@c47:
; [246] begin
%LINE 246+0
		push	rbx
		lea	rsp,[rsp-32]
..@c49:
; Var $result located in register rax
		mov	rbx,rcx
; Var Dest located in register rbx
; Var Source located in register rdx
; Var Source located in register rdx
; [247] StrCat_(Dest, Source);
%LINE 247+0
		call	SYSUTILS_$$_STRCAT_$PCHAR$PCHAR$$PCHAR
; Var $result located in register rax
; [248] Exit(Dest);
%LINE 248+0
		mov	rax,qword [rbx]
; [249] end;
%LINE 249+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c48:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR:
..@c50:
; [269] begin
%LINE 269+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c52:
; Var $result located in register rax
; Var Buffer located at rsp+32, size=OS_NO
; Var I located in register eax
		mov	ebx,ecx
; Var Value located in register ebx
; [270] result := StrAlloc(16);
%LINE 270+0
		mov	ecx,16
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rsi,rax
; Var $result located in register rsi
; [271] _itoa(Value, Buffer, 10);
%LINE 271+0
		lea	rdx,[rsp+32]
		mov	ecx,ebx
; Var Value located in register ecx
		mov	r8d,10
		call	_$dll$msvcrt$_itoa
; Var I located in register edx
; [272] i := 0;
%LINE 272+0
		xor	edx,edx
..@j79:
; [274] result[i] := Buffer[i];
%LINE 274+0
		movsxd	rax,edx
		mov	ecx,edx
		mov	cl,byte [rsp+rcx*1+32]
		mov	byte [rsi+rax*1],cl
; [275] inc(i);
%LINE 275+0
		inc	edx
; [276] until i = Length(Buffer);
%LINE 276+0
		movsxd	rax,edx
		cmp	rax,17
		jne	..@j79
; [277] result[16] := #0;
%LINE 277+0
		mov	byte [rsi+16],0
; [278] end;
%LINE 278+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c51:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR:
..@c53:
; [283] begin
%LINE 283+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-72]
..@c55:
; Var $result located in register rax
; Var Buffer located at rsp+32, size=OS_NO
; Var I located in register eax
		mov	rbx,rcx
; Var Value located in register rbx
; [284] result := StrAlloc(32);
%LINE 284+0
		mov	ecx,32
		call	SYSUTILS_$$_STRALLOC$CARDINAL$$PCHAR
		mov	rsi,rax
; Var $result located in register rsi
; [285] _i64toa(Value, Buffer, 10);
%LINE 285+0
		lea	rdx,[rsp+32]
		mov	rcx,rbx
; Var Value located in register rcx
		mov	r8d,10
		call	_$dll$msvcrt$_i64toa
; Var I located in register edx
; [286] i := 0;
%LINE 286+0
		xor	edx,edx
..@j84:
; [288] result[i] := Buffer[i];
%LINE 288+0
		movsxd	rax,edx
		mov	ecx,edx
		mov	cl,byte [rsp+rcx*1+32]
		mov	byte [rsi+rax*1],cl
; [289] inc(i);
%LINE 289+0
		inc	edx
; [290] until i = Length(Buffer);
%LINE 290+0
		movsxd	rax,edx
		cmp	rax,33
		jne	..@j84
; [291] result[32] := #0;
%LINE 291+0
		mov	byte [rsi+32],0
; [292] end;
%LINE 292+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+72]
		pop	rsi
		pop	rbx
		ret
..@c54:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR
SYSUTILS_$$_INTTOSTR$LONGINT$$PCHAR:
..@c56:
; [294] function IntToStr(Value: Integer): PChar; stdcall; overload; begin result := IntToStrCRT32(Value); end;
%LINE 294+0
		lea	rsp,[rsp-40]
..@c58:
; Var $result located in register rax
; Var Value located in register ecx
; Var Value located in register ecx
		call	SYSUTILS_$$_INTTOSTRCRT32$LONGINT$$PCHAR
; Var $result located in register rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c57:

SECTION .text
	GLOBAL SYSUTILS_$$_INTTOSTR$INT64$$PCHAR
SYSUTILS_$$_INTTOSTR$INT64$$PCHAR:
..@c59:
; [295] function IntToStr(Value:   Int64): PChar; stdcall; overload; begin result := IntToStrCRT64(Value); end;
%LINE 295+0
		lea	rsp,[rsp-40]
..@c61:
; Var $result located in register rax
; Var Value located in register rcx
; Var Value located in register rcx
		call	SYSUTILS_$$_INTTOSTRCRT64$INT64$$PCHAR
; Var $result located in register rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c60:

SECTION .text
	GLOBAL SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING:
..@c62:
; [311] begin
%LINE 311+0
		lea	rsp,[rsp-72]
..@c64:
; Var temp located at rsp+32, size=OS_NO
; Var i located in register eax
; Var $result located in register rcx
		mov	r8,rdx
; Var Value located in register r8
; Var i located in register r9d
; [312] i := High(temp);
%LINE 312+0
		mov	r9d,31
; [313] temp[i] := #0;
%LINE 313+0
		mov	eax,r9d
		mov	byte [rsp+rax*1+32],0
; [314] Dec(i);
%LINE 314+0
		dec	r9d
..@j93:
; [317] temp[i] := Char(Ord('0') + (Value mod 10));
%LINE 317+0
		mov	r10,r8
		mov	rax,-858993459
		mul	r10
		shr	rdx,3
		mov	eax,10
		imul	rdx,rax
		sub	r10,rdx
		lea	rax,[r10+48]
		mov	edx,r9d
		mov	byte [rsp+rdx*1+32],al
; [318] Value := Value div 10;
%LINE 318+0
		mov	rdx,r8
		mov	rax,-858993459
		mul	rdx
		shr	rdx,3
		mov	r8,rdx
; [319] Dec(i);
%LINE 319+0
		dec	r9d
; [320] until Value = 0;
%LINE 320+0
		test	r8,r8
		jne	..@j93
; [322] Result := AnsiString(@temp[i + 1]);
%LINE 322+0
		movsxd	r9,r9d
		lea	rdx,[rsp+r9*1+33]
		call	fpc_ansistr_assign
; [323] end;
%LINE 323+0
		nop
		lea	rsp,[rsp+72]
		ret
..@c63:

SECTION .text
	GLOBAL SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING
SYSUTILS_$$_UINTTOSTR$QWORD$$ANSISTRING:
..@c65:
; [325] begin
%LINE 325+0
		lea	rsp,[rsp-40]
..@c67:
; Var $result located in register rax
; Var Value located in register rdx
; Var Value located in register rdx
; [326] result := UIntToStrA(Value);
%LINE 326+0
		call	SYSUTILS_$$_UINTTOSTRA$QWORD$$ANSISTRING
; [327] end;
%LINE 327+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c66:

SECTION .text
	GLOBAL SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR
SYSUTILS_$$_COMMANDLINETOARGVA$PANSICHAR$LONGINT$$PPANSICHAR:
..@c68:
; [349] begin
%LINE 349+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c70:
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
; [350] len := StrLen(CmdLine);
%LINE 350+0
		mov	rcx,rbx
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
; Var len located in register eax
; [352] allocSize := ((len + 2) div 2) * SizeOf(Pointer) + SizeOf(Pointer);
%LINE 352+0
		lea	edx,[eax+2]
		shr	edx,1
		shl	edx,3
		lea	edi,[edx+8]
; Var allocSize located in register edi
; [354] argv := PPAnsiChar(GlobalAlloc(GMEM_FIXED, allocSize + (len + 2) * SizeOf(AnsiChar)));
%LINE 354+0
		and	eax,eax
		lea	rdx,[rax+2]
		mov	eax,edi
		add	rdx,rax
		xor	ecx,ecx
		call	_$dll$kernel32$GlobalAlloc
; Var argv located in register rax
; [355] if argv = nil then
%LINE 355+0
		test	rax,rax
		jne	..@j101
; [357] argc := 0;
%LINE 357+0
		mov	dword [rsi],0
; [358] Result := nil;
%LINE 358+0
		xor	edx,edx
; [359] Exit;
%LINE 359+0
		jmp	..@j98
..@j101:
; [362] _argv := PAnsiChar(PByte(argv) + allocSize);
%LINE 362+0
		and	edi,edi
		lea	rcx,[rdi+rax]
; Var _argv located in register rcx
; [364] argc := 0;
%LINE 364+0
		mov	dword [rsi],0
; [365] argv[argc] := _argv;
%LINE 365+0
		movsxd	r8,dword [rsi]
; Var _argv located in register rcx
		mov	qword [rax+r8*8],rcx
; Var in_QM located in register r13b
; [367] in_QM := False;
%LINE 367+0
		xor	r13b,r13b
; Var in_TEXT located in register r11b
; [368] in_TEXT := False;
%LINE 368+0
		xor	r11b,r11b
; Var in_SPACE located in register dil
; [369] in_SPACE := True;
%LINE 369+0
		mov	dil,1
; Var i located in register r9d
; [370] i := 0;
%LINE 370+0
		xor	r9d,r9d
; Var j located in register r10d
; [371] j := 0;
%LINE 371+0
		xor	r10d,r10d
; [373] while CmdLine[i] <> #0 do
%LINE 373+0
		jmp	..@j103
..@j102:
; [375] a := CmdLine[i];
%LINE 375+0
		mov	r8d,r9d
		mov	r12b,byte [rbx+r8*1]
; [376] if in_QM then
%LINE 376+0
		test	r13b,r13b
		je	..@j106
; [378] if a = '"' then
%LINE 378+0
		cmp	r12b,34
		jne	..@j108
; [379] in_QM := False
%LINE 379+0
		xor	r13b,r13b
		jmp	..@j110
..@j108:
; [382] _argv[j] := a;
%LINE 382+0
		mov	r8d,r10d
		mov	byte [rcx+r8*1],r12b
; [383] Inc(j);
%LINE 383+0
		inc	r10d
		jmp	..@j110
..@j106:
; [388] case a of
%LINE 388+0
		mov	r8b,r12b
		cmp	r8b,9
		jb	..@j112
		sub	r8b,10
		jbe	..@j114
		sub	r8b,3
		je	..@j114
		sub	r8b,19
		je	..@j114
		sub	r8b,2
		jne	..@j112
; [391] in_QM := True;
%LINE 391+0
		mov	r13b,1
; [392] in_TEXT := True;
%LINE 392+0
		mov	r11b,1
; [393] if in_SPACE then
%LINE 393+0
		test	dil,dil
		je	..@j116
; [395] argv[argc] := @_argv[j];
%LINE 395+0
		movsxd	r14,dword [rsi]
		mov	r8d,r10d
		add	r8,rcx
		mov	qword [rax+r14*8],r8
; [396] Inc(argc);
%LINE 396+0
		inc	dword [rsi]
..@j116:
; [398] in_SPACE := False;
%LINE 398+0
		xor	dil,dil
		jmp	..@j111
..@j114:
; [402] if in_TEXT then
%LINE 402+0
		test	r11b,r11b
		je	..@j118
; [404] _argv[j] := #0;
%LINE 404+0
		mov	r8d,r10d
		mov	byte [rcx+r8*1],0
; [405] Inc(j);
%LINE 405+0
		inc	r10d
..@j118:
; [407] in_TEXT := False;
%LINE 407+0
		xor	r11b,r11b
; [408] in_SPACE := True;
%LINE 408+0
		mov	dil,1
		jmp	..@j111
..@j112:
; [411] in_TEXT := True;
%LINE 411+0
		mov	r11b,1
; [412] if in_SPACE then
%LINE 412+0
		test	dil,dil
		je	..@j120
; [414] argv[argc] := @_argv[j];
%LINE 414+0
		movsxd	r14,dword [rsi]
		mov	r8d,r10d
		add	r8,rcx
		mov	qword [rax+r14*8],r8
; [415] Inc(argc);
%LINE 415+0
		inc	dword [rsi]
..@j120:
; [417] _argv[j] := a;
%LINE 417+0
		mov	r8d,r10d
		mov	byte [rcx+r8*1],r12b
; [418] Inc(j);
%LINE 418+0
		inc	r10d
; [419] in_SPACE := False;
%LINE 419+0
		xor	dil,dil
..@j111:
..@j110:
; [422] Inc(i);
%LINE 422+0
		inc	r9d
..@j103:
%LINE 373+0
		mov	r8d,r9d
		cmp	byte [rbx+r8*1],0
		jne	..@j102
; [425] _argv[j] := #0;
%LINE 425+0
		and	r10d,r10d
		mov	byte [rcx+r10*1],0
; [426] argv[argc] := nil;
%LINE 426+0
		movsxd	rcx,dword [rsi]
		mov	qword [rax+rcx*8],0
; Var argv located in register rax
; [428] Result := argv;
%LINE 428+0
		mov	rdx,rax
..@j98:
; [429] end;
%LINE 429+0
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
..@c69:
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .rodata
_$SYSUTILS$_Ld1:
%LINE 130+0 SysUtils.pas
		DB	"Error",0

SECTION .rodata
_$SYSUTILS$_Ld2:
		DB	"Error: Char Array empty.",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSUTILS_$$_PPANSICHAR
RTTI_$SYSUTILS_$$_PPANSICHAR	DB	29,10
; [450] 
%LINE 450+0 SysUtils.pas
		DB	"PPAnsiChar"
	DQ	RTTI_$SYSTEM_$$_PANSICHAR$indirect
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSUTILS_$$_PPANSICHAR$indirect
RTTI_$SYSUTILS_$$_PPANSICHAR$indirect	DQ	RTTI_$SYSUTILS_$$_PPANSICHAR
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c71:
	DD	..@c73-..@c72
..@c72:
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
..@c73:
	DD	..@c75-..@c74
..@c74:
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
..@c75:
	DD	..@c77-..@c76
..@c76:
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
..@c77:
	DD	..@c79-..@c78
..@c78:
	DQ	..@c11,..@c12-..@c11
	DB	4
	DD	..@c13-..@c11
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c79:
	DD	..@c81-..@c80
..@c80:
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
..@c81:
	DD	..@c83-..@c82
..@c82:
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
..@c83:
	DD	..@c85-..@c84
..@c84:
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
..@c85:
	DD	..@c87-..@c86
..@c86:
	DQ	..@c29,..@c30-..@c29
	DB	4
	DD	..@c31-..@c29
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c87:
	DD	..@c89-..@c88
..@c88:
	DQ	..@c32,..@c33-..@c32
	DB	4
	DD	..@c34-..@c32
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c89:
	DD	..@c91-..@c90
..@c90:
	DQ	..@c35,..@c36-..@c35
	DB	4
	DD	..@c37-..@c35
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c91:
	DD	..@c93-..@c92
..@c92:
	DQ	..@c38,..@c39-..@c38
	DB	4
	DD	..@c40-..@c38
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c93:
	DD	..@c95-..@c94
..@c94:
	DQ	..@c41,..@c42-..@c41
	DB	4
	DD	..@c43-..@c41
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c95:
	DD	..@c97-..@c96
..@c96:
	DQ	..@c44,..@c45-..@c44
	DB	4
	DD	..@c46-..@c44
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c97:
	DD	..@c99-..@c98
..@c98:
	DQ	..@c47,..@c48-..@c47
	DB	4
	DD	..@c49-..@c47
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c99:
	DD	..@c101-..@c100
..@c100:
	DQ	..@c50,..@c51-..@c50
	DB	4
	DD	..@c52-..@c50
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c101:
	DD	..@c103-..@c102
..@c102:
	DQ	..@c53,..@c54-..@c53
	DB	4
	DD	..@c55-..@c53
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c103:
	DD	..@c105-..@c104
..@c104:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c105:
	DD	..@c107-..@c106
..@c106:
	DQ	..@c59,..@c60-..@c59
	DB	4
	DD	..@c61-..@c59
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c107:
	DD	..@c109-..@c108
..@c108:
	DQ	..@c62,..@c63-..@c62
	DB	4
	DD	..@c64-..@c62
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c109:
	DD	..@c111-..@c110
..@c110:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c111:
	DD	..@c113-..@c112
..@c112:
	DQ	..@c68,..@c69-..@c68
	DB	4
	DD	..@c70-..@c68
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c113:
; End asmlist al_dwarf_frame

