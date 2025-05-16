BITS 64
default rel
CPU x64

EXTERN	_$dll$kernel32$VirtualAlloc
EXTERN	_$dll$kernel32$VirtualFree
EXTERN	_$dll$kernel32$RtlMoveMemory
EXTERN	_$dll$kernel32$RtlFillMemory
EXTERN	_$dll$ntdll$RtlCompareMemory
; Begin asmlist al_pure_assembler

SECTION .text
XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT:
..@c1:
; [xmm.pas]
; [112] asm
%LINE 112+0 xmm.pas
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [114] mov    eax, val
%LINE 114+0
		mov	eax,edx
; [116] xchg dword ptr [target], eax
%LINE 116+0
		xchg	dword [rcx],eax
CPU x64

; [122] end;
%LINE 122+0
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
XMM_$$__XMEMCHUNKSBEGIN:
..@c6:
; [126] begin
%LINE 126+0 xmm.pas
		lea	rsp,[rsp-40]
..@c8:
..@j7:
; [127] while _atomic32(xmemchunks_critical_section, 1) <> 0 do; // consider adding a sleep to reduce CPU usage
%LINE 127+0
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j7
; [128] end;
%LINE 128+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c7:

SECTION .text
XMM_$$__XMEMCHUNKSEND:
..@c9:
; [132] begin
%LINE 132+0
		lea	rsp,[rsp-40]
..@c11:
; [133] _atomic32(xmemchunks_critical_section, 0);
%LINE 133+0
		lea	rax,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		mov	rcx,rax
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [134] end;
%LINE 134+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c10:

SECTION .text
XMM_$$__XGETMEMCHUNK$LONGWORD$$POINTER:
..@c12:
; [140] begin
%LINE 140+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c14:
; Var $result located in register rax
; Var i located in register eax
		mov	ebx,ecx
; Var size located in register ebx
; Var $result located in register rsi
; [142] result := nil;
%LINE 142+0
		xor	esi,esi
..@j14:
; [143] _xmemchunksbegin;
%LINE 143+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j14
; [146] if result = nil then begin
%LINE 146+0
		test	rsi,rsi
		jne	..@j18
; [147] for i := 0 to high(xmemchunks) do begin
%LINE 147+0
		mov	eax,-1
..@j19:
		inc	eax
; [148] if xmemchunks[i].h.size = 0 then begin
%LINE 148+0
		mov	edx,eax
		imul	rcx,rdx,552
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rdx+rcx+8],0
		jne	..@j23
; [150] result := @xmemchunks[i].data[0];
%LINE 150+0
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		lea	rsi,[rcx+rdx+40]
; [151] break;
%LINE 151+0
		jmp	..@j21
..@j23:
%LINE 147+0
		cmp	eax,8191
		jnge	..@j19
..@j21:
..@j18:
; [156] if result <> nil then begin
%LINE 156+0
		test	rsi,rsi
		je	..@j25
; [158] pxmemchunk(result-sizeof(txmemheader))^.h.size := size;
%LINE 158+0
		and	ebx,ebx
		mov	qword [rsi-32],rbx
..@j25:
; [162] _xmemchunksend;
%LINE 162+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [163] end;
%LINE 163+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c13:

SECTION .text
	GLOBAL XMM_$$_XGETMEM$QWORD$$POINTER
XMM_$$_XGETMEM$QWORD$$POINTER:
..@c15:
; [166] begin
%LINE 166+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c17:
; Var $result located in register rax
		mov	rbx,rcx
; Var size located in register rbx
; Var $result located in register rdi
; [171] result := nil;
%LINE 171+0
		xor	edi,edi
; [174] if (size > 0) and (size <= XMMCHUNKSIZE) then begin
%LINE 174+0
		test	rbx,rbx
		jna	..@j29
		cmp	rbx,512
		jnbe	..@j29
; [175] result := _xgetmemchunk(size);
%LINE 175+0
		mov	esi,ebx
		xor	r12,r12
