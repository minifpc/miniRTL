BITS 64
default rel
CPU x64

EXTERN	_$dll$kernel32$VirtualAlloc
EXTERN	_$dll$kernel32$VirtualFree
EXTERN	_$dll$kernel32$RtlMoveMemory
EXTERN	_$dll$ntdll$RtlCompareMemory
EXTERN	_$dll$kernel32$RtlFillMemory
EXTERN	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; Begin asmlist al_pure_assembler

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT:
..@c1:
; [xmm.pas]
; [142] asm
%LINE 142+0 xmm.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [144] mov    eax, val
%LINE 144+0
		mov	eax,edx
; [145] lock   xchg dword ptr [target], eax
%LINE 145+0
		lock		xchg	dword [rcx],eax
CPU x64

; [151] end;
%LINE 151+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
XMM_$$__XMEMCHUNKSBEGIN:
..@c6:
; [159] begin
%LINE 159+0 xmm.pas
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-32]
; [160] while _atomic32(xmemchunks_critical_section, 1) <> 0 do; // consider adding a sleep to reduce CPU usage
%LINE 160+0
		jmp	..@j8
	ALIGN 8
..@j7:
..@j8:
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j7
		jmp	..@j9
..@j9:
; [161] end;
%LINE 161+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c7:

SECTION .text
	ALIGN 16
XMM_$$__XMEMCHUNKSEND:
..@c11:
; [165] begin
%LINE 165+0
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-32]
; [166] _atomic32(xmemchunks_critical_section, 0);
%LINE 166+0
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,0
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [167] end;
%LINE 167+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c12:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$__XGETMEMCHUNK$LONGWORD$$POINTER
XMM_$$__XGETMEMCHUNK$LONGWORD$$POINTER:
..@c16:
; [175] begin
%LINE 175+0
		push	rbp
..@c18:
..@c19:
		mov	rbp,rsp
..@c20:
		lea	rsp,[rsp-64]
; Var size located at rbp-8, size=OS_32
; Var $result located at rbp-16, size=OS_64
; Var i located at rbp-20, size=OS_S32
		mov	dword [rbp-8],ecx
; [177] result := nil;
%LINE 177+0
		mov	qword [rbp-16],0
; [178] _xmemchunksbegin;
%LINE 178+0
		jmp	..@j15
	ALIGN 8
..@j14:
..@j15:
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j14
		jmp	..@j16
..@j16:
; [181] if result = nil then begin
%LINE 181+0
		cmp	qword [rbp-16],0
		je	..@j17
		jmp	..@j18
..@j17:
; [182] for i := 0 to high(xmemchunks) do begin
%LINE 182+0
		mov	dword [rbp-20],-1
	ALIGN 8
..@j19:
		mov	eax,dword [rbp-20]
		lea	eax,[eax+1]
		mov	dword [rbp-20],eax
; [183] if xmemchunks[i].h.size = 0 then begin
%LINE 183+0
		mov	eax,dword [rbp-20]
		imul	rdx,rax,552
		lea	rax,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rax+rdx+8],0
		je	..@j22
		jmp	..@j23
..@j22:
; [185] result := @xmemchunks[i].data[0];
%LINE 185+0
		mov	eax,dword [rbp-20]
		imul	rax,rax,552
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
		lea	rax,[rdx+rax+40]
		mov	qword [rbp-16],rax
; [186] break;
%LINE 186+0
		jmp	..@j21
	ALIGN 4
..@j23:
%LINE 182+0
		cmp	dword [rbp-20],8191
		jge	..@j21
		jmp	..@j19
..@j21:
	ALIGN 4
..@j18:
; [191] if result <> nil then begin
%LINE 191+0
		cmp	qword [rbp-16],0
		jne	..@j24
		jmp	..@j25
..@j24:
; [193] pxmemchunk(result-sizeof(txmemheader))^.h.size := size;
%LINE 193+0
		mov	rax,qword [rbp-16]
		mov	edx,dword [rbp-8]
		mov	qword [rax-32],rdx
	ALIGN 4