..@j32:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j32
		test	r12,r12
		jne	..@j36
		mov	eax,-1
..@j37:
		inc	eax
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rcx+rdx+8],0
		jne	..@j41
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		lea	r12,[rcx+rdx+40]
		jmp	..@j39
..@j41:
		cmp	eax,8191
		jnge	..@j37
..@j39:
..@j36:
		test	r12,r12
		je	..@j43
		and	esi,esi
		mov	qword [r12-32],rsi
..@j43:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		mov	rdi,r12
; [176] if result <> nil then exit; // succeeded
%LINE 176+0
		test	r12,r12
		jne	..@j26
..@j29:
; [180] result := VirtualAlloc(nil, size+sizeof(txmemheader), MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE);
%LINE 180+0
		lea	rdx,[rbx+40]
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	rdi,rax
; [181] if result = nil then exit;
%LINE 181+0
		test	rax,rax
		je	..@j26
; Var size located in register rbx
; [184] pxmemheader(result)^.size := size;
%LINE 184+0
		mov	qword [rdi+8],rbx
; [186] pxmemheader(result)^.realsize := ((int64(size) div 4096)+1)*4096-sizeof(txmemheader); // align to 4096 bytes (OS alignment), subtract the header size
%LINE 186+0
		mov	rax,rbx
		sar	rax,63
		and	rax,4095
		add	rbx,rax
		sar	rbx,12
		lea	rax,[rbx+1]
		shl	rax,12
		sub	rax,40
		mov	qword [rdi+16],rax
; [191] pxmemheader(result)^.wasallocated := true; // memory allocated by OS; must be freed using VirtualFree
%LINE 191+0
		mov	byte [rdi],1
; [192] pxmemheader(result)^.prev := nil; // not used currently; may be removed if it offers no performance gain
%LINE 192+0
		mov	qword [rdi+24],0
; [193] pxmemheader(result)^.next := nil; // not used currently; may be removed if it offers no performance gain
%LINE 193+0
		mov	qword [rdi+32],0
; [196] result := result + sizeof(txmemheader);
%LINE 196+0
		add	rdi,40
..@j26:
; [197] end;
%LINE 197+0
		mov	rax,rdi
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c16:

SECTION .text
	GLOBAL XMM_$$_XALLOCMEM$QWORD$$POINTER
XMM_$$_XALLOCMEM$QWORD$$POINTER:
..@c18:
; [200] begin
%LINE 200+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c20:
; Var $result located in register rbx
		mov	rsi,rcx
; Var size located in register rsi
; [204] result := xgetmem(size);
%LINE 204+0
		xor	ebx,ebx
		test	rsi,rsi
		jna	..@j52
		cmp	rsi,512
		jnbe	..@j52
		mov	edi,esi
		xor	r12,r12
..@j55:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j55
		test	r12,r12
		jne	..@j59
		mov	eax,-1
..@j60:
		inc	eax
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rcx+rdx+8],0
		jne	..@j64
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		lea	r12,[rcx+rdx+40]
		jmp	..@j62
..@j64:
		cmp	eax,8191
		jnge	..@j60
..@j62:
..@j59:
		test	r12,r12
		je	..@j66
		and	edi,edi
		mov	qword [r12-32],rdi
..@j66:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		mov	rbx,r12
		test	r12,r12
		jne	..@j50
..@j52:
		lea	rdx,[rsi+40]
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	rbx,rax
		test	rax,rax
		je	..@j50
		mov	qword [rbx+8],rsi
		mov	rax,rsi
		mov	rdx,rax
		sar	rdx,63
		and	rdx,4095
		add	rax,rdx
		sar	rax,12
		inc	rax
		shl	rax,12
		sub	rax,40
		mov	qword [rbx+16],rax
		mov	byte [rbx],1
		mov	qword [rbx+24],0
		mov	qword [rbx+32],0
		add	rbx,40
..@j50:
; [205] if result = nil then exit;
%LINE 205+0
		test	rbx,rbx
		je	..@j48