..@j25:
; [197] _xmemchunksend;
%LINE 197+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,0
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [198] end;
%LINE 198+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c17:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XGETMEM_A$QWORD$$POINTER
XMM_$$_XGETMEM_A$QWORD$$POINTER:
..@c21:
; [206] begin
%LINE 206+0
		push	rbp
..@c23:
..@c24:
		mov	rbp,rsp
..@c25:
		lea	rsp,[rsp-48]
; Var size located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [211] result := nil;
%LINE 211+0
		mov	qword [rbp-16],0
; [214] if (size > 0) and (size <= XMMCHUNKSIZE) then begin
%LINE 214+0
		cmp	qword [rbp-8],0
		ja	..@j28
		jmp	..@j29
..@j28:
		cmp	qword [rbp-8],512
		jbe	..@j30
		jmp	..@j29
..@j30:
; [215] result := _xgetmemchunk(size);
%LINE 215+0
		mov	eax,dword [rbp-8]
		mov	ecx,eax
		call	XMM_$$__XGETMEMCHUNK$LONGWORD$$POINTER
		mov	qword [rbp-16],rax
; [216] if result <> nil then exit; // succeeded
%LINE 216+0
		cmp	qword [rbp-16],0
		jne	..@j31
		jmp	..@j32
..@j31:
		jmp	..@j26
	ALIGN 4
..@j32:
	ALIGN 4
..@j29:
; [220] result := VirtualAlloc(nil, size+sizeof(txmemheader), MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE);
%LINE 220+0
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+40]
		mov	r9d,4
		mov	r8d,12288
		mov	rcx,0
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbp-16],rax
; [221] if result = nil then exit;
%LINE 221+0
		cmp	qword [rbp-16],0
		je	..@j33
		jmp	..@j34
..@j33:
		jmp	..@j26
	ALIGN 4
..@j34:
; [224] pxmemheader(result)^.size := size;
%LINE 224+0
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	qword [rax+8],rdx
; [226] pxmemheader(result)^.realsize := ((int64(size) div 4096)+1)*4096-sizeof(txmemheader); // align to 4096 bytes (OS alignment), subtract the header size
%LINE 226+0
		mov	rdx,qword [rbp-8]
		mov	rax,rdx
		sar	rax,63
		and	rax,4095
		add	rdx,rax
		sar	rdx,12
		lea	rax,[rdx+1]
		shl	rax,12
		sub	rax,40
		mov	rdx,qword [rbp-16]
		mov	qword [rdx+16],rax
; [231] pxmemheader(result)^.wasallocated := true; // memory allocated by OS; must be freed using VirtualFree
%LINE 231+0
		mov	rax,qword [rbp-16]
		mov	byte [rax],1
; [232] pxmemheader(result)^.prev := nil; // not used currently; may be removed if it offers no performance gain
%LINE 232+0
		mov	rax,qword [rbp-16]
		mov	qword [rax+24],0
; [233] pxmemheader(result)^.next := nil; // not used currently; may be removed if it offers no performance gain
%LINE 233+0
		mov	rax,qword [rbp-16]
		mov	qword [rax+32],0
; [236] result := result + sizeof(txmemheader);
%LINE 236+0
		mov	rax,qword [rbp-16]
		lea	rax,[rax+40]
		mov	qword [rbp-16],rax
..@j26:
; [237] end;
%LINE 237+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c22:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XGETMEM$QWORD$$POINTER
XMM_$$_XGETMEM$QWORD$$POINTER:
..@c26:
; [239] begin
%LINE 239+0
		push	rbp
..@c28:
..@c29:
		mov	rbp,rsp
..@c30:
		lea	rsp,[rsp-48]
; Var size located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [240] Exit(xgetmem_a(size));
%LINE 240+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XGETMEM_A$QWORD$$POINTER
		mov	qword [rbp-16],rax
		jmp	..@j35
..@j35:
; [241] end;
%LINE 241+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c27:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XALLOCMEM$QWORD$$POINTER
XMM_$$_XALLOCMEM$QWORD$$POINTER:
..@c31:
; [253] begin
%LINE 253+0
		push	rbp
..@c33:
..@c34:
		mov	rbp,rsp
..@c35:
		lea	rsp,[rsp-48]
; Var size located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [257] result := xgetmem(size);
%LINE 257+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	qword [rbp-16],rax
; [258] if result = nil then exit;
%LINE 258+0
		cmp	qword [rbp-16],0
		je	..@j39
		jmp	..@j40
..@j39:
		jmp	..@j37
	ALIGN 4
..@j40:
; [260] xfillmem_byte(result, size, 0);
%LINE 260+0
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		mov	r8d,0
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
..@j37:
; [261] end;
%LINE 261+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c32:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER:
..@c36:
; [269] begin
%LINE 269+0
		push	rbp
..@c38:
..@c39:
		mov	rbp,rsp
..@c40:
		lea	rsp,[rsp-80]
; Var p located at rbp-8, size=OS_64
; Var size located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
; Var h located at rbp-32, size=OS_64
; Var n located at rbp-40, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [274] result := nil;
%LINE 274+0
		mov	qword [rbp-24],0
; [277] if size = 0 then begin
%LINE 277+0
		cmp	qword [rbp-16],0
		je	..@j43
		jmp	..@j44
..@j43:
; [278] if p <> nil then xfreemem(p);
%LINE 278+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		jne	..@j45
		jmp	..@j46
..@j45:
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		call	XMM_$$_XFREEMEM$POINTER$$QWORD
	ALIGN 4
..@j46:
; [279] p := nil;
%LINE 279+0
		mov	rax,qword [rbp-8]
		mov	qword [rax],0
; [280] exit(nil);
%LINE 280+0
		mov	qword [rbp-24],0
		jmp	..@j41
	ALIGN 4
..@j44:
; [284] if p = nil then begin
%LINE 284+0
		mov	rax,qword [rbp-8]
		cmp	qword [rax],0
		je	..@j47
		jmp	..@j48
..@j47:
; [285] p := xgetmem(size);
%LINE 285+0
		mov	rcx,qword [rbp-16]
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	rdx,qword [rbp-8]
		mov	qword [rdx],rax
; [286] exit(p);
%LINE 286+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-24],rax
		jmp	..@j41
	ALIGN 4
..@j48:
; [290] h := p-sizeof(txmemheader);
%LINE 290+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		lea	rax,[rax-40]
		mov	qword [rbp-32],rax
; [293] _xmemchunksbegin;
%LINE 293+0
		jmp	..@j50
	ALIGN 8
..@j49:
..@j50:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j49
		jmp	..@j51
..@j51:
; [294] if not h^.wasallocated then begin
%LINE 294+0
		mov	rax,qword [rbp-32]
		cmp	byte [rax],0
		je	..@j52
		jmp	..@j53
..@j52:
; [295] if size < XMMCHUNKSIZE then begin
%LINE 295+0
		cmp	qword [rbp-16],512
		jb	..@j54
		jmp	..@j55
..@j54:
; [296] h^.size := size;
%LINE 296+0
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-16]
		mov	qword [rax+8],rdx
; [297] result := p;
%LINE 297+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-24],rax
	ALIGN 4
..@j55:
	ALIGN 4
..@j53:
; [300] _xmemchunksend;
%LINE 300+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,0
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [304] if (result = nil) and (size < h^.realsize) then begin
%LINE 304+0
		cmp	qword [rbp-24],0
		je	..@j56
		jmp	..@j57
..@j56:
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax+16]
		cmp	rax,qword [rbp-16]
		ja	..@j58
		jmp	..@j57
..@j58:
; [306] h^.size := size;
%LINE 306+0
		mov	rdx,qword [rbp-32]
		mov	rax,qword [rbp-16]
		mov	qword [rdx+8],rax
; [307] result := p;
%LINE 307+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	qword [rbp-24],rax
	ALIGN 4
..@j57:
; [310] if result = nil then begin
%LINE 310+0
		cmp	qword [rbp-24],0
		je	..@j59
		jmp	..@j60
..@j59:
; [312] result := xgetmem(size);
%LINE 312+0
		mov	rcx,qword [rbp-16]
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	qword [rbp-24],rax
; [313] if result <> nil then begin
%LINE 313+0
		cmp	qword [rbp-24],0
		jne	..@j61
		jmp	..@j62