; [207] xfillmem(result, size, 0);
%LINE 207+0
		mov	rdx,rsi
		mov	rcx,rbx
		xor	r8d,r8d
		call	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
..@j48:
; [208] end;
%LINE 208+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c19:

SECTION .text
	GLOBAL XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER:
..@c21:
; [214] begin
%LINE 214+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c23:
; Var $result located in register rax
; Var h located in register rdi
; Var n located in register r8
		mov	rbx,rcx
; Var p located in register rbx
		mov	rsi,rdx
; Var size located in register rsi
; Var $result located in register r12
; [219] result := nil;
%LINE 219+0
		mov	r12,0
; [222] if size = 0 then begin
%LINE 222+0
		test	rsi,rsi
		jne	..@j76
; [223] if p <> nil then xfreemem(p);
%LINE 223+0
		cmp	qword [rbx],0
		je	..@j78
		mov	rcx,qword [rbx]
		call	XMM_$$_XFREEMEM$POINTER$$QWORD
..@j78:
; [224] p := nil;
%LINE 224+0
		mov	qword [rbx],0
; [225] exit(nil);
%LINE 225+0
		xor	r12,r12
		jmp	..@j73
..@j76:
; [229] if p = nil then begin
%LINE 229+0
		cmp	qword [rbx],0
		jne	..@j80
; [230] p := xgetmem(size);
%LINE 230+0
		xor	r13,r13
		test	rsi,rsi
		jna	..@j83
		cmp	rsi,512
		jnbe	..@j83
		mov	edi,esi
		xor	r14,r14
..@j86:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j86
		test	r14,r14
		jne	..@j90
		mov	eax,-1
..@j91:
		inc	eax
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rcx+rdx+8],0
		jne	..@j95
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		lea	r14,[rcx+rdx+40]
		jmp	..@j93
..@j95:
		cmp	eax,8191
		jnge	..@j91
..@j93:
..@j90:
		test	r14,r14
		je	..@j97
		and	edi,edi
		mov	qword [r14-32],rdi
..@j97:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		mov	r13,r14
		test	r14,r14
		jne	..@j81
..@j83:
		lea	rdx,[rsi+40]
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	r13,rax
		test	rax,rax
		je	..@j81
		mov	qword [r13+8],rsi
		mov	rax,rsi
		mov	rdx,rax
		sar	rdx,63
		and	rdx,4095
		add	rax,rdx
		sar	rax,12
		inc	rax
		shl	rax,12
		sub	rax,40
		mov	qword [r13+16],rax
		mov	byte [r13],1
		mov	qword [r13+24],0
		mov	qword [r13+32],0
		add	r13,40
..@j81:
		mov	qword [rbx],r13
; [231] exit(p);
%LINE 231+0
		mov	r12,r13
		jmp	..@j73
..@j80:
; [235] h := p-sizeof(txmemheader);
%LINE 235+0
		mov	rax,qword [rbx]
		lea	rdi,[rax-40]
..@j102:
; [238] _xmemchunksbegin;
%LINE 238+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j102
; [239] if not h^.wasallocated then begin
%LINE 239+0
		cmp	byte [rdi],0
		jne	..@j106
; [240] if size < XMMCHUNKSIZE then begin
%LINE 240+0
		cmp	rsi,512
		jnb	..@j108
; [241] h^.size := size;
%LINE 241+0
		mov	qword [rdi+8],rsi
; [242] result := p;
%LINE 242+0
		mov	r12,qword [rbx]
..@j108:
..@j106:
; [245] _xmemchunksend;
%LINE 245+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [249] if (result = nil) and (size < h^.realsize) then begin
%LINE 249+0
		test	r12,r12
		jne	..@j110
		cmp	rsi,qword [rdi+16]
		jnb	..@j110
; [251] h^.size := size;
%LINE 251+0
		mov	qword [rdi+8],rsi
; [252] result := p;
%LINE 252+0
		mov	r12,qword [rbx]
..@j110:
; [255] if result = nil then begin
%LINE 255+0
		test	r12,r12
		jne	..@j113