..@j61:
; [315] n := size;
%LINE 315+0
		mov	rax,qword [rbp-16]
		mov	qword [rbp-40],rax
; [316] if pxmemheader(p)^.size < n then n := pxmemheader(p)^.size;
%LINE 316+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rax,qword [rax+8]
		cmp	rax,qword [rbp-40]
		jb	..@j63
		jmp	..@j64
..@j63:
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax]
		mov	rax,qword [rax+8]
		mov	qword [rbp-40],rax
	ALIGN 4
..@j64:
; [318] xmovemem(p, result, n);
%LINE 318+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		mov	r8,qword [rbp-40]
		mov	rdx,qword [rbp-24]
		call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
	ALIGN 4
..@j62:
; [322] xfreemem(p);
%LINE 322+0
		mov	rax,qword [rbp-8]
		mov	rcx,qword [rax]
		call	XMM_$$_XFREEMEM$POINTER$$QWORD
; [323] p := result;
%LINE 323+0
		mov	rax,qword [rbp-8]
		mov	rdx,qword [rbp-24]
		mov	qword [rax],rdx
	ALIGN 4
..@j60:
..@j41:
; [325] end;
%LINE 325+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c37:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XCLONE_$POINTER$$POINTER
XMM_$$_XCLONE_$POINTER$$POINTER:
..@c41:
; [332] begin
%LINE 332+0
		push	rbp
..@c43:
..@c44:
		mov	rbp,rsp
..@c45:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var u located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
; [336] u := xmemsize(p);
%LINE 336+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XMEMSIZE$POINTER$$QWORD
		mov	qword [rbp-24],rax
; [337] result := xgetmem(u);
%LINE 337+0
		mov	rcx,qword [rbp-24]
		call	XMM_$$_XGETMEM$QWORD$$POINTER
		mov	qword [rbp-16],rax
; [338] xmovemem(p, result, u);
%LINE 338+0
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
; [339] end;
%LINE 339+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c42:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XCLONE$POINTER$$POINTER
XMM_$$_XCLONE$POINTER$$POINTER:
..@c46:
; [341] begin
%LINE 341+0
		push	rbp
..@c48:
..@c49:
		mov	rbp,rsp
..@c50:
		lea	rsp,[rsp-48]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [342] Exit(xclone(p));
%LINE 342+0
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		call	XMM_$$_XCLONE$POINTER$$POINTER
		mov	qword [rbp-16],rax
		jmp	..@j67
..@j67:
; [343] end;
%LINE 343+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c47:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMEMSIZE$POINTER$$QWORD
XMM_$$_XMEMSIZE$POINTER$$QWORD:
..@c51:
; [355] begin
%LINE 355+0
		push	rbp
..@c53:
..@c54:
		mov	rbp,rsp
..@c55:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [359] result := pxmemheader(p-sizeof(txmemheader))^.size;
%LINE 359+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax-32]
		mov	qword [rbp-16],rax
; [360] end;
%LINE 360+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c52:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMEMREALSIZE$POINTER$$QWORD
XMM_$$_XMEMREALSIZE$POINTER$$QWORD:
..@c56:
; [364] begin
%LINE 364+0
		push	rbp
..@c58:
..@c59:
		mov	rbp,rsp
..@c60:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [368] result := pxmemheader(p-sizeof(txmemheader))^.realsize+sizeof(txmemheader);
%LINE 368+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax-24]
		lea	rax,[rax+40]
		mov	qword [rbp-16],rax
; [369] end;
%LINE 369+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c57:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD
XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD:
..@c61:
; [372] begin
%LINE 372+0
		push	rbp
..@c63:
..@c64:
		mov	rbp,rsp
..@c65:
		lea	rsp,[rsp-16]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
		mov	qword [rbp-8],rcx
; [376] result := pxmemheader(p-sizeof(txmemheader))^.realsize;
%LINE 376+0
		mov	rax,qword [rbp-8]
		mov	rax,qword [rax-24]
		mov	qword [rbp-16],rax