; [257] result := xgetmem(size);
%LINE 257+0
		xor	r13,r13
		test	rsi,rsi
		jna	..@j116
		cmp	rsi,512
		jnbe	..@j116
		mov	edi,esi
		xor	r14,r14
..@j119:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j119
		test	r14,r14
		jne	..@j123
		mov	eax,-1
..@j124:
		inc	eax
		mov	edx,eax
		imul	rcx,rdx,552
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rdx+rcx+8],0
		jne	..@j128
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		lea	r14,[rcx+rdx+40]
		jmp	..@j126
..@j128:
		cmp	eax,8191
		jnge	..@j124
..@j126:
..@j123:
		test	r14,r14
		je	..@j130
		and	edi,edi
		mov	qword [r14-32],rdi
..@j130:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		mov	r13,r14
		test	r14,r14
		jne	..@j114
..@j116:
		lea	rdx,[rsi+40]
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	r13,rax
		test	rax,rax
		je	..@j114
		mov	qword [r13+8],rsi
		mov	rax,rsi
		mov	rdx,rax
		sar	rdx,63
		and	rdx,4095
		add	rax,rdx
		sar	rax,12
		inc	rax
		shl	rax,12
		sub	rax,40
		mov	qword [r13+16],rax
		mov	byte [r13],1
		mov	qword [r13+24],0
		mov	qword [r13+32],0
		add	r13,40
..@j114:
		mov	r12,r13
; [258] if result <> nil then begin
%LINE 258+0
		test	r13,r13
		je	..@j136
; [260] n := size;
%LINE 260+0
		mov	r8,rsi
; [261] if pxmemheader(p)^.size < n then n := pxmemheader(p)^.size;
%LINE 261+0
		mov	rax,qword [rbx]
		cmp	r8,qword [rax+8]
		jna	..@j138
		mov	rax,qword [rbx]
		mov	r8,qword [rax+8]
..@j138:
; [263] xmovemem(p, result, n);
%LINE 263+0
		mov	rcx,qword [rbx]
		mov	rdx,r12
		call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
..@j136:
; [267] xfreemem(p);
%LINE 267+0
		mov	rcx,qword [rbx]
		call	XMM_$$_XFREEMEM$POINTER$$QWORD
; [268] p := result;
%LINE 268+0
		mov	qword [rbx],r12
..@j113:
..@j73:
; [270] end;
%LINE 270+0
		mov	rax,r12
		nop
		lea	rsp,[rsp+40]
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c22:

SECTION .text
	GLOBAL XMM_$$_XCLONE$POINTER$$POINTER
XMM_$$_XCLONE$POINTER$$POINTER:
..@c24:
; [275] begin
%LINE 275+0
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c26:
; Var $result located in register rbx
; Var u located in register rax
		mov	rsi,rcx
; Var p located in register rsi
; Var p located in register rsi
; [279] u := xmemsize(p);
%LINE 279+0
		call	XMM_$$_XMEMSIZE$POINTER$$QWORD
		mov	rdi,rax
; Var u located in register rdi
; [280] result := xgetmem(u);
%LINE 280+0
		xor	ebx,ebx
		test	rdi,rdi
		jna	..@j143
		cmp	rdi,512
		jnbe	..@j143
		mov	r12d,edi
		xor	r13,r13
..@j146:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j146
		test	r13,r13
		jne	..@j150
		mov	eax,-1
..@j151:
		inc	eax
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rcx+rdx+8],0
		jne	..@j155
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		lea	r13,[rcx+rdx+40]
		jmp	..@j153
..@j155:
		cmp	eax,8191
		jnge	..@j151
..@j153:
..@j150:
		test	r13,r13
		je	..@j157
		and	r12d,r12d
		mov	qword [r13-32],r12
..@j157:
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		mov	rbx,r13
		test	r13,r13
		jne	..@j141