; [377] end;
%LINE 377+0
		mov	rax,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c62:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XFREEMEM$POINTER$$QWORD
XMM_$$_XFREEMEM$POINTER$$QWORD:
..@c66:
; [383] begin
%LINE 383+0
		push	rbp
..@c68:
..@c69:
		mov	rbp,rsp
..@c70:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var $result located at rbp-16, size=OS_64
; Var h located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
; [388] _xmemchunksbegin;
%LINE 388+0
		jmp	..@j78
	ALIGN 8
..@j77:
..@j78:
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j77
		jmp	..@j79
..@j79:
; [391] h := p-sizeof(txmemheader);
%LINE 391+0
		mov	rax,qword [rbp-8]
		lea	rax,[rax-40]
		mov	qword [rbp-24],rax
; [394] result := h^.realsize;
%LINE 394+0
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax+16]
		mov	qword [rbp-16],rax
; [396] if h^.wasallocated then result := result + sizeof(txmemheader);
%LINE 396+0
		mov	rax,qword [rbp-24]
		cmp	byte [rax],0
		jne	..@j80
		jmp	..@j81
..@j80:
		mov	rax,qword [rbp-16]
		lea	rax,[rax+40]
		mov	qword [rbp-16],rax
	ALIGN 4
..@j81:
; [398] if h^.wasallocated then begin
%LINE 398+0
		mov	rax,qword [rbp-24]
		cmp	byte [rax],0
		jne	..@j82
		jmp	..@j83
..@j82:
; [400] VirtualFree(h, 0, MEM_RELEASE);
%LINE 400+0
		mov	rcx,qword [rbp-24]
		mov	r8d,32768
		mov	rdx,0
		call	_$dll$kernel32$VirtualFree
		jmp	..@j84
..@j83:
; [403] h^.size := 0;
%LINE 403+0
		mov	rax,qword [rbp-24]
		mov	qword [rax+8],0
..@j84:
; [406] _xmemchunksend;
%LINE 406+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,0
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [407] end;
%LINE 407+0
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c67:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD
XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD:
..@c71:
; [414] begin
%LINE 414+0
		push	rbp
..@c73:
..@c74:
		mov	rbp,rsp
..@c75:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_64
; Var $result located at rbp-24, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
; [418] Exit(xfillmem_byte(p, len, 0));
%LINE 418+0
		mov	rax,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r8d,0
		mov	rdx,rax
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
		mov	qword [rbp-24],rax
		jmp	..@j85
..@j85:
; [419] end;
%LINE 419+0
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c72:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD:
..@c76:
; [423] begin
%LINE 423+0
		push	rbp
..@c78:
..@c79:
		mov	rbp,rsp
..@c80:
		lea	rsp,[rsp-64]
; Var src located at rbp-8, size=OS_64
; Var dst located at rbp-16, size=OS_64
; Var len located at rbp-24, size=OS_64
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [427] RtlMoveMemory(dst, src, len);
%LINE 427+0
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [rbp-16]
		mov	r8,rax
		call	_$dll$kernel32$RtlMoveMemory
; [428] Exit(len);
%LINE 428+0
		mov	rax,qword [rbp-24]
		mov	qword [rbp-32],rax
		jmp	..@j87
..@j87:
; [429] end;
%LINE 429+0
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c77:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD:
..@c81:
; [434] begin
%LINE 434+0
		push	rbp
..@c83:
..@c84:
		mov	rbp,rsp
..@c85:
		lea	rsp,[rsp-64]
; Var p1 located at rbp-8, size=OS_64
; Var p2 located at rbp-16, size=OS_64
; Var len located at rbp-24, size=OS_64
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [438] Exit(RtlCompareMemory(p1, p2, len));
%LINE 438+0
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r8,rax
		call	_$dll$ntdll$RtlCompareMemory
		mov	qword [rbp-32],rax
		jmp	..@j89
..@j89:
; [439] end;
%LINE 439+0
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c82:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN
XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN:
..@c86:
; [444] begin
%LINE 444+0
		push	rbp
..@c88:
..@c89:
		mov	rbp,rsp