..@j143:
		lea	rdx,[rdi+40]
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	rbx,rax
		test	rax,rax
		je	..@j141
		mov	qword [rbx+8],rdi
		mov	rax,rdi
		mov	rdx,rax
		sar	rdx,63
		and	rdx,4095
		add	rax,rdx
		sar	rax,12
		inc	rax
		shl	rax,12
		sub	rax,40
		mov	qword [rbx+16],rax
		mov	byte [rbx],1
		mov	qword [rbx+24],0
		mov	qword [rbx+32],0
		add	rbx,40
..@j141:
; [281] xmovemem(p, result, u);
%LINE 281+0
		mov	r8,rdi
		mov	rdx,rbx
		mov	rcx,rsi
		call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
; [282] end;
%LINE 282+0
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c25:

SECTION .text
	GLOBAL XMM_$$_XMEMSIZE$POINTER$$QWORD
XMM_$$_XMEMSIZE$POINTER$$QWORD:
..@c27:
; Var $result located in register rax
; Var p located in register rcx
; [286] begin
%LINE 286+0
; Var p located in register rcx
; Var $result located in register rax
; [290] result := pxmemheader(p-sizeof(txmemheader))^.size;
%LINE 290+0
		mov	rax,qword [rcx-32]
; [291] end;
%LINE 291+0
		ret
..@c28:

SECTION .text
	GLOBAL XMM_$$_XMEMREALSIZE$POINTER$$QWORD
XMM_$$_XMEMREALSIZE$POINTER$$QWORD:
..@c29:
; Var $result located in register rax
; Var p located in register rcx
; [295] begin
%LINE 295+0
; Var p located in register rcx
; [299] result := pxmemheader(p-sizeof(txmemheader))^.realsize+sizeof(txmemheader);
%LINE 299+0
		mov	rax,qword [rcx-24]
		add	rax,40
; Var $result located in register rax
; [300] end;
%LINE 300+0
		ret
..@c30:

SECTION .text
	GLOBAL XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD
XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD:
..@c31:
; Var $result located in register rax
; Var p located in register rcx
; [303] begin
%LINE 303+0
; Var p located in register rcx
; Var $result located in register rax
; [307] result := pxmemheader(p-sizeof(txmemheader))^.realsize;
%LINE 307+0
		mov	rax,qword [rcx-24]
; [308] end;
%LINE 308+0
		ret
..@c32:

SECTION .text
	GLOBAL XMM_$$_XFREEMEM$POINTER$$QWORD
XMM_$$_XFREEMEM$POINTER$$QWORD:
..@c33:
; [314] begin
%LINE 314+0
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c35:
; Var $result located in register rax
; Var h located in register rax
		mov	rbx,rcx
; Var p located in register rbx
..@j170:
; [319] _xmemchunksbegin;
%LINE 319+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j170
; [322] h := p-sizeof(txmemheader);
%LINE 322+0
		sub	rbx,40
; Var h located in register rbx
; Var h located in register rbx
; Var $result located in register rsi
; [325] result := h^.realsize;
%LINE 325+0
		mov	rsi,qword [rbx+16]
; [327] if h^.wasallocated then result := result + sizeof(txmemheader);
%LINE 327+0
		cmp	byte [rbx],0
		je	..@j174
		add	rsi,40
..@j174:
; [329] if h^.wasallocated then begin
%LINE 329+0
		cmp	byte [rbx],0
		je	..@j176
; [331] VirtualFree(h, 0, MEM_RELEASE);
%LINE 331+0
		mov	rcx,rbx
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualFree
		jmp	..@j177
..@j176:
; [334] h^.size := 0;
%LINE 334+0
		mov	qword [rbx+8],0
..@j177:
; [337] _xmemchunksend;
%LINE 337+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [338] end;
%LINE 338+0
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c34:

SECTION .text
	GLOBAL XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD
XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD:
..@c36:
; [342] begin
%LINE 342+0
		lea	rsp,[rsp-40]
..@c38:
; Var $result located in register rax
; Var p located in register rcx
; Var len located in register rdx
; Var len located in register rdx
; Var p located in register rcx
; [346] result := xfillmem(p, len, 0);
%LINE 346+0
		xor	r8d,r8d
		call	XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