..@c90:
		lea	rsp,[rsp-64]
; Var p1 located at rbp-8, size=OS_64
; Var p2 located at rbp-16, size=OS_64
; Var len located at rbp-24, size=OS_64
; Var $result located at rbp-28, size=OS_8
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-24],r8
; [448] result := RtlCompareMemory(p1, p2, len) = len;
%LINE 448+0
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		mov	rcx,qword [rbp-8]
		mov	r8,rax
		call	_$dll$ntdll$RtlCompareMemory
		cmp	rax,qword [rbp-24]
		sete	byte [rbp-28]
; [449] end;
%LINE 449+0
		mov	al,byte [rbp-28]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c87:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XGETFREECHUNKS$$LONGINT
XMM_$$_XGETFREECHUNKS$$LONGINT:
..@c91:
; [456] begin
%LINE 456+0
		push	rbp
..@c93:
..@c94:
		mov	rbp,rsp
..@c95:
		lea	rsp,[rsp-48]
; Var $result located at rbp-4, size=OS_S32
; Var i located at rbp-8, size=OS_S32
; [460] result := 0;
%LINE 460+0
		mov	dword [rbp-4],0
; [461] _xmemchunksbegin;
%LINE 461+0
		jmp	..@j96
	ALIGN 8
..@j95:
..@j96:
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j95
		jmp	..@j97
..@j97:
; [462] for i := 0 to high(xmemchunks) do if xmemchunks[i].h.size = 0 then result := result + 1;
%LINE 462+0
		mov	dword [rbp-8],-1
	ALIGN 8
..@j98:
		mov	eax,dword [rbp-8]
		lea	eax,[eax+1]
		mov	dword [rbp-8],eax
		mov	eax,dword [rbp-8]
		imul	rdx,rax,552
		lea	rax,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rax+rdx+8],0
		je	..@j101
		jmp	..@j102
..@j101:
		mov	eax,dword [rbp-4]
		lea	eax,[eax+1]
		mov	dword [rbp-4],eax
	ALIGN 4
..@j102:
		cmp	dword [rbp-8],8191
		jge	..@j100
		jmp	..@j98
..@j100:
; [463] _xmemchunksend;
%LINE 463+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,0
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [464] end;
%LINE 464+0
		mov	eax,dword [rbp-4]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c92:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XMMINIT
XMM_$$_XMMINIT:
..@c96:
; [471] begin
%LINE 471+0
		push	rbp
..@c98:
..@c99:
		mov	rbp,rsp
..@c100:
		lea	rsp,[rsp-48]
; Var i located at rbp-4, size=OS_S32
; [477] if xmemchunks_init_done then exit;
%LINE 477+0
		cmp	byte [TC_$XMM_$$_XMEMCHUNKS_INIT_DONE],0
		jne	..@j105
		jmp	..@j106
..@j105:
		jmp	..@j103
	ALIGN 4
..@j106:
; [480] _xmemchunksbegin;
%LINE 480+0
		jmp	..@j108
	ALIGN 8
..@j107:
..@j108:
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j107
		jmp	..@j109
..@j109:
; [483] RtlFillMemory(@xmemchunks[0], sizeof(xmemchunks), 0);
%LINE 483+0
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		mov	r8d,0
		mov	rdx,4521984
		call	_$dll$kernel32$RtlFillMemory
; [485] for i := low(xmemchunks) to high(xmemchunks) do begin
%LINE 485+0
		mov	dword [rbp-4],-1
	ALIGN 8
..@j110:
		mov	eax,dword [rbp-4]
		lea	eax,[eax+1]
		mov	dword [rbp-4],eax
; [487] if i <> low(xmemchunks)  then xmemchunks[i].h.prev := @xmemchunks[i-1]; // set previous chunk pointer
%LINE 487+0
		cmp	dword [rbp-4],0
		jne	..@j113
		jmp	..@j114
..@j113:
		movsxd	rax,dword [rbp-4]
		sub	rax,1
		imul	rax,rax,552
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
		lea	rcx,[rdx+rax]
		mov	eax,dword [rbp-4]
		imul	rdx,rax,552
		lea	rax,[U_$XMM_$$_XMEMCHUNKS]
		mov	qword [rax+rdx+24],rcx
	ALIGN 4