; Var $result located in register rax
; [347] end;
%LINE 347+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c37:

SECTION .text
	GLOBAL XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD:
..@c39:
; [350] begin
%LINE 350+0
		push	rbx
		lea	rsp,[rsp-32]
..@c41:
; Var $result located in register rax
		mov	rax,rcx
; Var src located in register rax
		mov	rcx,rdx
; Var dst located in register rcx
		mov	rbx,r8
; Var len located in register rbx
; Var len located in register rbx
; [354] RtlMoveMemory(dst, src, len);
%LINE 354+0
		mov	rdx,rax
; Var src located in register rdx
; Var dst located in register rcx
		call	_$dll$kernel32$RtlMoveMemory
; Var $result located in register rax
; [355] result := len;
%LINE 355+0
		mov	rax,rbx
; Var len located in register rax
; [356] end;
%LINE 356+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c40:

SECTION .text
	GLOBAL XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD
XMM_$$_XFILLMEM$POINTER$QWORD$BYTE$$QWORD:
..@c42:
; [359] begin
%LINE 359+0
		push	rbx
		lea	rsp,[rsp-32]
..@c44:
; Var $result located in register rax
; Var p located in register rcx
		mov	rbx,rdx
; Var len located in register rbx
; Var v located in register r8b
; [363] RtlFillMemory(p, len, v);
%LINE 363+0
		movzx	r8d,r8b
; Var len located in register rbx
		mov	rdx,rbx
; Var p located in register rcx
		call	_$dll$kernel32$RtlFillMemory
; Var $result located in register rax
; [364] result := len;
%LINE 364+0
		mov	rax,rbx
; Var len located in register rax
; [365] end;
%LINE 365+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c43:

SECTION .text
XMM_$$_XFILLMEM$POINTER$QWORD$CHAR$$QWORD:
..@c45:
; [368] begin
%LINE 368+0
		push	rbx
		lea	rsp,[rsp-32]
..@c47:
; Var $result located in register rax
; Var p located in register rcx
		mov	rbx,rdx
; Var len located in register rbx
; Var v located in register r8b
; [372] RtlFillMemory(p, len, ord(v));
%LINE 372+0
		movzx	r8d,r8b
; Var len located in register rbx
		mov	rdx,rbx
; Var p located in register rcx
		call	_$dll$kernel32$RtlFillMemory
; Var $result located in register rax
; [373] result := len;
%LINE 373+0
		mov	rax,rbx
; Var len located in register rax
; [374] end;
%LINE 374+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c46:

SECTION .text
	GLOBAL XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD:
..@c48:
; [377] begin
%LINE 377+0
		lea	rsp,[rsp-40]
..@c50:
; Var $result located in register rax
; Var p1 located in register rcx
; Var p2 located in register rdx
; Var len located in register r8
; Var len located in register r8
; Var p2 located in register rdx
; Var p1 located in register rcx
; [381] result := RtlCompareMemory(p1, p2, len);
%LINE 381+0
		call	_$dll$ntdll$RtlCompareMemory
; Var $result located in register rax
; [382] end;
%LINE 382+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c49:

SECTION .text
	GLOBAL XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN
XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN:
..@c51:
; [385] begin
%LINE 385+0
		push	rbx
		lea	rsp,[rsp-32]
..@c53:
; Var $result located in register al
; Var p1 located in register rcx
; Var p2 located in register rdx
		mov	rbx,r8
; Var len located in register rbx
; [389] result := RtlCompareMemory(p1, p2, len) = len;
%LINE 389+0
		call	_$dll$ntdll$RtlCompareMemory
		cmp	rax,rbx
; Var $result located in register al
		sete	al
; [390] end;
%LINE 390+0
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c52:

SECTION .text
	GLOBAL XMM_$$_XGETFREECHUNKS$$LONGINT
XMM_$$_XGETFREECHUNKS$$LONGINT:
..@c54:
; [395] begin
%LINE 395+0
		push	rbx
		lea	rsp,[rsp-32]
..@c56:
; Var $result located in register eax
; Var i located in register eax
; Var $result located in register ebx
; [399] result := 0;
%LINE 399+0
		xor	ebx,ebx
..@j192:
; [400] _xmemchunksbegin;
%LINE 400+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j192
; Var i located in register eax
; [401] for i := 0 to high(xmemchunks) do if xmemchunks[i].h.size = 0 then result := result + 1;
%LINE 401+0
		mov	eax,-1
..@j195:
		inc	eax
		mov	edx,eax
		imul	rcx,rdx,552
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
		cmp	qword [rdx+rcx+8],0
		jne	..@j199
		inc	ebx
..@j199:
		cmp	eax,8191
		jnge	..@j195
; [402] _xmemchunksend;
%LINE 402+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
; [403] end;
%LINE 403+0
		mov	eax,ebx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c55:

SECTION .text
	GLOBAL XMM_$$_XMMINIT
XMM_$$_XMMINIT:
..@c57:
; [408] begin
%LINE 408+0
		lea	rsp,[rsp-40]
..@c59:
; Var i located in register eax
; [414] if xmemchunks_init_done then exit;
%LINE 414+0
		cmp	byte [TC_$XMM_$$_XMEMCHUNKS_INIT_DONE],0
		jne	..@j200
..@j204:
; [417] _xmemchunksbegin;
%LINE 417+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		mov	edx,1
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
		test	eax,eax
		jne	..@j204
; [420] RtlFillMemory(@xmemchunks[0], sizeof(xmemchunks), 0);
%LINE 420+0
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		xor	r8d,r8d
		mov	edx,4521984
		call	_$dll$kernel32$RtlFillMemory
; Var i located in register eax
; [422] for i := low(xmemchunks) to high(xmemchunks) do begin
%LINE 422+0
		mov	eax,-1
..@j207:
		add	eax,1
; [424] if i <> low(xmemchunks)  then xmemchunks[i].h.prev := @xmemchunks[i-1]; // set previous chunk pointer
%LINE 424+0
		je	..@j211
%LINE 408+0
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
%LINE 424+0
		movsxd	rcx,eax
		imul	rcx,rcx,552
		lea	r8,[rdx+rcx-552]
		mov	ecx,eax
		imul	rcx,rcx,552
		mov	qword [rdx+rcx+24],r8
..@j211:
; [425] if i <> high(xmemchunks) then xmemchunks[i].h.next := @xmemchunks[i+1]; // set next chunk pointer
%LINE 425+0
		cmp	eax,8191
		je	..@j213
%LINE 408+0
		lea	rdx,[U_$XMM_$$_XMEMCHUNKS]
%LINE 425+0
		movsxd	rcx,eax
		imul	rcx,rcx,552
		lea	r8,[rdx+rcx+552]
		mov	ecx,eax
		imul	rcx,rcx,552
		mov	qword [rdx+rcx+32],r8
..@j213:
; [428] xmemchunks[i].h.realsize := sizeof(xmemchunks[i].data);
%LINE 428+0
		mov	edx,eax
		imul	rdx,rdx,552
		lea	rcx,[U_$XMM_$$_XMEMCHUNKS]
		mov	qword [rcx+rdx+16],512
%LINE 422+0
		cmp	eax,8191
		jnge	..@j207
; [432] xmemchunks_init_done := true;
%LINE 432+0
		mov	byte [TC_$XMM_$$_XMEMCHUNKS_INIT_DONE],1
; [435] _xmemchunksend;
%LINE 435+0
		lea	rcx,[TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION]
		xor	edx,edx
		call	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
..@j200:
; [436] end;
%LINE 436+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c58:

SECTION .text
	GLOBAL INIT$_$XMM
INIT$_$XMM:
	GLOBAL XMM_$$_init$
XMM_$$_init$:
..@c60:
; [445] initialization
%LINE 445+0
		lea	rsp,[rsp-40]