..@j114:
; [488] if i <> high(xmemchunks) then xmemchunks[i].h.next := @xmemchunks[i+1]; // set next chunk pointer
%LINE 488+0
		cmp	dword [rbp-4],8191
		jne	..@j115
		jmp	..@j116
..@j115:
		movsxd	rax,dword [rbp-4]
		lea	rax,[rax+1]
		imul	rax,rax,552
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
		lea	rcx,[rdx+rax]
		mov	eax,dword [rbp-4]
		imul	rdx,rax,552
		lea	rax,[U_$XMM_$$_XMEMCHUNKS]
		mov	qword [rax+rdx+32],rcx
	ALIGN 4
..@j116:
; [491] xmemchunks[i].h.realsize := sizeof(xmemchunks[i].data);
%LINE 491+0
		mov	eax,dword [rbp-4]
		imul	rdx,rax,552
		lea	rax,[U_$XMM_$$_XMEMCHUNKS]
		mov	qword [rax+rdx+16],512
%LINE 485+0
		cmp	dword [rbp-4],8191
		jge	..@j112
		jmp	..@j110
..@j112:
; [495] xmemchunks_init_done := true;
%LINE 495+0
		mov	byte [TC_$XMM_$$_XMEMCHUNKS_INIT_DONE],1
; [498] _xmemchunksend;
%LINE 498+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,0
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
..@j103:
; [499] end;
%LINE 499+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c97:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD:
..@c101:
; [503] function xfillmem_byte(p: pointer; len: ptruint; v: byte): ptruint; stdcall; export; begin FillChar(p^, len, v); Exit(len); end;
%LINE 503+0
		push	rbp
..@c103:
..@c104:
		mov	rbp,rsp
..@c105:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_64
; Var v located at rbp-24, size=OS_8
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		movzx	r8d,byte [rbp-24]
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
		mov	rax,qword [rbp-16]
		mov	qword [rbp-32],rax
		jmp	..@j117
..@j117:
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c102:

SECTION .text
	ALIGN 16
	GLOBAL XMM_$$_XFILLMEM_CHAR$POINTER$QWORD$CHAR$$QWORD
XMM_$$_XFILLMEM_CHAR$POINTER$QWORD$CHAR$$QWORD:
..@c106:
; [504] function xfillmem_char(p: pointer; len: ptruint; v: char): ptruint; stdcall; export; begin FillChar(p^, len, Ord(v)); Exit(len); end;
%LINE 504+0
		push	rbp
..@c108:
..@c109:
		mov	rbp,rsp
..@c110:
		lea	rsp,[rsp-64]
; Var p located at rbp-8, size=OS_64
; Var len located at rbp-16, size=OS_64
; Var v located at rbp-24, size=OS_8
; Var $result located at rbp-32, size=OS_64
		mov	qword [rbp-8],rcx
		mov	qword [rbp-16],rdx
		mov	byte [rbp-24],r8b
		mov	rax,qword [rbp-8]
		mov	rcx,rax
		movzx	r8d,byte [rbp-24]
		mov	rdx,qword [rbp-16]
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
		mov	rax,qword [rbp-16]
		mov	qword [rbp-32],rax
		jmp	..@j119
..@j119:
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c107:

SECTION .text
	ALIGN 16
	GLOBAL INIT$_$XMM
INIT$_$XMM:
	GLOBAL XMM_$$_init$
XMM_$$_init$:
..@c111:
; [528] initialization
%LINE 528+0
		push	rbp
..@c113:
..@c114:
		mov	rbp,rsp
..@c115:
		lea	rsp,[rsp-32]
; [530] xmminit;
%LINE 530+0
		call	XMM_$$_XMMINIT
; [532] end.
%LINE 532+0
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c112:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
; [133] xmemchunks: array[0..XMMCHUNKCOUNT-1] of txmemchunk;
%LINE 133+0 xmm.pas
U_$XMM_$$_XMEMCHUNKS:	RESB	4521984
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .data
	ALIGN 4,DB 0
TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION	DD	0
; [135] xmemchunks_init_done: boolean = false;
%LINE 135+0 xmm.pas

SECTION .data
TC_$XMM_$$_XMEMCHUNKS_INIT_DONE	DB	0
; [141] function _atomic32(var target: integer; val: integer): integer; assembler; export;
%LINE 141+0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c116:
	DD	..@c118-..@c117
..@c117:
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
..@c118:
	DD	..@c120-..@c119
..@c119:
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
..@c120:
	DD	..@c122-..@c121
..@c121:
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
..@c122:
	DD	..@c124-..@c123
..@c123:
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
..@c124:
	DD	..@c126-..@c125
..@c125:
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
..@c126:
	DD	..@c128-..@c127
..@c127:
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
..@c128:
	DD	..@c130-..@c129
..@c129:
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
..@c130:
	DD	..@c132-..@c131
..@c131:
	DQ	..@c31,..@c32-..@c31
	DB	4
	DD	..@c33-..@c31
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c34-..@c33
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c35-..@c34
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c132:
	DD	..@c134-..@c133
..@c133:
	DQ	..@c36,..@c37-..@c36
	DB	4
	DD	..@c38-..@c36
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c39-..@c38
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c40-..@c39
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c134:
	DD	..@c136-..@c135
..@c135:
	DQ	..@c41,..@c42-..@c41
	DB	4
	DD	..@c43-..@c41
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c44-..@c43
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c45-..@c44
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c136:
	DD	..@c138-..@c137
..@c137:
	DQ	..@c46,..@c47-..@c46
	DB	4
	DD	..@c48-..@c46
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c49-..@c48
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c50-..@c49
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c138:
	DD	..@c140-..@c139
..@c139:
	DQ	..@c51,..@c52-..@c51
	DB	4
	DD	..@c53-..@c51
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c54-..@c53
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c55-..@c54
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c140:
	DD	..@c142-..@c141
..@c141:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c59-..@c58
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c60-..@c59
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c142:
	DD	..@c144-..@c143
..@c143:
	DQ	..@c61,..@c62-..@c61
	DB	4
	DD	..@c63-..@c61
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c64-..@c63
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c65-..@c64
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c144:
	DD	..@c146-..@c145
..@c145:
	DQ	..@c66,..@c67-..@c66
	DB	4
	DD	..@c68-..@c66
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c69-..@c68
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c70-..@c69
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c146:
	DD	..@c148-..@c147
..@c147:
	DQ	..@c71,..@c72-..@c71
	DB	4
	DD	..@c73-..@c71
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c74-..@c73
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c75-..@c74
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c148:
	DD	..@c150-..@c149
..@c149:
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
..@c150:
	DD	..@c152-..@c151
..@c151:
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
..@c152:
	DD	..@c154-..@c153
..@c153:
	DQ	..@c86,..@c87-..@c86
	DB	4
	DD	..@c88-..@c86
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c89-..@c88
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c90-..@c89
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c154:
	DD	..@c156-..@c155
..@c155:
	DQ	..@c91,..@c92-..@c91
	DB	4
	DD	..@c93-..@c91
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c94-..@c93
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c95-..@c94
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c156:
	DD	..@c158-..@c157
..@c157:
	DQ	..@c96,..@c97-..@c96
	DB	4
	DD	..@c98-..@c96
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c99-..@c98
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c100-..@c99
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c158:
	DD	..@c160-..@c159
..@c159:
	DQ	..@c101,..@c102-..@c101
	DB	4
	DD	..@c103-..@c101
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c104-..@c103
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c105-..@c104
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c160:
	DD	..@c162-..@c161
..@c161:
	DQ	..@c106,..@c107-..@c106
	DB	4
	DD	..@c108-..@c106
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c109-..@c108
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c110-..@c109
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c162:
	DD	..@c164-..@c163
..@c163:
	DQ	..@c111,..@c112-..@c111
	DB	4
	DD	..@c113-..@c111
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c114-..@c113
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c115-..@c114
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c164:
; End asmlist al_dwarf_frame