..@c62:
; [447] xmminit;
%LINE 447+0
		call	XMM_$$_XMMINIT
; [449] end.
%LINE 449+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c61:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
; [106] xmemchunks: array[0..XMMCHUNKCOUNT-1] of txmemchunk;
%LINE 106+0 xmm.pas
U_$XMM_$$_XMEMCHUNKS:	RESB	4521984
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .data
TC_$XMM_$$_XMEMCHUNKS_CRITICAL_SECTION	DD	0
; [108] xmemchunks_init_done: boolean = false;
%LINE 108+0 xmm.pas

SECTION .data
TC_$XMM_$$_XMEMCHUNKS_INIT_DONE	DB	0
; [111] function _atomic32(var target: integer; val: integer): integer; assembler;
%LINE 111+0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c63:
	DD	..@c65-..@c64
..@c64:
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
..@c65:
	DD	..@c67-..@c66
..@c66:
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
..@c67:
	DD	..@c69-..@c68
..@c68:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c69:
	DD	..@c71-..@c70
..@c70:
	DQ	..@c9,..@c10-..@c9
	DB	4
	DD	..@c11-..@c9
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c71:
	DD	..@c73-..@c72
..@c72:
	DQ	..@c12,..@c13-..@c12
	DB	4
	DD	..@c14-..@c12
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c73:
	DD	..@c75-..@c74
..@c74:
	DQ	..@c15,..@c16-..@c15
	DB	4
	DD	..@c17-..@c15
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c75:
	DD	..@c77-..@c76
..@c76:
	DQ	..@c18,..@c19-..@c18
	DB	4
	DD	..@c20-..@c18
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c77:
	DD	..@c79-..@c78
..@c78:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c79:
	DD	..@c81-..@c80
..@c80:
	DQ	..@c24,..@c25-..@c24
	DB	4
	DD	..@c26-..@c24
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c81:
	DD	..@c83-..@c82
..@c82:
	DQ	..@c27,..@c28-..@c27
	ALIGN 4,DB 0
..@c83:
	DD	..@c85-..@c84
..@c84:
	DQ	..@c29,..@c30-..@c29
	ALIGN 4,DB 0
..@c85:
	DD	..@c87-..@c86
..@c86:
	DQ	..@c31,..@c32-..@c31
	ALIGN 4,DB 0
..@c87:
	DD	..@c89-..@c88
..@c88:
	DQ	..@c33,..@c34-..@c33
	DB	4
	DD	..@c35-..@c33
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c89:
	DD	..@c91-..@c90
..@c90:
	DQ	..@c36,..@c37-..@c36
	DB	4
	DD	..@c38-..@c36
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c91:
	DD	..@c93-..@c92
..@c92:
	DQ	..@c39,..@c40-..@c39
	DB	4
	DD	..@c41-..@c39
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c93:
	DD	..@c95-..@c94
..@c94:
	DQ	..@c42,..@c43-..@c42
	DB	4
	DD	..@c44-..@c42
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c95:
	DD	..@c97-..@c96
..@c96:
	DQ	..@c45,..@c46-..@c45
	DB	4
	DD	..@c47-..@c45
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c97:
	DD	..@c99-..@c98
..@c98:
	DQ	..@c48,..@c49-..@c48
	DB	4
	DD	..@c50-..@c48
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c99:
	DD	..@c101-..@c100
..@c100:
	DQ	..@c51,..@c52-..@c51
	DB	4
	DD	..@c53-..@c51
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c101:
	DD	..@c103-..@c102
..@c102:
	DQ	..@c54,..@c55-..@c54
	DB	4
	DD	..@c56-..@c54
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c103:
	DD	..@c105-..@c104
..@c104:
	DQ	..@c57,..@c58-..@c57
	DB	4
	DD	..@c59-..@c57
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c105:
	DD	..@c107-..@c106
..@c106:
	DQ	..@c60,..@c61-..@c60
	DB	4
	DD	..@c62-..@c60
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c107:
; End asmlist al_dwarf_frame

