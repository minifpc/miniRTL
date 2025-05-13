BITS 64
default rel
CPU x64

EXTERN	_$dll$kernel32$ReadConsoleA
EXTERN	_$dll$kernel32$AddVectoredExceptionHandler
EXTERN	_$dll$kernel32$RemoveVectoredExceptionHandler
EXTERN	_$dll$kernel32$RtlLookupFunctionEntry
EXTERN	_$dll$kernel32$RtlVirtualUnwind
EXTERN	_$dll$kernel32$RtlUnwindEx
EXTERN	_$dll$kernel32$WriteConsoleA
EXTERN	_$dll$kernel32$WriteConsoleW
EXTERN	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
EXTERN	_$dll$rtllib$xfreemem
EXTERN	XMM_$$_XGETMEM$QWORD$$POINTER
EXTERN	XMM_$$_XALLOCMEM$QWORD$$POINTER
EXTERN	XMM_$$_XMEMSIZE$POINTER$$QWORD
EXTERN	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
EXTERN	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
EXTERN	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
EXTERN	_$dll$user32$MessageBoxA
EXTERN	INITFINAL
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	_$dll$rtllib$GetBsr8bit
; Begin asmlist al_pure_assembler

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICEXCHANGE$LONGINT$LONGINT$$LONGINT:
..@c695:
; [misc.inc]
; [63] asm
		push	rbp
..@c697:
..@c698:
		mov	rbp,rsp
..@c699:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [64] mov    eax, val
		mov	eax,edx
; [66] xchg dword ptr [target], eax
		xchg	dword [rcx],eax
CPU x64

; [67] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c696:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64
SYSTEM_$$_ATOMICEXCHANGE$INT64$INT64$$INT64:
..@c700:
; [70] asm
		push	rbp
..@c702:
..@c703:
		mov	rbp,rsp
..@c704:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [71] mov    rax, val
		mov	rax,rdx
; [73] xchg qword ptr [target], rax
		xchg	qword [rcx],rax
CPU x64

; [74] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c701:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT:
..@c705:
; [77] asm
		push	rbp
..@c707:
..@c708:
		mov	rbp,rsp
..@c709:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [78] mov eax, 1
		mov	eax,1
; [79] lock xadd dword ptr [target], eax
		lock		xadd	dword [rcx],eax
; [80] inc eax
		inc	eax
CPU x64

; [81] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c706:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64:
..@c710:
; [84] asm
		push	rbp
..@c712:
..@c713:
		mov	rbp,rsp
..@c714:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [85] mov rax, 1
		mov	rax,1
; [86] lock xadd qword ptr [target], rax
		lock		xadd	qword [rcx],rax
; [87] inc rax
		inc	rax
CPU x64

; [88] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c711:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT:
..@c715:
; [91] asm
		push	rbp
..@c717:
..@c718:
		mov	rbp,rsp
..@c719:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [92] mov eax, -1
		mov	eax,-1
; [93] lock xadd dword ptr [target], eax
		lock		xadd	dword [rcx],eax
; [94] dec eax
		dec	eax
CPU x64

; [95] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c716:

SECTION .text
	GLOBAL SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64:
..@c720:
; [98] asm
		push	rbp
..@c722:
..@c723:
		mov	rbp,rsp
..@c724:
		lea	rsp,[rsp-16]
; Var $result located at rbp-8, size=OS_S64
CPU x64

; [99] mov rax, -1
		mov	rax,-1
; [100] lock xadd qword ptr [target], rax
		lock		xadd	qword [rcx],rax
; [101] dec rax
		dec	rax
CPU x64

; [102] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c721:

SECTION .text
	GLOBAL SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER
SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER:
..@c836:
; [system.pas]
; [358] asm
CPU x64

; [359] movl   4(%esp),%eax
		mov	eax,dword [esp+4]
; [360] movl   %eax,%fs:(0)
		mov	dword [fs:0],eax
; [361] movl   %ebp,%eax
		mov	eax,ebp
; [362] call   16(%esp)
		call	[esp+16]
CPU x64

; [363] end;
		ret
..@c837:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT
SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT:
..@c881:
; [616] asm
CPU x64

; [617] movq     %rbx,jmp_buf.rbx(%rcx)
		mov	qword [rcx],rbx
; [618] movq     %rbp,jmp_buf.rbp(%rcx)
		mov	qword [rcx+8],rbp
; [619] movq     %r12,jmp_buf.r12(%rcx)
		mov	qword [rcx+16],r12
; [620] movq     %r13,jmp_buf.r13(%rcx)
		mov	qword [rcx+24],r13
; [621] movq     %r14,jmp_buf.r14(%rcx)
		mov	qword [rcx+32],r14
; [622] movq     %r15,jmp_buf.r15(%rcx)
		mov	qword [rcx+40],r15
; [623] movq     %rsi,jmp_buf.rsi(%rcx)
		mov	qword [rcx+64],rsi
; [624] movq     %rdi,jmp_buf.rdi(%rcx)
		mov	qword [rcx+72],rdi
; [625] leaq     8(%rsp),%rax
		lea	rax,[rsp+8]
; [626] movq     %rax,jmp_buf.rsp(%rcx)
		mov	qword [rcx+48],rax
; [627] movq     (%rsp),%rax
		mov	rax,qword [rsp]
; [628] movq     %rax,jmp_buf.rip(%rcx)
		mov	qword [rcx+56],rax
; [629] movdqu   %xmm6,jmp_buf.xmm6(%rcx)
		movdqu	[rcx+80],xmm6
; [630] movdqu   %xmm7,jmp_buf.xmm7(%rcx)
		movdqu	[rcx+96],xmm7
; [631] movdqu   %xmm8,jmp_buf.xmm8(%rcx)
		movdqu	[rcx+112],xmm8
; [632] movdqu   %xmm9,jmp_buf.xmm9(%rcx)
		movdqu	[rcx+128],xmm9
; [633] movdqu   %xmm10,jmp_buf.xmm10(%rcx)
		movdqu	[rcx+144],xmm10
; [634] movdqu   %xmm11,jmp_buf.xmm11(%rcx)
		movdqu	[rcx+160],xmm11
; [635] movdqu   %xmm12,jmp_buf.xmm12(%rcx)
		movdqu	[rcx+176],xmm12
; [636] movdqu   %xmm13,jmp_buf.xmm13(%rcx)
		movdqu	[rcx+192],xmm13
; [637] movdqu   %xmm14,jmp_buf.xmm14(%rcx)
		movdqu	[rcx+208],xmm14
; [638] movdqu   %xmm15,jmp_buf.xmm15(%rcx)
		movdqu	[rcx+224],xmm15
; [639] stmxcsr  jmp_buf.mxcsr(%rcx)
		stmxcsr	dword [rcx+240]
; [640] fnstcw   jmp_buf.fpucw(%rcx)
		fnstcw	word [rcx+244]
; [641] xorl     %eax,%eax
		xor	eax,eax
CPU x64

; [642] end;
		ret
..@c882:

SECTION .text
	GLOBAL fpc_setjmp
fpc_setjmp:
	GLOBAL FPC_SETJMP
FPC_SETJMP:
..@c883:
; [645] asm
CPU x64

; [646] sub rsp, 32          // Shadow space f..r call
		sub	rsp,32
; [647] call fpcsetjmp       // bar erwartet s in rcx
		call	SYSTEM_$$_FPCSETJMP$JMP_BUF$$LONGINT
; [648] add rsp, 32          // Stack wieder freigeben
		add	rsp,32
CPU x64

; [650] end;
		ret
..@c884:

SECTION .text
	GLOBAL SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT
SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT:
..@c885:
; [668] asm
CPU x64

; [685] cmpl     $1,%edx
		cmp	edx,1
; [686] adcl     $0,%edx
		adc	edx,0
; [687] movl     %edx,%eax
		mov	eax,edx
; [688] movq     jmp_buf.rbx(%rcx),%rbx
		mov	rbx,qword [rcx]
; [689] movq     jmp_buf.rbp(%rcx),%rbp
		mov	rbp,qword [rcx+8]
; [690] movq     jmp_buf.r12(%rcx),%r12
		mov	r12,qword [rcx+16]
; [691] movq     jmp_buf.r13(%rcx),%r13
		mov	r13,qword [rcx+24]
; [692] movq     jmp_buf.r14(%rcx),%r14
		mov	r14,qword [rcx+32]
; [693] movq     jmp_buf.r15(%rcx),%r15
		mov	r15,qword [rcx+40]
; [694] movq     jmp_buf.rsi(%rcx),%rsi
		mov	rsi,qword [rcx+64]
; [695] movq     jmp_buf.rdi(%rcx),%rdi
		mov	rdi,qword [rcx+72]
; [696] movq     jmp_buf.rsp(%rcx),%rsp
		mov	rsp,qword [rcx+48]
; [697] movdqu   jmp_buf.xmm6(%rcx),%xmm6
		movdqu	xmm6,[rcx+80]
; [698] movdqu   jmp_buf.xmm7(%rcx),%xmm7
		movdqu	xmm7,[rcx+96]
; [699] movdqu   jmp_buf.xmm8(%rcx),%xmm8
		movdqu	xmm8,[rcx+112]
; [700] movdqu   jmp_buf.xmm9(%rcx),%xmm9
		movdqu	xmm9,[rcx+128]
; [701] movdqu   jmp_buf.xmm10(%rcx),%xmm10
		movdqu	xmm10,[rcx+144]
; [702] movdqu   jmp_buf.xmm11(%rcx),%xmm11
		movdqu	xmm11,[rcx+160]
; [703] movdqu   jmp_buf.xmm12(%rcx),%xmm12
		movdqu	xmm12,[rcx+176]
; [704] movdqu   jmp_buf.xmm13(%rcx),%xmm13
		movdqu	xmm13,[rcx+192]
; [705] movdqu   jmp_buf.xmm14(%rcx),%xmm14
		movdqu	xmm14,[rcx+208]
; [706] movdqu   jmp_buf.xmm15(%rcx),%xmm15
		movdqu	xmm15,[rcx+224]
; [707] ldmxcsr  jmp_buf.mxcsr(%rcx)
		ldmxcsr	dword [rcx+240]
; [708] fnclex
		fnclex
; [709] fldcw    jmp_buf.fpucw(%rcx)
		fldcw	word [rcx+244]
; [710] jmpq     jmp_buf.rip(%rcx)
		jmp	[rcx+56]
CPU x64

; [712] end;
		ret
..@c886:

SECTION .text
	GLOBAL fpc_longjmp
fpc_longjmp:
	GLOBAL FPC_LONGJMP
FPC_LONGJMP:
..@c887:
; [714] asm
CPU x64

; [715] sub rsp, 64          // Shadow space f..r call
		sub	rsp,64
; [716] call fpclongjmp      // bar erwartet s in rcx
		call	SYSTEM_$$_FPCLONGJMP$JMP_BUF$LONGINT
; [717] add rsp, 64          // Stack wieder freigeben
		add	rsp,64
CPU x64

; [718] end;
		ret
..@c888:

SECTION .text
SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT:
..@c931:
; [920] asm
		push	rbp
..@c933:
..@c934:
		mov	rbp,rsp
..@c935:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [922] mov rax, -1
		mov	rax,-1
; [923] lock xadd [Addend], rax
		lock		xadd	qword [rcx],rax
; [924] dec rax
		dec	rax
CPU x64

; [930] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c932:

SECTION .text
SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT:
..@c936:
; [934] asm
		push	rbp
..@c938:
..@c939:
		mov	rbp,rsp
..@c940:
		lea	rsp,[rsp-16]
; Var $result located at rbp-4, size=OS_S32
CPU x64

; [936] mov rax, 1
		mov	rax,1
; [937] lock xadd [Addend], rax
		lock		xadd	qword [rcx],rax
; [938] inc rax
		inc	rax
CPU x64

; [944] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c937:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
	GLOBAL SYSTEM_$$_WAIT_FOR_ENTER
SYSTEM_$$_WAIT_FOR_ENTER:
..@c1:
; [233] begin
		push	rbx
		lea	rsp,[rsp-48]
..@c3:
; Var c located at rsp+40, size=OS_8
; Var d located at rsp+44, size=OS_32
; [234] writeln('press <enter>...');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld1]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j5:
; [237] ReadConsoleA(StdIn, @c, 1, @d, nil);
		mov	qword [rsp+32],0
		lea	r9,[rsp+44]
		lea	rdx,[rsp+40]
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	r8d,1
		call	_$dll$kernel32$ReadConsoleA
; [238] if c = #13 then break;
		cmp	byte [rsp+40],13
		jne	..@j5
		jmp	..@j7
; [236] while true do begin
		jmp	..@j5
..@j7:
; [240] end;
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c2:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIID$$PGUID:
..@c4:
; Var $result located in register rax
; Var $self located in register rcx
; [objects.inc]
; [225] begin
; [229] if Assigned(IIDRef) then GetIID := IIDRef^
		cmp	qword [rcx],0
		je	..@j13
		mov	rax,qword [rcx]
		mov	rax,qword [rax]
		ret
..@j13:
; [231] GetIID := nil;
		xor	eax,eax
; [233] end;
		ret
..@c5:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING
SYSTEM$_$TINTERFACEENTRY_$__$$_GETIIDSTR$$PSHORTSTRING:
..@c6:
; Var $result located in register rax
; Var $self located in register rcx
; [236] begin
; [240] if Assigned(IIDStrRef) then GetIIDStr := IIDStrRef^
		cmp	qword [rcx+24],0
		je	..@j18
		mov	rax,qword [rcx+24]
		mov	rax,qword [rax]
		ret
..@j18:
; [242] GetIIDStr := nil;
		xor	eax,eax
; [244] end;
		ret
..@c7:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c8:
; Var $result located in register rax
; Var $self located in register rcx
; [251] begin
; [252] if vParentRef <> nil then result := vParentRef^ else result := nil;
		cmp	qword [rcx+16],0
		je	..@j23
		mov	rax,qword [rcx+16]
		mov	rax,qword [rax]
		ret
..@j23:
		xor	eax,eax
; [253] end;
		ret
..@c9:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c10:
; [260] begin
		push	rbp
..@c12:
..@c13:
		mov	rbp,rsp
..@c14:
		lea	rsp,[rsp-64]
; Var $vmt located at rbp-8, size=OS_64
; Var $self located at rbp-16, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-24, size=OS_S64
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j28
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j28:
		cmp	qword [rbp-16],0
		je	..@j25
..@j36:
		nop
..@j35:
		mov	qword [rbp-24],-1
; [261] end;
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j33
		cmp	qword [rbp-8],0
		je	..@j33
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+128]
		jmp	..@j33
..@j32:
		cmp	qword [rbp-8],0
		je	..@j42
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j42:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j43:
		nop
..@j33:
..@j25:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c11:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c15:
; [264] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c17:
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var $vmt located in register rsi
		test	rsi,rsi
		jng	..@j47
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j47:
; [266] end;
		test	rbx,rbx
		je	..@j49
		test	rsi,rsi
		je	..@j49
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j49:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c16:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c18:
; [271] begin
		push	rbx
		lea	rsp,[rsp-48]
..@c20:
; Var $result located in register rax
; Var p located at rsp+32, size=OS_64
		mov	rbx,rcx
; Var $self located in register rbx
; Var $self located in register rbx
; [272] GetMem(p, InstanceSize);
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [274] if p <> nil then InitInstance(p);
		cmp	qword [rsp+32],0
		je	..@j54
		mov	rdx,qword [rsp+32]
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
..@j54:
; Var $result located in register rax
; [275] result := TObject(p);
		mov	rax,qword [rsp+32]
; [276] end;
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c19:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c21:
; [279] begin
		lea	rsp,[rsp-40]
..@c23:
; Var $self located in register rax
; Var $self located in register rcx
; [280] FreeMem(Pointer(Self));
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [281] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c22:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT:
..@c24:
; Var $result located in register eax
; Var $self located in register rcx
; Var exceptobject located in register rdx
; Var exceptaddr located in register r8
; [284] begin
; Var $result located in register eax
; [285] result := 1;
		mov	eax,1
; [286] end;
		ret
..@c25:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c26:
; [289] begin
		lea	rsp,[rsp-40]
..@c28:
		mov	rax,rcx
; Var $self located in register rax
; [291] if self <> nil then self.Destroy;
		test	rcx,rcx
		je	..@j62
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j62:
; [292] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c27:

SECTION .text
	GLOBAL SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER:
..@c29:
; Var ovmt located in register rax
; Var i located in register r10d
; Var intftable located in register r11
; Var Res located in register rax
; Var objclass located in register rcx
; Var instance located in register rdx
; [301] begin
; Var ovmt located in register rcx
; Var objclass located in register rcx
; [303] while assigned(ovmt) and {$ifdef VER3_0}(ovmt^.vIntfTable <> @emptyintf){$else}assigned(ovmt^.vIntfTable){$endif} do
		jmp	..@j66
..@j65:
; [305] intftable:=ovmt^.vIntfTable;
		mov	r11,qword [rcx+80]
; [310] i:=intftable^.EntryCount;
		mov	r10d,dword [r11]
; [311] Res:=@intftable^.Entries[0];
		lea	rax,[r11+8]
; [312] while i>0 do begin
		jmp	..@j69
..@j68:
; [313] if Res^.IType = etStandard then
		cmp	dword [rax+32],0
		jne	..@j72
		mov	r8,rax
; [314] ppointer(@(pbyte(instance)[Res^.IOffset]))^:=
		mov	r9,qword [r8+16]
		add	r9,rdx
		mov	r8,qword [r8+8]
		mov	qword [r9],r8
..@j72:
; [316] inc(Res);
		add	rax,40
; [317] dec(i);
		dec	r10d
..@j69:
		test	r10d,r10d
		jg	..@j68
; [320] ovmt:=ovmt^.vParent;
		cmp	qword [rcx+16],0
		je	..@j74
		mov	r8,qword [rcx+16]
		mov	r8,qword [r8]
		jmp	..@j75
..@j74:
		xor	r8,r8
..@j75:
		mov	rcx,r8
..@j66:
		test	rcx,rcx
		je	..@j67
		cmp	qword [rcx+80],0
		jne	..@j65
..@j67:
; [322] end;
		ret
..@c30:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT:
..@c31:
; [331] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c33:
; Var $result located in register rax
; Var vmt located in register rax
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var Instance located in register rsi
; Var $self located in register rbx
; [332] FillChar(Instance^, InstanceSize, 0);
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
		mov	rdx,rax
; Var Instance located in register rsi
		mov	rcx,rsi
		xor	r8d,r8d
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; Var Instance located in register rsi
; [333] PPointer(Instance)^ := Pointer(self);
		mov	rcx,rbx
; Var $self located in register rcx
		mov	qword [rsi],rcx
; [335] if PVmt(self)^.vIntfTable <> nil then
		cmp	qword [rcx+80],0
		je	..@j82
; [336] InitInterfacePointers(self, Instance);
		mov	rdx,rsi
		call	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
..@j82:
; Var $result located in register rax
; [345] result := TObject(Instance);
		mov	rax,rsi
; Var Instance located in register rax
; [346] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c32:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS:
..@c34:
; Var $result located in register rax
; [349] begin
		mov	rax,rcx
; Var $self located in register rax
; Var $result located in register rax
; Var $self located in register rax
; [351] end;
		ret
..@c35:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER:
..@c36:
; Var $result located in register rax
; Var $self located in register rcx
; [354] begin
; Var $self located in register rcx
; Var $result located in register rax
; [355] result := PVmt(Self)^.vTypeInfo;
		mov	rax,qword [rcx+56]
; [356] end;
		ret
..@c37:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING:
..@c38:
; [359] begin
		lea	rsp,[rsp-40]
..@c40:
		mov	rax,rcx
; Var $self located in register rax
		mov	rcx,rdx
; Var $result located in register rcx
; Var $self located in register rax
; [360] result := PVmt(Self)^.vClassName^;
		mov	rdx,qword [rax+24]
		call	fpc_shortstr_to_shortstr
; [361] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c39:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TCLASS:
..@c41:
; Var $result located in register rax
; Var $self located in register rcx
; [364] begin
; [365] result := TClass(PVmt(Self)^.vParent);
		cmp	qword [rcx+16],0
		je	..@j92
		mov	rax,qword [rcx+16]
		mov	rax,qword [rax]
		ret
..@j92:
		xor	eax,eax
; Var $result located in register rax
; [366] end;
		ret
..@c42:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64
SYSTEM$_$TOBJECT_$__$$_INSTANCESIZE$$INT64:
..@c43:
; Var $result located in register rax
; Var $self located in register rcx
; [369] begin
; Var $self located in register rcx
; Var $result located in register rax
; [370] result := PVmt(Self)^.vInstanceSize;
		mov	rax,qword [rcx]
; [371] end;
		ret
..@c44:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN:
..@c45:
; Var $result located in register al
; Var vmt located in register rax
; Var $self located in register rcx
; Var aclass located in register rdx
; [376] begin
; [377] if aclass = nil then exit(false);
		test	rdx,rdx
		jne	..@j101
		xor	al,al
		ret
; Var vmt located in register rcx
; Var $self located in register rcx
; [379] while (vmt <> nil) and (vmt <> PVmt(aclass)) do vmt := vmt^.vParent;
		jmp	..@j101
..@j100:
		cmp	qword [rcx+16],0
		je	..@j104
		mov	r8,qword [rcx+16]
		mov	r8,qword [r8]
		jmp	..@j105
..@j104:
		xor	r8,r8
..@j105:
		mov	rcx,r8
..@j101:
		test	rcx,rcx
		je	..@j102
		cmp	rdx,rcx
		jne	..@j100
..@j102:
; [380] result := vmt = PVmt(aclass);
		cmp	rdx,rcx
		sete	al
; [381] end;
		ret
..@c46:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c47:
; [384] begin
		mov	rax,rcx
; Var $self located in register rax
; [385] end;
		ret
..@c48:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c49:
; [388] begin
		mov	rax,rcx
; Var $self located in register rax
; [389] end;
		ret
..@c50:

SECTION .text
	GLOBAL SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
..@c51:
; Var $result located in register al
; Var guid1 located in register rcx
; Var guid2 located in register rdx
; [394] begin
; [396] (guid1.D1=guid2.D1) and
		mov	eax,dword [rcx]
		cmp	eax,dword [rdx]
		jne	..@j116
; [397] (PDWORD(@guid1.D2)^=PDWORD(@guid2.D2)^) and
		lea	rax,[rcx+4]
		lea	r8,[rdx+4]
		mov	eax,dword [rax]
		cmp	eax,dword [r8]
		jne	..@j116
		lea	rax,[rcx+8]
; [398] (PDWORD(@guid1.D4[0])^=PDWORD(@guid2.D4[0])^) and
		mov	rcx,rax
		add	rdx,8
		mov	r8,rdx
		mov	ecx,dword [rcx]
		cmp	ecx,dword [r8]
		jne	..@j116
; [399] (PDWORD(@guid1.D4[4])^=PDWORD(@guid2.D4[4])^);
		add	rax,4
		add	rdx,4
		mov	eax,dword [rax]
		cmp	eax,dword [rdx]
		jne	..@j116
; Var $result located in register al
; [395] result:=
		mov	al,1
		ret
..@j116:
		xor	al,al
; [401] end;
		ret
..@c52:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
..@c53:
; [412] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c55:
; Var $result located in register al
; Var Getter located at rsp+32, size=OS_128
		mov	rbx,rcx
; Var Instance located in register rbx
		mov	rsi,rdx
; Var IEntry located in register rsi
		mov	rdi,r8
; Var obj located in register rdi
; [413] Pointer(Obj) := nil;
		mov	qword [rdi],0
; Var Instance located in register rbx
; [414] Getter.Data := Instance;
		mov	qword [rsp+40],rbx
; [415] if Assigned(IEntry) and Assigned(Instance) then case IEntry^.IType of
		test	rsi,rsi
		je	..@j124
		test	rbx,rbx
		je	..@j124
		mov	eax,dword [rsi+32]
		lea	rdx,[..@d2]
		movsxd	rax,dword [rdx+rax*4]
		add	rax,rdx
		jmp	rax
..@j128:
; [417] Pointer(Obj) := pbyte(instance) + IEntry^.IOffset;
		mov	rax,qword [rsi+16]
		add	rax,rbx
		mov	qword [rdi],rax
		jmp	..@j126
..@j129:
; [419] Pointer(obj) := PPointer(pbyte(Instance) + IEntry^.IOffset)^;
		mov	rax,qword [rsi+16]
		add	rax,rbx
		mov	rax,qword [rax]
		mov	qword [rdi],rax
		jmp	..@j126
..@j130:
; [422] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
		mov	rax,qword [rsi+16]
		mov	rdx,qword [rbx]
		add	rax,rdx
		mov	rax,qword [rax]
		mov	qword [rsp+32],rax
; [423] TInterfaceGetter(Getter)(obj);
		mov	rdx,rdi
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		jmp	..@j126
..@j131:
; [427] Getter.code := PCodePointer(pbyte(PPointer(Instance)^) + IEntry^.IOffset)^;
		mov	rdx,qword [rsi+16]
		mov	rax,qword [rbx]
		add	rax,rdx
		mov	rax,qword [rax]
		mov	qword [rsp+32],rax
; [428] TObject(obj) := TClassGetter(Getter)();
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		mov	qword [rdi],rax
		jmp	..@j126
..@j132:
; [432] Getter.code := IEntry^.IOffsetAsCodePtr;
		mov	rax,qword [rsi+16]
		mov	qword [rsp+32],rax
; [433] TInterfaceGetter(Getter)(obj);
		mov	rdx,rdi
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		jmp	..@j126
..@j133:
; [437] Getter.code := IEntry^.IOffsetAsCodePtr;
		mov	rax,qword [rsi+16]
		mov	qword [rsp+32],rax
; [438] TObject(obj) := TClassGetter(Getter)();
		mov	rcx,qword [rsp+40]
		call	[rsp+32]
		mov	qword [rdi],rax
..@j126:
..@j124:
; [441] result := assigned(pointer(obj));
		cmp	qword [rdi],0
; Var $result located in register al
		setne	al
; [442] end;
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c54:

SECTION .data
	ALIGN 4,DB 0
..@d2:
	DD	..@j128-..@d2,..@j130-..@d2,..@j132-..@d2,..@j129-..@d2,..@j131-..@d2
	DD	..@j133-..@d2,..@j129-..@d2

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN:
..@c56:
; [453] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c58:
; Var $result located in register r12b
; Var IEntry located in register r13
; Var Instance located in register rax
		mov	rbx,rcx
; Var objclass located in register rbx
		mov	rsi,rdx
; Var iid located in register rsi
		mov	rdi,r8
; Var obj located in register rdi
; [454] if IsGUIDEqual(IObjectInstance, iid) then begin
		mov	rdx,rsi
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		je	..@j137
; [455] TObject(Obj) := objclass;
		mov	qword [rdi],rbx
; [456] Result := true;
		mov	r12b,1
; [457] Exit;
		jmp	..@j134
..@j137:
; Var Instance located in register rbx
; Var objclass located in register rbx
..@j138:
; [462] IEntry := Instance.GetInterfaceEntry(iid);
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	r13,rax
; [463] result := GetInterfaceByEntry(Instance, IEntry, obj);
		mov	r8,rdi
		mov	rdx,r13
		mov	rcx,rbx
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	r12b,al
; [465] if (not result) or
		test	al,al
		je	..@j140
; [466] (IEntry^.IType in [etStandard, etFieldValue,
		mov	eax,dword [r13+32]
		cmp	eax,4
		jc	..@j140
; [470] Instance := TObject(obj);
		mov	rbx,qword [rdi]
; [471] until false;
		jmp	..@j138
..@j140:
; [474] if result and (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._AddRef;
		test	r12b,r12b
		je	..@j146
		mov	eax,dword [r13+32]
		test	eax,eax
		je	..@j147
		cmp	eax,3
		je	..@j147
		jne	..@j146
..@j147:
		mov	rcx,qword [rdi]
		mov	rax,qword [rdi]
		mov	rax,qword [rax]
		call	[rax+8]
..@j146:
..@j134:
; [475] end;
		mov	al,r12b
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c57:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN:
..@c59:
; [477] begin
		lea	rsp,[rsp-40]
..@c61:
; Var $result located in register al
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; Var $self located in register rcx
; [478] Exit(GetInterface_(self, iid, obj));
		call	SYSTEM_$$_GETINTERFACE_$TOBJECT$TGUID$formal$$BOOLEAN
; Var $result located in register al
; [479] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c60:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN:
..@c62:
; [494] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c64:
; Var $result located in register r12b
; Var IEntry located in register r13
; Var Instance located in register rax
		mov	rbx,rcx
; Var objclass located in register rbx
		mov	rsi,rdx
; Var iid located in register rsi
		mov	rdi,r8
; Var obj located in register rdi
; [495] if IsGUIDEqual(IObjectInstance, iid) then begin
		mov	rdx,rsi
		lea	rcx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		je	..@j154
; [496] TObject(Obj) := objclass;
		mov	qword [rdi],rbx
; [497] Result := true;
		mov	r12b,1
; [498] Exit;
		jmp	..@j151
..@j154:
; Var Instance located in register rbx
; Var objclass located in register rbx
..@j155:
; [503] IEntry := Instance.GetInterfaceEntry(iid);
		mov	rdx,rsi
		mov	rcx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	r13,rax
; [504] result := GetInterfaceByEntry(Instance, IEntry, obj);
		mov	r8,rdi
		mov	rdx,r13
		mov	rcx,rbx
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	r12b,al
; [506] if (not result) or
		test	al,al
		je	..@j157
; [507] (IEntry^.IType in [etStandard, etFieldValue,
		mov	eax,dword [r13+32]
		cmp	eax,4
		jc	..@j157
; [511] Instance := TObject(obj);
		mov	rbx,qword [rdi]
; [512] until false;
		jmp	..@j155
..@j157:
; [515] if result and not (IEntry^.IType in [etStandard, etFieldValue]) then IInterface(obj)._Release;
		test	r12b,r12b
		je	..@j163
		mov	eax,dword [r13+32]
		test	eax,eax
		je	..@j163
		cmp	eax,3
		je	..@j163
		je	..@j163
		mov	rcx,qword [rdi]
		mov	rax,qword [rdi]
		mov	rax,qword [rax]
		call	[rax+16]
..@j163:
..@j151:
; [516] end;
		mov	al,r12b
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c63:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN:
..@c65:
; [518] begin
		lea	rsp,[rsp-40]
..@c67:
; Var $result located in register al
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; Var $self located in register rcx
; [519] Exit(GetInterfaceWeak_(self, iid, obj));
		call	SYSTEM_$$_GETINTERFACEWEAK_$TOBJECT$TGUID$formal$$BOOLEAN
; Var $result located in register al
; [520] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c66:

SECTION .text
	GLOBAL SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY:
..@c68:
; [536] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c70:
; Var $result located in register r12
; Var i located in register edi
; Var intftable located in register r14
; Var ovmt located in register rax
		mov	rbx,rcx
; Var objclass located in register rbx
		mov	rsi,rdx
; Var iid located in register rsi
; Var ovmt located in register rbx
; Var objclass located in register rbx
; [538] while Assigned(ovmt) and Assigned(ovmt^.vIntftable) do begin
		jmp	..@j171
..@j170:
; [539] intftable := ovmt^.vIntfTable;
		mov	r14,qword [rbx+80]
; [540] for i := 0 to intftable^.EntryCount-1 do begin
		mov	rax,qword [r14]
		lea	r13,[rax-1]
		test	r13d,r13d
		jnge	..@j174
		mov	edi,-1
..@j175:
		inc	edi
; [541] result := @intftable^.Entries[i];
		mov	eax,edi
		imul	rax,rax,40
		lea	r12,[r14+rax+8]
; [542] if assigned(Result^.iid) and IsGUIDEqual(Result^.iid^, iid) then Exit;
		cmp	qword [r12],0
		je	..@j179
		mov	rax,qword [r12]
		mov	rax,qword [rax]
		jmp	..@j180
..@j179:
		xor	eax,eax
..@j180:
		test	rax,rax
		je	..@j182
		cmp	qword [r12],0
		je	..@j185
		mov	rax,qword [r12]
		mov	rcx,qword [rax]
		jmp	..@j186
..@j185:
		xor	ecx,ecx
..@j186:
		mov	rdx,rsi
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j168
..@j182:
		cmp	r13d,edi
		jnle	..@j175
..@j174:
; [544] ovmt := ovmt^.vParent;
		cmp	qword [rbx+16],0
		je	..@j188
		mov	rax,qword [rbx+16]
		mov	rax,qword [rax]
		jmp	..@j189
..@j188:
		xor	eax,eax
..@j189:
		mov	rbx,rax
..@j171:
		test	rbx,rbx
		je	..@j172
		cmp	qword [rbx+80],0
		jne	..@j170
..@j172:
; [546] result := nil;
		xor	r12,r12
..@j168:
; [547] end;
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
..@c69:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY:
..@c71:
; [549] begin
		lea	rsp,[rsp-40]
..@c73:
; Var $result located in register rax
; Var $self located in register rcx
; Var iid located in register rdx
; Var $self located in register rcx
; [550] Exit(GetInterfaceEntry_(self, iid));
		call	SYSTEM_$$_GETINTERFACEENTRY_$TOBJECT$TGUID$$PINTERFACEENTRY
; Var $result located in register rax
; [551] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c72:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT:
..@c74:
; [567] begin
		lea	rsp,[rsp-40]
..@c76:
; Var $result located in register eax
; Var $self located in register rcx
; Var iid located in register rdx
; Var obj located in register r8
; [568] if GetInterface(iid, obj) then result := S_OK else result := LongInt(E_NOINTERFACE);
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		je	..@j198
		xor	eax,eax
		jmp	..@j199
..@j198:
		mov	eax,-2147467262
..@j199:
; [569] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c75:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
..@c77:
; Var $result located in register eax
; Var $self located in register rcx
; [572] begin
; [574] inc(FRefCount);
		inc	dword [rcx+8]
; Var $result located in register eax
; [575] result := FRefCount;
		mov	eax,dword [rcx+8]
; [576] end;
		ret
..@c78:

SECTION .text
SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000242:
..@c79:
; [596] end;
		push	rbp
..@c81:
..@c82:
		mov	rbp,rcx
..@c83:
		lea	rsp,[rsp-32]
; [579] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c80:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
..@c84:
; Temps allocated between rbp-536 and rbp+0
		push	rbp
..@c86:
..@c87:
		mov	rbp,rsp
..@c88:
		lea	rsp,[rsp-576]
		mov	qword [rbp-536],rbx
		mov	qword [rbp-528],rsi
; Var $result located in register esi
		mov	rbx,rcx
; Var $self located in register rbx
		mov	qword [rbp-8],0
..@j210:
		nop
..@j206:
; [581] dec(FRefCount);
		dec	dword [rbx+8]
; [582] result := FRefCount;
		mov	esi,dword [rbx+8]
; [583] if result = 0 then begin
		test	esi,esi
		jne	..@j212
; [585] inc(FDestroyCount);
		inc	dword [rbx+12]
; [586] if FDestroyCount = 1 then begin
		cmp	dword [rbx+12],1
		jne	..@j214
; [587] if copy(ClassName, 1, 9) = '$Capturer' then begin
		mov	rcx,qword [rbx]
		lea	rdx,[rbp-520]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	rdx,[rbp-520]
		mov	r9d,9
		mov	r8d,1
		lea	rcx,[rbp-264]
		call	fpc_shortstr_copy
		lea	rdx,[rbp-264]
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_shortstr_to_ansistr
		mov	rcx,qword [rbp-8]
		lea	rdx,[..@d3]
		call	fpc_ansistr_compare_equal
		test	rax,rax
		je	..@j208
; [593] self.Destroy;
		mov	rcx,rbx
		mov	edx,1
		mov	rax,qword [rbx]
		call	[rax+96]
..@j214:
..@j212:
..@j208:
		nop
..@j207:
		mov	rcx,rbp
		call	SYSTEM$_$TINTERFACEDOBJECT_$__RELEASE$$LONGINT_$$_fin$00000242
		mov	eax,esi
		mov	rbx,qword [rbp-536]
		mov	rsi,qword [rbp-528]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c85:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY
SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY:
..@c89:
; [599] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c91:
		mov	rbx,rcx
; Var $self located in register rbx
		mov	rsi,rdx
; Var $vmt located in register rsi
		test	rsi,rsi
		jng	..@j220
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j220:
; [600] FRefCount := 0;
		mov	dword [rbx+8],0
; [601] FDestroyCount := 0;
		mov	dword [rbx+12],0
; Var $self located in register rbx
; [602] inherited Destroy;
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
; [603] end;
		test	rbx,rbx
		je	..@j222
		test	rsi,rsi
		je	..@j222
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j222:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c90:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION:
..@c92:
; [606] begin
		mov	rax,rcx
; Var $self located in register rax
; [609] dec(FRefCount);
		dec	dword [rax+8]
; [610] end;
		ret
..@c93:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION:
..@c94:
; [613] begin
		lea	rsp,[rsp-40]
..@c96:
		mov	rax,rcx
; Var $self located in register rax
; [614] if FRefCount <> 0 then HandleError(204);
		cmp	dword [rax+8],0
		je	..@j229
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j229:
; [615] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c95:

SECTION .text
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c97:
; [618] begin
		lea	rsp,[rsp-40]
..@c99:
; Var $result located in register rax
; Var $self located in register rcx
; Var $self located in register rcx
; [619] result := inherited NewInstance;
		call	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
; Var $result located in register rax
; [620] if result <> nil then TInterfacedObject(result).FRefCount := 1;
		test	rax,rax
		je	..@j233
		mov	dword [rax+8],1
..@j233:
; [621] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c98:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c100:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [628] begin
; [629] result := (aLeft.Data = aRight.Data) and (aLeft.Code = aRight.Code);
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j237
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jne	..@j237
; Var $result located in register al
		mov	al,1
		ret
..@j237:
		xor	al,al
; [630] end;
		ret
..@c101:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$not_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c102:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [633] begin
; [634] result := (aLeft.Data <> aRight.Data) or (aLeft.Code <> aRight.Code);
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j242
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		je	..@j244
; Var $result located in register al
..@j242:
		mov	al,1
		ret
..@j244:
		xor	al,al
; [635] end;
		ret
..@c103:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater$TMETHOD$TMETHOD$$BOOLEAN:
..@c104:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [638] begin
		mov	r8,qword [rcx+8]
		mov	rax,qword [rdx+8]
; [639] result := (PtrUInt(aLeft.Data) > PtrUInt(aRight.Data)) or
		cmp	rax,r8
		jb	..@j248
; [640] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) > PtrUInt(aRight.Code)));
		cmp	rax,r8
		jne	..@j250
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jna	..@j250
; Var $result located in register al
..@j248:
		mov	al,1
		ret
..@j250:
		xor	al,al
; [641] end;
		ret
..@c105:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$greater_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c106:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [644] begin
		mov	rax,qword [rcx+8]
		mov	r8,qword [rdx+8]
; [645] result := (aLeft > aRight) or (aLeft = aRight);
		cmp	r8,rax
		jb	..@j257
		cmp	r8,rax
		jne	..@j259
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jna	..@j259
..@j257:
		mov	al,1
		jmp	..@j263
..@j259:
		xor	al,al
..@j263:
		test	al,al
		jne	..@j264
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j268
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jne	..@j268
		mov	al,1
		jmp	..@j270
..@j268:
		xor	al,al
..@j270:
		test	al,al
		je	..@j266
; Var $result located in register al
..@j264:
		mov	al,1
		ret
..@j266:
		xor	al,al
; [646] end;
		ret
..@c107:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower$TMETHOD$TMETHOD$$BOOLEAN:
..@c108:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [649] begin
		mov	r8,qword [rcx+8]
		mov	rax,qword [rdx+8]
; [650] Result := (PtrUInt(aLeft.Data) < PtrUInt(aRight.Data)) or
		cmp	rax,r8
		ja	..@j274
; [651] ((aLeft.Data = aRight.Data) and (PtrUInt(aLeft.Code) < PtrUInt(aRight.Code)));
		cmp	rax,r8
		jne	..@j276
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jnb	..@j276
; Var $result located in register al
..@j274:
		mov	al,1
		ret
..@j276:
		xor	al,al
; [652] end;
		ret
..@c109:

SECTION .text
	GLOBAL SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN
SYSTEM$_$TMETHOD_$__$$_$lower_or_equal$TMETHOD$TMETHOD$$BOOLEAN:
..@c110:
; Var $result located in register al
; Var aLeft located in register rcx
; Var aRight located in register rdx
; [655] begin
		mov	rax,qword [rcx+8]
		mov	r8,qword [rdx+8]
; [656] result := (aLeft < aRight) or (aLeft = aRight);
		cmp	r8,rax
		ja	..@j283
		cmp	r8,rax
		jne	..@j285
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jnb	..@j285
..@j283:
		mov	al,1
		jmp	..@j289
..@j285:
		xor	al,al
..@j289:
		test	al,al
		jne	..@j290
		mov	rax,qword [rcx+8]
		cmp	rax,qword [rdx+8]
		jne	..@j294
		mov	rax,qword [rcx]
		cmp	rax,qword [rdx]
		jne	..@j294
		mov	al,1
		jmp	..@j296
..@j294:
		xor	al,al
..@j296:
		test	al,al
		je	..@j292
; Var $result located in register al
..@j290:
		mov	al,1
		ret
..@j292:
		xor	al,al
; [657] end;
		ret
..@c111:

SECTION .text
	GLOBAL fpc_intf_assign
fpc_intf_assign:
	GLOBAL FPC_INTF_ASSIGN
FPC_INTF_ASSIGN:
..@c112:
; [664] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c114:
		mov	rbx,rcx
; Var d located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
; [665] if s <> nil then IUnknown(s)._AddRef;
		test	rdx,rdx
		je	..@j301
		mov	rcx,rsi
		mov	rax,qword [rsi]
		call	[rax+8]
..@j301:
; [666] if d <> nil then IUnknown(d)._Release;
		cmp	qword [rbx],0
		je	..@j303
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		mov	rax,qword [rax]
		call	[rax+16]
..@j303:
; Var s located in register rsi
; [667] d := s;
		mov	qword [rbx],rsi
; [668] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c113:

SECTION .text
	GLOBAL SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN
SYSTEM_$$_FPCCLASSASINTF$POINTER$TGUID$$IUNKNOWN:
..@c115:
; [675] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c117:
; Var tmpi located at rsp+32, size=OS_64
; Var tmpi2 located at rsp+40, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
		mov	rdi,r8
; Var iid located in register rdi
; [676] if s = nil then exit(nil);
		test	rsi,rsi
		jne	..@j307
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_intf_assign
		jmp	..@j304
..@j307:
; [677] tmpi := nil;
		mov	qword [rsp+32],0
; [678] tmpi2 := nil;
		mov	qword [rsp+40],0
; [679] if not ((TObject(s).GetInterfaceWeak(IUnknown, tmpi2) and (IUnknown(tmpi2).QueryInterface(iid, tmpi) = S_OK)) or TObject(s).GetInterface(iid, tmpi)) then
		lea	rdx,[_$SYSTEM$_Ld4]
		lea	r8,[rsp+40]
		mov	rcx,rsi
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
		test	al,al
		je	..@j309
		mov	rdx,rdi
		lea	r8,[rsp+32]
		mov	rcx,qword [rsp+40]
		mov	rax,qword [rsp+40]
		mov	rax,qword [rax]
		call	[rax]
		test	eax,eax
		je	..@j310
..@j309:
		mov	rdx,rdi
		lea	r8,[rsp+32]
		mov	rcx,rsi
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j310
; [680] HandleError(219);
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j310:
; [681] result := nil;
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_intf_assign
; [682] pointer(result) := tmpi;
		mov	rax,qword [rsp+32]
		mov	qword [rbx],rax
..@j304:
; [683] end;
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c116:

SECTION .text
	GLOBAL fpc_class_as_intf
fpc_class_as_intf:
..@c118:
; [685] begin
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
; Var iid located in register r8
; [686] end;
		ret
..@c119:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER:
..@c120:
; [700] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c122:
; Var $result located in register rsi
; Var tmpo located at rsp+32, size=OS_64
		mov	rax,rcx
; Var s located in register rax
		mov	rbx,rdx
; Var aclass located in register rbx
; [701] if s = nil then exit(nil);
		test	rax,rax
		jne	..@j317
		xor	esi,esi
		jmp	..@j314
..@j317:
; [702] if not ((IUnknown(s).QueryInterface(IObjectInstance, tmpo) = S_OK) and tmpo.InheritsFrom(aclass)) then
		lea	r8,[rsp+32]
		lea	rdx,[TC_$SYSTEM_$$_IOBJECTINSTANCE]
		mov	rcx,rax
		mov	rax,qword [rax]
		call	[rax]
		test	eax,eax
		jne	..@j319
		mov	rax,qword [rsp+32]
		mov	rcx,qword [rax]
		mov	rdx,rbx
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j320
..@j319:
; [703] HandleError(219);
		mov	ecx,219
		call	FPC_HANDLEERROR
..@j320:
; [704] result := tmpo;
		mov	rsi,qword [rsp+32]
..@j314:
; [705] end;
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c121:

SECTION .text
	GLOBAL fpc_intf_as_class
fpc_intf_as_class:
	GLOBAL FPC_INTF_AS_CLASS
FPC_INTF_AS_CLASS:
..@c123:
; [707] begin
		lea	rsp,[rsp-40]
..@c125:
; Var $result located in register rax
; Var s located in register rcx
; Var aclass located in register rdx
; Var aclass located in register rdx
; Var s located in register rcx
; [708] Exit(fpcintfasclass(s, aclass));
		call	SYSTEM_$$_FPCINTFASCLASS$POINTER$TCLASS$$POINTER
; Var $result located in register rax
; [709] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c124:

SECTION .text
	GLOBAL fpc_intf_cast
fpc_intf_cast:
	GLOBAL FPC_INTF_CAST
FPC_INTF_CAST:
..@c126:
; [720] begin
		lea	rsp,[rsp-40]
..@c128:
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
; Var iid located in register r8
; [721] msgdebug('@@todo: fpc_intf_cast');
		lea	rcx,[..@d5]
		call	SYSTEM_$$_MSGDEBUG$ANSISTRING
; [722] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c127:

SECTION .text
	GLOBAL SYSTEM_$$_FPCINTFDECRREF$POINTER
SYSTEM_$$_FPCINTFDECRREF$POINTER:
..@c129:
; [726] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c131:
		mov	rbx,rcx
; Var i located in register rbx
; [727] if i <> nil then begin
		cmp	qword [rbx],0
		je	..@j328
; [728] IUnknown(i)._Release;
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		mov	rax,qword [rax]
		call	[rax+16]
; [729] i := nil;
		mov	qword [rbx],0
..@j328:
; [731] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c130:

SECTION .text
	GLOBAL fpc_intf_decr_ref
fpc_intf_decr_ref:
	GLOBAL FPC_INTF_DECR_REF
FPC_INTF_DECR_REF:
..@c132:
; [733] begin
		lea	rsp,[rsp-40]
..@c134:
; Var i located in register rax
; [734] fpcintfdecrref(i);
		call	SYSTEM_$$_FPCINTFDECRREF$POINTER
; [735] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c133:

SECTION .text
	GLOBAL fpc_intf_incr_ref
fpc_intf_incr_ref:
	GLOBAL FPC_INTF_INCR_REF
FPC_INTF_INCR_REF:
..@c135:
; [748] begin
		lea	rsp,[rsp-40]
..@c137:
		mov	rax,rcx
; Var i located in register rax
; [749] if i <> nil then IUnknown(i)._AddRef;
		test	rcx,rcx
		je	..@j334
		mov	rcx,rax
		mov	rax,qword [rax]
		call	[rax+8]
..@j334:
; [750] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c136:

SECTION .text
	GLOBAL SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
..@c138:
; Temps allocated between rsp+32 and rsp+40
; [exceptions.inc]
; [175] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-48]
..@c140:
; Var $result located in register rax
; Var exclass located in register r14
; Var i located in register esi
; Var filter located in register rax
; Var p located in register rdi
; Var curfilt located in register rbx
; Var rec located in register rcx
		mov	r15,rdx
; Var imagebase located in register r15
		mov	ebx,r8d
; Var filterRva located in register ebx
		mov	esi,r9d
; Var errcode located in register esi
; Var $result located in register rax
; [176] result := nil;
		mov	qword [rsp+32],0
; [178] if rec.ExceptionCode = FPC_EXCEPTION_CODE then
		cmp	dword [rcx],-532262845
		jne	..@j338
; [179] TObject(rec.ExceptionInformation[1]).ClassType
		mov	rax,qword [rcx+40]
		mov	rcx,qword [rax]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSTYPE$$TCLASS
		jmp	..@j339
..@j338:
; [180] else if ExceptClsProc <> nil then begin
		cmp	qword [TC_$SYSTEM_$$_EXCEPTCLSPROC],0
		je	..@j335
; [181] exclass := TClass(TExceptClsProc(ExceptClsProc)(errcode));
		mov	ecx,esi
		call	TC_$SYSTEM_$$_EXCEPTCLSPROC
		mov	r14,rax
..@j339:
; [186] filter := pointer(imagebase+filterRva);
		and	ebx,ebx
		lea	r13,[rbx+r15]
; Var filter located in register rax
; Var filter located in register r13
; [187] for i := 0 to PLongint(filter)^-1 do begin
		mov	eax,dword [r13]
		dec	eax
		mov	r12d,eax
		test	r12d,r12d
		jnge	..@j344
		mov	esi,-1
..@j345:
		inc	esi
; [188] curfilt := @PFilterRec(filter+sizeof(LongInt))[i];
		lea	rdx,[r13+4]
		movsxd	rax,esi
		lea	rbx,[rdx+rax*8]
; [190] p := pointer(imagebase+curfilt^.RvaHandler);
		mov	eax,dword [rbx+4]
		lea	rdi,[rax+r15]
; [192] if curfilt^.RvaClass = $FFFFFFFF then exit(p);
		cmp	dword [rbx],-1
		jne	..@j349
		mov	qword [rsp+32],rdi
		jmp	..@j335
..@j349:
; [195] if exclass.InheritsFrom(TClass(imagebase+curfilt^.RvaClass)) then exit(p);
		mov	eax,dword [rbx]
		lea	rdx,[rax+r15]
		mov	rcx,r14
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		je	..@j351
		mov	qword [rsp+32],rdi
		jmp	..@j335
..@j351:
		cmp	r12d,esi
		jnle	..@j345
..@j344:
..@j335:
; [201] end;
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+48]
		pop	r15
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c139:

SECTION .text
SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER:
..@c141:
; [207] begin
		lea	rsp,[rsp-40]
..@c143:
; Var $result located in register rax
; Var rec located in register rcx
; Var imagebase located in register rdx
; Var filterRva located in register r8d
; Var errcode located in register r9d
; Var errcode located in register r9d
; Var filterRva located in register r8d
; Var imagebase located in register rdx
; [208] Exit(FilterException_(rec, imageBase, filterRva, errcode));
		call	SYSTEM_$$_FILTEREXCEPTION_$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
; Var $result located in register rax
; [209] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c142:

SECTION .text
	GLOBAL SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT
SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT:
..@c144:
; Var $result located in register eax
; Var rec located in register rcx
; [229] begin
; [231] case rec.ExceptionCode of
		mov	eax,dword [rcx]
		cmp	eax,-1073741819
		jb	..@j357
		sub	eax,-1073741819
		je	..@j367
		sub	eax,24
		je	..@j366
		sub	eax,111
		je	..@j360
		dec	eax
		je	..@j363
		dec	eax
		je	..@j359
		sub	eax,1
		jb	..@j357
		sub	eax,1
		jbe	..@j364
		dec	eax
		je	..@j362
		dec	eax
		je	..@j364
		dec	eax
		je	..@j363
		dec	eax
		je	..@j358
		dec	eax
		je	..@j365
		dec	eax
		je	..@j369
		sub	eax,103
		je	..@j361
		sub	eax,61
		je	..@j368
		sub	eax,378
		jb	..@j357
		sub	eax,1
		jbe	..@j370
		jmp	..@j357
..@j358:
; [232] STATUS_INTEGER_DIVIDE_BY_ZERO:        result := 200;  // reDivByZero
		mov	eax,200
		ret
..@j359:
; [233] STATUS_FLOAT_DIVIDE_BY_ZERO:          result := -208; // !!reZeroDivide
		mov	eax,-208
		ret
..@j360:
; [234] STATUS_ARRAY_BOUNDS_EXCEEDED:         result := 201;  // reRangeError
		mov	eax,201
		ret
..@j361:
; [235] STATUS_STACK_OVERFLOW:                result := 202;  // reStackOverflow
		mov	eax,202
		ret
..@j362:
; [236] STATUS_FLOAT_OVERFLOW:                result := -205; // reOverflow
		mov	eax,-205
		ret
..@j363:
; [238] STATUS_FLOAT_UNDERFLOW:               result := -206; // reUnderflow
		mov	eax,-206
		ret
..@j364:
; [241] STATUS_FLOAT_STACK_CHECK:             result := -207; // reInvalidOp
		mov	eax,-207
		ret
..@j365:
; [242] STATUS_INTEGER_OVERFLOW:              result := 215;  // reIntOverflow
		mov	eax,215
		ret
..@j366:
; [243] STATUS_ILLEGAL_INSTRUCTION:           result := -216;
		mov	eax,-216
		ret
..@j367:
; [244] STATUS_ACCESS_VIOLATION:              result := 216;  // reAccessViolation
		mov	eax,216
		ret
..@j368:
; [245] STATUS_CONTROL_C_EXIT:                result := 217;  // reControlBreak
		mov	eax,217
		ret
..@j369:
; [246] STATUS_PRIVILEGED_INSTRUCTION:        result := 218;  // rePrivilegedInstruction
		mov	eax,218
		ret
..@j370:
; [248] STATUS_FLOAT_MULTIPLE_FAULTS:         result := -255; // indicate FPU reset
		mov	eax,-255
		ret
..@j357:
; [250] result := 255; // reExternalException
		mov	eax,255
; [252] end;
		ret
..@c145:

SECTION .text
SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT:
..@c146:
; [254] begin
		lea	rsp,[rsp-40]
..@c148:
; Var $result located in register eax
; Var rec located in register rcx
; [255] Exit(RunErrorCode_(rec));
		call	SYSTEM_$$_RUNERRORCODE_$EXCEPTION_RECORD$$LONGINT
; Var $result located in register eax
; [256] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c147:

SECTION .text
	GLOBAL SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT
SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT:
..@c149:
; [268] begin
		mov	eax,ecx
; Var mxcsr located in register eax
; Var code located in register rdx
; [271] if (mxcsr and 1) <> 0 then code := -207
		and	ecx,1
		je	..@j376
		mov	dword [rdx],-207
		ret
..@j376:
; [273] else if (mxcsr and 2) <> 0 then code := -206
		mov	ecx,eax
		and	ecx,2
		je	..@j379
		mov	dword [rdx],-206
		ret
..@j379:
; [275] else if (mxcsr and 4) <> 0 then code := -208
		mov	ecx,eax
		and	ecx,4
		je	..@j382
		mov	dword [rdx],-208
		ret
..@j382:
; [277] else if (mxcsr and 8) <> 0 then code := -205
		mov	ecx,eax
		and	ecx,8
		je	..@j385
		mov	dword [rdx],-205
		ret
..@j385:
; [279] else if (mxcsr and 16) <> 0 then code := -206
		mov	ecx,eax
		and	ecx,16
		je	..@j388
		mov	dword [rdx],-206
		ret
..@j388:
; [281] else if (mxcsr and 32) <> 0 then code := -207
		and	eax,32
		je	..@j391
		mov	dword [rdx],-207
		ret
..@j391:
; [283] code := -255;
		mov	dword [rdx],-255
; [284] end;
		ret
..@c150:

SECTION .text
SYSTEM_$$_JUMPTOHANDLESIGNAL:
..@c151:
; [exceptions64.inc]
; [233] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c153:
; [234] writeln('JumpToHandleSignal');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld6]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [285] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c152:

SECTION .text
	GLOBAL SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
..@c154:
; [306] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c156:
; Var exrec located at rsp+32, size=OS_64
; Var excontext located at rsp+40, size=OS_64
; Var $result located in register eax
; Var frame located in register eax
; Var ret located in register eax
		mov	qword [rsp+32],rcx
; Var exframe located in register rdx
		mov	qword [rsp+40],r8
; Var dispatch located in register r9
; [307] writeln('signals_exception_handler');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld7]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [309] frame := excontext^.rbp;
		mov	rax,qword [rsp+40]
; Var frame located in register esi
		mov	esi,dword [rax+160]
; Var ret located in register eax
; [311] ret := 1;
		mov	eax,1
; [313] writeln('exrec^.ExceptionCode = ', exrec^.ExceptionCode);
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld8]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rax,qword [rsp+32]
		mov	r8d,dword [rax]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_uint
		mov	rcx,rbx
		call	fpc_writeln_end
; [319] ret := CallSignal(SIGSEGV, frame, false);
		mov	r8d,esi
; Var frame located in register r8d
		xor	r9b,r9b
		mov	edx,291
		mov	rcx,rsp
		call	SYSTEM$_$SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B
; Var ret located in register eax
; Var $result located in register eax
; Var ret located in register eax
; [322] end;
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c155:

SECTION .text
SYSTEM$_$SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT_$$_CALLSIGNAL$crcC6EFD60B:
..@c157:
; [294] begin
		lea	rsp,[rsp-8]
..@c159:
; Var $parentfp located at rsp+0, size=OS_64
; Var $result located in register eax
		mov	qword [rsp],rcx
; Var sigtype located in register edx
; Var frame located in register r8d
; Var must_reset_fpu located in register r9b
; [295] if ex_level >= ex_max_level then exit;
		cmp	byte [TC_$SYSTEM_$$_EX_LEVEL],16
		jae	..@j397
; [296] ex_rip[ex_level] := excontext^.Rip;
		mov	rax,qword [rsp]
		mov	rax,qword [rax+40]
		movzx	r8d,byte [TC_$SYSTEM_$$_EX_LEVEL]
		lea	rcx,[U_$SYSTEM_$$_EX_RIP]
		mov	rax,qword [rax+248]
		mov	qword [rcx+r8*8],rax
; [297] except_signal[ex_level] := sigtype;
		movzx	ecx,byte [TC_$SYSTEM_$$_EX_LEVEL]
		movsxd	rdx,edx
		lea	rax,[U_$SYSTEM_$$_EXCEPT_SIGNAL]
		mov	qword [rax+rcx*8],rdx
; [298] reset_fpu[ex_level] := must_reset_fpu;
		movzx	edx,byte [TC_$SYSTEM_$$_EX_LEVEL]
; Var must_reset_fpu located in register r9b
		lea	rax,[U_$SYSTEM_$$_RESET_FPU]
		mov	byte [rax+rdx*1],r9b
; [299] inc(ex_level);
		inc	byte [TC_$SYSTEM_$$_EX_LEVEL]
; [300] excontext^.rip := ptruint(@JumpToHandleSignal);
		mov	rax,qword [rsp]
		mov	rax,qword [rax+40]
		lea	rdx,[SYSTEM_$$_JUMPTOHANDLESIGNAL]
		mov	qword [rax+248],rdx
; [301] exrec^.ExceptionCode := 0;
		mov	rax,qword [rsp]
		mov	rax,qword [rax+32]
		mov	dword [rax],0
; [302] result := 0;
		xor	eax,eax
..@j397:
; [303] end;
		lea	rsp,[rsp+8]
		ret
..@c158:

SECTION .text
SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT:
..@c160:
; [328] begin
		lea	rsp,[rsp-40]
..@c162:
; Var $result located in register eax
; Var exrec located in register rcx
; Var exframe located in register rdx
; Var excontext located in register r8
; Var dispatch located in register r9
; Var dispatch located in register r9
; Var excontext located in register r8
; Var exframe located in register rdx
; Var exrec located in register rcx
; [329] Exit(signals_exception_handler_(exrec, exframe, excontext, dispatch));
		call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER_$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
; Var $result located in register eax
; [330] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c161:

SECTION .text
SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT:
..@c163:
; [344] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c165:
; Var $result located in register eax
		mov	rbx,rcx
; Var ex located in register rbx
; [345] writeln('syswin_x64_exception_handler');
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld9]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; [347] result := signals_exception_handler(@ex^.ExceptionRecord, nil, @ex^.ContextRecord, nil);
		mov	rcx,rbx
; Var ex located in register rcx
		lea	r8,[rcx+8]
; Var ex located in register rcx
		xor	r9,r9
		xor	edx,edx
		call	SYSTEM_$$_SIGNALS_EXCEPTION_HANDLER$PEXCEPTION_RECORD$PEXCEPTION_FRAME$PCONTEXT$POINTER$$LONGINT
		mov	ebx,eax
; Var $result located in register ebx
; [349] wait_for_enter;
		call	SYSTEM_$$_WAIT_FOR_ENTER
; [350] end;
		mov	eax,ebx
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c164:

SECTION .text
	GLOBAL SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS:
..@c166:
; [357] begin
		lea	rsp,[rsp-40]
..@c168:
; [360] vectored_exception_handler := AddVectoredExceptionHandler(1{1 = higher priotity}, @syswin_x64_exception_handler);
		lea	rdx,[SYSTEM_$$_SYSWIN_X64_EXCEPTION_HANDLER$PEXCEPTION_POINTERS$$LONGINT]
		mov	ecx,1
		call	_$dll$kernel32$AddVectoredExceptionHandler
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],rax
; [361] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c167:

SECTION .text
	GLOBAL SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS
SYSTEM_$$_REMOVE_EXCEPTION_HANDLERS:
..@c169:
; [364] begin
		lea	rsp,[rsp-40]
..@c171:
; [366] if vectored_exception_handler <> nil then
		cmp	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
		je	..@j410
; [367] if RemoveVectoredExceptionHandler(vectored_exception_handler) then
		mov	rcx,qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER]
		call	_$dll$kernel32$RemoveVectoredExceptionHandler
		test	eax,eax
		je	..@j412
; [368] vectored_exception_handler := nil;
		mov	qword [TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER],0
..@j412:
..@j410:
; [369] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c170:

SECTION .text
	GLOBAL SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT:
..@c172:
; [373] begin
		push	rbx
		lea	rsp,[rsp-48]
..@c174:
; Var $result located at rsp+32, size=OS_S32
		mov	rax,rcx
; Var rec located in register rax
		mov	rbx,rdx
; Var context located in register rbx
; [374] result := RunErrorCode(rec);
		mov	rcx,rax
		call	SYSTEM_$$_RUNERRORCODE$EXCEPTION_RECORD$$LONGINT
		mov	dword [rsp+32],eax
; [375] if (result = -255) then TranslateMxcsr(context.MxCsr, result);
		cmp	eax,-255
		jne	..@j416
		mov	ecx,dword [rbx+52]
		lea	rdx,[rsp+32]
		call	SYSTEM_$$_TRANSLATEMXCSR$LONGWORD$LONGINT
..@j416:
; [376] end;
		mov	eax,dword [rsp+32]
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c173:

SECTION .text
	GLOBAL SYSTEM_$$_SYSRESETFPU
SYSTEM_$$_SYSRESETFPU:
..@c175:
; [389] begin
		push	rbp
..@c177:
..@c178:
		mov	rbp,rsp
..@c179:
		lea	rsp,[rsp-16]
; Var localmxcsr located at rbp-4, size=OS_32
; Var localfpucw located at rbp-8, size=OS_16
; [390] localfpucw := Default8087CW;
		mov	ax,word [TC_$SYSTEM_$$_DEFAULT8087CW]
		mov	word [rbp-8],ax
; [391] localmxcsr := DefaultMXCSR;
		mov	eax,dword [TC_$SYSTEM_$$_DEFAULTMXCSR]
		mov	dword [rbp-4],eax
CPU x64

; [393] fninit
		fninit
; [394] fwait
		DB	09bh
; [395] fldcw   localfpucw
		fldcw	word [rbp-8]
; [396] ldmxcsr localmxcsr
		ldmxcsr	dword [rbp-4]
CPU x64

; [398] end;
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c176:

SECTION .text
	GLOBAL SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT
SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT:
..@c180:
; Temps allocated between rsp+304 and rsp+1440
; [417] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-1440]
..@c182:
; Var $result located in register eax
; Var UnwindHistory located at rsp+64, size=OS_NO
; Var RuntimeFunction located in register rdi
; Var HandlerData located at rsp+280, size=OS_64
; Var EstablisherFrame located at rsp+288, size=OS_64
; Var ImageBase located at rsp+296, size=OS_64
; Var FrameCount located in register eax
; Var FrameBufSize located in register eax
		mov	rsi,rcx
; Var Context located in register rsi
		mov	rbx,rdx
; Var StartingFrame located in register rbx
		mov	r12,r8
; Var Frames located in register r12
		lea	rdi,[rsp+304]
		mov	ecx,1136
		rep
		movsb
; [418] FillChar(UnwindHistory, sizeof(UNWIND_HISTORY_TABLE), 0);
		lea	rcx,[rsp+64]
		xor	r8d,r8d
		mov	edx,216
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
; [419] UnwindHistory.Unwind := 1;
		mov	byte [rsp+70],1
; Var FrameCount located in register r13d
; [421] FrameCount := 0;
		xor	r13d,r13d
; Var FrameBufSize located in register esi
; [422] FrameBufSize := 0;
		xor	esi,esi
; [423] Frames := nil;
		mov	qword [r12],0
..@j421:
; [425] RuntimeFunction := RtlLookupFunctionEntry(context.Rip, ImageBase, @UnwindHistory);
		lea	r8,[rsp+64]
		mov	rcx,qword [rsp+552]
		lea	rdx,[rsp+296]
		call	_$dll$kernel32$RtlLookupFunctionEntry
		mov	rdi,rax
; [427] if Assigned(RuntimeFunction) then RtlVirtualUnwind(UNW_FLAG_NHANDLER, ImageBase, context.Rip,
		test	rax,rax
		je	..@j425
		mov	qword [rsp+56],0
		lea	rax,[rsp+304]
		mov	qword [rsp+32],rax
; [428] RuntimeFunction, Context, @HandlerData, @EstablisherFrame, nil)
		lea	rax,[rsp+288]
		mov	qword [rsp+48],rax
		lea	rax,[rsp+280]
		mov	qword [rsp+40],rax
		mov	r8,qword [rsp+552]
		mov	r9,rdi
		mov	rdx,qword [rsp+296]
		xor	ecx,ecx
		call	_$dll$kernel32$RtlVirtualUnwind
		jmp	..@j426
..@j425:
; [430] Context.Rip := PQWord(Context.Rsp)^;
		mov	rax,qword [rsp+456]
		mov	rax,qword [rax]
		mov	qword [rsp+552],rax
; [431] Inc(Context.Rsp, sizeof(Pointer));
		add	qword [rsp+456],8
..@j426:
; [434] if (context.Rip = 0) or (FrameCount >= RaiseMaxFrameCount) then break;
		cmp	qword [rsp+552],0
		je	..@j423
		cmp	r13d,dword [TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT]
		jge	..@j423
; [436] if (Pointer(context.Rbp) > StartingFrame) or (FrameCount > 0) then begin
		cmp	rbx,qword [rsp+464]
		jb	..@j430
		test	r13d,r13d
		jng	..@j421
..@j430:
; [437] if (FrameCount >= FrameBufSize) then begin
		cmp	esi,r13d
		jnle	..@j434
; [438] Inc(FrameBufSize, 16);
		add	esi,16
; [439] ReallocMem(Frames, FrameBufSize * sizeof(Pointer));
		movsxd	rdx,esi
		shl	rdx,3
		mov	rcx,r12
		call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
..@j434:
; [441] Frames[FrameCount] := Pointer(context.Rip);
		mov	rdx,qword [r12]
		movsxd	rax,r13d
		mov	rcx,qword [rsp+552]
		mov	qword [rdx+rax*8],rcx
; [442] Inc(FrameCount);
		inc	r13d
; [444] until false;
		jmp	..@j421
..@j423:
; Var $result located in register eax
; [445] Result := FrameCount;
		mov	eax,r13d
; Var FrameCount located in register eax
; [446] end;
		nop
		lea	rsp,[rsp+1440]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c181:

SECTION .text
SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT:
..@c183:
; Temps allocated between rsp+32 and rsp+1168
; [451] begin
		push	rdi
		push	rsi
		lea	rsp,[rsp-1176]
..@c185:
; Var $result located in register eax
		mov	rsi,rcx
; Var Context located in register rsi
; Var StartingFrame located in register rdx
; Var Frames located in register r8
		lea	rdi,[rsp+32]
		mov	ecx,1136
		rep
		movsb
; Var StartingFrame located in register rdx
; [452] Exit(GetBacktrace_(Context, StartingFrame, Frames));
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETBACKTRACE_$TCONTEXT$POINTER$PPOINTER$$LONGINT
; Var $result located in register eax
; [453] end;
		nop
		lea	rsp,[rsp+1176]
		pop	rsi
		pop	rdi
		ret
..@c184:

SECTION .text
	GLOBAL SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
..@c186:
; Temps allocated between rsp+40 and rsp+48
; [481] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-48]
..@c188:
; Var $result located in register al
; Var adr located in register rax
; Var exc located in register rax
; Var Frames located at rsp+32, size=OS_64
; Var FrameCount located in register eax
; Var code located in register ebx
		mov	rsi,rcx
; Var rec located in register rsi
		mov	r12,rdx
; Var context located in register r12
		mov	r13,r8
; Var obj located in register r13
		mov	dil,r9b
; Var AcceptNull located in register dil
; Var adr located in register r14
; [482] Adr := Pointer(rec.ExceptionInformation[0]);
		mov	r14,qword [rsi+32]
; [483] Obj := TObject(rec.ExceptionInformation[1]);
		mov	rax,qword [rsi+40]
		mov	qword [r13],rax
; Var FrameCount located in register r15d
; [484] Framecount := longint(PtrUInt(rec.ExceptionInformation[2]));
		mov	r15d,dword [rsi+48]
; [485] Frames := Pointer(rec.ExceptionInformation[3]);
		mov	rax,qword [rsi+56]
		mov	qword [rsp+32],rax
; [487] if rec.ExceptionCode <> FPC_EXCEPTION_CODE then begin
		cmp	dword [rsi],-532262845
		je	..@j440
; [488] Obj := nil;
		mov	qword [r13],0
; [489] Result := false;
		mov	byte [rsp+40],0
; [490] code := RunErrorCodeSEH(rec, context);
		mov	rdx,r12
		mov	rcx,rsi
		call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
		mov	ebx,eax
; [491] if Assigned(ExceptObjProc) then Obj := TObject(TExceptObjProc(ExceptObjProc)(abs(code), rec));
		cmp	qword [TC_$SYSTEM_$$_EXCEPTOBJPROC],0
		je	..@j442
		mov	eax,ebx
		mov	ecx,ebx
		neg	eax
		cmovns	ecx,eax
		mov	rdx,rsi
		call	TC_$SYSTEM_$$_EXCEPTOBJPROC
		mov	qword [r13],rax
..@j442:
; [492] if (Obj = nil) and (not AcceptNull) then Exit;
		cmp	qword [r13],0
		jne	..@j444
		test	dil,dil
		je	..@j437
..@j444:
; [493] adr := rec.ExceptionAddress;
		mov	r14,qword [rsi+16]
; [494] FrameCount := GetBacktrace(context, nil, Frames);
		mov	rcx,r12
		lea	r8,[rsp+32]
		xor	edx,edx
		call	SYSTEM_$$_GETBACKTRACE$TCONTEXT$POINTER$PPOINTER$$LONGINT
		mov	r15d,eax
; [495] if code < 0 then SysResetFPU;
		test	ebx,ebx
		jnl	..@j447
		call	SYSTEM_$$_SYSRESETFPU
..@j447:
..@j440:
; [498] New(exc);
		mov	ecx,40
		call	fpc_getmem
; Var exc located in register rax
; Var exc located in register rax
; [499] exc^.FObject := Obj;
		mov	rdx,qword [r13]
		mov	qword [rax],rdx
; Var exc located in register rax
; [500] exc^.Addr := adr;
		mov	qword [rax+8],r14
; Var adr located in register rdx
; Var exc located in register rax
; [501] exc^.Frames := Frames;
		mov	rdx,qword [rsp+32]
		mov	qword [rax+32],rdx
; Var exc located in register rax
; [502] exc^.FrameCount := FrameCount;
		mov	dword [rax+28],r15d
; Var FrameCount located in register edx
; Var exc located in register rax
; [503] exc^.Refcount := 0;
		mov	dword [rax+24],0
; Var exc located in register rax
; [504] exc^.Next := ExceptObjectStack;
		mov	rdx,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		mov	qword [rax+16],rdx
; Var exc located in register rax
; [505] ExceptObjectStack := exc;
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [506] Result := true;
		mov	byte [rsp+40],1
..@j437:
; [507] end;
		mov	al,byte [rsp+40]
		nop
		lea	rsp,[rsp+48]
		pop	r15
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c187:

SECTION .text
SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN:
..@c189:
; [509] begin
		lea	rsp,[rsp-40]
..@c191:
; Var $result located in register al
; Var rec located in register rcx
; Var context located in register rdx
; Var obj located in register r8
; Var AcceptNull located in register r9b
; Var AcceptNull located in register r9b
; [510] Exit(PushException_(rec, context, obj, AcceptNull));
		call	SYSTEM_$$_PUSHEXCEPTION_$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
; Var $result located in register al
; [511] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c190:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT
SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT:
..@c192:
; [529] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c194:
; Var $result located in register rsi
; Var hp located in register rax
; Var hp located in register rbx
; [530] hp := ExceptObjectStack;
		mov	rbx,qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
; [531] if hp = nil then
		test	rbx,rbx
		jne	..@j453
; [532] halt(1)
		mov	ecx,1
		call	SYSTEM_$$_HALT$LONGINT
		jmp	..@j454
..@j453:
; [534] if hp^.refcount = 0 then result := hp^.FObject else result := nil;
		cmp	dword [rbx+24],0
		jne	..@j456
		mov	rsi,qword [rbx]
		jmp	..@j457
..@j456:
		xor	esi,esi
..@j457:
; [535] ExceptObjectStack := hp^.next;
		mov	rax,qword [rbx+16]
		mov	qword [U_$SYSTEM_$$_EXCEPTOBJECTSTACK],rax
; [536] if assigned(hp^.frames) then freemem(hp^.frames);
		cmp	qword [rbx+32],0
		je	..@j459
		mov	rcx,qword [rbx+32]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j459:
; [537] dispose(hp);
		mov	rcx,rbx
		call	fpc_freemem
; [538] erroraddr := nil;
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],0
..@j454:
; [540] end;
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c193:

SECTION .text
	GLOBAL fpc_popobjectstack
fpc_popobjectstack:
	GLOBAL FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
..@c195:
; [542] begin
		lea	rsp,[rsp-40]
..@c197:
; Var $result located in register rax
; [543] Exit(fpc_popobjectstack_);
		call	SYSTEM_$$_FPC_POPOBJECTSTACK_$$TOBJECT
; Var $result located in register rax
; [544] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c196:

SECTION .text
	GLOBAL SYSTEM_$$___FPC_SPECIFIC_HANDLER_$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER_$crc71B92073:
..@c198:
; Temps allocated between rsp+56 and rsp+72
; [569] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		push	r15
		lea	rsp,[rsp-80]
..@c200:
; Var $result located in register eax
; Var TargetRva located in register ebx
; Var ControlRva located in register eax
; Var scope located in register rdi
; Var scopeIdx located in register eax
; Var TargetAddr located in register rbx
; Var obj located at rsp+48, size=OS_64
		mov	qword [rsp+64],rcx
; Var rec located in register rax
		mov	rsi,rdx
; Var frame located in register rsi
		mov	qword [rsp+56],r8
; Var context located in register rax
		mov	r15,r9
; Var dispatch located in register r15
; [570] writeln('__FPC_specific_handler');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld10]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; Var $result located in register r14d
; [571] result := ExceptionContinueSearch;
		mov	r14d,1
		mov	rax,r15
; [572] ControlRva := dispatch.ControlPc - dispatch.ImageBase;
		mov	rdx,qword [rax]
		mov	rax,qword [rax+8]
		sub	rdx,rax
; Var ControlRva located in register r13d
		mov	r13d,edx
; Var scopeIdx located in register r12d
; [573] ScopeIdx := dispatch.ScopeIndex;
		mov	r12d,dword [r15+72]
; [574] if (rec.ExceptionFlags and EXCEPTION_UNWIND) = 0 then begin
		mov	rdx,qword [rsp+64]
		mov	eax,dword [rdx+4]
		and	eax,6
		jne	..@j465
; [575] while ScopeIdx < PDWord(dispatch.HandlerData)^ do begin
		jmp	..@j467
..@j466:
; [576] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
		mov	rax,qword [r15+56]
		lea	rdx,[rax+4]
		mov	eax,r12d
		shl	rax,4
		lea	rdi,[rdx+rax]
; [579] if (ControlRva >= scope^.RvaEnd) and (ControlRva < scope^.RvaHandler) and ((scope^.Typ = SCOPE_CATCHALL) or (scope^.Typ > SCOPE_IMPLICIT)) then
		cmp	r13d,dword [rdi+8]
		jnae	..@j470
		cmp	r13d,dword [rdi+12]
		jnb	..@j470
		mov	eax,dword [rdi]
		cmp	eax,1
		je	..@j472
		cmp	eax,2
		jna	..@j470
..@j472:
; [580] internal_popobjectstack.Free
		call	FPC_POPOBJECTSTACK
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		jmp	..@j476
..@j470:
; [581] else if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and (scope^.Typ <> SCOPE_FINALLY) then begin
		cmp	r13d,dword [rdi+4]
		jnae	..@j478
		cmp	r13d,dword [rdi+8]
		jnb	..@j478
		cmp	dword [rdi],0
		je	..@j478
; [582] if scope^.Typ > SCOPE_IMPLICIT then begin
		cmp	dword [rdi],2
		jna	..@j482
; [583] TargetAddr := FilterException(rec, dispatch.ImageBase, scope^.Typ, abs(RunErrorCodeSEH(rec, context)));
		mov	rdx,qword [rsp+56]
		mov	rcx,qword [rsp+64]
		call	SYSTEM_$$_RUNERRORCODESEH$EXCEPTION_RECORD$TCONTEXT$$LONGINT
		mov	edx,eax
		neg	edx
		cmovns	eax,edx
		mov	r8d,dword [rdi]
		mov	rdx,qword [r15+8]
		mov	rcx,qword [rsp+64]
		mov	r9d,eax
		call	SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGWORD$LONGINT$$POINTER
		mov	rbx,rax
; [584] if TargetAddr = nil then begin
		test	rax,rax
		jne	..@j485
; [585] inc(ScopeIdx);
		inc	r12d
; [586] continue;
		jmp	..@j467
		jmp	..@j485
..@j482:
; [589] TargetAddr := Pointer(scope^.RvaEnd + dispatch.ImageBase);
		mov	eax,dword [rdi+8]
		add	rax,qword [r15+8]
		mov	rbx,rax
..@j485:
; [591] if not PushException(rec, context, obj, Scope^.Typ = SCOPE_IMPLICIT) then exit;
		cmp	dword [rdi],2
		sete	r9b
		mov	rdx,qword [rsp+56]
		mov	rcx,qword [rsp+64]
		lea	r8,[rsp+48]
		call	SYSTEM_$$_PUSHEXCEPTION$EXCEPTION_RECORD$TCONTEXT$TOBJECT$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j462
; [595] RtlUnwindEx(@frame, TargetAddr, @rec, obj, dispatch.ContextRecord, dispatch.HistoryTable);
		mov	rax,qword [r15+64]
		mov	qword [rsp+40],rax
		mov	rax,qword [r15+40]
		mov	qword [rsp+32],rax
		mov	r8,qword [rsp+64]
		mov	rcx,rsi
		mov	r9,qword [rsp+48]
		mov	rdx,rbx
		call	_$dll$kernel32$RtlUnwindEx
..@j478:
..@j476:
; [597] inc(ScopeIdx);
		inc	r12d
..@j467:
		mov	rax,qword [r15+56]
		cmp	r12d,dword [rax]
		jb	..@j466
		jmp	..@j488
..@j465:
		mov	rax,r15
; [600] TargetRva := dispatch.TargetIp - dispatch.ImageBase;
		mov	rdx,qword [rax+32]
		mov	rax,qword [rax+8]
		sub	rdx,rax
		mov	ebx,edx
; [602] while ScopeIdx < PDword(dispatch.HandlerData)^ do begin
		jmp	..@j490
..@j489:
; [603] scope := @PScopeRec(dispatch.HandlerData + sizeof(Dword))[ScopeIdx];
		mov	rax,qword [r15+56]
		lea	rdx,[rax+4]
		mov	eax,r12d
		shl	rax,4
		lea	rdi,[rdx+rax]
; [604] if (ControlRva >= scope^.RvaStart) and (ControlRva < scope^.RvaEnd) and ((scope^.Typ = SCOPE_FINALLY) or (scope^.Typ = SCOPE_IMPLICIT)) then begin
		cmp	r13d,dword [rdi+4]
		jnae	..@j493
		cmp	r13d,dword [rdi+8]
		jnb	..@j493
		mov	eax,dword [rdi]
		test	eax,eax
		je	..@j495
		cmp	eax,2
		jne	..@j493
..@j495:
; [605] if (TargetRva >= scope^.RvaStart) and (TargetRva < scope^.RvaEnd) and ((rec.ExceptionFlags and EXCEPTION_TARGET_UNWIND) <> 0) then exit;
		cmp	ebx,dword [rdi+4]
		jnae	..@j500
		cmp	ebx,dword [rdi+8]
		jnb	..@j500
		mov	rdx,qword [rsp+64]
		mov	eax,dword [rdx+4]
		and	eax,32
		jne	..@j462
..@j500:
; [607] dispatch.ScopeIndex := ScopeIdx + 1;
		lea	eax,[r12d+1]
		mov	dword [r15+72],eax
; [609] TUnwindProc(dispatch.ImageBase + scope^.RvaHandler)(context.Rbp);
		mov	rax,qword [rsp+56]
		mov	rcx,qword [rax+160]
		mov	eax,dword [rdi+12]
		add	rax,qword [r15+8]
		call	rax
..@j493:
; [611] inc(ScopeIdx);
		inc	r12d
..@j490:
		mov	rax,qword [r15+56]
		cmp	r12d,dword [rax]
		jb	..@j489
..@j488:
..@j462:
; [614] end;
		mov	eax,r14d
		nop
		lea	rsp,[rsp+80]
		pop	r15
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c199:

SECTION .text
	GLOBAL SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073:
	GLOBAL __FPC_specific_handler
__FPC_specific_handler:
..@c201:
; [620] begin
		lea	rsp,[rsp-40]
..@c203:
; Var $result located in register eax
; Var rec located in register rcx
; Var frame located in register rdx
; Var context located in register r8
; Var dispatch located in register r9
; [621] Exit(__FPC_specific_handler(rec, frame, context, dispatch));
		call	SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
; Var $result located in register eax
; [622] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c202:

SECTION .text
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
..@c204:
; [642] begin
		lea	rsp,[rsp-40]
..@c206:
; [643] internal_popobjectstack.Free;
		call	FPC_POPOBJECTSTACK
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [644] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c205:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
	GLOBAL FPC_RERAISE
FPC_RERAISE:
..@c207:
; [647] begin
; [648] end;
		ret
..@c208:

SECTION .text
	GLOBAL fpc_raise_nested
fpc_raise_nested:
	GLOBAL FPC_RAISE_NESTED
FPC_RAISE_NESTED:
..@c209:
; [651] begin
; [652] end;
		ret
..@c210:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER
SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER:
..@c211:
; [659] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c213:
		mov	rbx,rcx
; Var obj located in register rbx
		mov	rsi,rdx
; Var anaddr located in register rsi
		mov	rdi,r8
; Var aframe located in register rdi
; [660] writeln('fpc_raiseexception');
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld11]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
; [662] if obj = nil then writeln('obj nil');
		test	rbx,rbx
		jne	..@j514
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld12]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
..@j514:
; [663] if anaddr = nil then writeln('anaddr nil');
		test	rsi,rsi
		jne	..@j516
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld13]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j516:
; [664] if aframe = nil then writeln('aframe nil');
		test	rdi,rdi
		jne	..@j518
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld14]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j518:
; [666] if obj <> nil then begin
		test	rbx,rbx
		je	..@j520
; [667] writeln('exception message = ', TTestException(obj).test);
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld15]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	r8,qword [rbx+8]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_ansistr
		mov	rcx,rsi
		call	fpc_writeln_end
..@j520:
; [669] end;
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c212:

SECTION .text
	GLOBAL fpc_raiseexception
fpc_raiseexception:
	GLOBAL FPC_RAISEEXCEPTION
FPC_RAISEEXCEPTION:
..@c214:
; [674] begin
		lea	rsp,[rsp-40]
..@c216:
; Var obj located in register rax
; Var anaddr located in register rdx
; Var aframe located in register r8
; Var aframe located in register r8
; Var anaddr located in register rdx
; Var obj located in register rcx
; [675] fpc_raiseexception_(obj, anaddr, aframe);
		call	SYSTEM_$$_FPC_RAISEEXCEPTION_$TOBJECT$POINTER$POINTER
; [676] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c215:

SECTION .text
	GLOBAL fpc_initialize
fpc_initialize:
	GLOBAL FPC_INITIALIZE
FPC_INITIALIZE:
..@c217:
; [rtti.inc]
; [35] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c219:
		mov	rax,rcx
; Var data located in register rax
; Var typeinfo located in register rdx
; [36] writeln('fpc_initialize');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld16]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [37] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c218:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
	GLOBAL FPC_FINALIZE
FPC_FINALIZE:
..@c220:
; [40] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c222:
		mov	rax,rcx
; Var data located in register rax
		mov	rbx,rdx
; Var typeinfo located in register rbx
; [41] writeln('fpc_finalize');
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld17]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rsi
		call	fpc_writeln_end
; [43] case PTypeKind(typeinfo)^ of
		mov	eax,dword [rbx]
		cmp	eax,14
		jb	..@j528
		sub	eax,14
		jne	..@j528
; [44] tkInterface: writeln('decrease refcount of interfaced object');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld18]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
..@j528:
; [46] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c221:

SECTION .text
	GLOBAL fpc_addref
fpc_addref:
	GLOBAL FPC_ADDREF
FPC_ADDREF:
..@c223:
; [49] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c225:
		mov	rax,rcx
; Var data located in register rax
; Var typeinfo located in register rdx
; [50] writeln('fpc_addref');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld19]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [51] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c224:

SECTION .text
	GLOBAL fpc_decref
fpc_decref:
	GLOBAL FPC_DECREF
FPC_DECREF:
..@c226:
; [54] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c228:
		mov	rax,rcx
; Var data located in register rax
; Var typeinfo located in register rdx
; [55] writeln('fpc_decref');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld20]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [56] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c227:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c229:
; Var $result located in register rax
; [io.inc]
; [85] begin
; Var $result located in register rax
; [86] result := nil;
		xor	eax,eax
; [87] end;
		ret
..@c230:

SECTION .text
	GLOBAL fpc_get_output
fpc_get_output:
..@c231:
; Var $result located in register rax
; [90] begin
; Var $result located in register rax
; [91] result := nil;
		xor	eax,eax
; [92] end;
		ret
..@c232:

SECTION .text
	GLOBAL fpc_write_end
fpc_write_end:
..@c233:
; [95] begin
		mov	rax,rcx
; Var f located in register rax
; [96] end;
		ret
..@c234:

SECTION .text
SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000262:
..@c235:
; [104] end;
		push	rbp
..@c237:
..@c238:
		mov	rbp,rcx
..@c239:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [101] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c236:

SECTION .text
	GLOBAL fpc_writeln_end
fpc_writeln_end:
..@c240:
		push	rbp
..@c242:
..@c243:
		mov	rbp,rsp
..@c244:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	rax,rcx
; Var f located in register rax
		mov	qword [rbp-8],0
..@j548:
		nop
..@j544:
; [102] s := LineEnding;
		lea	rcx,[rbp-8]
		lea	rdx,[..@d21]
		call	fpc_ansistr_assign
; [103] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j549
		mov	r8,qword [r8-8]
..@j549:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j546:
		nop
..@j545:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_writeln_end$TEXT_$$_fin$00000262
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c241:

SECTION .text
	GLOBAL fpc_write_text_char
fpc_write_text_char:
	GLOBAL FPC_WRITE_TEXT_CHAR
FPC_WRITE_TEXT_CHAR:
..@c245:
; [107] begin
		lea	rsp,[rsp-56]
..@c247:
; Var c located at rsp+40, size=OS_8
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	byte [rsp+40],r8b
; [108] WriteConsoleA(StdOut, @c, 1, nil, nil);
		mov	qword [rsp+32],0
		lea	rdx,[rsp+40]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		mov	r8d,1
		call	_$dll$kernel32$WriteConsoleA
; [109] end;
		nop
		lea	rsp,[rsp+56]
		ret
..@c246:

SECTION .text
	GLOBAL fpc_write_text_widechar
fpc_write_text_widechar:
..@c248:
; [112] begin
		lea	rsp,[rsp-56]
..@c250:
; Var c located at rsp+40, size=OS_16
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	word [rsp+40],r8w
; [113] WriteConsoleW(StdOut, @c, 1, nil, nil);
		mov	qword [rsp+32],0
		lea	rdx,[rsp+40]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		mov	r8d,1
		call	_$dll$kernel32$WriteConsoleW
; [114] end;
		nop
		lea	rsp,[rsp+56]
		ret
..@c249:

SECTION .text
	GLOBAL fpc_write_text_shortstr
fpc_write_text_shortstr:
	GLOBAL FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
..@c251:
; [117] begin
		lea	rsp,[rsp-40]
..@c253:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rax,r8
; Var s located in register rax
; [118] WriteConsoleA(StdOut, @s[1], ord(s[0]), nil, nil);
		mov	qword [rsp+32],0
		movzx	r8d,byte [rax]
		lea	rdx,[rax+1]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
; [119] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c252:

SECTION .text
	GLOBAL fpc_write_text_ansistr
fpc_write_text_ansistr:
	GLOBAL FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
..@c254:
; [127] begin
		lea	rsp,[rsp-40]
..@c256:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [128] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j558
		mov	r8,qword [r8-8]
..@j558:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
; [129] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c255:

SECTION .text
	GLOBAL fpc_write_text_widestr
fpc_write_text_widestr:
..@c257:
; [132] begin
		lea	rsp,[rsp-40]
..@c259:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [133] if pointer(s) = nil then exit;
		test	r8,r8
		je	..@j559
; [134] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j563
		mov	r8d,dword [r8-4]
		shr	r8,1
..@j563:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleW
..@j559:
; [135] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c258:

SECTION .text
	GLOBAL fpc_write_text_unicodestr
fpc_write_text_unicodestr:
..@c260:
; [138] begin
		lea	rsp,[rsp-40]
..@c262:
		mov	eax,ecx
; Var len located in register eax
; Var f located in register rdx
		mov	rdx,r8
; Var s located in register rdx
; [139] if pointer(s) = nil then exit;
		test	r8,r8
		je	..@j564
; [140] WriteConsoleW(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,rdx
		test	rdx,rdx
		je	..@j568
		mov	r8,qword [r8-8]
..@j568:
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleW
..@j564:
; [141] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c261:

SECTION .text
	GLOBAL fpc_read_end
fpc_read_end:
	GLOBAL FPC_READ_END
FPC_READ_END:
..@c263:
; [144] begin
		mov	rax,rcx
; Var f located in register rax
; [145] end;
		ret
..@c264:

SECTION .text
SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000263:
..@c265:
; [152] end;
		push	rbp
..@c267:
..@c268:
		mov	rbp,rcx
..@c269:
		lea	rsp,[rsp-32]
; [150] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c266:

SECTION .text
SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING:
..@c270:
		push	rbp
..@c272:
..@c273:
		mov	rbp,rsp
..@c274:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
; Var d located at rbp-12, size=OS_32
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j579:
		nop
..@j575:
; [151] WriteConsoleA(StdOut, @s[1], length(s), @d, nil);
		mov	qword [rsp+32],0
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j580
		mov	rax,qword [rax-8]
..@j580:
		mov	r8d,eax
		lea	r9,[rbp-12]
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		call	_$dll$kernel32$WriteConsoleA
..@j577:
		nop
..@j576:
		mov	rcx,rbp
		call	SYSTEM$_$INT_WRITE_TO_CONSOLE$ANSISTRING_$$_fin$00000263
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c271:

SECTION .text
SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000265:
..@c275:
; [171] end;
		push	rbp
..@c277:
..@c278:
		mov	rbp,rcx
..@c279:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
; [159] begin
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c276:

SECTION .text
SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING:
..@c280:
; Temps allocated between rbp-32 and rbp-16
		push	rbp
..@c282:
..@c283:
		mov	rbp,rsp
..@c284:
		lea	rsp,[rsp-80]
		mov	qword [rbp-32],rbx
; Var c located at rbp-4, size=OS_8
; Var d located at rbp-8, size=OS_32
; Var s located at rbp-16, size=OS_64
		mov	rbx,rcx
; Var r located in register rbx
		mov	qword [rbx],0
		mov	qword [rbp-16],0
		mov	qword [rbp-24],0
..@j589:
		nop
..@j585:
; [160] s := '';
		lea	rcx,[rbp-16]
		xor	edx,edx
		call	fpc_ansistr_assign
..@j590:
; [162] ReadConsoleA(StdIn, @c, 1, @d, nil);
		mov	qword [rsp+32],0
		lea	r9,[rbp-8]
		lea	rdx,[rbp-4]
		mov	rcx,qword [U_$SYSTEM_$$_STDIN]
		mov	r8d,1
		call	_$dll$kernel32$ReadConsoleA
; [163] if c = #13 then begin
		cmp	byte [rbp-4],13
		je	..@j592
; [167] s := s + c;
		movzx	edx,byte [rbp-4]
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbp-16]
		lea	rcx,[rbp-16]
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [161] while true do begin
		jmp	..@j590
..@j592:
; [169] r := s;
		mov	rcx,rbx
		mov	rdx,qword [rbp-16]
		call	fpc_ansistr_assign
; [170] int_write_to_console(#13#10);
		lea	rcx,[..@d21]
		call	SYSTEM_$$_INT_WRITE_TO_CONSOLE$ANSISTRING
..@j587:
		nop
..@j586:
		mov	rcx,rbp
		call	SYSTEM$_$INT_READ_FROM_CONSOLE$ANSISTRING_$$_fin$00000265
		mov	rbx,qword [rbp-32]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c281:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c285:
; [174] begin
		mov	rax,rcx
; Var f located in register rax
; [181] end;
		ret
..@c286:

SECTION .text
SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000269:
..@c287:
; [189] end;
		push	rbp
..@c289:
..@c290:
		mov	rbp,rcx
..@c291:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [186] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c288:

SECTION .text
	GLOBAL fpc_read_text_shortstr
fpc_read_text_shortstr:
	GLOBAL FPC_READ_TEXT_SHORTSTR
FPC_READ_TEXT_SHORTSTR:
..@c292:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c294:
..@c295:
		mov	rbp,rsp
..@c296:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
; Var t located at rbp-8, size=OS_64
		mov	rax,rcx
; Var f located in register rax
		mov	rbx,rdx
; Var s located in register rbx
; Var cp located in register r8d
		mov	qword [rbp-8],0
..@j605:
		nop
..@j601:
; [187] int_read_from_console(t);
		lea	rsi,[rbp-8]
		mov	rcx,rsi
		call	fpc_ansistr_decr_ref
		mov	rcx,rsi
		call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
; [188] s := t;
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_to_shortstr
..@j603:
		nop
..@j602:
		mov	rcx,rbp
		call	SYSTEM$_$FPC_READ_TEXT_SHORTSTR$TEXT$SHORTSTRING$LONGWORD_$$_fin$00000269
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c293:

SECTION .text
SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000026B:
..@c297:
; [197] end;
		push	rbp
..@c299:
..@c300:
		mov	rbp,rcx
..@c301:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [194] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c298:

SECTION .text
	GLOBAL fpc_read_text_ansistr
fpc_read_text_ansistr:
	GLOBAL FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
..@c302:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c304:
..@c305:
		mov	rbp,rsp
..@c306:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
; Var t located at rbp-8, size=OS_64
		mov	rax,rcx
; Var f located in register rax
		mov	rbx,rdx
; Var s located in register rbx
; Var cp located in register r8d
		mov	qword [rbx],0
		mov	qword [rbp-8],0
..@j614:
		nop
..@j610:
; [195] int_read_from_console(t);
		lea	rsi,[rbp-8]
		mov	rcx,rsi
		call	fpc_ansistr_decr_ref
		mov	rcx,rsi
		call	SYSTEM_$$_INT_READ_FROM_CONSOLE$ANSISTRING
; [196] s := t;
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j612:
		nop
..@j611:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_read_text_ansistr$TEXT$RAWBYTESTRING$LONGWORD_$$_fin$0000026B
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c303:

SECTION .text
SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000026C:
..@c307:
; [205] end;
		push	rbp
..@c309:
..@c310:
		mov	rbp,rcx
..@c311:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [202] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c308:

SECTION .text
	GLOBAL fpc_write_text_sint
fpc_write_text_sint:
..@c312:
		push	rbp
..@c314:
..@c315:
		mov	rbp,rsp
..@c316:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var l located in register rcx
		mov	qword [rbp-8],0
..@j623:
		nop
..@j619:
; [203] s := itoa(l);
		mov	edx,10
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_pchar_to_ansistr
; [204] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j624
		mov	r8,qword [r8-8]
..@j624:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j621:
		nop
..@j620:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_sint$LONGINT$TEXT$INT64_$$_fin$0000026C
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c313:

SECTION .text
SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000026D:
..@c317:
; [213] end;
		push	rbp
..@c319:
..@c320:
		mov	rbp,rcx
..@c321:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [210] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c318:

SECTION .text
	GLOBAL fpc_write_text_uint
fpc_write_text_uint:
..@c322:
		push	rbp
..@c324:
..@c325:
		mov	rbp,rsp
..@c326:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var l located in register rcx
		mov	qword [rbp-8],0
..@j633:
		nop
..@j629:
; [211] s := itoa(l);
		mov	edx,10
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_pchar_to_ansistr
; [212] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j634
		mov	r8,qword [r8-8]
..@j634:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j631:
		nop
..@j630:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_uint$LONGINT$TEXT$QWORD_$$_fin$0000026D
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c323:

SECTION .text
SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$0000026E:
..@c327:
; [223] end;
		push	rbp
..@c329:
..@c330:
		mov	rbp,rcx
..@c331:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [220] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c328:

SECTION .text
	GLOBAL fpc_write_text_qword
fpc_write_text_qword:
..@c332:
		push	rbp
..@c334:
..@c335:
		mov	rbp,rsp
..@c336:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
		mov	rcx,r8
; Var q located in register rcx
		mov	qword [rbp-8],0
..@j643:
		nop
..@j639:
; [221] s := itoa(q); // @@todo: itoa64 / signed / unsigned
		mov	edx,10
		call	SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
		mov	rdx,rax
		lea	rcx,[rbp-8]
		xor	r8d,r8d
		call	fpc_pchar_to_ansistr
; [222] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j644
		mov	r8,qword [r8-8]
..@j644:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j641:
		nop
..@j640:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_qword$LONGINT$TEXT$QWORD_$$_fin$0000026E
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c333:

SECTION .text
SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000026F:
..@c337:
; [232] end;
		push	rbp
..@c339:
..@c340:
		mov	rbp,rcx
..@c341:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
; [228] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c338:

SECTION .text
	GLOBAL fpc_write_text_boolean
fpc_write_text_boolean:
..@c342:
		push	rbp
..@c344:
..@c345:
		mov	rbp,rsp
..@c346:
		lea	rsp,[rsp-64]
; Var s located at rbp-8, size=OS_64
		mov	eax,ecx
; Var len located in register eax
; Var t located in register rdx
; Var b located in register r8b
		mov	qword [rbp-8],0
..@j653:
		nop
..@j649:
; [230] if b then s := 'TRUE' else s := 'FALSE';
		test	r8b,r8b
		je	..@j655
		lea	rcx,[rbp-8]
		lea	rdx,[..@d22]
		call	fpc_ansistr_assign
		jmp	..@j656
..@j655:
		lea	rcx,[rbp-8]
		lea	rdx,[..@d23]
		call	fpc_ansistr_assign
..@j656:
; [231] WriteConsoleA(StdOut, @s[1], length(s), nil, nil);
		mov	qword [rsp+32],0
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j657
		mov	r8,qword [r8-8]
..@j657:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_STDOUT]
		xor	r9,r9
		call	_$dll$kernel32$WriteConsoleA
..@j651:
		nop
..@j650:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_write_text_boolean$LONGINT$TEXT$BOOLEAN_$$_fin$0000026F
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c343:

SECTION .text
	GLOBAL fpc_shortstr_setlength
fpc_shortstr_setlength:
	GLOBAL FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
..@c347:
; [strings.inc]
; [102] begin
		mov	rax,rcx
; Var s located in register rax
; Var len located in register rdx
; [103] if len > 255 then len := 255;
		cmp	rdx,255
		jng	..@j661
		mov	edx,255
..@j661:
; [104] s[0] := chr(len);
		mov	byte [rax],dl
; [105] end;
		ret
..@c348:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING:
..@c349:
; [111] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c351:
; Var len located in register eax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; Var cp located in register r8d
; [112] len := length(s2);
		movzx	edi,byte [rsi]
; Var len located in register edi
; [113] setlength(result, len);
		movsxd	rdx,edi
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [114] move(s2[1], result[1], len);
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		movsxd	r8,edi
		lea	rcx,[rsi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [115] end;
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c350:

SECTION .text
	GLOBAL fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
..@c352:
; [117] begin
		lea	rsp,[rsp-40]
..@c354:
; Var $result located in register rax
; Var s2 located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; [118] result := fpcshortstrtoansistr(s2,cp);
		call	SYSTEM_$$_FPCSHORTSTRTOANSISTR$SHORTSTRING$LONGWORD$$RAWBYTESTRING
; [119] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c353:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING:
..@c355:
; [133] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c357:
; Var l located in register eax
		mov	rbx,rcx
; Var res located in register rbx
		mov	rsi,rdx
; Var sstr located in register rsi
; [134] l := pbyte(@sstr[0])^;
		mov	rax,rsi
		movzx	edi,byte [rax]
; Var l located in register edi
; [135] setlength(res, l);
		mov	edx,edi
		mov	rcx,rbx
		call	fpc_shortstr_setlength
; [136] move(sstr[1], res[1], l);
		mov	r8d,edi
		lea	rdx,[rbx+1]
		lea	rcx,[rsi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [137] end;
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c356:

SECTION .text
	GLOBAL fpc_shortstr_to_shortstr
fpc_shortstr_to_shortstr:
	GLOBAL FPC_SHORTSTR_TO_SHORTSTR
FPC_SHORTSTR_TO_SHORTSTR:
..@c358:
; [139] begin
		lea	rsp,[rsp-40]
..@c360:
; Var res located in register rax
; Var sstr located in register rdx
; [140] fpc_shortstr_toshortstr(res, sstr);
		call	SYSTEM_$$_FPC_SHORTSTR_TOSHORTSTR$SHORTSTRING$SHORTSTRING
; [141] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c359:

SECTION .text
	GLOBAL fpc_val_sint_shortstr
fpc_val_sint_shortstr:
	GLOBAL FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
..@c361:
; [152] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c363:
; Var $result located in register rdx
; Var destsize located in register rcx
; Var s located in register rdx
; Var code located in register r8
; [153] writeln('fpc_val_sint_shortstr');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld24]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [154] end;
		mov	rax,rdx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c362:

SECTION .text
	GLOBAL fpc_shortstr_sint
fpc_shortstr_sint:
	GLOBAL FPC_SHORTSTR_SINT
FPC_SHORTSTR_SINT:
..@c364:
; [157] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c366:
		mov	rax,rcx
; Var v located in register rax
; Var len located in register rdx
; Var s located in register r8
; [158] writeln('fpc_shortstr_sint');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld25]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [159] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c365:

SECTION .text
	GLOBAL fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
	GLOBAL FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
..@c367:
; [162] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c369:
		mov	rbx,rcx
; Var res located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [163] setlength(res, length(s2));
		test	rdx,rdx
		je	..@j676
		mov	rdx,qword [rdx-8]
..@j676:
		mov	rcx,rbx
		call	fpc_shortstr_setlength
; [164] move(s2[1], res[1], length(s2));
		mov	r8,rsi
		test	rsi,rsi
		je	..@j677
		mov	r8,qword [r8-8]
..@j677:
		lea	rdx,[rbx+1]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [165] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c368:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING:
..@c370:
; [171] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		push	r14
		lea	rsp,[rsp-40]
..@c372:
; Var len located in register eax
; Var cap located in register eax
; Var m located in register r14d
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s1 located in register rsi
		mov	rdi,r8
; Var s2 located in register rdi
; Var len located in register eax
; [172] len := 0;
		xor	eax,eax
; Var cap located in register r12d
; [173] cap := 255;
		mov	r12d,255
; [175] move(s1[1], dests[1], length(s1));
		movzx	r8d,byte [rsi]
		lea	rdx,[rbx+1]
		lea	rcx,[rsi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [176] len := length(s1);
		movzx	r13d,byte [rsi]
; Var len located in register r13d
; [178] dec(cap, length(s1));
		movzx	eax,byte [rsi]
		sub	r12d,eax
; [179] if cap > 0 then begin
		test	r12d,r12d
		jng	..@j681
; [181] m := length(s2);
		movzx	r14d,byte [rdi]
; [182] if m > cap then m := cap;
		cmp	r12d,r14d
		cmovl	r14d,r12d
; [183] move(s2[1], dests[length(s1)+1], m);
		movzx	eax,byte [rsi]
		inc	eax
		movzx	eax,al
		lea	rdx,[rbx+rax*1]
		movsxd	r8,r14d
		lea	rcx,[rdi+1]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [184] inc(len, m);
		add	r13d,r14d
..@j681:
; [187] dests[0] := chr(len);
		mov	byte [rbx],r13b
; [188] end;
		nop
		lea	rsp,[rsp+40]
		pop	r14
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c371:

SECTION .text
	GLOBAL fpc_shortstr_concat
fpc_shortstr_concat:
..@c373:
; [190] begin
		lea	rsp,[rsp-40]
..@c375:
; Var dests located in register rax
; Var s1 located in register rdx
; Var s2 located in register r8
; [191] fpcshortstrconcat(dests, s1, s2);
		call	SYSTEM_$$_FPCSHORTSTRCONCAT$SHORTSTRING$SHORTSTRING$SHORTSTRING
; [192] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c374:

SECTION .text
	GLOBAL SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING:
..@c376:
; [204] begin
		lea	rsp,[rsp-40]
..@c378:
		mov	rax,rcx
; Var $result located in register rax
; Var s located in register rdx
		mov	rcx,r8
; Var index located in register rcx
		mov	r8,r9
; Var count located in register r8
; [205] if count < 0 then count := 0;
		test	r8,r8
		jnl	..@j689
		xor	r8,r8
..@j689:
; [206] if index > 1 then dec(index) else index := 0;
		cmp	rcx,1
		jng	..@j691
		dec	rcx
		jmp	..@j692
..@j691:
		xor	ecx,ecx
..@j692:
; [207] if index > length(s) then
		movzx	r9d,byte [rdx]
		cmp	r9,rcx
		jnl	..@j694
; [208] count := 0
		xor	r8,r8
		jmp	..@j695
..@j694:
; [209] else if count > length(s)-index then
		movzx	r9d,byte [rdx]
		sub	r9,rcx
		cmp	r9,r8
		jnl	..@j697
; [210] count := length(s)-index;
		movzx	r9d,byte [rdx]
		sub	r9,rcx
		mov	r8,r9
..@j697:
..@j695:
; [211] result[0] := chr(count);
		mov	byte [rax],r8b
; [212] move(s[index+1], result[1], count);
		inc	rcx
		movzx	ecx,cl
		add	rcx,rdx
		lea	rdx,[rax+1]
; Var count located in register r8
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [213] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c377:

SECTION .text
	GLOBAL fpc_shortstr_copy
fpc_shortstr_copy:
..@c379:
; [215] begin
		lea	rsp,[rsp-40]
..@c381:
; Var $result located in register rax
; Var s located in register rdx
; Var index located in register r8
; Var count located in register r9
; Var count located in register r9
; Var index located in register r8
; [216] result := fpcshortstrcopy(s, index, count);
		call	SYSTEM_$$_FPCSHORTSTRCOPY$SHORTSTRING$INT64$INT64$$SHORTSTRING
; [217] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c380:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER:
..@c382:
; [229] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c384:
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [230] if dests = s2 then exit;
		cmp	rsi,qword [rbx]
		je	..@j700
; [231] if s2 <> nil then
		test	rsi,rsi
		je	..@j705
; [232] if PAnsiRec(s2-AnsiFirstOff)^.Ref > 0 then
		cmp	qword [rsi-16],0
		jng	..@j707
; [234] inc(PAnsiRec(s2-AnsiFirstOff)^.Ref);
		inc	qword [rsi-16]
..@j707:
..@j705:
; [236] fpc_ansistr_decr_ref(dests);
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
; Var s2 located in register rsi
; [238] dests := s2;
		mov	qword [rbx],rsi
..@j700:
; [239] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c383:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c385:
; [241] begin
		lea	rsp,[rsp-40]
..@c387:
; Var dests located in register rax
; Var s2 located in register rdx
; Var s2 located in register rdx
; [242] fpcansistrassign(dests, s2);
		call	SYSTEM_$$_FPCANSISTRASSIGN$POINTER$POINTER
; [243] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c386:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD:
..@c388:
; [258] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-48]
..@c390:
; Var Temp located at rsp+32, size=OS_64
; Var lens located in register rdi
; Var lena located in register rax
		mov	rbx,rcx
; Var S located in register rbx
		mov	rsi,rdx
; Var l located in register rsi
		mov	edi,r8d
; Var cp located in register edi
; [259] if (l > 0) then begin
		test	rsi,rsi
		jng	..@j713
; [260] if Pointer(S) = nil then begin
		cmp	qword [rbx],0
		jne	..@j715
; [261] Pointer(S) := new_ansistring(L);
		mov	rcx,rsi
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [263] cp := 0;
		xor	edi,edi
; [264] PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage := cp;
		mov	rax,qword [rbx]
		mov	dword [rax-32],0
		jmp	..@j716
..@j715:
; [265] end else if PAnsiRec(Pointer(S) - AnsiFirstOff)^.Ref = 1 then begin
		mov	rax,qword [rbx]
		cmp	qword [rax-16],1
		jne	..@j718
; [266] Temp := Pointer(s) - AnsiFirstOff;
		mov	rax,qword [rbx]
		sub	rax,32
		mov	qword [rsp+32],rax
; [268] lens := 4;
		mov	edi,4
; [269] lena := AnsiFirstOff + L + sizeof(ansichar);
		lea	rax,[rsi+32]
		inc	rax
; [271] if (lena > lens) or ((lens > 32) and (lena <= SizeInt(SizeUint(lens) div 2))) then pointer(s) := xreallocmem(temp, 4) + AnsiFirstOff;
		cmp	rax,4
		jng	..@j721
		lea	rcx,[rsp+32]
		mov	edx,4
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
		add	rax,32
		mov	qword [rbx],rax
		jmp	..@j721
..@j718:
; [274] Temp := new_ansistring(4);
		mov	ecx,4
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rsp+32],rax
; [275] PAnsiRec(Pointer(Temp) - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
		mov	rax,qword [rbx]
		mov	rdx,qword [rsp+32]
		mov	eax,dword [rax-32]
		mov	dword [rdx-32],eax
; [278] lens := PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len + 1;
		mov	rax,qword [rbx]
		mov	rax,qword [rax-8]
		inc	rax
		mov	rdi,rax
; [279] if l < lens then lens := l;
		cmp	rdi,rsi
		cmovg	rdi,rsi
; [280] Move(Pointer(S)^, Temp^, lens);
		mov	rcx,qword [rbx]
		mov	rdx,qword [rsp+32]
		mov	r8,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [281] fpc_ansistr_decr_ref(Pointer(s));
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
; [282] Pointer(S) := Temp;
		mov	rax,qword [rsp+32]
		mov	qword [rbx],rax
..@j721:
..@j716:
; [285] pbyte(Pointer(S) + l)^ := 0;
		mov	rax,qword [rbx]
		add	rax,rsi
		mov	byte [rax],0
; [286] PAnsiRec(Pointer(S) - AnsiFirstOff)^.Len := l;
		mov	rax,qword [rbx]
		mov	qword [rax-8],rsi
		jmp	..@j724
..@j713:
; [288] fpc_ansistr_decr_ref(Pointer(S));
		mov	rcx,rbx
		call	fpc_ansistr_decr_ref
..@j724:
; [289] end;
		nop
		lea	rsp,[rsp+48]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c389:

SECTION .text
	GLOBAL fpc_ansistr_setlength
fpc_ansistr_setlength:
	GLOBAL FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
..@c391:
; [291] begin
		lea	rsp,[rsp-40]
..@c393:
; Var s located in register rax
; Var l located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; Var l located in register rdx
; [292] fpcansistrsetlength(S, l, cp);
		call	SYSTEM_$$_FPCANSISTRSETLENGTH$RAWBYTESTRING$INT64$LONGWORD
; [293] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c392:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRDECRREF$POINTER
SYSTEM_$$_FPCANSISTRDECRREF$POINTER:
..@c394:
; [307] begin
		lea	rsp,[rsp-40]
..@c396:
; Var p located in register rax
		mov	rax,rcx
; Var s located in register rax
; [308] if s = nil then exit;
		cmp	qword [rax],0
		je	..@j727
; [309] p := PAnsiRec(s-AnsiFirstOff);
		mov	rdx,qword [rax]
		lea	rcx,[rdx-32]
; Var p located in register rcx
; [310] s := nil;
		mov	qword [rax],0
; [311] if p^.ref < 0 then exit;
		cmp	qword [rcx+16],0
		jl	..@j727
; Var p located in register rcx
; [315] dec(p^.Ref);
		dec	qword [rcx+16]
; [316] if p^.Ref <= 0 then FreeMem(p);
		cmp	qword [rcx+16],0
		jnle	..@j734
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j734:
..@j727:
; [317] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c395:

SECTION .text
	GLOBAL fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
	GLOBAL FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
..@c397:
; [319] begin
		lea	rsp,[rsp-40]
..@c399:
; Var s located in register rax
; [320] fpcansistrdecrref(s);
		call	SYSTEM_$$_FPCANSISTRDECRREF$POINTER
; [321] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c398:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRINCRREF$POINTER
SYSTEM_$$_FPCANSISTRINCRREF$POINTER:
..@c400:
; [336] begin
		mov	rax,rcx
; Var s located in register rax
; [337] if s = nil then exit;
		test	rcx,rcx
		je	..@j737
; [338] if PAnsiRec(s-AnsiFirstOff)^.Ref < 0 then exit;
		cmp	qword [rax-16],0
		jl	..@j737
; Var s located in register rax
; [340] inc(PAnsiRec(s-AnsiFirstOff)^.Ref);
		inc	qword [rax-16]
..@j737:
; [342] end;
		ret
..@c401:

SECTION .text
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
..@c402:
; [344] begin
		lea	rsp,[rsp-40]
..@c404:
; Var s located in register rax
; Var s located in register rcx
; [345] fpcansistrincrref(s);
		call	SYSTEM_$$_FPCANSISTRINCRREF$POINTER
; [346] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c403:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD:
..@c405:
; [358] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c407:
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s1 located in register rsi
		mov	rdi,r8
; Var s2 located in register rdi
; Var cp located in register r9d
; [359] pointer(dests) := new_ansistring(length(s1)+length(s2));
		mov	rax,rsi
		test	rsi,rsi
		je	..@j747
		mov	rax,qword [rax-8]
..@j747:
		mov	rdx,rdi
		test	rdi,rdi
		je	..@j748
		mov	rdx,qword [rdx-8]
..@j748:
		lea	rcx,[rax+rdx]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [360] move(s1[1], dests[1], length(s1));
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8,rsi
		test	rsi,rsi
		je	..@j749
		mov	r8,qword [r8-8]
..@j749:
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [361] move(s2[1], dests[length(s1)+1], length(s2));
		mov	rcx,rbx
		call	fpc_ansistr_unique
		test	rsi,rsi
		je	..@j750
		mov	rsi,qword [rsi-8]
..@j750:
		lea	rdx,[rsi+1]
		lea	rdx,[rax+rdx*1-1]
		mov	r8,rdi
		test	rdi,rdi
		je	..@j751
		mov	r8,qword [r8-8]
..@j751:
		mov	rcx,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [362] end;
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c406:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c408:
; [364] begin
		lea	rsp,[rsp-40]
..@c410:
; Var dests located in register rax
; Var s1 located in register rdx
; Var s2 located in register r8
; Var cp located in register r9d
; Var cp located in register r9d
; Var s2 located in register r8
; Var s1 located in register rdx
; [365] fpcansistrconcat(dests, s1, s2, cp);
		call	SYSTEM_$$_FPCANSISTRCONCAT$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$LONGWORD
; [366] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c409:

SECTION .text
	GLOBAL fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
..@c411:
; Temps allocated between rbp-8 and rbp+0
; [377] begin
		push	rbp
..@c413:
..@c414:
		mov	rbp,rsp
..@c415:
		lea	rsp,[rsp-48]
		mov	qword [rbp-8],rbx
		mov	rax,rcx
; Var dests located in register rax
; Var sarr located in register rdx
; Var $highSARR located in register r8
; Var cp located in register r9d
; [378] writeln('fpc_ansistr_concat_multi');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld26]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [379] end;
		mov	rbx,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c412:

SECTION .text
	GLOBAL SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER:
..@c416:
; [386] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c418:
; Var $result located in register rax
; Var SNew located in register rax
; Var L located in register rax
		mov	rbx,rcx
; Var S located in register rbx
; [387] L := PAnsiRec(Pointer(S) - AnsiFirstOff)^.len;
		mov	rax,qword [rbx]
; Var L located in register rsi
		mov	rsi,qword [rax-8]
; Var L located in register rsi
; [388] SNew := new_ansistring(L);
		mov	rcx,rsi
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	rdi,rax
; Var SNew located in register rdi
; [389] Move(Pointer(S)^, SNew^, L + 1);
		mov	rcx,qword [rbx]
		lea	r8,[rsi+1]
; Var SNew located in register rdi
		mov	rdx,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [390] PAnsiRec(SNew - AnsiFirstOff)^.len := L;
		mov	rax,rdi
; Var SNew located in register rax
; Var L located in register rsi
		mov	qword [rax-8],rsi
; [391] PAnsiRec(SNew - AnsiFirstOff)^.CodePage := PAnsiRec(Pointer(S) - AnsiFirstOff)^.CodePage;
		mov	rdx,qword [rbx]
; Var SNew located in register rax
		mov	edx,dword [rdx-32]
		mov	dword [rax-32],edx
; Var SNew located in register rax
; [393] pointer(S) := SNew;
		mov	qword [rbx],rax
; Var $result located in register rax
; Var SNew located in register rax
; [395] end;
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c417:

SECTION .text
SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
..@c419:
; [397] begin
		lea	rsp,[rsp-40]
..@c421:
; Var $result located in register rax
; Var S located in register rcx
; [398] result := fpctruelyansistrunique(s);
		call	SYSTEM_$$_FPCTRUELYANSISTRUNIQUE$POINTER$$POINTER
; Var $result located in register rax
; [399] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c420:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
	GLOBAL FPC_ANSISTR_UNIQUE
FPC_ANSISTR_UNIQUE:
..@c422:
; [410] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c424:
; Var $result located in register rax
; Var s located in register rcx
; Var $result located in register rbx
; [411] pointer(result) := pointer(s);
		mov	rbx,qword [rcx]
; [412] if (result <> nil) and (PAnsiRec(result - AnsiFirstOff)^.Ref <> 1) then result := fpc_truely_ansistr_unique(s);
		test	rbx,rbx
		je	..@j763
		cmp	qword [rbx-16],1
		je	..@j763
		call	SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
		mov	rbx,rax
..@j763:
; [413] end;
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c423:

SECTION .text
	GLOBAL fpc_ansistr_sint
fpc_ansistr_sint:
	GLOBAL FPC_ANSISTR_VALSINT
FPC_ANSISTR_VALSINT:
..@c425:
; [416] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c427:
		mov	rax,rcx
; Var v located in register rax
; Var len located in register rdx
; Var s located in register r8
; Var cp located in register r9d
		mov	qword [r8],0
; [417] writeln('fpc_ansistr_sint');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld27]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [418] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c426:

SECTION .text
	GLOBAL SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING:
..@c428:
; [422] begin
		push	rbx
		lea	rsp,[rsp-48]
..@c430:
; Var c located at rsp+32, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
		mov	byte [rsp+32],dl
; Var cp located in register r8d
; [423] pointer(result) := new_ansistring(1);
		mov	ecx,1
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [424] move(c, result[1], 1);
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		lea	rcx,[rsp+32]
		mov	r8d,1
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [425] end;
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c429:

SECTION .text
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c431:
; [427] begin
		lea	rsp,[rsp-40]
..@c433:
; Var $result located in register rax
; Var c located in register dl
; Var cp located in register r8d
; Var cp located in register r8d
; Var c located in register dl
; [428] Exit(fpcchartoansistr(c, cp));
		movzx	edx,dl
		call	SYSTEM_$$_FPCCHARTOANSISTR$CHAR$LONGWORD$$RAWBYTESTRING
; [429] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c432:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64:
..@c434:
; [442] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c436:
; Var $result located in register rbx
; Var s1 located in register rcx
; Var s2 located in register rdx
; [443] if pointer(s1) = pointer(s2) then exit(0);
		cmp	rdx,rcx
		jne	..@j774
		xor	ebx,ebx
		jmp	..@j771
..@j774:
; [444] if (pointer(s1) = nil) or (pointer(s2) = nil) then exit(-1);
		test	rcx,rcx
		je	..@j775
		test	rdx,rdx
		jne	..@j777
..@j775:
		mov	rbx,-1
		jmp	..@j771
..@j777:
; [445] if length(s1) <> length(s2) then exit(-1);
		mov	rax,rcx
		test	rcx,rcx
		je	..@j778
		mov	rax,qword [rax-8]
..@j778:
		mov	r8,rdx
		test	rdx,rdx
		je	..@j779
		mov	r8,qword [r8-8]
..@j779:
		cmp	rax,r8
		je	..@j781
		mov	rbx,-1
		jmp	..@j771
..@j781:
; [446] result := CompareByte(s1[1], s2[1], length(s1));
		mov	r8,rcx
		test	rcx,rcx
		je	..@j782
		mov	r8,qword [r8-8]
..@j782:
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		mov	rbx,rax
..@j771:
; [447] end;
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c435:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c437:
; [449] begin
		lea	rsp,[rsp-40]
..@c439:
; Var $result located in register rax
; Var s1 located in register rcx
; Var s2 located in register rdx
; Var s2 located in register rdx
; Var s1 located in register rcx
; [450] result := fpcansistrcompareequal(s1, s2);
		call	SYSTEM_$$_FPCANSISTRCOMPAREEQUAL$RAWBYTESTRING$RAWBYTESTRING$$INT64
; Var $result located in register rax
; [451] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c438:

SECTION .text
	GLOBAL SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING:
..@c440:
; [465] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c442:
; Var ResultAddress located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
		mov	rdi,r8
; Var index located in register rdi
		mov	r12,r9
; Var size located in register r12
; Var ResultAddress located in register r13
; [466] ResultAddress:=Nil;
		xor	r13,r13
; [467] dec(index);
		dec	rdi
; [468] if Index < 0 then
		test	rdi,rdi
		jnl	..@j788
; [469] Index := 0;
		xor	edi,edi
..@j788:
; [472] if (Size>Length(S)) or
		mov	rax,rsi
		test	rsi,rsi
		je	..@j789
		mov	rax,qword [rax-8]
..@j789:
		cmp	rax,r12
		jl	..@j790
; [473] (Index+Size>Length(S)) then
		lea	rdx,[rdi+r12]
		cmp	rdx,rax
		jng	..@j792
..@j790:
; [474] Size:=Length(S)-Index;
		mov	rax,rsi
		test	rsi,rsi
		je	..@j793
		mov	rax,qword [rax-8]
..@j793:
		sub	rax,rdi
		mov	r12,rax
..@j792:
; [475] If Size>0 then
		test	r12,r12
		jng	..@j795
; [477] ResultAddress:=new_ansistring(size);
		mov	rcx,r12
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	r13,rax
; [478] if ResultAddress<>Nil then
		test	rax,rax
		je	..@j797
; [480] Move(Pointer(Pointer(S)+index)^,ResultAddress^,Size);
		lea	rcx,[rsi+rdi]
		mov	rdx,r13
		mov	r8,r12
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [481] PByte(ResultAddress+Size)^:=0;
		lea	rax,[r12+r13]
		mov	byte [rax],0
; [482] PAnsiRec(ResultAddress-AnsiFirstOff)^.Len:=Size;
		mov	qword [r13-8],r12
; [483] PAnsiRec(ResultAddress-AnsiFirstOff)^.CodePage:=PAnsiRec(Pointer(S)-AnsiFirstOff)^.CodePage;
		mov	eax,dword [rsi-32]
		mov	dword [r13-32],eax
..@j797:
..@j795:
; [486] fpc_ansistr_decr_ref(Pointer(fpcansistrcopy));
		mov	rcx,rbx
		call	FPC_ANSISTR_DECR_REF
; Var ResultAddress located in register r13
; [487] Pointer(fpcansistrCopy):=ResultAddress;
		mov	qword [rbx],r13
; [488] end;
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c441:

SECTION .text
	GLOBAL fpc_ansistr_copy
fpc_ansistr_copy:
..@c443:
; [498] begin
		lea	rsp,[rsp-40]
..@c445:
; Var $result located in register rax
; Var s located in register rdx
; Var index located in register r8
; Var size located in register r9
; Var size located in register r9
; Var index located in register r8
; Var s located in register rdx
; [499] result := fpcansistrcopy(s, index, size);
		call	SYSTEM_$$_FPCANSISTRCOPY$RAWBYTESTRING$INT64$INT64$$RAWBYTESTRING
; [500] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c444:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER:
..@c446:
; [512] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c448:
		mov	rbx,rcx
; Var s1 located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [513] if s1 = s2 then exit;
		cmp	rsi,qword [rbx]
		je	..@j800
; [514] if s2 <> nil then begin
		test	rsi,rsi
		je	..@j805
; [515] setlength(widestring(s1), length(widestring(s2)));
		mov	rdx,rsi
		test	rsi,rsi
		je	..@j806
		mov	edx,dword [rdx-4]
		shr	rdx,1
..@j806:
		mov	rcx,rbx
		call	fpc_widestr_setlength
; [516] move(s2^, s1^, length(widestring(s1))+1*sizeof(WideChar));
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j807
		mov	eax,dword [rax-4]
		shr	rax,1
..@j807:
		lea	r8,[rax+2]
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
		jmp	..@j808
..@j805:
; [518] fpc_widestr_decr_ref(s1); // will set s1 to nil
		mov	rcx,rbx
		call	fpc_widestr_decr_ref
..@j808:
..@j800:
; [519] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c447:

SECTION .text
	GLOBAL fpc_widestr_assign
fpc_widestr_assign:
	GLOBAL FPC_WIDESTR_ASSIGN
FPC_WIDESTR_ASSIGN:
..@c449:
; [521] begin
		lea	rsp,[rsp-40]
..@c451:
; Var s1 located in register rax
; Var s2 located in register rdx
; Var s2 located in register rdx
; [522] fpcwidestrassign(s1, s2);
		call	SYSTEM_$$_FPCWIDESTRASSIGN$POINTER$POINTER
; [523] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c450:

SECTION .text
	GLOBAL fpc_widestr_setlength
fpc_widestr_setlength:
	GLOBAL FPC_WIDESTR_SETLENGTH
FPC_WIDESTR_SETLENGTH:
..@c452:
; [534] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c454:
		mov	rbx,rcx
; Var s located in register rbx
		mov	rcx,rdx
; Var l located in register rcx
; Var l located in register rcx
; [535] pointer(s) := new_widestring(l);
		call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [536] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c453:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
SYSTEM_$$_FPCWIDESTRDECRREF$POINTER:
..@c455:
; [540] Begin
		push	rbx
		lea	rsp,[rsp-32]
..@c457:
		mov	rbx,rcx
; Var s located in register rbx
; [541] if s = nil then exit;
		cmp	qword [rbx],0
		je	..@j813
; [542] dec(s, WideFirstOff);
		sub	qword [rbx],4
; [543] xfreemem(s);
		mov	rcx,qword [rbx]
		call	_$dll$rtllib$xfreemem
; [544] s := nil;
		mov	qword [rbx],0
..@j813:
; [545] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c456:

SECTION .text
	GLOBAL fpc_widestr_decr_ref
fpc_widestr_decr_ref:
	GLOBAL FPC_WIDESTR_DECR_REF
FPC_WIDESTR_DECR_REF:
..@c458:
; [547] begin
		lea	rsp,[rsp-40]
..@c460:
; Var s located in register rax
; [548] fpcwidestrdecrref(s);
		call	SYSTEM_$$_FPCWIDESTRDECRREF$POINTER
; [549] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c459:

SECTION .text
	GLOBAL SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
SYSTEM_$$_FPCWIDESTRINCRREF$POINTER:
..@c461:
; [566] Begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c463:
; Var p located in register rax
		mov	rbx,rcx
; Var s located in register rbx
; [567] if s = nil then exit;
		cmp	qword [rbx],0
		je	..@j819
; [568] p := new_widestring(length(WideString(s)));
		mov	rcx,qword [rbx]
		test	rcx,rcx
		je	..@j823
		mov	ecx,dword [rcx-4]
		shr	rcx,1
..@j823:
		call	SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
		mov	rsi,rax
; Var p located in register rsi
; [569] move(s^, p^, (length(WideString(s))+1)*sizeof(widechar));
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j824
		mov	eax,dword [rax-4]
		shr	rax,1
..@j824:
		lea	r8,[rax+1]
		shl	r8,1
		mov	rcx,qword [rbx]
; Var p located in register rsi
		mov	rdx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; Var p located in register rsi
; [570] s := p;
		mov	qword [rbx],rsi
..@j819:
; [571] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c462:

SECTION .text
	GLOBAL fpc_widestr_incr_ref
fpc_widestr_incr_ref:
	GLOBAL FPC_WIDESTR_INCR_REF
FPC_WIDESTR_INCR_REF:
..@c464:
; [573] begin
		lea	rsp,[rsp-40]
..@c466:
; Var s located in register rax
; [574] fpcwidestrincrref(s);
		call	SYSTEM_$$_FPCWIDESTRINCRREF$POINTER
; [575] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c465:

SECTION .text
	GLOBAL fpc_pchar_to_shortstr
fpc_pchar_to_shortstr:
	GLOBAL FPC_PCHAR_TO_SHORTSTR
FPC_PCHAR_TO_SHORTSTR:
..@c467:
; [593] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c469:
		mov	rax,rcx
; Var res located in register rax
; Var p located in register rdx
; [594] writeln('fpc_pchar_to_shortstr');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld28]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [595] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c468:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING:
..@c470:
; [601] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c472:
; Var l located in register eax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var p located in register rsi
; Var cp located in register r8d
; Var p located in register rsi
; [602] l := strlen(p);
		mov	rcx,rsi
		call	SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
		mov	edi,eax
; Var l located in register edi
; [603] pointer(result) := new_ansistring(l);
		mov	ecx,edi
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [604] move(p^, result[1], l);
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8d,edi
		mov	rcx,rsi
; Var p located in register rcx
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [605] end;
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c471:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c473:
; [607] begin
		lea	rsp,[rsp-40]
..@c475:
; Var $result located in register rax
; Var p located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; Var p located in register rdx
; [608] result := fpcpchartoansistr(p, cp);
		call	SYSTEM_$$_FPCPCHARTOANSISTR$PANSICHAR$LONGWORD$$RAWBYTESTRING
; [609] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c474:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING:
..@c476:
; [627] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c478:
; Var len located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var p located in register rsi
; [628] result := '';
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_widestr_assign
; [629] if p = nil then exit;
		test	rsi,rsi
		je	..@j833
; Var p located in register rsi
; [630] len := IndexWord(p^, -1, 0);
		mov	rcx,rsi
		xor	r8d,r8d
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	rdi,rax
; Var len located in register rdi
; [631] setlength(result, len);
		mov	rcx,rbx
; Var len located in register rdi
		mov	rdx,rdi
		call	fpc_widestr_setlength
; [632] if len > 0 then move(p^, result[1], len*2);
		test	rdi,rdi
		jng	..@j838
		mov	r8,rdi
		shl	r8,1
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j838:
..@j833:
; [633] end;
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c477:

SECTION .text
	GLOBAL fpc_pwidechar_to_widestr
fpc_pwidechar_to_widestr:
..@c479:
; [635] begin
		lea	rsp,[rsp-40]
..@c481:
; Var $result located in register rax
; Var p located in register rdx
; Var p located in register rdx
; [636] result := fpcpwidechartowidestr(p);
		call	SYSTEM_$$_FPCPWIDECHARTOWIDESTR$PWIDECHAR$$WIDESTRING
; [637] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c480:

SECTION .text
	GLOBAL SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING:
..@c482:
; [651] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c484:
; Var len located in register rax
; Var i located in register r12
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var p located in register rsi
; Var cp located in register r8d
; [652] result := '';
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [653] if p = nil then exit;
		test	rsi,rsi
		je	..@j841
; Var p located in register rsi
; [654] len := IndexWord(p^, -1, 0);
		mov	rcx,rsi
		xor	r8d,r8d
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	rdi,rax
; Var len located in register rdi
; [655] setlength(result, len);
		mov	rcx,rbx
; Var len located in register rdi
		mov	rdx,rdi
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [656] if len > 0 then begin
		test	rdi,rdi
		jng	..@j846
; [657] for i := 0 to len-1 do begin
		dec	rdi
		test	rdi,rdi
		jnge	..@j848
		mov	r12,-1
..@j849:
		inc	r12
; [659] result[1+i] := PAnsiChar(p+i)^;
		mov	rcx,rbx
		call	fpc_ansistr_unique
		lea	rcx,[r12+1]
		mov	rdx,r12
		shl	rdx,1
		add	rdx,rsi
		mov	dl,byte [rdx]
		mov	byte [rax+rcx*1-1],dl
		cmp	rdi,r12
		jnle	..@j849
..@j848:
..@j846:
..@j841:
; [662] end;
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c483:

SECTION .text
	GLOBAL fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
..@c485:
; [664] begin
		lea	rsp,[rsp-40]
..@c487:
; Var $result located in register rax
; Var p located in register rdx
; Var cp located in register r8d
; Var cp located in register r8d
; Var p located in register rdx
; [665] result := fpcpwidechartoansistr(p, cp);
		call	SYSTEM_$$_FPCPWIDECHARTOANSISTR$PWIDECHAR$LONGWORD$$ANSISTRING
; [666] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c486:

SECTION .text
	GLOBAL fpc_uchar_to_ansistr
fpc_uchar_to_ansistr:
..@c488:
; [681] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c490:
		mov	rax,rcx
; Var $result located in register rax
; Var c located in register dx
; Var cp located in register r8d
; [682] writeln('fpc_uchar_to_ansistr');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld29]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [683] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c489:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD:
..@c491:
; Var $result located in register eax
; Var p located in register rcx
; [691] begin
; Var $result located in register eax
; [692] result := 0;
		mov	eax,0
; [693] if p = nil then exit;
		test	rcx,rcx
		jne	..@j861
		ret
; [694] while (p+result)^ <> #0 do inc(result);
		jmp	..@j861
..@j860:
		inc	eax
..@j861:
		mov	edx,eax
		add	rdx,rcx
		cmp	byte [rdx],0
		jne	..@j860
; [695] end;
		ret
..@c492:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$PCHAR$$LONGWORD
SYSTEM_$$_STRLEN$PCHAR$$LONGWORD:
..@c493:
; [697] begin
		lea	rsp,[rsp-40]
..@c495:
; Var $result located in register eax
; Var p located in register rcx
; Var p located in register rcx
; [698] Exit(strlen_(p));
		call	SYSTEM_$$_STRLEN_$PCHAR$$LONGWORD
; Var $result located in register eax
; [699] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c494:

SECTION .text
SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000279:
..@c496:
; [719] end;
		push	rbp
..@c498:
..@c499:
		mov	rbp,rcx
..@c500:
		lea	rsp,[rsp-32]
; [717] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c497:

SECTION .text
	GLOBAL SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD
SYSTEM_$$_STRLEN$ANSISTRING$$LONGWORD:
..@c501:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c503:
..@c504:
		mov	rbp,rsp
..@c505:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var s located at rbp-8, size=OS_64
; Var $result located in register ebx
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j873:
		nop
..@j869:
; [718] result := length(s);
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j874
		mov	rax,qword [rax-8]
..@j874:
		mov	ebx,eax
..@j871:
		nop
..@j870:
		mov	rcx,rbp
		call	SYSTEM$_$STRLEN$ANSISTRING$$LONGWORD_$$_fin$00000279
		mov	eax,ebx
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c502:

SECTION .text
	GLOBAL SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
SYSTEM_$$_NEWANSISTRING$INT64$$POINTER:
..@c506:
; [724] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c508:
; Var $result located in register rax
		mov	rbx,rcx
; Var len located in register rbx
; [725] result := GetMem(len+(AnsiFirstOff+SizeOf(AnsiChar)));
		lea	rcx,[rbx+33]
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
; Var $result located in register rax
; [726] if result = nil then exit;
		test	rax,rax
		je	..@j875
; Var len located in register rbx
; [727] PAnsiRec(result)^.len := len;
		mov	qword [rax+24],rbx
; [728] PAnsiRec(result)^.ref := 1;
		mov	qword [rax+16],1
; [729] PAnsiRec(result)^.codepage := DefaultSystemCodePage;
		mov	dword [rax],1250
; [730] PAnsiRec(result)^.elementsize := SizeOf(AnsiChar);
		mov	word [rax+4],1
; [731] inc(result, AnsiFirstOff);
		add	rax,32
; [732] PAnsiChar(result)^ := #0; // null terminated
		mov	byte [rax],0
..@j875:
; [733] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c507:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER:
..@c509:
; [735] begin
		lea	rsp,[rsp-40]
..@c511:
; Var $result located in register rax
; Var len located in register rcx
; Var len located in register rcx
; [736] result := newansistring(len);
		call	SYSTEM_$$_NEWANSISTRING$INT64$$POINTER
; Var $result located in register rax
; [737] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c510:

SECTION .text
	GLOBAL SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER:
..@c512:
; [750] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c514:
; Var $result located in register rax
		mov	rbx,rcx
; Var len located in register rbx
; [751] result := GetMem(len * sizeof(widechar) + WideRecLen);
		mov	rax,rbx
		shl	rax,1
		lea	rcx,[rax+6]
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
; Var $result located in register rax
; [752] if result = nil then exit;
		test	rax,rax
		je	..@j881
; [753] PWideRec(result)^.Len := len * 2;
		shl	rbx,1
		mov	dword [rax],ebx
; [754] PWideRec(result)^.First := #0;
		mov	word [rax+4],0
; [755] inc(result, WideFirstOff);
		add	rax,4
..@j881:
; [756] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c513:

SECTION .text
	GLOBAL SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER
SYSTEM_$$_NEW_WIDESTRING$INT64$$POINTER:
..@c515:
; [758] begin
		lea	rsp,[rsp-40]
..@c517:
; Var $result located in register rax
; Var len located in register rcx
; Var len located in register rcx
; [759] result := newwidestring(len);
		call	SYSTEM_$$_NEWWIDESTRING$INT64$$POINTER
; Var $result located in register rax
; [760] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c516:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027A:
..@c518:
; [776] end;
		push	rbp
..@c520:
..@c521:
		mov	rbp,rcx
..@c522:
		lea	rsp,[rsp-32]
; [772] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c519:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING:
..@c523:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c525:
..@c526:
		mov	rbp,rsp
..@c527:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var s located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
..@j895:
		nop
..@j891:
; [773] pointer(result) := new_ansistring(length(s));
		mov	rcx,qword [rbp-8]
		test	rcx,rcx
		je	..@j896
		mov	rcx,qword [rcx-8]
..@j896:
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbx],rax
; [774] setlength(result, length(s));
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j897
		mov	rdx,qword [rdx-8]
..@j897:
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_ansistr_setlength
; [775] move(s[1], result[1], length(s));
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	r8,qword [rbp-8]
		test	r8,r8
		je	..@j898
		mov	r8,qword [r8-8]
..@j898:
		mov	rcx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j893:
		nop
..@j892:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027A
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c524:

SECTION .text
SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027C:
..@c528:
; [780] end;
		push	rbp
..@c530:
..@c531:
		mov	rbp,rcx
..@c532:
		lea	rsp,[rsp-32]
; [778] begin
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c529:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING:
..@c533:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c535:
..@c536:
		mov	rbp,rsp
..@c537:
		lea	rsp,[rsp-48]
; Var s located at rbp-8, size=OS_64
		mov	rax,rcx
; Var $result located in register rax
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-16],0
..@j907:
		nop
..@j903:
; [779] makeuniqueansistring(s);
		mov	rdx,qword [rbp-8]
		lea	rcx,[rbp-16]
		call	SYSTEM_$$_MAKEUNIQUEANSISTRING$ANSISTRING$$ANSISTRING
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
..@j905:
		nop
..@j904:
		mov	rcx,rbp
		call	SYSTEM$_$MAKE_UNIQUE_ANSISTRING$ANSISTRING$$ANSISTRING_$$_fin$0000027C
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c534:

SECTION .text
SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000027D:
..@c538:
; [800] end;
		push	rbp
..@c540:
..@c541:
		mov	rbp,rcx
..@c542:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
; [795] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c539:

SECTION .text
	GLOBAL SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER:
..@c543:
; Temps allocated between rbp-24 and rbp-16
		push	rbp
..@c545:
..@c546:
		mov	rbp,rsp
..@c547:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
; Var $result located in register rbx
; Var a located at rbp-8, size=OS_64
; Var s located at rbp-16, size=OS_64
; Var p located in register rcx
		mov	qword [rbp-16],0
..@j916:
		nop
..@j912:
; [796] a := PAnsiRec(p-AnsiFirstOff);
		lea	rax,[rcx-32]
		mov	qword [rbp-8],rax
; [797] pointer(s) := new_ansistring(a^.len);
		mov	rcx,qword [rax+24]
		call	SYSTEM_$$_NEW_ANSISTRING$INT64$$POINTER
		mov	qword [rbp-16],rax
; [798] move(a, s[1], a^.len);
		lea	rcx,[rbp-16]
		call	fpc_ansistr_unique
		mov	rdx,rax
		mov	rax,qword [rbp-8]
		mov	r8,qword [rax+24]
		lea	rcx,[rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [799] pointer(result) := pointer(a+AnsiFirstOff);
		mov	rax,qword [rbp-8]
		add	rax,1024
		mov	rbx,rax
..@j914:
		nop
..@j913:
		mov	rcx,rbp
		call	SYSTEM$_$MAKEUNIQUEANSISTRING$POINTER$$POINTER_$$_fin$0000027D
		mov	rax,rbx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c544:

SECTION .text
	GLOBAL SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER
SYSTEM_$$_MAKE_UNIQUE_ANSISTRING$POINTER$$POINTER:
..@c548:
; [802] begin
		lea	rsp,[rsp-40]
..@c550:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [803] result := makeuniqueansistring(p);
		call	SYSTEM_$$_MAKEUNIQUEANSISTRING$POINTER$$POINTER
; Var $result located in register rax
; [804] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c549:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT:
..@c551:
; Var $result located in register eax
; Var i located in register eax
; Var c located in register r9b
; Var str located in register rcx
; [820] begin
; Var $result located in register eax
; [821] result := 0;
		xor	eax,eax
; Var i located in register r8d
; [822] i := 0;
		xor	r8d,r8d
..@j921:
; [824] c := (str+i)^;
		movsxd	rdx,r8d
		add	rdx,rcx
		mov	r9b,byte [rdx]
; [825] if c = #0 then break;
		test	r9b,r9b
		je	..@j923
; [826] inc(i);
		inc	r8d
; [827] result := result*10 + ord(c)-ord('0');
		imul	r10d,eax,10
		movzx	edx,r9b
		add	edx,r10d
		sub	edx,48
		mov	eax,edx
; [823] while true do begin
		jmp	..@j921
..@j923:
; [829] end;
		ret
..@c552:

SECTION .text
	GLOBAL SYSTEM_$$_ATOI$PANSICHAR$$LONGINT
SYSTEM_$$_ATOI$PANSICHAR$$LONGINT:
..@c553:
; [831] begin
		lea	rsp,[rsp-40]
..@c555:
; Var $result located in register eax
; Var str located in register rcx
; Var str located in register rcx
; [832] result := atoi_exp(str);
		call	SYSTEM_$$_ATOI_EXP$PANSICHAR$$LONGINT
; Var $result located in register eax
; [833] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c554:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR:
..@c556:
; [865] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c558:
; Var $result located at rsp+32, size=OS_64
; Var i located in register eax
; Var rem located in register r8d
; Var neg located in register al
		mov	ebx,ecx
; Var num located in register ebx
		mov	esi,edx
; Var base located in register esi
; Var neg located in register dil
; [847] procedure reverse(str: pansichar; len: integer);
		mov	dil,byte [TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg]
; [866] result := '0';
		lea	rax,[..@d30]
		mov	qword [rsp+32],rax
; [868] if num = 0 then exit;
		test	ebx,ebx
		je	..@j928
; [870] if num < 0 then begin
		test	ebx,ebx
		jnl	..@j935
; [872] if base <> 10 then exit;
		cmp	esi,10
		jne	..@j928
; [873] neg := true;
		mov	dil,1
; [874] num := -num;
		movsxd	rax,ebx
		neg	rax
		mov	ebx,eax
..@j935:
; [877] result := AllocMem(32);
		mov	ecx,32
		call	SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
		mov	qword [rsp+32],rax
; Var i located in register r12d
; [879] i := 0;
		xor	r12d,r12d
; [880] while num <> 0 do begin
		jmp	..@j939
..@j938:
; [881] rem := num mod base;
		movsxd	rax,ebx
		movsxd	rcx,esi
		cqo
		idiv	rcx
		mov	r8d,edx
; [882] if rem > 9 then result[i] := chr((rem-10)+ord('a')) else result[i] := chr(rem+ord('0'));
		cmp	r8d,9
		jng	..@j942
		mov	rcx,qword [rsp+32]
		movsxd	rax,r12d
		lea	edx,[r8d-10]
		add	edx,97
		mov	byte [rcx+rax*1],dl
		jmp	..@j943
..@j942:
		mov	rcx,qword [rsp+32]
		movsxd	rax,r12d
		lea	edx,[r8d+48]
		mov	byte [rcx+rax*1],dl
..@j943:
; [883] inc(i);
		inc	r12d
; [884] num := num div base;
		movsxd	rax,ebx
		movsxd	rcx,esi
		cqo
		idiv	rcx
		mov	ebx,eax
..@j939:
		test	ebx,ebx
		jne	..@j938
; [887] if neg then begin
		test	dil,dil
		je	..@j945
; [888] result[i] := '-';
		mov	rdx,qword [rsp+32]
		movsxd	rax,r12d
		mov	byte [rdx+rax*1],45
; [889] inc(i);
		inc	r12d
..@j945:
; [892] result[i] := #0;
		mov	rdx,qword [rsp+32]
		movsxd	rax,r12d
		mov	byte [rdx+rax*1],0
; [894] ReAllocMem(result, 32);
		lea	rcx,[rsp+32]
		mov	edx,32
		call	SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
; [896] reverse(result, i);
		mov	r8d,r12d
; Var i located in register r8d
		mov	rdx,qword [rsp+32]
		mov	rcx,rsp
		call	SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT
..@j928:
; [897] end;
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c557:

SECTION .text
SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_REVERSE$PANSICHAR$LONGINT:
..@c559:
; [851] begin
		lea	rsp,[rsp-8]
..@c561:
; Var $parentfp located at rsp+0, size=OS_64
; Var st located in register eax
; Var en located in register eax
; Var tmp located in register r11b
		mov	qword [rsp],rcx
; Var str located in register rdx
; Var len located in register r8d
; Var st located in register r9d
; [852] st := 0;
		xor	r9d,r9d
; [853] en := len-1;
		lea	eax,[r8d-1]
; Var en located in register eax
; [854] while st < en do begin
		jmp	..@j947
..@j946:
; [855] tmp := str[st];
		movsxd	rcx,r9d
		mov	r11b,byte [rdx+rcx*1]
		mov	rcx,rdx
; [856] str[st] := str[en];
		movsxd	r8,r9d
		movsxd	r10,eax
		mov	r10b,byte [rcx+r10*1]
		mov	byte [rcx+r8*1],r10b
; [857] str[en] := tmp;
		movsxd	rcx,eax
		mov	byte [rdx+rcx*1],r11b
; [858] inc(st);
		inc	r9d
; [859] dec(en);
		dec	eax
..@j947:
		cmp	eax,r9d
		jg	..@j946
; [861] end;
		lea	rsp,[rsp+8]
		ret
..@c560:

SECTION .text
	GLOBAL SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR
SYSTEM_$$_ITOA$LONGINT$LONGINT$$PANSICHAR:
..@c562:
; [899] begin
		lea	rsp,[rsp-40]
..@c564:
; Var $result located in register rax
; Var num located in register ecx
; Var base located in register edx
; Var base located in register edx
; Var num located in register ecx
; [900] result := itoa_exp(num, base);
		call	SYSTEM_$$_ITOA_EXP$LONGINT$LONGINT$$PANSICHAR
; Var $result located in register rax
; [901] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c563:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF8DECODE$PANSICHAR$PANSICHAR$LONGWORD$BYTE$$BOOLEAN:
..@c565:
; [unicode.inc]
; [39] begin
		push	rbx
; Var $result located in register al
; Var cur located in register rcx
; Var curend located in register rdx
; Var codepoint located in register r8
; Var size located in register r9
; [40] if (curend <> nil) and not (cur < curend) then exit(false);
		test	rdx,rdx
		je	..@j954
		cmp	rdx,qword [rcx]
		jnbe	..@j954
		xor	al,al
		jmp	..@j951
..@j954:
; [41] if cur^ = #0 then exit(false);
		mov	r10,qword [rcx]
		cmp	byte [r10],0
		jne	..@j957
		xor	al,al
		jmp	..@j951
..@j957:
; [42] if (byte(cur^) and $f0 = $f0) then begin
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,240
		cmp	r10b,240
		jne	..@j959
; [44] if (curend <> nil) and (cur+4 > curend) then exit(false);
		test	rdx,rdx
		je	..@j961
		mov	r10,qword [rcx]
		add	r10,4
		cmp	r10,rdx
		jna	..@j961
		xor	al,al
		jmp	..@j951
..@j961:
		mov	rbx,qword [rcx]
; [46] or ((byte((cur+1)^) and $3f) shl 12)
		mov	r10w,word [rbx+1]
		and	r10w,63
		movsx	r10d,r10w
		shl	r10d,12
; [45] codepoint := ((byte(cur^) and $07) shl 18)
		mov	r11w,word [rbx]
		and	r11w,7
		movsx	r11d,r11w
		shl	r11d,18
		or	r10d,r11d
; [47] or ((byte((cur+2)^) and $3f) shl 6)
		mov	r11w,word [rbx+2]
		and	r11w,63
		movsx	r11d,r11w
		shl	r11d,6
		or	r10d,r11d
; [48] or ((byte((cur+3)^) and $3f));
		mov	r11w,word [rbx+3]
		and	r11w,63
		movsx	r11d,r11w
		or	r10d,r11d
		mov	dword [r8],r10d
; [49] size := 4;
		mov	byte [r9],4
		jmp	..@j963
..@j959:
; [51] else if (byte(cur^) and $e0 = $e0) then begin
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,224
		cmp	r10b,224
		jne	..@j965
; [53] if (curend <> nil) and (cur+3 > curend) then exit(false);
		test	rdx,rdx
		je	..@j967
		mov	r10,qword [rcx]
		add	r10,3
		cmp	r10,rdx
		jna	..@j967
		xor	al,al
		jmp	..@j951
..@j967:
		mov	rbx,qword [rcx]
; [55] or ((byte((cur+1)^) and $3f) shl 6)
		mov	r10w,word [rbx+1]
		and	r10w,63
		movsx	r10d,r10w
		shl	r10d,6
; [54] codepoint := ((byte(cur^) and $0f) shl 12)
		mov	r11w,word [rbx]
		and	r11w,15
		movsx	r11d,r11w
		shl	r11d,12
		or	r10d,r11d
; [56] or ((byte((cur+2)^) and $3f));
		mov	r11w,word [rbx+2]
		and	r11w,63
		movsx	r11d,r11w
		or	r10d,r11d
		mov	dword [r8],r10d
; [57] size := 3;
		mov	byte [r9],3
		jmp	..@j969
..@j965:
; [59] else if (byte(cur^) and $c0 = $c0) then begin
		mov	r10,qword [rcx]
		mov	r10b,byte [r10]
		and	r10b,192
		cmp	r10b,192
		jne	..@j971
; [61] if (curend <> nil) and (cur+2 > curend) then exit(false);
		test	rdx,rdx
		je	..@j973
		mov	r10,qword [rcx]
		add	r10,2
		cmp	r10,rdx
		jna	..@j973
		xor	al,al
		jmp	..@j951
..@j973:
		mov	r10,qword [rcx]
; [63] or ((byte((cur+1)^) and $3f));
		mov	dx,word [r10+1]
		and	dx,63
		movsx	edx,dx
; [62] codepoint := ((byte(cur^) and $1f) shl 6)
		mov	r10w,word [r10]
		and	r10w,31
		movsx	r10d,r10w
		shl	r10d,6
		or	edx,r10d
		mov	dword [r8],edx
; [64] size := 2;
		mov	byte [r9],2
		jmp	..@j975
..@j971:
; [68] codepoint := byte(cur^);
		mov	rdx,qword [rcx]
		movzx	edx,byte [rdx]
		mov	dword [r8],edx
; [69] size := 1;
		mov	byte [r9],1
..@j975:
..@j969:
..@j963:
; [71] inc(cur, size);
		movzx	edx,byte [r9]
		add	qword [rcx],rdx
; [72] result := true;
		mov	al,1
..@j951:
; [73] end;
		pop	rbx
		ret
..@c566:

SECTION .text
SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000283:
..@c567:
; [94] end;
		push	rbp
..@c569:
..@c570:
		mov	rbp,rcx
..@c571:
		lea	rsp,[rsp-32]
; [76] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c568:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING
SYSTEM_$$_UTF8ENCODE$LONGWORD$$ANSISTRING:
..@c572:
; Temps allocated between rbp-24 and rbp+0
		push	rbp
..@c574:
..@c575:
		mov	rbp,rsp
..@c576:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
; Var $result located in register rbx
		mov	esi,edx
; Var codepoint located in register esi
		mov	qword [rbp-8],0
..@j984:
		nop
..@j980:
; [77] if codepoint <= $7F then
		cmp	esi,127
		jnbe	..@j986
; [78] result := ansichar(codepoint)
		movzx	edx,sil
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
		jmp	..@j987
..@j986:
; [79] else if codepoint <= $7ff then begin
		cmp	esi,2047
		jnbe	..@j989
; [80] result := ansichar($c0 or (codepoint shr 6));
		mov	edx,esi
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
; [81] result := result + ansichar($80 or (codepoint and $3f));
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
		jmp	..@j990
..@j989:
; [83] else if codepoint <= $ffff then begin
		cmp	esi,65535
		jnbe	..@j992
; [84] result := ansichar($e0 or (codepoint shr 12));
		mov	edx,esi
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
; [85] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [86] result := result + ansichar($80 or (codepoint and $3f));
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
		jmp	..@j993
..@j992:
; [89] result := ansichar($f0 or (codepoint shr 18));
		mov	edx,esi
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		mov	rcx,rbx
		xor	r8d,r8d
		call	fpc_char_to_ansistr
; [90] result := result + ansichar($80 or ((codepoint shr 12) and $3f));
		mov	edx,esi
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [91] result := result + ansichar($80 or ((codepoint shr 6) and $3f));
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [92] result := result + ansichar($80 or (codepoint and $3f));
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
..@j993:
..@j990:
..@j987:
..@j982:
		nop
..@j981:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8ENCODE$LONGWORD$$ANSISTRING_$$_fin$00000283
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c573:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN
SYSTEM_$$_UTF16DECODE$PWIDECHAR$PWIDECHAR$LONGWORD$BYTE$$BOOLEAN:
..@c577:
; Var $result located in register al
; Var cur located in register rcx
; Var curend located in register rdx
; Var codepoint located in register r8
; Var size located in register r9
; [97] begin
; [98] if (curend <> nil) and not (cur < curend) then exit(false);
		test	rdx,rdx
		je	..@j997
		cmp	rdx,qword [rcx]
		jnbe	..@j997
		xor	al,al
		ret
..@j997:
; [99] if cur^ = #0 then exit(false);
		mov	r10,qword [rcx]
		cmp	word [r10],0
		jne	..@j1000
		xor	al,al
		ret
..@j1000:
; [100] codepoint := dword(cur^);
		mov	r10,qword [rcx]
		movzx	r10d,word [r10]
		mov	dword [r8],r10d
; [101] size := 1;
		mov	byte [r9],1
		mov	r10d,dword [r8]
; [103] if (codepoint >= $d800) and (codepoint <= $dbff) then begin
		cmp	r10d,55296
		jnae	..@j1002
		cmp	r10d,56319
		jnbe	..@j1002
; [104] if (curend = nil) or ((cur+1 <= curend) and (dword((cur+1)^) >= $dc00) and (dword((cur+1)^) <= $dfff)) then begin
		test	rdx,rdx
		je	..@j1004
		mov	r10,qword [rcx]
		add	r10,2
		cmp	rdx,r10
		jnae	..@j1006
		movzx	edx,word [r10]
		cmp	edx,56320
		jnae	..@j1006
		cmp	edx,57343
		jnbe	..@j1006
..@j1004:
; [105] codepoint := ((codepoint-$d800) shl 10)+(dword((cur+1)^)-$dc00)+$10000;
		mov	rdx,qword [rcx]
		mov	edx,dword [rdx+2]
		and	edx,65535
		sub	rdx,56320
		mov	r10d,dword [r8]
		sub	r10,55296
		shl	r10,10
		add	rdx,r10
		add	rdx,65536
		mov	dword [r8],edx
; [106] size := 2;
		mov	byte [r9],2
..@j1006:
..@j1002:
; [109] inc(cur, size);
		movzx	edx,byte [r9]
		shl	rdx,1
		add	qword [rcx],rdx
; [110] result := true;
		mov	al,1
; [111] end;
		ret
..@c578:

SECTION .text
SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000284:
..@c579:
; [120] end;
		push	rbp
..@c581:
..@c582:
		mov	rbp,rcx
..@c583:
		lea	rsp,[rsp-32]
; [114] begin
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c580:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING
SYSTEM_$$_UTF16ENCODE$LONGWORD$$UNICODESTRING:
..@c584:
; Temps allocated between rbp-24 and rbp+0
		push	rbp
..@c586:
..@c587:
		mov	rbp,rsp
..@c588:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
; Var $result located in register rbx
		mov	esi,edx
; Var codepoint located in register esi
		mov	qword [rbp-8],0
..@j1019:
		nop
..@j1015:
; [115] if codepoint > $ffff then begin
		cmp	esi,65535
		jna	..@j1021
; [116] result := widechar($d800+((codepoint-$10000) shr 10));
		mov	eax,esi
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		mov	rcx,rbx
		call	fpc_uchar_to_unicodestr
; [117] result := result + widechar($dc00+((codepoint-$10000) and $3ff));
		mov	eax,esi
		sub	eax,65536
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-8]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
		jmp	..@j1022
..@j1021:
; [119] result := widechar(codepoint);
		movzx	edx,si
		mov	rcx,rbx
		call	fpc_uchar_to_unicodestr
..@j1022:
..@j1017:
		nop
..@j1016:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16ENCODE$LONGWORD$$UNICODESTRING_$$_fin$00000284
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c585:

SECTION .text
SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000285:
..@c589:
; [144] end;
		push	rbp
..@c591:
..@c592:
		mov	rbp,rcx
..@c593:
		lea	rsp,[rsp-32]
; [128] begin
		lea	rcx,[rbp-48]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-40]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c590:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$ANSISTRING$$UNICODESTRING:
..@c594:
; Temps allocated between rbp-80 and rbp-24
		push	rbp
..@c596:
..@c597:
		mov	rbp,rsp
..@c598:
		lea	rsp,[rsp-112]
		mov	qword [rbp-80],rbx
		mov	qword [rbp-72],rdi
		mov	qword [rbp-64],rsi
		mov	qword [rbp-56],r12
; Var utf8 located at rbp-8, size=OS_64
; Var i located in register edi
; Var cur located at rbp-16, size=OS_64
; Var curend located in register rsi
; Var codepoint located at rbp-20, size=OS_32
; Var size located at rbp-24, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-48],0
		mov	qword [rbp-40],0
..@j1031:
		nop
..@j1027:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [129] curend := @utf8[1]+length(utf8);
		mov	rdx,rax
		test	rax,rax
		je	..@j1032
		mov	rdx,qword [rdx-8]
..@j1032:
		lea	rsi,[rax+rdx]
; [130] result := '';
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
; [131] i := 1;
		mov	edi,1
; [132] while i <= length(utf8) do begin
		jmp	..@j1034
..@j1033:
; [133] cur := @utf8[i];
		mov	rdx,qword [rbp-8]
		movsxd	rax,edi
		lea	rax,[rdx+rax*1-1]
		mov	qword [rbp-16],rax
; [134] if utf8decode(cur, curend, codepoint, size) then begin
		test	rsi,rsi
		je	..@j1038
		cmp	rsi,qword [rbp-16]
		jnbe	..@j1038
		xor	cl,cl
		jmp	..@j1036
..@j1038:
		mov	rax,qword [rbp-16]
		cmp	byte [rax],0
		jne	..@j1041
		xor	cl,cl
		jmp	..@j1036
..@j1041:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		jne	..@j1043
		test	rsi,rsi
		je	..@j1045
		mov	rax,qword [rbp-16]
		add	rax,4
		cmp	rax,rsi
		jna	..@j1045
		xor	cl,cl
		jmp	..@j1036
..@j1045:
		mov	rax,qword [rbp-16]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
		or	eax,edx
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],4
		jmp	..@j1047
..@j1043:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		jne	..@j1049
		test	rsi,rsi
		je	..@j1051
		mov	rax,qword [rbp-16]
		add	rax,3
		cmp	rax,rsi
		jna	..@j1051
		xor	cl,cl
		jmp	..@j1036
..@j1051:
		mov	rax,qword [rbp-16]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
		or	eax,edx
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],3
		jmp	..@j1053
..@j1049:
		mov	rax,qword [rbp-16]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		jne	..@j1055
		test	rsi,rsi
		je	..@j1057
		mov	rax,qword [rbp-16]
		add	rax,2
		cmp	rax,rsi
		jna	..@j1057
		xor	cl,cl
		jmp	..@j1036
..@j1057:
		mov	rax,qword [rbp-16]
		mov	ax,word [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-16]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],2
		jmp	..@j1059
..@j1055:
		mov	rax,qword [rbp-16]
		movzx	eax,byte [rax]
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],1
..@j1059:
..@j1053:
..@j1047:
		movzx	eax,byte [rbp-24]
		add	qword [rbp-16],rax
		mov	cl,1
..@j1036:
		test	cl,cl
		je	..@j1061
; [136] result := result + utf16encode(codepoint);
		mov	r12d,dword [rbp-20]
		cmp	r12d,65535
		jna	..@j1063
		mov	eax,r12d
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		lea	rcx,[rbp-40]
		call	fpc_uchar_to_unicodestr
		mov	eax,r12d
		sub	eax,65536
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-48]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-48]
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_unicodestr_concat
		jmp	..@j1064
..@j1063:
		movzx	edx,r12w
		lea	rcx,[rbp-40]
		call	fpc_uchar_to_unicodestr
..@j1064:
		mov	r8,qword [rbp-40]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
; [137] inc(i, size);
		movzx	eax,byte [rbp-24]
		add	edi,eax
		jmp	..@j1065
..@j1061:
; [139] result := result + '?';
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		lea	r8,[..@d31]
		call	fpc_unicodestr_concat
; [140] inc(cur);
		inc	qword [rbp-16]
; [141] inc(i);
		inc	edi
..@j1065:
..@j1034:
		movsxd	rax,edi
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1066
		mov	rdx,qword [rdx-8]
..@j1066:
		cmp	rax,rdx
		jle	..@j1033
..@j1029:
		nop
..@j1028:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$ANSISTRING$$UNICODESTRING_$$_fin$00000285
		mov	rbx,qword [rbp-80]
		mov	rdi,qword [rbp-72]
		mov	rsi,qword [rbp-64]
		mov	r12,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c595:

SECTION .text
SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000286:
..@c599:
; [161] end;
		push	rbp
..@c601:
..@c602:
		mov	rbp,rcx
..@c603:
		lea	rsp,[rsp-32]
; [152] begin
		lea	rcx,[rbp-32]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-24]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c600:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING
SYSTEM_$$_UTF8TOUTF16$PANSICHAR$$UNICODESTRING:
..@c604:
; Temps allocated between rbp-56 and rbp-16
		push	rbp
..@c606:
..@c607:
		mov	rbp,rsp
..@c608:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
		mov	qword [rbp-48],rdi
		mov	qword [rbp-40],rsi
; Var i located in register edi
; Var cur located at rbp-8, size=OS_64
; Var codepoint located at rbp-12, size=OS_32
; Var size located at rbp-16, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
; Var utf8 located in register rdx
		mov	qword [rbp-32],0
		mov	qword [rbp-24],0
..@j1075:
		nop
..@j1071:
; [153] cur := utf8;
		mov	qword [rbp-8],rdx
; [154] result := '';
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
; [155] i := 1;
		mov	edi,1
; [156] while utf8decode(cur, nil, codepoint, size) do begin
		jmp	..@j1077
..@j1076:
; [158] result := result + utf16encode(codepoint);
		mov	esi,dword [rbp-12]
		cmp	esi,65535
		jna	..@j1080
		mov	eax,esi
		sub	rax,65536
		shr	rax,10
		lea	rdx,[rax+55296]
		movzx	edx,dx
		lea	rcx,[rbp-24]
		call	fpc_uchar_to_unicodestr
		mov	eax,esi
		sub	eax,65536
		and	eax,1023
		lea	edx,[eax+56320]
		movzx	edx,dx
		lea	rcx,[rbp-32]
		call	fpc_uchar_to_unicodestr
		mov	r8,qword [rbp-32]
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_unicodestr_concat
		jmp	..@j1081
..@j1080:
		movzx	edx,si
		lea	rcx,[rbp-24]
		call	fpc_uchar_to_unicodestr
..@j1081:
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		call	fpc_unicodestr_concat
; [159] inc(i, size);
		movzx	eax,byte [rbp-16]
		add	edi,eax
..@j1077:
		mov	rax,qword [rbp-8]
		cmp	byte [rax],0
		jne	..@j1084
		xor	cl,cl
		jmp	..@j1082
..@j1084:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,240
		cmp	al,240
		jne	..@j1086
		mov	rax,qword [rbp-8]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,12
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx]
		and	dx,7
		movsx	edx,dx
		shl	edx,18
		or	eax,edx
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		or	eax,edx
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+3]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],4
		jmp	..@j1087
..@j1086:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,224
		cmp	al,224
		jne	..@j1089
		mov	rax,qword [rbp-8]
		mov	ax,word [rax+1]
		and	ax,63
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx]
		and	dx,15
		movsx	edx,dx
		shl	edx,12
		or	eax,edx
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+2]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],3
		jmp	..@j1090
..@j1089:
		mov	rax,qword [rbp-8]
		mov	al,byte [rax]
		and	al,192
		cmp	al,192
		jne	..@j1092
		mov	rax,qword [rbp-8]
		mov	ax,word [rax]
		and	ax,31
		movsx	eax,ax
		shl	eax,6
		mov	rdx,qword [rbp-8]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		or	eax,edx
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],2
		jmp	..@j1093
..@j1092:
		mov	rax,qword [rbp-8]
		movzx	eax,byte [rax]
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],1
..@j1093:
..@j1090:
..@j1087:
		movzx	eax,byte [rbp-16]
		add	qword [rbp-8],rax
		mov	cl,1
..@j1082:
		test	cl,cl
		jne	..@j1076
..@j1073:
		nop
..@j1072:
		mov	rcx,rbp
		call	SYSTEM$_$UTF8TOUTF16$PANSICHAR$$UNICODESTRING_$$_fin$00000286
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c605:

SECTION .text
SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000287:
..@c609:
; [185] end;
		push	rbp
..@c611:
..@c612:
		mov	rbp,rcx
..@c613:
		lea	rsp,[rsp-32]
; [169] begin
		lea	rcx,[rbp-48]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-40]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c610:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING:
..@c614:
; Temps allocated between rbp-80 and rbp-24
		push	rbp
..@c616:
..@c617:
		mov	rbp,rsp
..@c618:
		lea	rsp,[rsp-112]
		mov	qword [rbp-80],rbx
		mov	qword [rbp-72],rdi
		mov	qword [rbp-64],rsi
		mov	qword [rbp-56],r12
; Var utf16 located at rbp-8, size=OS_64
; Var i located in register edi
; Var cur located at rbp-16, size=OS_64
; Var curend located in register rsi
; Var codepoint located at rbp-20, size=OS_32
; Var size located at rbp-24, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rbp-8],rdx
		mov	rcx,rdx
		call	fpc_unicodestr_incr_ref
		mov	qword [rbp-48],0
		mov	qword [rbp-40],0
..@j1102:
		nop
..@j1098:
		mov	rax,qword [rbp-8]
		mov	qword [rbp-32],rax
; [170] curend := @utf16[1]+(length(utf16)*2);
		mov	rdx,rax
		test	rax,rax
		je	..@j1103
		mov	rdx,qword [rdx-8]
..@j1103:
		shl	rdx,1
		lea	rsi,[rax+rdx]
; [171] result := '';
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [172] i := 1;
		mov	edi,1
; [173] while i <= length(utf16) do begin
		jmp	..@j1105
..@j1104:
; [174] cur := @utf16[i];
		mov	rdx,qword [rbp-8]
		movsxd	rax,edi
		lea	rax,[rdx+rax*2-2]
		mov	qword [rbp-16],rax
; [175] if utf16decode(cur, curend, codepoint, size) then begin
		test	rsi,rsi
		je	..@j1109
		cmp	rsi,qword [rbp-16]
		jnbe	..@j1109
		xor	cl,cl
		jmp	..@j1107
..@j1109:
		mov	rax,qword [rbp-16]
		cmp	word [rax],0
		jne	..@j1112
		xor	cl,cl
		jmp	..@j1107
..@j1112:
		mov	rax,qword [rbp-16]
		movzx	eax,word [rax]
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],1
		cmp	dword [rbp-20],55296
		jnae	..@j1114
		cmp	dword [rbp-20],56319
		jnbe	..@j1114
		test	rsi,rsi
		je	..@j1116
		mov	rax,qword [rbp-16]
		add	rax,2
		cmp	rsi,rax
		jnae	..@j1118
		movzx	eax,word [rax]
		cmp	eax,56320
		jnae	..@j1118
		cmp	eax,57343
		jnbe	..@j1118
..@j1116:
		mov	rax,qword [rbp-16]
		mov	eax,dword [rax+2]
		and	eax,65535
		sub	rax,56320
		mov	edx,dword [rbp-20]
		sub	rdx,55296
		shl	rdx,10
		add	rax,rdx
		add	rax,65536
		mov	dword [rbp-20],eax
		mov	byte [rbp-24],2
..@j1118:
..@j1114:
		movzx	eax,byte [rbp-24]
		shl	rax,1
		add	qword [rbp-16],rax
		mov	cl,1
..@j1107:
		test	cl,cl
		je	..@j1124
; [177] result := result + utf8encode(codepoint);
		mov	r12d,dword [rbp-20]
		cmp	r12d,127
		jnbe	..@j1126
		xor	r8d,r8d
		movzx	edx,r12b
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		jmp	..@j1127
..@j1126:
		cmp	r12d,2047
		jnbe	..@j1129
		mov	edx,r12d
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		mov	edx,r12d
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		jmp	..@j1130
..@j1129:
		cmp	r12d,65535
		jnbe	..@j1132
		mov	edx,r12d
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		mov	edx,r12d
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		mov	edx,r12d
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		jmp	..@j1133
..@j1132:
		mov	edx,r12d
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-40]
		call	fpc_char_to_ansistr
		mov	edx,r12d
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		mov	edx,r12d
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
		mov	edx,r12d
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-48]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-48]
		xor	r9d,r9d
		mov	rdx,qword [rbp-40]
		lea	rcx,[rbp-40]
		call	fpc_ansistr_concat
..@j1133:
..@j1130:
..@j1127:
		mov	r8,qword [rbp-40]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [178] inc(i, size);
		movzx	eax,byte [rbp-24]
		add	edi,eax
		jmp	..@j1134
..@j1124:
; [180] result := result + '?';
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		lea	r8,[..@d32]
		call	fpc_ansistr_concat
; [181] inc(cur);
		add	qword [rbp-16],2
; [182] inc(i);
		inc	edi
..@j1134:
..@j1105:
		movsxd	rax,edi
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		je	..@j1135
		mov	rdx,qword [rdx-8]
..@j1135:
		cmp	rax,rdx
		jle	..@j1104
..@j1100:
		nop
..@j1099:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$UNICODESTRING$$ANSISTRING_$$_fin$00000287
		mov	rbx,qword [rbp-80]
		mov	rdi,qword [rbp-72]
		mov	rsi,qword [rbp-64]
		mov	r12,qword [rbp-56]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c615:

SECTION .text
SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000288:
..@c619:
; [202] end;
		push	rbp
..@c621:
..@c622:
		mov	rbp,rcx
..@c623:
		lea	rsp,[rsp-32]
; [193] begin
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-24]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c620:

SECTION .text
	GLOBAL SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING
SYSTEM_$$_UTF16TOUTF8$PWIDECHAR$$ANSISTRING:
..@c624:
; Temps allocated between rbp-56 and rbp-16
		push	rbp
..@c626:
..@c627:
		mov	rbp,rsp
..@c628:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
		mov	qword [rbp-48],rdi
		mov	qword [rbp-40],rsi
; Var i located in register edi
; Var cur located at rbp-8, size=OS_64
; Var codepoint located at rbp-12, size=OS_32
; Var size located at rbp-16, size=OS_8
		mov	rbx,rcx
; Var $result located in register rbx
; Var utf16 located in register rdx
		mov	qword [rbp-32],0
		mov	qword [rbp-24],0
..@j1144:
		nop
..@j1140:
; [194] cur := utf16;
		mov	qword [rbp-8],rdx
; [195] result := '';
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [196] i := 1;
		mov	edi,1
; [197] while utf16decode(cur, nil, codepoint, size) do begin
		jmp	..@j1146
..@j1145:
; [199] result := result + utf8encode(codepoint);
		mov	esi,dword [rbp-12]
		cmp	esi,127
		jnbe	..@j1149
		xor	r8d,r8d
		movzx	edx,sil
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		jmp	..@j1150
..@j1149:
		cmp	esi,2047
		jnbe	..@j1152
		mov	edx,esi
		shr	edx,6
		or	edx,192
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		jmp	..@j1153
..@j1152:
		cmp	esi,65535
		jnbe	..@j1155
		mov	edx,esi
		shr	edx,12
		or	edx,224
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		jmp	..@j1156
..@j1155:
		mov	edx,esi
		shr	edx,18
		or	edx,240
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-24]
		call	fpc_char_to_ansistr
		mov	edx,esi
		shr	edx,12
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		mov	edx,esi
		shr	edx,6
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
		mov	edx,esi
		and	edx,63
		or	edx,128
		movzx	edx,dl
		xor	r8d,r8d
		lea	rcx,[rbp-32]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-32]
		xor	r9d,r9d
		mov	rdx,qword [rbp-24]
		lea	rcx,[rbp-24]
		call	fpc_ansistr_concat
..@j1156:
..@j1153:
..@j1150:
		mov	r8,qword [rbp-24]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [200] inc(i, size);
		movzx	eax,byte [rbp-16]
		add	edi,eax
..@j1146:
		mov	rax,qword [rbp-8]
		cmp	word [rax],0
		jne	..@j1159
		xor	cl,cl
		jmp	..@j1157
..@j1159:
		mov	rax,qword [rbp-8]
		movzx	eax,word [rax]
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],1
		cmp	dword [rbp-12],55296
		jnae	..@j1161
		cmp	dword [rbp-12],56319
		jnbe	..@j1161
		mov	rax,qword [rbp-8]
		mov	eax,dword [rax+2]
		and	eax,65535
		sub	rax,56320
		mov	edx,dword [rbp-12]
		sub	rdx,55296
		shl	rdx,10
		add	rax,rdx
		add	rax,65536
		mov	dword [rbp-12],eax
		mov	byte [rbp-16],2
..@j1161:
		movzx	eax,byte [rbp-16]
		shl	rax,1
		add	qword [rbp-8],rax
		mov	cl,1
..@j1157:
		test	cl,cl
		jne	..@j1145
..@j1142:
		nop
..@j1141:
		mov	rcx,rbp
		call	SYSTEM$_$UTF16TOUTF8$PWIDECHAR$$ANSISTRING_$$_fin$00000288
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c625:

SECTION .text
	GLOBAL SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN
SYSTEM_$$_IS_CODEPOINT_NEWLINE$LONGWORD$$BOOLEAN:
..@c629:
; Var $result located in register al
; Var u located in register ecx
; [205] begin
; [206] result := ((u <= 127) and ((u = 10) or (u = 13) or (u = $85))) or ((u = $2028) or (u = $2029));
		cmp	ecx,127
		jnbe	..@j1166
		cmp	ecx,10
		je	..@j1167
		cmp	ecx,13
		je	..@j1167
		cmp	ecx,133
		je	..@j1167
..@j1166:
		cmp	ecx,8232
		je	..@j1167
		cmp	ecx,8233
		jne	..@j1172
; Var $result located in register al
..@j1167:
		mov	al,1
		ret
..@j1172:
		xor	al,al
; [207] end;
		ret
..@c630:

SECTION .text
	GLOBAL SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64
SYSTEM_$$_UTF8LEN$PANSICHAR$$INT64:
..@c631:
; [214] begin
		lea	rsp,[rsp-24]
..@c633:
; Var $result located in register rax
; Var cur located at rsp+0, size=OS_64
; Var codepoint located at rsp+8, size=OS_32
; Var size located at rsp+12, size=OS_8
; Var utf8 located in register rcx
; Var utf8 located in register rcx
; [215] cur := utf8;
		mov	qword [rsp],rcx
; Var $result located in register rax
; [216] result := 0;
		xor	eax,eax
; [217] while utf8decode(cur, nil, codepoint, size) do begin
		jmp	..@j1180
..@j1179:
; [218] inc(result);
		inc	rax
..@j1180:
		mov	rdx,qword [rsp]
		cmp	byte [rdx],0
		jne	..@j1184
		xor	r8b,r8b
		jmp	..@j1182
..@j1184:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,240
		cmp	dl,240
		jne	..@j1186
		mov	rdx,qword [rsp]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		shl	edx,12
		mov	rcx,qword [rsp]
		mov	cx,word [rcx]
		and	cx,7
		movsx	ecx,cx
		shl	ecx,18
		or	edx,ecx
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+2]
		and	cx,63
		movsx	ecx,cx
		shl	ecx,6
		or	edx,ecx
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+3]
		and	cx,63
		movsx	ecx,cx
		or	edx,ecx
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],4
		jmp	..@j1187
..@j1186:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,224
		cmp	dl,224
		jne	..@j1189
		mov	rdx,qword [rsp]
		mov	dx,word [rdx+1]
		and	dx,63
		movsx	edx,dx
		shl	edx,6
		mov	rcx,qword [rsp]
		mov	cx,word [rcx]
		and	cx,15
		movsx	ecx,cx
		shl	ecx,12
		or	edx,ecx
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+2]
		and	cx,63
		movsx	ecx,cx
		or	edx,ecx
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],3
		jmp	..@j1190
..@j1189:
		mov	rdx,qword [rsp]
		mov	dl,byte [rdx]
		and	dl,192
		cmp	dl,192
		jne	..@j1192
		mov	rdx,qword [rsp]
		mov	dx,word [rdx]
		and	dx,31
		movsx	edx,dx
		shl	edx,6
		mov	rcx,qword [rsp]
		mov	cx,word [rcx+1]
		and	cx,63
		movsx	ecx,cx
		or	edx,ecx
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],2
		jmp	..@j1193
..@j1192:
		mov	rdx,qword [rsp]
		movzx	edx,byte [rdx]
		mov	dword [rsp+8],edx
		mov	byte [rsp+12],1
..@j1193:
..@j1190:
..@j1187:
		movzx	edx,byte [rsp+12]
		add	qword [rsp],rdx
		mov	r8b,1
..@j1182:
		test	r8b,r8b
		jne	..@j1179
; [220] end;
		lea	rsp,[rsp+24]
		ret
..@c632:

SECTION .text
SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER:
..@c634:
; [ustrings.inc]
; [41] begin
		push	rbx
		lea	rsp,[rsp-48]
..@c636:
; Var $result located at rsp+32, size=OS_64
		mov	rbx,rcx
; Var len located in register rbx
; [42] GetMem(result, len*2+sizeof(tunicoderec)+2); {2 for #0}
		mov	rax,rbx
; [49] end;
		lea	rax,[rax+rax*1+24]
		lea	rdx,[rax+2]
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
; [43] punicoderec(result)^.len := len;
		mov	rdx,qword [rsp+32]
		mov	qword [rdx+16],rbx
; Var len located in register rax
; [44] punicoderec(result)^.ref := 1;
		mov	rax,qword [rsp+32]
		mov	qword [rax+8],1
; [45] punicoderec(result)^.codepage := DefaultUnicodeCodePage;
		mov	rax,qword [rsp+32]
		mov	dword [rax],1200
; [46] punicoderec(result)^.elementsize := 2;
		mov	rax,qword [rsp+32]
		mov	word [rax+4],2
; [47] inc(result, ufirstoff);
		add	qword [rsp+32],24
; [48] PUnicodeChar(result)^ := #0;
		mov	rax,qword [rsp+32]
		mov	word [rax],0
		mov	rax,qword [rsp+32]
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c635:

SECTION .text
	GLOBAL fpc_unicodestr_assign
fpc_unicodestr_assign:
	GLOBAL FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
..@c637:
; [52] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c639:
		mov	rbx,rcx
; Var s1 located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [53] if s2 <> nil then
		test	rdx,rdx
		je	..@j1199
; [54] if punicoderec(s2-ufirstoff)^.ref > 0 then
		cmp	qword [rsi-16],0
		jng	..@j1201
; [55] inc(punicoderec(s2-ufirstoff)^.ref);
		inc	qword [rsi-16]
..@j1201:
..@j1199:
; [56] fpc_unicodestr_decr_ref(s1);
		mov	rcx,rbx
		call	fpc_unicodestr_decr_ref
; Var s2 located in register rsi
; [57] s1 := s2;
		mov	qword [rbx],rsi
; [58] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c638:

SECTION .text
SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$0000028A:
..@c640:
; [77] end;
		push	rbp
..@c642:
..@c643:
		mov	rbp,rcx
..@c644:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [64] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c641:

SECTION .text
	GLOBAL fpc_unicodestr_setlength
fpc_unicodestr_setlength:
	GLOBAL FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
..@c645:
; Temps allocated between rbp-24 and rbp-8
		push	rbp
..@c647:
..@c648:
		mov	rbp,rsp
..@c649:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
; Var u located at rbp-8, size=OS_64
; Var n located in register rax
		mov	rbx,rcx
; Var s located in register rbx
		mov	rsi,rdx
; Var l located in register rsi
		mov	qword [rbp-8],0
..@j1210:
		nop
..@j1206:
; [65] if l = 0 then begin
		test	rsi,rsi
		jne	..@j1212
; [66] fpc_unicodestr_decr_ref(pointer(s));
		mov	rcx,rbx
		call	fpc_unicodestr_decr_ref
; [67] exit;
		jmp	..@j1208
..@j1212:
; [69] pointer(u) := newunicodestring(l);
		mov	rcx,rsi
		call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
		mov	qword [rbp-8],rax
; [70] if pointer(s) <> nil then begin
		cmp	qword [rbx],0
		je	..@j1214
; [71] n := length(s)+1; // inc terminator
		mov	rax,qword [rbx]
		test	rax,rax
		je	..@j1215
		mov	rax,qword [rax-8]
..@j1215:
		inc	rax
; [72] if n > l then n := l;
		cmp	rsi,rax
		cmovl	rax,rsi
; [73] move(pointer(s)^, pointer(u)^, n*2);
		mov	rcx,qword [rbx]
		mov	r8,rax
		shl	r8,1
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [74] fpc_unicodestr_decr_ref(pointer(s));
		mov	rcx,rbx
		call	fpc_unicodestr_decr_ref
..@j1214:
; [76] s := u;
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_unicodestr_assign
..@j1208:
		nop
..@j1207:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_setlength$UNICODESTRING$INT64_$$_fin$0000028A
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c646:

SECTION .text
SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000028B:
..@c650:
; [95] end;
		push	rbp
..@c652:
..@c653:
		mov	rbp,rcx
..@c654:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [82] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c651:

SECTION .text
	GLOBAL fpc_unicodestr_concat
fpc_unicodestr_concat:
..@c655:
; Temps allocated between rbp-32 and rbp-8
		push	rbp
..@c657:
..@c658:
		mov	rbp,rsp
..@c659:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rdi
		mov	qword [rbp-16],rsi
; Var u located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var s1 located in register rsi
		mov	rdi,r8
; Var s2 located in register rdi
		mov	qword [rbp-8],0
..@j1226:
		nop
..@j1222:
; [83] if s1 = '' then begin
		test	rsi,rsi
		jne	..@j1228
; [84] dests := s2;
		mov	rcx,rbx
		mov	rdx,rdi
		call	fpc_unicodestr_assign
; [85] exit;
		jmp	..@j1224
..@j1228:
; [87] if s2 = '' then begin
		test	rdi,rdi
		jne	..@j1230
; [88] dests := s1;
		mov	rcx,rbx
		mov	rdx,rsi
		call	fpc_unicodestr_assign
; [89] exit;
		jmp	..@j1224
..@j1230:
; [91] setlength(u, length(s1)+length(s2));
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1231
		mov	rax,qword [rax-8]
..@j1231:
		mov	rdx,rdi
		test	rdi,rdi
		je	..@j1232
		mov	rdx,qword [rdx-8]
..@j1232:
		add	rdx,rax
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_setlength
; [92] move(pointer(s1)^, pointer(u)^, length(s1)*2);
		mov	r8,rsi
		test	rsi,rsi
		je	..@j1233
		mov	r8,qword [r8-8]
..@j1233:
		shl	r8,1
		mov	rdx,qword [rbp-8]
		mov	rcx,rsi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [93] move(pointer(s2)^, (pointer(u)+(length(s1)*2))^, length(s2)*2);
		mov	rdx,rsi
		test	rsi,rsi
		je	..@j1234
		mov	rdx,qword [rdx-8]
..@j1234:
		shl	rdx,1
		add	rdx,qword [rbp-8]
		mov	r8,rdi
		test	rdi,rdi
		je	..@j1235
		mov	r8,qword [r8-8]
..@j1235:
		shl	r8,1
		mov	rcx,rdi
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [94] dests := u;
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_unicodestr_assign
..@j1224:
		nop
..@j1223:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_concat$UNICODESTRING$UNICODESTRING$UNICODESTRING_$$_fin$0000028B
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c656:

SECTION .text
	GLOBAL fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
..@c660:
; Temps allocated between rbp-40 and rbp+0
; [101] begin
		push	rbp
..@c662:
..@c663:
		mov	rbp,rsp
..@c664:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	qword [rbp-16],r12
		mov	qword [rbp-8],r13
; Var l located in register rax
; Var p located in register rax
; Var i located in register r12d
		mov	rbx,rcx
; Var dests located in register rbx
		mov	rsi,rdx
; Var sarr located in register rsi
		mov	rdi,r8
; Var $highSARR located in register rdi
; Var l located in register rdx
; [102] l := 0;
		xor	edx,edx
; [103] for i := 0 to high(sarr) do begin
		mov	eax,edi
		test	eax,eax
		jnge	..@j1239
		mov	r12d,-1
..@j1240:
		inc	r12d
; [104] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then l := l + length(sarr[i]);
		movsxd	rcx,r12d
		mov	rcx,qword [rsi+rcx*8]
		test	rcx,rcx
		je	..@j1244
		test	rcx,rcx
		je	..@j1244
		movsxd	rcx,r12d
		mov	rcx,qword [rsi+rcx*8]
		test	rcx,rcx
		je	..@j1246
		mov	rcx,qword [rcx-8]
..@j1246:
		add	rdx,rcx
..@j1244:
		cmp	eax,r12d
		jnle	..@j1240
..@j1239:
; [106] setlength(dests, l);
		mov	rcx,rbx
; Var l located in register rdx
		call	fpc_unicodestr_setlength
; Var p located in register r13
; [107] p := 1;
		mov	r13d,1
; [108] for i := 0 to high(sarr) do begin
		test	edi,edi
		jnge	..@j1248
		mov	r12d,-1
..@j1249:
		inc	r12d
; [109] if (pointer(sarr[i]) <> nil) and (sarr[i] <> '') then begin
		movsxd	rax,r12d
		mov	rax,qword [rsi+rax*8]
		test	rax,rax
		je	..@j1253
		test	rax,rax
		je	..@j1253
; [110] move(pointer(sarr[i])^, pointer(@dests[p])^, length(sarr[i]));
		movsxd	rax,r12d
		mov	r8,qword [rsi+rax*8]
		test	r8,r8
		je	..@j1255
		mov	r8,qword [r8-8]
..@j1255:
		mov	rax,qword [rbx]
		lea	rdx,[rax+r13*2-2]
		movsxd	rax,r12d
		mov	rcx,qword [rsi+rax*8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [111] inc(p, length(sarr[i]));
		movsxd	rax,r12d
		mov	rax,qword [rsi+rax*8]
		test	rax,rax
		je	..@j1256
		mov	rax,qword [rax-8]
..@j1256:
		add	r13,rax
..@j1253:
		cmp	edi,r12d
		jnle	..@j1249
..@j1248:
; [114] end;
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		mov	r12,qword [rbp-16]
		mov	r13,qword [rbp-8]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c661:

SECTION .text
	GLOBAL fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
	GLOBAL FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
..@c665:
; [117] begin
		mov	rax,rcx
; Var s located in register rax
; [118] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
		test	rcx,rcx
		je	..@j1257
		cmp	qword [rax-16],0
		jl	..@j1257
; Var s located in register rax
; [119] inc(punicoderec(s-ufirstoff)^.ref);
		inc	qword [rax-16]
..@j1257:
; [120] end;
		ret
..@c666:

SECTION .text
	GLOBAL fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
	GLOBAL FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
..@c667:
; [123] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c669:
		mov	rbx,rcx
; Var s located in register rbx
		mov	rax,qword [rbx]
; [124] if (s = nil) or (punicoderec(s-ufirstoff)^.ref < 0) then exit;
		test	rax,rax
		je	..@j1262
		cmp	qword [rax-16],0
		jl	..@j1262
; [125] dec(punicoderec(s-ufirstoff)^.ref);
		mov	rax,qword [rbx]
		dec	qword [rax-16]
; [126] if punicoderec(s-ufirstoff)^.ref <= 0 then FreeMem(s-ufirstoff);
		mov	rax,qword [rbx]
		cmp	qword [rax-16],0
		jnle	..@j1268
		mov	rax,qword [rbx]
		lea	rcx,[rax-24]
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1268:
; [127] s := nil;
		mov	qword [rbx],0
..@j1262:
; [128] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c668:

SECTION .text
SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000028C:
..@c670:
; [137] end;
		push	rbp
..@c672:
..@c673:
		mov	rbp,rcx
..@c674:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_unicodestr_decr_ref
; [133] begin
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c671:

SECTION .text
	GLOBAL fpc_unicodestr_unique
fpc_unicodestr_unique:
	GLOBAL FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
..@c675:
; Temps allocated between rbp-16 and rbp-8
		push	rbp
..@c677:
..@c678:
		mov	rbp,rsp
..@c679:
		lea	rsp,[rsp-48]
		mov	qword [rbp-16],rbx
; Var $result located in register rdx
; Var u located at rbp-8, size=OS_64
		mov	rbx,rcx
; Var s located in register rbx
		mov	qword [rbp-8],0
..@j1277:
		nop
..@j1273:
; [134] pointer(u) := newunicodestring(punicoderec(s-ufirstoff)^.len);
		mov	rax,qword [rbx]
		mov	rcx,qword [rax-8]
		call	SYSTEM_$$_NEWUNICODESTRING$INT64$$POINTER
		mov	qword [rbp-8],rax
; [135] move(s^, pointer(u)^, punicoderec(s-ufirstoff)^.len);
		mov	rax,qword [rbx]
		mov	r8,qword [rax-8]
		mov	rcx,qword [rbx]
		mov	rdx,qword [rbp-8]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [136] s := pointer(u);
		mov	rax,qword [rbp-8]
		mov	qword [rbx],rax
..@j1275:
		nop
..@j1274:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_unicodestr_unique$POINTER$$POINTER_$$_fin$0000028C
		mov	rax,rdx
		mov	rbx,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c676:

SECTION .text
	GLOBAL fpc_unicodestr_copy
fpc_unicodestr_copy:
..@c680:
; [140] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c682:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s located in register rsi
		mov	rdi,r8
; Var index located in register rdi
		mov	r12,r9
; Var size located in register r12
; [141] dec(index);
		dec	rdi
; [142] if index < 0 then index := 0;
		test	rdi,rdi
		jnl	..@j1281
		xor	edi,edi
..@j1281:
; [143] if (size > length(s)) or (size+index > length(s)) then size := length(s)-index;
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1282
		mov	rax,qword [rax-8]
..@j1282:
		cmp	rax,r12
		jl	..@j1283
		lea	rdx,[r12+rdi]
		cmp	rdx,rax
		jng	..@j1285
..@j1283:
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1286
		mov	rax,qword [rax-8]
..@j1286:
		sub	rax,rdi
		mov	r12,rax
..@j1285:
; [144] setlength(result, size);
		mov	rcx,rbx
; Var size located in register r12
		mov	rdx,r12
		call	fpc_unicodestr_setlength
; [145] move((pointer(s)+(index*2))^, pointer(result)^, size*2);
		shl	rdi,1
		lea	rcx,[rdi+rsi]
		mov	rdx,qword [rbx]
		mov	r8,r12
		shl	r8,1
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [146] end;
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c681:

SECTION .text
	GLOBAL fpc_uchar_to_unicodestr
fpc_uchar_to_unicodestr:
..@c683:
; [149] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c685:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	si,dx
; Var c located in register si
; [150] setlength(result, 1);
		mov	rcx,rbx
		mov	edx,1
		call	fpc_unicodestr_setlength
; [151] pwidechar(@result[1])^ := c;
		mov	rax,qword [rbx]
; Var c located in register si
		mov	word [rax],si
; [152] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c684:

SECTION .text
	GLOBAL fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
..@c686:
; [155] begin
		lea	rsp,[rsp-40]
..@c688:
; Var $result located in register rax
; Var s2 located in register rdx
; Var cp located in register r8d
; Var s2 located in register rdx
; [156] result := utf16toutf8(s2);
		call	SYSTEM_$$_UTF16TOUTF8$UNICODESTRING$$ANSISTRING
; [157] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c687:

SECTION .text
	GLOBAL fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
..@c689:
; [162] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c691:
; Var p located at rsp+32, size=OS_64
; Var s located in register rax
		mov	rbx,rcx
; Var $result located in register rbx
		mov	qword [rsp+32],rdx
; [163] if p = nil then exit('');
		test	rdx,rdx
		jne	..@j1294
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_unicodestr_assign
		jmp	..@j1291
..@j1294:
; [164] s := IndexWord(p, -1, 0);
		lea	rcx,[rsp+32]
		xor	r8d,r8d
		mov	rdx,-1
		call	SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
		mov	rsi,rax
; Var s located in register rsi
; [165] setlength(result, s);
		mov	rcx,rbx
; Var s located in register rsi
		mov	rdx,rsi
		call	fpc_unicodestr_setlength
; [166] move(p^, pointer(result)^, s*2);
		mov	rdx,qword [rbx]
		mov	r8,rsi
		shl	r8,1
		mov	rcx,qword [rsp+32]
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j1291:
; [167] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c690:

SECTION .text
	GLOBAL fpc_widestr_to_unicodestr
fpc_widestr_to_unicodestr:
..@c692:
; [170] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c694:
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var s2 located in register rsi
; [171] setlength(result, length(s2));
		test	rdx,rdx
		je	..@j1297
		mov	edx,dword [rdx-4]
		shr	rdx,1
..@j1297:
		mov	rcx,rbx
		call	fpc_unicodestr_setlength
; [172] move(pointer(s2)^, pointer(result)^, length(s2)*2);
		mov	r8,rsi
		test	rsi,rsi
		je	..@j1298
		mov	r8d,dword [r8-4]
		shr	r8,1
..@j1298:
		shl	r8,1
		mov	rdx,qword [rbx]
		mov	rcx,rsi
; Var s2 located in register rcx
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
; [173] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c693:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$LONGINT
SYSTEM_$$_INCLOCKED$LONGINT:
..@c725:
; [misc.inc]
; [105] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c727:
		mov	rbx,rcx
; Var target located in register rbx
; [106] if IsMultithread then AtomicIncrement(target) else inc(target);
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1314
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICINCREMENT$LONGINT$$LONGINT
		jmp	..@j1315
..@j1314:
		inc	dword [rbx]
..@j1315:
; [107] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c726:

SECTION .text
	GLOBAL SYSTEM_$$_INCLOCKED$INT64
SYSTEM_$$_INCLOCKED$INT64:
..@c728:
; [110] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c730:
		mov	rbx,rcx
; Var target located in register rbx
; [111] if IsMultithread then AtomicIncrement(target) else inc(target);
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1319
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICINCREMENT$INT64$$INT64
		jmp	..@j1320
..@j1319:
		inc	qword [rbx]
..@j1320:
; [112] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c729:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN:
..@c731:
; [115] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c733:
; Var $result located in register al
		mov	rbx,rcx
; Var target located in register rbx
; [116] if IsMultithread then
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1324
; [117] result := AtomicDecrement(target) = 0
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICDECREMENT$LONGINT$$LONGINT
		test	eax,eax
		sete	al
		jmp	..@j1325
..@j1324:
; [119] dec(target);
		dec	dword [rbx]
; [120] result := target = 0;
		cmp	dword [rbx],0
		sete	al
..@j1325:
; [122] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c732:

SECTION .text
	GLOBAL SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN
SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN:
..@c734:
; [125] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c736:
; Var $result located in register al
		mov	rbx,rcx
; Var target located in register rbx
; [126] if IsMultithread then
		cmp	byte [TC_$SYSTEM_$$_ISMULTITHREAD],0
		je	..@j1329
; [127] result := AtomicDecrement(target) = 0
		mov	rcx,rbx
		call	SYSTEM_$$_ATOMICDECREMENT$INT64$$INT64
		test	rax,rax
		sete	al
		jmp	..@j1330
..@j1329:
; [129] dec(target);
		dec	qword [rbx]
; [130] result := target = 0;
		cmp	qword [rbx],0
		sete	al
..@j1330:
; [132] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c735:

SECTION .text
	GLOBAL SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD
SYSTEM_$$_MAKELANGID$WORD$WORD$$WORD:
..@c737:
; Var $result located in register ax
; [175] begin
		mov	ax,cx
; Var primary located in register ax
; Var sub located in register dx
; [176] result := (primary and $3FF) or (sub shl 10);
		and	eax,1023
		movzx	edx,dx
		shl	edx,10
		or	eax,edx
; Var $result located in register ax
; [177] end;
		movzx	eax,ax
		ret
..@c738:

SECTION .text
	GLOBAL SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64
SYSTEM_$$_POS$ANSISTRING$ANSISTRING$INT64$$INT64:
..@c739:
; [182] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c741:
; Var $result located in register rax
; Var i located in register r13
		mov	rbx,rcx
; Var needle located in register rbx
		mov	rsi,rdx
; Var haystack located in register rsi
; Var offset located in register r8
; Var $result located in register rdi
; [183] result := -1;
		mov	rdi,-1
; [184] for i := offset to length(haystack)-length(needle)+1 do
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1335
		mov	rax,qword [rax-8]
..@j1335:
		mov	rdx,rbx
		test	rbx,rbx
		je	..@j1336
		mov	rdx,qword [rdx-8]
..@j1336:
		sub	rax,rdx
		lea	r12,[rax+1]
		cmp	r12,r8
		jnge	..@j1338
		lea	r13,[r8-1]
..@j1339:
		inc	r13
; [185] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
		mov	r8,rbx
		test	rbx,rbx
		je	..@j1342
		mov	r8,qword [r8-8]
..@j1342:
		lea	rdx,[rsi+r13*1-1]
		mov	rcx,rbx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1344
; [186] exit(i);
		mov	rdi,r13
		jmp	..@j1333
..@j1344:
		cmp	r12,r13
		jnle	..@j1339
..@j1338:
..@j1333:
; [187] end;
		mov	rax,rdi
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c740:

SECTION .text
	GLOBAL SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64
SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$INT64$$INT64:
..@c742:
; [192] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-32]
..@c744:
; Var $result located in register rax
; Var i located in register r13
		mov	rbx,rcx
; Var needle located in register rbx
		mov	rsi,rdx
; Var haystack located in register rsi
; Var offset located in register r8
; Var $result located in register rdi
; [193] result := -1;
		mov	rdi,-1
; [194] for i := offset to length(haystack)-length(needle)+1 do
		mov	rax,rsi
		test	rsi,rsi
		je	..@j1347
		mov	rax,qword [rax-8]
..@j1347:
		mov	rdx,rbx
		test	rbx,rbx
		je	..@j1348
		mov	rdx,qword [rdx-8]
..@j1348:
		sub	rax,rdx
		lea	r12,[rax+1]
		cmp	r12,r8
		jnge	..@j1350
		lea	r13,[r8-1]
..@j1351:
		inc	r13
; [195] if CompareByte(needle[1], haystack[i], length(needle)) = 0 then
		mov	r8,rbx
		test	rbx,rbx
		je	..@j1354
		mov	r8,qword [r8-8]
..@j1354:
		lea	rdx,[rsi+r13*2-2]
		mov	rcx,rbx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1356
; [196] exit(i);
		mov	rdi,r13
		jmp	..@j1345
..@j1356:
		cmp	r12,r13
		jnle	..@j1351
..@j1350:
..@j1345:
; [197] end;
		mov	rax,rdi
		nop
		lea	rsp,[rsp+32]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c743:

SECTION .text
SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000028D:
..@c745:
; [202] end;
		push	rbp
..@c747:
..@c748:
		mov	rbp,rcx
..@c749:
		lea	rsp,[rsp-32]
; [200] begin
		lea	rcx,[rbp-32]
		call	fpc_unicodestr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_unicodestr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c746:

SECTION .text
	GLOBAL SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64
SYSTEM_$$_POS$WIDESTRING$WIDESTRING$INT64$$INT64:
..@c750:
; Temps allocated between rbp-56 and rbp+0
		push	rbp
..@c752:
..@c753:
		mov	rbp,rsp
..@c754:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
		mov	qword [rbp-48],rdi
		mov	qword [rbp-40],rsi
; Var $result located in register rbx
		mov	rbx,rcx
; Var needle located in register rbx
; Var haystack located in register rdx
		mov	rsi,r8
; Var offset located in register rsi
		mov	qword [rbp-32],0
		mov	qword [rbp-16],0
..@j1365:
		nop
..@j1361:
; [201] result := pos(unicodestring(needle), unicodestring(haystack), offset);
		lea	rcx,[rbp-16]
		call	fpc_widestr_to_unicodestr
		mov	rax,qword [rbp-16]
		mov	qword [rbp-8],rax
		mov	rdx,rbx
		lea	rcx,[rbp-32]
		call	fpc_widestr_to_unicodestr
		mov	rax,qword [rbp-32]
		mov	qword [rbp-24],rax
		mov	rbx,-1
		mov	rax,qword [rbp-8]
		test	rax,rax
		je	..@j1367
		mov	rax,qword [rax-8]
..@j1367:
		mov	rdx,qword [rbp-24]
		test	rdx,rdx
		je	..@j1368
		mov	rdx,qword [rdx-8]
..@j1368:
		sub	rax,rdx
		lea	rdi,[rax+1]
		cmp	rdi,rsi
		jnge	..@j1370
		dec	rsi
..@j1371:
		inc	rsi
		mov	rcx,qword [rbp-24]
		mov	r8,qword [rbp-24]
		test	r8,r8
		je	..@j1374
		mov	r8,qword [r8-8]
..@j1374:
		mov	rax,qword [rbp-8]
		lea	rdx,[rax+rsi*2-2]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
		test	rax,rax
		jne	..@j1376
		mov	rbx,rsi
		jmp	..@j1366
..@j1376:
		cmp	rdi,rsi
		jnle	..@j1371
..@j1370:
..@j1366:
..@j1363:
		nop
..@j1362:
		mov	rcx,rbp
		call	SYSTEM$_$POS$WIDESTRING$WIDESTRING$INT64$$INT64_$$_fin$0000028D
		mov	rax,rbx
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c751:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$QWORD$$POINTER
SYSTEM_$$_GETMEM$QWORD$$POINTER:
..@c755:
; [heap.inc]
; [85] begin
		lea	rsp,[rsp-40]
..@c757:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [86] result := xgetmem(size);
		call	XMM_$$_XGETMEM$QWORD$$POINTER
; Var $result located in register rax
; [87] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c756:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_GETMEM$POINTER$QWORD$$POINTER:
..@c758:
; [90] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c760:
; Var $result located in register rax
		mov	rbx,rcx
; Var p located in register rbx
		mov	rcx,rdx
; Var size located in register rcx
; Var size located in register rcx
; [91] result := xgetmem(size);
		call	XMM_$$_XGETMEM$QWORD$$POINTER
; Var $result located in register rax
; Var $result located in register rax
; [92] p := result;
		mov	qword [rbx],rax
; [93] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c759:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER$$QWORD
SYSTEM_$$_FREEMEM$POINTER$$QWORD:
..@c761:
; [96] begin
		lea	rsp,[rsp-40]
..@c763:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [97] Exit(xfreemem(p));
		call	_$dll$rtllib$xfreemem
; Var $result located in register rax
; [98] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c762:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD
SYSTEM_$$_FREEMEMSIZE$POINTER$QWORD$$QWORD:
..@c764:
; [101] begin
		lea	rsp,[rsp-40]
..@c766:
; Var $result located in register rax
; Var p located in register rcx
; Var size located in register rdx
; Var p located in register rcx
; [102] Exit(xfreemem(p));
		call	_$dll$rtllib$xfreemem
; Var $result located in register rax
; [103] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c765:

SECTION .text
	GLOBAL SYSTEM_$$_ALLOCMEM$QWORD$$POINTER
SYSTEM_$$_ALLOCMEM$QWORD$$POINTER:
..@c767:
; [106] begin
		lea	rsp,[rsp-40]
..@c769:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [107] Exit(xallocmem(size));
		call	XMM_$$_XALLOCMEM$QWORD$$POINTER
; Var $result located in register rax
; [108] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c768:

SECTION .text
	GLOBAL SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER
SYSTEM_$$_REALLOCMEM$POINTER$QWORD$$POINTER:
..@c770:
; [111] begin
		lea	rsp,[rsp-40]
..@c772:
; Var $result located in register rax
; Var p located in register rcx
; Var size located in register rdx
; Var size located in register rdx
; [112] Exit(xreallocmem(p, size));
		call	XMM_$$_XREALLOCMEM$POINTER$QWORD$$POINTER
; Var $result located in register rax
; [113] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c771:

SECTION .text
	GLOBAL SYSTEM_$$_MEMSIZE$POINTER$$QWORD
SYSTEM_$$_MEMSIZE$POINTER$$QWORD:
..@c773:
; [116] begin
		lea	rsp,[rsp-40]
..@c775:
; Var $result located in register rax
; Var p located in register rcx
; Var p located in register rcx
; [117] Exit(xmemsize(p));
		call	XMM_$$_XMEMSIZE$POINTER$$QWORD
; Var $result located in register rax
; [118] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c774:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$QWORD
SYSTEM_$$_MOVE$formal$formal$QWORD:
..@c776:
; [124] begin
		lea	rsp,[rsp-40]
..@c778:
; Var src located in register rax
; Var dst located in register rdx
; Var count located in register r8
; Var count located in register r8
; [125] xmovemem(@src, @dst, count);
		call	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
; [126] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c777:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c779:
; [130] begin
		lea	rsp,[rsp-40]
..@c781:
; Var x located in register rax
; Var count located in register rdx
; Var value located in register r8b
; Var value located in register r8b
; [131] xfillmem_byte(@x, count, ord(value));
		movzx	r8d,r8b
; Var count located in register rdx
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
; [132] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c780:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE
SYSTEM_$$_FILLCHAR$formal$QWORD$BYTE:
..@c782:
; [135] begin
		lea	rsp,[rsp-40]
..@c784:
; Var x located in register rax
; Var count located in register rdx
; Var value located in register r8b
; Var value located in register r8b
; [136] xfillmem_byte(@x, count, value);
		movzx	r8d,r8b
; Var count located in register rdx
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
; [137] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c783:

SECTION .text
	GLOBAL SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE
SYSTEM_$$_FILLBYTE$formal$QWORD$BYTE:
..@c785:
; [140] begin
		lea	rsp,[rsp-40]
..@c787:
; Var x located in register rax
; Var count located in register rdx
; Var value located in register r8b
; Var value located in register r8b
; [141] xfillmem_byte(@x, count, value);
		movzx	r8d,r8b
; Var count located in register rdx
		call	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
; [142] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c786:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64
SYSTEM_$$_INDEXBYTE$formal$INT64$BYTE$$INT64:
..@c788:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var b located in register r8b
; [148] begin
; Var $result located in register rax
; [149] result := -1;
		mov	rax,-1
; Var i located in register r9
; [150] i := 0;
		xor	r9,r9
; [151] while (i < len) or (len = -1){len may not be given} do begin
		jmp	..@j1402
..@j1401:
; [152] if pbyte(pointer(buf)+i)^ = b then exit(i);
		mov	r10,qword [rcx]
		add	r10,r9
		cmp	r8b,byte [r10]
		jne	..@j1405
		mov	rax,r9
		ret
..@j1405:
; [153] inc(i);
		inc	r9
..@j1402:
		cmp	rdx,r9
		jg	..@j1401
		cmp	rdx,-1
		je	..@j1401
; [155] end;
		ret
..@c789:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64
SYSTEM_$$_INDEXCHAR$formal$INT64$CHAR$$INT64:
..@c790:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var b located in register r8b
; [162] begin
; Var $result located in register rax
; [163] result := -1;
		mov	rax,-1
; Var i located in register r9
; [164] i := 0;
		xor	r9,r9
; [165] while (i < len) or (len = -1){len may not be given} do begin
		jmp	..@j1412
..@j1411:
; [166] if pchar(pointer(buf)+i)^ = b then exit(i);
		mov	r10,qword [rcx]
		add	r10,r9
		cmp	r8b,byte [r10]
		jne	..@j1415
		mov	rax,r9
		ret
..@j1415:
; [167] inc(i);
		inc	r9
..@j1412:
		cmp	rdx,r9
		jg	..@j1411
		cmp	rdx,-1
		je	..@j1411
; [169] end;
		ret
..@c791:

SECTION .text
	GLOBAL SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64
SYSTEM_$$_INDEXWORD$formal$INT64$WORD$$INT64:
..@c792:
; Var $result located in register rax
; Var i located in register rax
; Var buf located in register rcx
; Var len located in register rdx
; Var w located in register r8w
; [176] begin
; Var $result located in register rax
; [177] result := -1;
		mov	rax,-1
; Var i located in register r10
; [178] i := 0;
		xor	r10,r10
; [179] while (i < len) or (len = -1){len may not be given} do begin
		jmp	..@j1422
..@j1421:
; [180] if pword(pointer(buf)+i)^ = w then exit(i div 2);
		mov	r9,qword [rcx]
		add	r9,r10
		cmp	r8w,word [r9]
		jne	..@j1425
		mov	r9,r10
		mov	r11,r9
		shr	r11,63
		add	r9,r11
		sar	r9,1
		mov	rax,r9
		ret
..@j1425:
; [181] inc(i, 2);
		add	r10,2
..@j1422:
		cmp	rdx,r10
		jg	..@j1421
		cmp	rdx,-1
		je	..@j1421
; [183] end;
		ret
..@c793:

SECTION .text
	GLOBAL SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64:
..@c794:
; [190] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c796:
; Var $result located in register rdx
; Var u located in register rax
		mov	rbx,rcx
; Var buf1 located in register rbx
		mov	rsi,rdx
; Var buf2 located in register rsi
		mov	rdi,r8
; Var len located in register rdi
; [191] u := xmemdiffat(@buf1, @buf2, len);
		mov	rdx,rsi
		mov	rcx,rbx
; Var len located in register rdi
		mov	r8,rdi
		call	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
; Var u located in register rax
; [192] if u = len then result := 0 else result := pbyte(@buf1+u)^-pbyte(@buf2+u)^;
		cmp	rdi,rax
		jne	..@j1432
		xor	edx,edx
		jmp	..@j1433
..@j1432:
		lea	rcx,[rbx+rax]
		movzx	ecx,byte [rcx]
		add	rax,rsi
		movzx	eax,byte [rax]
		sub	rcx,rax
		mov	rdx,rcx
..@j1433:
; [193] end;
		mov	rax,rdx
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c795:

SECTION .text
	GLOBAL SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64
SYSTEM_$$_COMPARECHAR$formal$formal$QWORD$$INT64:
..@c797:
; [198] begin
		lea	rsp,[rsp-40]
..@c799:
; Var $result located in register rax
; Var buf1 located in register rcx
; Var buf2 located in register rdx
; Var len located in register r8
; Var len located in register r8
; [199] result := CompareByte(buf1, buf2, len);
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$QWORD$$INT64
; Var $result located in register rax
; [200] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c798:

SECTION .text
	GLOBAL fpc_getmem
fpc_getmem:
	GLOBAL FPC_GETMEM
FPC_GETMEM:
..@c800:
; [206] begin
		lea	rsp,[rsp-40]
..@c802:
; Var $result located in register rax
; Var size located in register rcx
; Var size located in register rcx
; [207] result := GetMem(size);
		call	SYSTEM_$$_GETMEM$QWORD$$POINTER
; Var $result located in register rax
; [208] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c801:

SECTION .text
	GLOBAL fpc_freemem
fpc_freemem:
	GLOBAL FPC_FREEMEM
FPC_FREEMEM:
..@c803:
; [211] begin
		lea	rsp,[rsp-40]
..@c805:
; Var p located in register rax
; Var p located in register rcx
; [212] FreeMem(p);
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
; [213] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c804:

SECTION .text
SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000028E:
..@c806:
; [system.pas]
; [270] end;
		push	rbp
..@c808:
..@c809:
		mov	rbp,rcx
..@c810:
		lea	rsp,[rsp-32]
; [268] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c807:

SECTION .text
	GLOBAL SYSTEM_$$_MSGDEBUG$ANSISTRING
SYSTEM_$$_MSGDEBUG$ANSISTRING:
..@c811:
		push	rbp
..@c813:
..@c814:
		mov	rbp,rsp
..@c815:
		lea	rsp,[rsp-48]
; Var msg located at rbp-8, size=OS_64
		mov	qword [rbp-8],rcx
		call	fpc_ansistr_incr_ref
..@j1448:
		nop
..@j1444:
; [269] MessageBoxA(0, @msg[1], 'DEBUG', 0);
		mov	rdx,qword [rbp-8]
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld33]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
..@j1446:
		nop
..@j1445:
		mov	rcx,rbp
		call	SYSTEM$_$MSGDEBUG$ANSISTRING_$$_fin$0000028E
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c812:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c816:
; [294] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c818:
; Var i located in register ebx
; [295] for i := 1 to InitFinalTable.TableCount do begin
		mov	esi,dword [INITFINAL]
		cmp	esi,1
		jnge	..@j1452
		xor	ebx,ebx
..@j1453:
		inc	ebx
; [296] if InitFinalTable.Procs[i].InitProc <> nil then begin
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax],0
		je	..@j1457
; [297] InitFinalTable.Procs[i].InitProc();
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax]
..@j1457:
		cmp	esi,ebx
		jnle	..@j1453
..@j1452:
; [300] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c817:

SECTION .text
	GLOBAL fpc_copy
fpc_copy:
	GLOBAL FPC_COPY
FPC_COPY:
..@c819:
; Var $result located in register rax
; Var Src located in register rcx
; Var Dest located in register rdx
; Var TypeInfo located in register r8
; [310] begin
; Var $result located in register rax
; [311] result:=sizeof(pointer);
		mov	eax,8
; [312] end;
		ret
..@c820:

SECTION .text
	GLOBAL fpc_copy_proc
fpc_copy_proc:
..@c821:
; [315] begin
		lea	rsp,[rsp-40]
..@c823:
; Var Src located in register rax
; Var Dest located in register rdx
; Var TypeInfo located in register r8
; Var TypeInfo located in register r8
; Var Dest located in register rdx
; Var Src located in register rcx
; [316] fpc_copy_internal(src,dest,typeinfo);
		call	FPC_COPY
; [317] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c822:

SECTION .text
	GLOBAL fpc_finalizeunits
fpc_finalizeunits:
	GLOBAL FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
..@c824:
; [324] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c826:
; Var i located in register ebx
; [325] for i := 1 to InitFinalTable.TableCount do begin
		mov	esi,dword [INITFINAL]
		cmp	esi,1
		jnge	..@j1465
		xor	ebx,ebx
..@j1466:
		inc	ebx
; [326] if InitFinalTable.Procs[i].FinalProc <> nil then begin
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax+8],0
		je	..@j1470
; [327] InitFinalTable.Procs[i].FinalProc();
		mov	eax,ebx
		shl	rax,4
		lea	rdx,[INITFINAL]
		call	[rdx+rax+8]
..@j1470:
		cmp	esi,ebx
		jnle	..@j1466
..@j1465:
; [330] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c825:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c827:
; [337] begin
		lea	rsp,[rsp-40]
..@c829:
; [338] is_library := true;
		mov	byte [operatingsystem_islibrary],1
; [339] fpc_initializeunits;
		call	FPC_INITIALIZEUNITS
; [340] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c828:

SECTION .text
	GLOBAL SYSTEM_$$_HALT$LONGINT
SYSTEM_$$_HALT$LONGINT:
..@c830:
; [343] Begin
		lea	rsp,[rsp-40]
..@c832:
		mov	eax,ecx
; Var err located in register eax
; [344] internal_do_exit;
		call	FPC_DO_EXIT
; [345] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c831:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c833:
; [348] begin
		lea	rsp,[rsp-40]
..@c835:
; [349] fpc_finalizeunits;
		call	FPC_FINALIZEUNITS
; [350] ExitProcess(ExitCode);
		mov	ecx,dword [operatingsystem_result]
		call	_$dll$kernel32$ExitProcess
; [351] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c834:

SECTION .text
	GLOBAL _fpc_leave
_fpc_leave:
	GLOBAL _FPC_leave
_FPC_leave:
..@c838:
; [365] begin
		lea	rsp,[rsp-40]
..@c840:
; Var a1 located in register rax
; Var a2 located in register rdx
; Var a3 located in register r8
; Var a4 located in register r9
; Var a4 located in register r9
; Var a3 located in register r8
; Var a2 located in register rdx
; Var a1 located in register rcx
; [366] _fpc__leave(a1, a2, a3, a4);
		call	SYSTEM_$$__FPC__LEAVE$POINTER$POINTER$POINTER$POINTER
; [367] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c839:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
	GLOBAL FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
..@c841:
; [378] begin
; [379] end;
		ret
..@c842:

SECTION .text
	GLOBAL SYSTEM_$$_BSRBYTE$BYTE$$BYTE
SYSTEM_$$_BSRBYTE$BYTE$$BYTE:
..@c843:
; [395] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c845:
; Var $result located in register al
; Var bsr located in register rax
		mov	bl,cl
; Var avalue located in register bl
; [396] bsr := GetBsr8bit;
		call	_$dll$rtllib$GetBsr8bit
; Var bsr located in register rax
; Var bsr located in register rax
; [397] result := bsr^[AValue];
		movzx	ebx,bl
; Var $result located in register al
		mov	al,byte [rax+rbx*1]
; [398] end;
		movzx	eax,al
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c844:

SECTION .text
	GLOBAL SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL:
..@c846:
; [404] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c848:
; Var $result located in register eax
; Var tmp located in register eax
		mov	eax,ecx
; Var AValue located in register eax
; [405] result:=ord(AValue>$FFFF)*16;
		cmp	eax,65535
		seta	dl
		movzx	edx,dl
		shl	edx,4
; Var $result located in register edx
; [406] tmp:=AValue shr result;
		mov	ecx,edx
		shr	eax,cl
; Var tmp located in register eax
; [407] result:=result or (ord(tmp>$FF)*8);
		cmp	eax,255
		seta	bl
		movzx	ebx,bl
		shl	ebx,3
		or	ebx,edx
; Var $result located in register ebx
; [408] tmp:=tmp shr (result and 8);
		mov	edx,ebx
		and	edx,8
		mov	ecx,edx
		shr	eax,cl
; Var tmp located in register ecx
		mov	ecx,eax
; [409] result:=result or BsrByte(byte(tmp));
		movzx	ecx,cl
		call	SYSTEM_$$_BSRBYTE$BYTE$$BYTE
		movzx	eax,al
		or	eax,ebx
; Var $result located in register eax
; [410] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c847:

SECTION .text
	GLOBAL SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL:
..@c849:
; [412] begin
		lea	rsp,[rsp-40]
..@c851:
; Var $result located in register eax
; Var avalue located in register ecx
; Var avalue located in register ecx
; [413] result := BsrDWord_(AValue);
		call	SYSTEM_$$_BSRDWORD_$LONGWORD$$CARDINAL
; Var $result located in register eax
; [414] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c850:

SECTION .text
	GLOBAL SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL:
..@c852:
; [428] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c854:
; Var $result located in register eax
; Var tmp located in register eax
		mov	rax,rcx
; Var AValue located in register rax
; Var $result located in register ebx
; [429] result:=32;
		mov	ebx,32
; [430] tmp:=hi(AValue);
		mov	rcx,rax
		shr	rcx,32
; Var tmp located in register ecx
; [431] if (tmp=0) then
		test	ecx,ecx
		jne	..@j1492
; [433] tmp:=lo(AValue);
		mov	ecx,eax
; [434] result:=0;
		xor	ebx,ebx
..@j1492:
; Var tmp located in register ecx
; [436] result:=result or BsrDword(tmp);
		call	SYSTEM_$$_BSRDWORD$LONGWORD$$CARDINAL
		or	eax,ebx
; Var $result located in register eax
; [437] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c853:

SECTION .text
	GLOBAL SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL:
..@c855:
; [439] begin
		lea	rsp,[rsp-40]
..@c857:
; Var $result located in register eax
; Var avalue located in register rcx
; Var avalue located in register rcx
; [440] result := BsrQWord_(AValue);
		call	SYSTEM_$$_BSRQWORD_$QWORD$$CARDINAL
; Var $result located in register eax
; [441] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c856:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD
SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD:
..@c858:
; [455] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c860:
; Var $result located in register rbx
; Var shift located in register eax
; Var lzz located in register eax
; Var lzn located in register eax
		mov	rsi,rcx
; Var n located in register rsi
		mov	rdi,rdx
; Var z located in register rdi
; [457] if (hi(z) = 0) and (hi(n) = 0) then begin
		mov	rax,rdi
		shr	rax,32
		test	eax,eax
		jne	..@j1498
		mov	rax,rsi
		shr	rax,32
		test	eax,eax
		jne	..@j1498
; [458] fpcdivqword := Dword(z) div Dword(n);
		mov	eax,edi
		mov	ecx,esi
		cqo
		idiv	rcx
		mov	rbx,rax
; [459] exit;
		jmp	..@j1495
..@j1498:
; [462] fpcdivqword:=0;
		xor	ebx,ebx
; Var z located in register rdi
; [465] lzz:=BsrQWord(z);
		mov	rcx,rdi
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
		mov	r12d,eax
; Var lzz located in register r12d
; Var n located in register rsi
; [466] lzn:=BsrQWord(n);
		mov	rcx,rsi
		call	SYSTEM_$$_BSRQWORD$QWORD$$CARDINAL
; Var lzn located in register eax
; [470] if lzn > lzz then exit;
		cmp	r12d,eax
		jl	..@j1495
; [472] shift:=lzz-lzn;
		sub	r12d,eax
; Var shift located in register r12d
; [473] n:=n shl shift;
		movsxd	rcx,r12d
		shl	rsi,cl
; Var n located in register rsi
; [474] for shift:=shift downto 0 do
		test	r12d,r12d
		jnge	..@j1503
		inc	r12d
..@j1504:
		dec	r12d
; [476] if z>=n then
		cmp	rsi,rdi
		jnbe	..@j1508
; [478] z:=z-n;
		sub	rdi,rsi
; [479] fpcdivqword:=fpcdivqword+(qword(1) shl shift);
		movsxd	rcx,r12d
		mov	eax,1
		shl	rax,cl
		add	rbx,rax
..@j1508:
; [481] n:=n shr 1;
		shr	rsi,1
		test	r12d,r12d
		jnle	..@j1504
..@j1503:
..@j1495:
; [483] end;
		mov	rax,rbx
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c859:

SECTION .text
	GLOBAL fpc_div_qword
fpc_div_qword:
	GLOBAL FPC_DIV_QWORD
FPC_DIV_QWORD:
..@c861:
; [485] begin
		lea	rsp,[rsp-40]
..@c863:
; Var $result located in register rax
; Var n located in register rcx
; Var z located in register rdx
; Var z located in register rdx
; Var n located in register rcx
; [486] result := fpcdivqword(n, z);
		call	SYSTEM_$$_FPCDIVQWORD$QWORD$QWORD$$QWORD
; Var $result located in register rax
; [487] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c862:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64
SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64:
..@c864:
; Var $result located in register rcx
; Var sign located in register al
; Var q1 located in register r8
; Var q2 located in register r9
; Var n located in register rcx
; Var z located in register rdx
; [502] begin
; Var sign located in register al
; [507] sign := false;
		xor	al,al
; [508] if z < 0 then begin
		test	rdx,rdx
		jnl	..@j1514
; [509] sign := not sign;
		mov	al,1
; [510] q1 := qword(-z);
		mov	r8,rdx
		neg	r8
		jmp	..@j1515
..@j1514:
; [513] q1 := z;
		mov	r8,rdx
..@j1515:
; [515] if n < 0 then begin
		test	rcx,rcx
		jnl	..@j1517
; [516] sign := not sign;
		test	al,al
		sete	al
; [517] q2 := qword(-n);
		mov	r9,rcx
		neg	r9
		jmp	..@j1518
..@j1517:
; [520] q2 := n;
		mov	r9,rcx
..@j1518:
; [522] if sign then
		test	al,al
		je	..@j1520
; [523] result := -(q1 div q2)
		mov	rax,r8
		xor	edx,edx
		div	r9
		neg	rax
		mov	rcx,rax
		jmp	..@j1521
..@j1520:
; [525] result := q1 div q2;
		mov	rax,r8
		xor	edx,edx
		div	r9
		mov	rcx,rax
..@j1521:
; [526] end;
		mov	rax,rcx
		ret
..@c865:

SECTION .text
	GLOBAL fpc_div_int64
fpc_div_int64:
	GLOBAL FPC_DIV_INT64
FPC_DIV_INT64:
..@c866:
; [528] begin
		lea	rsp,[rsp-40]
..@c868:
; Var $result located in register rax
; Var n located in register rcx
; Var z located in register rdx
; Var z located in register rdx
; Var n located in register rcx
; [529] result := fpcdivint64(n, z);
		call	SYSTEM_$$_FPCDIVINT64$INT64$INT64$$INT64
; Var $result located in register rax
; [530] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c867:

SECTION .text
	GLOBAL SYSTEM_$$_FPCHANDLEERROR$LONGINT
SYSTEM_$$_FPCHANDLEERROR$LONGINT:
..@c869:
; [554] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c871:
		mov	ebx,ecx
; Var errno located in register ebx
; [555] writeln('fpc_handleerror, errno = ', errno, ', meaning = ', errmap[errno]);
		call	fpc_get_output
		mov	rsi,rax
		lea	r8,[_$SYSTEM$_Ld71]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		movsxd	r8,ebx
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_sint
		lea	r8,[_$SYSTEM$_Ld72]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	eax,ebx
		lea	rdx,[TC_$SYSTEM$_$FPCHANDLEERROR$LONGINT_$$_ERRMAP]
		mov	r8,qword [rdx+rax*8-1600]
		mov	rdx,rsi
		xor	ecx,ecx
		call	fpc_write_text_ansistr
		mov	rcx,rsi
		call	fpc_writeln_end
; [556] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c870:

SECTION .text
	GLOBAL fpc_handleerror
fpc_handleerror:
	GLOBAL FPC_HANDLEERROR
FPC_HANDLEERROR:
..@c872:
; [558] begin
		lea	rsp,[rsp-40]
..@c874:
; Var errno located in register eax
; Var errno located in register ecx
; [559] fpchandleerror(errno);
		call	SYSTEM_$$_FPCHANDLEERROR$LONGINT
; [560] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c873:

SECTION .text
	GLOBAL fpc_popaddrstack
fpc_popaddrstack:
	GLOBAL FPC_POPADDRSTACK
FPC_POPADDRSTACK:
..@c875:
; [572] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c877:
; [573] writeln('fpc_popaddrstack');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld73]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [574] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c876:

SECTION .text
	GLOBAL fpc_pushexceptaddr
fpc_pushexceptaddr:
	GLOBAL FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
..@c878:
; [577] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c880:
; Var $result located in register rdx
; Var ft located in register ecx
; Var _buf located in register rdx
; Var _newaddr located in register r8
; [578] writeln('fpc_pushexceptaddr');
		call	fpc_get_output
		mov	rbx,rax
		lea	r8,[_$SYSTEM$_Ld74]
		mov	rdx,rbx
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,rbx
		call	fpc_writeln_end
; [579] end;
		mov	rax,rdx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c879:

SECTION .text
	GLOBAL SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER:
	GLOBAL FPC_BREAK_ERROR
FPC_BREAK_ERROR:
..@c889:
; [731] begin
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c891:
		mov	ebx,ecx
; Var Errno located in register ebx
		mov	rsi,rdx
; Var addr located in register rsi
		mov	rdi,r8
; Var frame located in register rdi
; [732] if CodePointer(ErrorProc) <> nil then ErrorProc(Errno, addr, frame);
		cmp	qword [TC_$SYSTEM_$$_ERRORPROC],0
		je	..@j1543
		mov	r8,rdi
		mov	rdx,rsi
		mov	ecx,ebx
		call	TC_$SYSTEM_$$_ERRORPROC
..@j1543:
; [733] ErrorCode := Word(Errno);
		mov	word [TC_$SYSTEM_$$_ERRORCODE],bx
; [734] ErrorAddr := addr;
		mov	rdx,rsi
; Var addr located in register rdx
		mov	qword [TC_$SYSTEM_$$_ERRORADDR],rdx
; [735] ErrorBase := frame;
		mov	r8,rdi
; Var frame located in register r8
		mov	qword [FPC_ERRORBASE],r8
; [736] if ExceptAddrStack <> nil then raise TObject(nil) at addr, frame;
		cmp	qword [U_$SYSTEM_$$_EXCEPTADDRSTACK],0
		je	..@j1545
		xor	ecx,ecx
		call	fpc_raiseexception
..@j1545:
; [737] Halt(ErrorCode);
		movzx	ecx,word [TC_$SYSTEM_$$_ERRORCODE]
		call	SYSTEM_$$_HALT$LONGINT
; [738] end;
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c890:

SECTION .text
	GLOBAL fpc_overflow
fpc_overflow:
	GLOBAL FPC_OVERFLOW
FPC_OVERFLOW:
..@c892:
; [741] begin
		lea	rsp,[rsp-40]
..@c894:
; [742] Halt(215); // IntOverflow
		mov	ecx,215
		call	SYSTEM_$$_HALT$LONGINT
; [743] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c893:

SECTION .text
SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$0000029B:
..@c895:
; [748] end;
		push	rbp
..@c897:
..@c898:
		mov	rbp,rcx
..@c899:
		lea	rsp,[rsp-32]
; [746] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c896:

SECTION .text
	GLOBAL SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION
SYSTEM$_$TTESTEXCEPTION_$__$$_CREATE$ANSISTRING$$TTESTEXCEPTION:
..@c900:
		push	rbp
..@c902:
..@c903:
		mov	rbp,rsp
..@c904:
		lea	rsp,[rsp-64]
; Var msg located at rbp-8, size=OS_64
; Var $vmt located at rbp-16, size=OS_64
; Var $self located at rbp-24, size=OS_64
; Var $vmt_afterconstruction_local located at rbp-32, size=OS_S64
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-8],r8
		mov	rcx,r8
		call	fpc_ansistr_incr_ref
		cmp	qword [rbp-16],1
		jne	..@j1553
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-24],rax
..@j1553:
		cmp	qword [rbp-24],0
		je	..@j1548
..@j1561:
		nop
..@j1560:
		mov	qword [rbp-32],-1
..@j1566:
		nop
..@j1562:
; [747] test := msg;
		mov	rax,qword [rbp-24]
		lea	rcx,[rax+8]
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j1564:
		nop
..@j1563:
		mov	rcx,rbp
		call	SYSTEM$_$TTESTEXCEPTION_$_CREATE$ANSISTRING$$TTESTEXCEPTION_$$_fin$0000029B
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j1558
		cmp	qword [rbp-16],0
		je	..@j1558
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+128]
		jmp	..@j1558
..@j1557:
		cmp	qword [rbp-16],0
		je	..@j1571
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+96]
..@j1571:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j1572:
		nop
..@j1558:
..@j1548:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	2,0
	DD	1

SECTION .text
..@c901:

SECTION .text
	GLOBAL SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX
SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX:
..@c905:
; [761] begin
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c907:
; Var elesize located in register rax
; Var eletype located in register rax
; Var eletypemngd located in register rax
; Var ti located in register rax
; Var size located in register rax
; Var newp located in register rdi
		mov	rbx,rcx
; Var p located in register rbx
; Var pti located in register rdx
; Var dimcount located in register r8
		mov	rsi,r9
; Var dims located in register rsi
; [772] if dimcount > 1 then begin
		cmp	r8,1
		jg	..@j1573
; [777] if dims[0] < 0 then begin
		cmp	qword [rsi],0
; [782] if dims[0] = 0 then begin
		cmp	qword [rsi],0
		je	..@j1573
; [788] ti := pointer(pti)+2+pbyte(pti)[1];
		lea	rcx,[rdx+2]
		movzx	eax,byte [rdx+1]
		add	rax,rcx
; Var ti located in register rax
; Var ti located in register rax
; Var elesize located in register r8
; [789] elesize := psizeuint(ti)^;
		mov	r8,qword [rax]
; Var ti located in register rax
; [791] eletype := pdynarraytypedata(ti)^.elType2^;
		mov	rdx,qword [rax+8]
; Var eletype located in register rdx
		mov	rdx,qword [rdx]
; [795] if assigned(pdynarraytypedata(ti)^.elType) then eletypemngd := pdynarraytypedata(ti)^.elType^ else eletypemngd := nil;
		cmp	qword [rax+20],0
		je	..@j1582
		mov	rax,qword [rax+20]
		mov	rax,qword [rax]
		jmp	..@j1583
..@j1582:
		xor	eax,eax
..@j1583:
; [801] size := elesize*dims[0]+sizeof(tdynarray);
		mov	rcx,qword [rsi]
		imul	rcx,r8
		jno	..@j1584
		call	FPC_OVERFLOW
..@j1584:
		add	rcx,16
		jno	..@j1585
		call	FPC_OVERFLOW
..@j1585:
; Var size located in register rcx
; [805] if not assigned(p) then begin
		cmp	qword [rbx],0
		jne	..@j1587
; [808] newp := xallocmem(size);
		call	XMM_$$_XALLOCMEM$QWORD$$POINTER
		mov	rdi,rax
		jmp	..@j1588
..@j1587:
; [815] writeln('array needs reallocation');
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld75]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
; [816] writeln('@@todo to be implemented!');
		call	fpc_get_output
		mov	r12,rax
		lea	r8,[_$SYSTEM$_Ld76]
		mov	rdx,r12
		xor	ecx,ecx
		call	fpc_write_text_shortstr
		mov	rcx,r12
		call	fpc_writeln_end
..@j1588:
; [819] p := pointer(newp)+sizeof(tdynarray);
		lea	rax,[rdi+16]
		mov	qword [rbx],rax
; Var newp located in register rdi
; [821] newp^.refcount := 1;
		mov	qword [rdi],1
; Var newp located in register rdi
; [822] newp^.high := dims[0]-1;
		mov	rax,qword [rsi]
		dec	rax
		mov	qword [rdi+8],rax
..@j1573:
; [823] end;
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c906:

SECTION .text
	GLOBAL fpc_dynarray_setlength
fpc_dynarray_setlength:
	GLOBAL FPC_DYNARR_SETLENGTH
FPC_DYNARR_SETLENGTH:
..@c908:
; [825] begin
		lea	rsp,[rsp-40]
..@c910:
; Var p located in register rax
; Var pti located in register rdx
; Var dimcount located in register r8
; Var dims located in register r9
; Var dims located in register r9
; Var dimcount located in register r8
; Var pti located in register rdx
; [826] fpcdynarraysetlength(p, pti, dimcount, dims);
		call	SYSTEM_$$_FPCDYNARRAYSETLENGTH$POINTER$POINTER$INT64$PDYNARRAYINDEX
; [827] end;
		nop
		lea	rsp,[rsp+40]
		ret
..@c909:

SECTION .text
	GLOBAL fpc_dynarray_length
fpc_dynarray_length:
	GLOBAL FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
..@c911:
; Var $result located in register rax
; Var p located in register rcx
; [838] begin
; [839] if p = nil then exit(0);
		test	rcx,rcx
		jne	..@j1594
		xor	eax,eax
		ret
..@j1594:
; Var p located in register rcx
; [840] result := pdynarray(p-sizeof(tdynarray))^.high+1;
		mov	rdx,qword [rcx-8]
		inc	rdx
		mov	rax,rdx
; [841] end;
		ret
..@c912:

SECTION .text
	GLOBAL fpc_dynarray_high
fpc_dynarray_high:
	GLOBAL FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
..@c913:
; Var $result located in register rax
; Var p located in register rcx
; [844] begin
; [845] if p = nil then exit(0);
		test	rcx,rcx
		jne	..@j1598
		xor	eax,eax
		ret
..@j1598:
; Var p located in register rcx
; [846] result := pdynarray(p-sizeof(tdynarray))^.high;
		mov	rax,qword [rcx-8]
; [847] end;
		ret
..@c914:

SECTION .text
	GLOBAL fpc_dynarray_incr_ref
fpc_dynarray_incr_ref:
	GLOBAL FPC_DYNARRAY_INCR_REF
FPC_DYNARRAY_INCR_REF:
..@c915:
; [852] begin
		push	rbx
		lea	rsp,[rsp-32]
..@c917:
; Var d located in register rax
; Var p located in register rcx
; [853] if p = nil then exit;
		test	rcx,rcx
		je	..@j1599
; [854] d := pdynarray(p-sizeof(tdynarray));
		lea	rbx,[rcx-16]
; Var d located in register rbx
; [855] if d^.refcount = 0 then
		cmp	qword [rbx],0
		jne	..@j1604
; [857] HandleError(204)
		mov	ecx,204
		call	FPC_HANDLEERROR
		jmp	..@j1605
..@j1604:
; [858] else if d^.refcount>0 then
		cmp	qword [rbx],0
		jng	..@j1607
; [861] inc(d^.refcount);
		inc	qword [rbx]
..@j1607:
..@j1605:
..@j1599:
; [862] end;
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c916:

SECTION .text
	GLOBAL fpc_dynarray_clear
fpc_dynarray_clear:
	GLOBAL FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
..@c918:
; [867] begin
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c920:
; Var d located in register rax
		mov	rbx,rcx
; Var p located in register rbx
; Var ti located in register rdx
; [868] if p = nil then exit;
		cmp	qword [rbx],0
		je	..@j1608
; [869] d := pdynarray(p-sizeof(tdynarray));
		mov	rax,qword [rbx]
		lea	rsi,[rax-16]
; Var d located in register rsi
; [870] if d^.refcount = 0 then
		cmp	qword [rsi],0
		jne	..@j1613
; [872] HandleError(204);
		mov	ecx,204
		call	FPC_HANDLEERROR
..@j1613:
; [873] if d^.refcount > 0 then begin
		cmp	qword [rsi],0
		jng	..@j1615
; [874] dec(d^.refcount); // todo: locked
		dec	qword [rsi]
; [878] FreeMem(d);
		mov	rcx,rsi
		call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
..@j1615:
; [880] p := nil;
		mov	qword [rbx],0
..@j1608:
; [881] end;
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c919:

SECTION .text
SYSTEM$_$fpc_chararray_to_ansistr$array_of_CHAR$BOOLEAN$$ANSISTRING_$$_fin$0000029C:
..@c921:
; [915] end;
		push	rbp
..@c923:
..@c924:
		mov	rbp,rcx
..@c925:
		lea	rsp,[rsp-32]
; [886] begin
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c922:

SECTION .text
	GLOBAL fpc_chararray_to_ansistr
fpc_chararray_to_ansistr:
..@c926:
; Temps allocated between rbp-40 and rbp+0
		push	rbp
..@c928:
..@c929:
		mov	rbp,rsp
..@c930:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	qword [rbp-16],r12
; Var i located in register r12
		mov	rbx,rcx
; Var $result located in register rbx
		mov	rsi,rdx
; Var arr located in register rsi
		mov	rdi,r8
; Var $highARR located in register rdi
		mov	r12b,r9b
; Var zerobased located in register r12b
		mov	qword [rbp-8],0
..@j1624:
		nop
..@j1620:
; [887] result := '';
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
; [889] if (zerobased) then
		test	r12b,r12b
		je	..@j1626
; [891] i := 0;
		xor	r12,r12
..@j1627:
; [893] if (arr[i] = #0) Then
		cmp	byte [rsi+r12*1],0
		jne	..@j1631
; [895] i := 0;
		xor	r12,r12
; [896] exit;
		jmp	..@j1622
..@j1631:
; [899] result := result + arr[i];
		movzx	edx,byte [rsi+r12*1]
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [901] inc(i);
		inc	r12
; [902] until i = Length(arr);
		lea	rax,[rdi+1]
		cmp	rax,r12
		jne	..@j1627
		jmp	..@j1633
..@j1626:
; [905] i := 0;
		xor	r12,r12
..@j1634:
; [907] result := result + arr[i];
		movzx	edx,byte [rsi+r12*1]
		xor	r8d,r8d
		lea	rcx,[rbp-8]
		call	fpc_char_to_ansistr
		mov	r8,qword [rbp-8]
		mov	rdx,qword [rbx]
		mov	rcx,rbx
		xor	r9d,r9d
		call	fpc_ansistr_concat
; [908] inc(i);
		inc	r12
; [909] until i = high(arr)+1;
		lea	rax,[rdi+1]
		cmp	rax,r12
		jne	..@j1634
..@j1633:
; [911] if i > 0 then
		test	r12,r12
		jng	..@j1638
; [913] Move (arr[0],Pointer(fpc_CharArray_To_AnsiStr)^,i);
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		mov	r8,r12
		call	SYSTEM_$$_MOVE$formal$formal$QWORD
..@j1638:
..@j1622:
		nop
..@j1621:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_chararray_to_ansistr$array_of_CHAR$BOOLEAN$$ANSISTRING_$$_fin$0000029C
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		mov	r12,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c927:

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1:
; [objects.inc]
; [566] function TInterfacedObject.QueryInterface(constref iid: TGUID; out obj): LongInt; stdcall;
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LONGINT

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT:
; [571] function TInterfacedObject._AddRef: LongInt; stdcall;
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT

SECTION .text
	ALIGN 16
	GLOBAL WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
; [578] function TInterfacedObject._Release: LongInt; stdcall;
		sub	rcx,16
		jmp	SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

SECTION .text
	GLOBAL INIT$_$SYSTEM
INIT$_$SYSTEM:
	GLOBAL SYSTEM_$$_init$
SYSTEM_$$_init$:
..@c941:
; [system.pas]
; [1033] initialization
		lea	rsp,[rsp-40]
..@c943:
; [1034] install_exception_handlers;
		call	SYSTEM_$$_INSTALL_EXCEPTION_HANDLERS
; [1036] end.
		nop
		lea	rsp,[rsp+40]
		ret
..@c942:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
; [system_types.inc]
; [254] FPC_EMPTYCHAR: AnsiChar; public name 'FPC_EMPTYCHAR';
	GLOBAL FPC_EMPTYCHAR
FPC_EMPTYCHAR:	RESB	1

SECTION .bss
	ALIGNB 8
; [exceptions.inc]
; [152] ExceptAddrStack:   PExceptAddr;
	GLOBAL U_$SYSTEM_$$_EXCEPTADDRSTACK
U_$SYSTEM_$$_EXCEPTADDRSTACK:	RESB	8

SECTION .bss
	ALIGNB 8
; [153] ExceptObjectStack: PExceptObject;
	GLOBAL U_$SYSTEM_$$_EXCEPTOBJECTSTACK
U_$SYSTEM_$$_EXCEPTOBJECTSTACK:	RESB	8

SECTION .bss
	ALIGNB 8
; [system.pas]
; [200] StdIn, StdOut, StdErr: HANDLE;       // initialized in sysinitpas if app type is CONSOLE
	GLOBAL U_$SYSTEM_$$_STDIN
U_$SYSTEM_$$_STDIN:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_STDOUT
U_$SYSTEM_$$_STDOUT:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_STDERR
U_$SYSTEM_$$_STDERR:	RESB	8

SECTION .bss
	ALIGNB 8
; [201] EntryInformation: TEntryInformation; // @@todo: check if EntryInformation is used
	GLOBAL U_$SYSTEM_$$_ENTRYINFORMATION
U_$SYSTEM_$$_ENTRYINFORMATION:	RESB	56

SECTION .bss
	ALIGNB 4
; [203] ExitCode: LongInt;           public name 'operatingsystem_result';
	GLOBAL operatingsystem_result
operatingsystem_result:	RESB	4

SECTION .bss
	ALIGNB 8
; [exceptions64.inc]
; [226] ex_rip   : array[0..ex_max_level-1] of qword;
U_$SYSTEM_$$_EX_RIP:	RESB	128

SECTION .bss
	ALIGNB 8
; [227] except_signal : array[0..ex_max_level-1] of qword;
U_$SYSTEM_$$_EXCEPT_SIGNAL:	RESB	128

SECTION .bss
; [228] reset_fpu    : array[0..ex_max_level-1] of boolean;
U_$SYSTEM_$$_RESET_FPU:	RESB	16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d77,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; [system.pas]

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IID_$SYSTEM_$$_IUNKNOWN
IID_$SYSTEM_$$_IUNKNOWN	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IIDSTR_$SYSTEM_$$_IUNKNOWN
IIDSTR_$SYSTEM_$$_IUNKNOWN	DB	38
		DB	"{00000000-0000-0000-C000-000000000046}"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TINTERFACEDOBJECT
VMT_$SYSTEM_$$_TINTERFACEDOBJECT	DQ	24,-24,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d78,0,0,0,RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
	DQ	0,0,..@d80,0,SYSTEM$_$TINTERFACEDOBJECT_$__$$_DESTROY,SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION,SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TTESTEXCEPTION
VMT_$SYSTEM_$$_TTESTEXCEPTION	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d81,0,0,0,RTTI_$SYSTEM_$$_TTESTEXCEPTION
	DQ	INIT_$SYSTEM_$$_TTESTEXCEPTION,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .rodata
..@d34$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d34:
; [545] 'DivByZero',        'RangeError',      'StackOverflow',     '203',            '204',
		DB	"DivByZero",0

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d35:
		DB	"RangeError",0

SECTION .rodata
..@d36$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d36:
		DB	"StackOverflow",0

SECTION .rodata
..@d37$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d37:
		DB	"203",0

SECTION .rodata
..@d38$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d38:
		DB	"204",0

SECTION .rodata
..@d39$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d39:
; [546] 'Overflow',         'Underflow',       'InvalidOp',         'ZeroDivide',     '209',
		DB	"Overflow",0

SECTION .rodata
..@d40$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d40:
		DB	"Underflow",0

SECTION .rodata
..@d41$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d41:
		DB	"InvalidOp",0

SECTION .rodata
..@d42$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d42:
		DB	"ZeroDivide",0

SECTION .rodata
..@d43$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d43:
		DB	"209",0

SECTION .rodata
..@d44$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d44:
; [547] 'ObjectCheckError', 'AbstractError',   'ExternalException', '213',            'BusError',
		DB	"ObjectCheckError",0

SECTION .rodata
..@d45$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d45:
		DB	"AbstractError",0

SECTION .rodata
..@d46$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d46:
		DB	"ExternalException",0

SECTION .rodata
..@d47$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d47:
		DB	"213",0

SECTION .rodata
..@d48$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d48:
		DB	"BusError",0

SECTION .rodata
..@d49$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d49:
; [548] 'IntOverflow',      'AccessViolation', 'ControlC',          'Privilege',      'InvalidCast',
		DB	"IntOverflow",0

SECTION .rodata
..@d50$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d50:
		DB	"AccessViolation",0

SECTION .rodata
..@d51$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d51:
		DB	"ControlC",0

SECTION .rodata
..@d52$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d52:
		DB	"Privilege",0

SECTION .rodata
..@d53$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d53:
		DB	"InvalidCast",0

SECTION .rodata
..@d54$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d54:
; [549] 'InvalidVarCast',   'InvalidVarOp',    'DispatchError',     'VarArrayCreate', 'VarNotArray',
		DB	"InvalidVarCast",0

SECTION .rodata
..@d55$strlab:
	DW	0,1
	DD	0
	DQ	-1,12
..@d55:
		DB	"InvalidVarOp",0

SECTION .rodata
..@d56$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d56:
		DB	"DispatchError",0

SECTION .rodata
..@d57$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d57:
		DB	"VarArrayCreate",0

SECTION .rodata
..@d58$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d58:
		DB	"VarNotArray",0

SECTION .rodata
..@d59$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d59:
; [550] 'VarArrayBounds',   '226',             'AssertionFailed',   'IntfCastError',  'SafecallException',
		DB	"VarArrayBounds",0

SECTION .rodata
..@d60$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d60:
		DB	"226",0

SECTION .rodata
..@d61$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d61:
		DB	"AssertionFailed",0

SECTION .rodata
..@d62$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d62:
		DB	"IntfCastError",0

SECTION .rodata
..@d63$strlab:
	DW	0,1
	DD	0
	DQ	-1,17
..@d63:
		DB	"SafecallException",0

SECTION .rodata
..@d64$strlab:
	DW	0,1
	DD	0
	DQ	-1,3
..@d64:
; [551] '230',              'iconvError',      'NoThreadSupport',   'SigQuit',        'MissingWStringManager',
		DB	"230",0

SECTION .rodata
..@d65$strlab:
	DW	0,1
	DD	0
	DQ	-1,10
..@d65:
		DB	"iconvError",0

SECTION .rodata
..@d66$strlab:
	DW	0,1
	DD	0
	DQ	-1,15
..@d66:
		DB	"NoThreadSupport",0

SECTION .rodata
..@d67$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d67:
		DB	"SigQuit",0

SECTION .rodata
..@d68$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d68:
		DB	"MissingWStringManager",0

SECTION .rodata
..@d69$strlab:
	DW	0,1
	DD	0
	DQ	-1,16
..@d69:
; [552] 'NoDynLibsSupport', 'ThreadError'
		DB	"NoDynLibsSupport",0

SECTION .rodata
..@d70$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d70:
; [553] );
		DB	"ThreadError",0

SECTION .data
	ALIGN 8,DB 0
..@d77:
	DB	7
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d78:
	DB	17
		DB	"TInterfacedObject"

SECTION .data
	ALIGN 8,DB 0
..@d79:
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$_QUERYINTERFACE$TGUID$formal$$LON$CRC5A30FEB1
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__ADDREF$$LONGINT
	DQ	WRPR_$SYSTEM_$$_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT

SECTION .data
	ALIGN 8,DB 0
..@d80:
	DQ	1,IID_$SYSTEM_$$_IUNKNOWN$indirect,..@d79,16,IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
	DD	0
	DB	0,0,0,0

SECTION .data
	ALIGN 8,DB 0
..@d81:
	DB	14
		DB	"TTestException"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXITPROC
TC_$SYSTEM_$$_EXITPROC	DQ	0
; [49] ErrorAddr: CodePointer = nil;

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORADDR
TC_$SYSTEM_$$_ERRORADDR	DQ	0
; [50] ErrorCode: Word = 0;

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORCODE
TC_$SYSTEM_$$_ERRORCODE	DW	0
; [51] ErrorBase: Pointer = nil; public name 'FPC_ERRORBASE';

SECTION .data
	GLOBAL FPC_ERRORBASE
FPC_ERRORBASE	DQ	0
; [55] const

SECTION .data
	GLOBAL TC_$SYSTEM_$$_IOBJECTINSTANCE
TC_$SYSTEM_$$_IOBJECTINSTANCE	DD	-652436748
	DW	15507,16911
	DB	163,3,191,91,168,43,253,35
; [objects.inc]
; [149] type

SECTION .data
	GLOBAL TC_$SYSTEM_$$_DEFAULT8087CW
TC_$SYSTEM_$$_DEFAULT8087CW	DW	4914
; [exceptions.inc]
; [65] DefaultMXCSR: DWord = $1900;

SECTION .data
	GLOBAL TC_$SYSTEM_$$_DEFAULTMXCSR
TC_$SYSTEM_$$_DEFAULTMXCSR	DD	6400
; [68] const

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXCEPTOBJPROC
TC_$SYSTEM_$$_EXCEPTOBJPROC	DQ	0
; [157] ExceptClsProc: TExceptClsProc = nil;

SECTION .data
	GLOBAL TC_$SYSTEM_$$_EXCEPTCLSPROC
TC_$SYSTEM_$$_EXCEPTCLSPROC	DQ	0
; [158] ErrorProc: TErrorProc = nil;

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ERRORPROC
TC_$SYSTEM_$$_ERRORPROC	DQ	0
; [exceptions64.inc]
; [11] type

SECTION .data
	GLOBAL TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT
TC_$SYSTEM_$$_RAISEMAXFRAMECOUNT	DD	16
; [102] type

SECTION .data
	GLOBAL operatingsystem_islibrary
operatingsystem_islibrary	DB	0
; [system.pas]
; [205] is_console: boolean = false; public name 'operatingsystem_isconsole';

SECTION .data
	GLOBAL operatingsystem_isconsole
operatingsystem_isconsole	DB	0
; [206] IsMultithread: boolean = false;

SECTION .data
	GLOBAL TC_$SYSTEM_$$_ISMULTITHREAD
TC_$SYSTEM_$$_ISMULTITHREAD	DB	0
; [208] Procedure fpc_Copy_proc (Src, Dest, TypeInfo : Pointer); compilerproc; inline;

SECTION .rodata
_$SYSTEM$_Ld1:
		DB	16,"press <enter>...",0

SECTION .rodata
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d3:
; [objects.inc]
		DB	"$Capturer",0

SECTION .rodata
_$SYSTEM$_Ld4:
	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70

SECTION .rodata
..@d5$strlab:
	DW	0,1
	DD	0
	DQ	-1,21
..@d5:
		DB	"@@todo: fpc_intf_cast",0

SECTION .data
TC_$SYSTEM_$$_EX_LEVEL	DB	0
; [exceptions64.inc]
; [225] var

SECTION .rodata
_$SYSTEM$_Ld6:
		DB	18,"JumpToHandleSignal",0

SECTION .rodata
_$SYSTEM$_Ld7:
		DB	25,"signals_exception_handler",0

SECTION .rodata
_$SYSTEM$_Ld8:
		DB	23,"exrec^.ExceptionCode = ",0

SECTION .rodata
_$SYSTEM$_Ld9:
		DB	28,"syswin_x64_exception_handler",0

SECTION .data
TC_$SYSTEM_$$_VECTORED_EXCEPTION_HANDLER	DQ	0
; [356] procedure install_exception_handlers; export;

SECTION .rodata
_$SYSTEM$_Ld10:
		DB	22,"__FPC_specific_handler",0

SECTION .rodata
_$SYSTEM$_Ld11:
		DB	18,"fpc_raiseexception",0

SECTION .rodata
_$SYSTEM$_Ld12:
		DB	7,"obj nil",0

SECTION .rodata
_$SYSTEM$_Ld13:
		DB	10,"anaddr nil",0

SECTION .rodata
_$SYSTEM$_Ld14:
		DB	10,"aframe nil",0

SECTION .rodata
_$SYSTEM$_Ld15:
		DB	20,"exception message = ",0

SECTION .rodata
_$SYSTEM$_Ld16:
; [rtti.inc]
		DB	14,"fpc_initialize",0

SECTION .rodata
_$SYSTEM$_Ld17:
		DB	12,"fpc_finalize",0

SECTION .rodata
_$SYSTEM$_Ld18:
		DB	"&decrease refcount of interfaced object",0

SECTION .rodata
_$SYSTEM$_Ld19:
		DB	10,"fpc_addref",0

SECTION .rodata
_$SYSTEM$_Ld20:
		DB	10,"fpc_decref",0

SECTION .rodata
..@d21$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d21:
; [io.inc]
		DB	13,10,0

SECTION .rodata
..@d22$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d22:
		DB	"TRUE",0

SECTION .rodata
..@d23$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d23:
		DB	"FALSE",0

SECTION .rodata
_$SYSTEM$_Ld24:
; [strings.inc]
		DB	21,"fpc_val_sint_shortstr",0

SECTION .rodata
_$SYSTEM$_Ld25:
		DB	17,"fpc_shortstr_sint",0

SECTION .rodata
_$SYSTEM$_Ld26:
		DB	24,"fpc_ansistr_concat_multi",0

SECTION .rodata
_$SYSTEM$_Ld27:
		DB	16,"fpc_ansistr_sint",0

SECTION .rodata
_$SYSTEM$_Ld28:
		DB	21,"fpc_pchar_to_shortstr",0

SECTION .rodata
_$SYSTEM$_Ld29:
		DB	20,"fpc_uchar_to_ansistr",0

SECTION .data
TC_$SYSTEM$_$ITOA_EXP$LONGINT$LONGINT$$PANSICHAR_$$_defaultneg	DB	0

SECTION .rodata
..@d30$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d30:
		DB	"0",0

SECTION .rodata
..@d31$strlab:
	DW	1200,2
	DD	0
	DQ	-1,1
..@d31:
	DW	63,0
; [unicode.inc]

SECTION .rodata
..@d32$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d32:
		DB	"?",0

SECTION .rodata
_$SYSTEM$_Ld33:
; [system.pas]
		DB	"DEBUG",0

SECTION .data
TC_$SYSTEM$_$FPCHANDLEERROR$LONGINT_$$_ERRMAP	DQ	..@d34,..@d35,..@d36,..@d37,..@d38,..@d39,..@d40,..@d41,..@d42,..@d43,..@d44
	DQ	..@d45,..@d46,..@d47,..@d48,..@d49,..@d50,..@d51,..@d52,..@d53,..@d54,..@d55
	DQ	..@d56,..@d57,..@d58,..@d59,..@d60,..@d61,..@d62,..@d63,..@d64,..@d65,..@d66
	DQ	..@d67,..@d68,..@d69,..@d70

SECTION .rodata
_$SYSTEM$_Ld71:
		DB	25,"fpc_handleerror, errno = ",0

SECTION .rodata
_$SYSTEM$_Ld72:
		DB	12,", meaning = ",0

SECTION .rodata
_$SYSTEM$_Ld73:
		DB	16,"fpc_popaddrstack",0

SECTION .rodata
_$SYSTEM$_Ld74:
		DB	18,"fpc_pushexceptaddr",0

SECTION .rodata
_$SYSTEM$_Ld75:
		DB	24,"array needs reallocation",0

SECTION .rodata
_$SYSTEM$_Ld76:
		DB	25,"@@todo to be implemented!",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal	DB	0,7
; [1037] 
		DB	"$formal"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_typedformal
RTTI_$SYSTEM_$$_typedformal	DB	0,12
		DB	"$typedformal"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_void
RTTI_$SYSTEM_$$_void	DB	1,5
		DB	"$void"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINTER
RTTI_$SYSTEM_$$_POINTER	DB	29,7
		DB	"Pointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTE
RTTI_$SYSTEM_$$_BYTE	DB	1,4
		DB	"Byte"
	DB	1
	DD	0,255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTINT
RTTI_$SYSTEM_$$_SHORTINT	DB	1,8
		DB	"ShortInt"
	DB	0
	DD	-128,127

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORD
RTTI_$SYSTEM_$$_WORD	DB	1,4
		DB	"Word"
	DB	3
	DD	0,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALLINT
RTTI_$SYSTEM_$$_SMALLINT	DB	1,8
		DB	"SmallInt"
	DB	2
	DD	-32768,32767

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGWORD
RTTI_$SYSTEM_$$_LONGWORD	DB	1,8
		DB	"LongWord"
	DB	5
	DD	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGINT
RTTI_$SYSTEM_$$_LONGINT	DB	1,7
		DB	"LongInt"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORD
RTTI_$SYSTEM_$$_QWORD	DB	20,5
		DB	"QWord"
	DB	7
	DQ	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_INT64
RTTI_$SYSTEM_$$_INT64	DB	19,5
		DB	"Int64"
	DB	6
	DQ	-9223372036854775808,9223372036854775807

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_uint128
RTTI_$SYSTEM_$$_uint128	DB	1,8
		DB	"$uint128"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_int128
RTTI_$SYSTEM_$$_int128	DB	1,7
		DB	"$int128"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN
RTTI_$SYSTEM_$$_BOOLEAN	DB	18,7
		DB	"Boolean"
	DB	1
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN8
RTTI_$SYSTEM_$$_BOOLEAN8	DB	18,8
		DB	"Boolean8"
	DB	1
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN16
RTTI_$SYSTEM_$$_BOOLEAN16	DB	18,9
		DB	"Boolean16"
	DB	3
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN32
RTTI_$SYSTEM_$$_BOOLEAN32	DB	18,9
		DB	"Boolean32"
	DB	5
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN64
RTTI_$SYSTEM_$$_BOOLEAN64	DB	18,9
		DB	"Boolean64"
	DB	7
	DQ	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTEBOOL
RTTI_$SYSTEM_$$_BYTEBOOL	DB	18,8
		DB	"ByteBool"
	DB	0
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORDBOOL
RTTI_$SYSTEM_$$_WORDBOOL	DB	18,8
		DB	"WordBool"
	DB	2
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBOOL
RTTI_$SYSTEM_$$_LONGBOOL	DB	18,8
		DB	"LongBool"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORDBOOL
RTTI_$SYSTEM_$$_QWORDBOOL	DB	18,9
		DB	"QWordBool"
	DB	6
	DQ	-9223372036854775808,9223372036854775807

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CHAR
RTTI_$SYSTEM_$$_CHAR	DB	2,4
		DB	"Char"
	DB	1
	DD	0,255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDECHAR
RTTI_$SYSTEM_$$_WIDECHAR	DB	17,8
		DB	"WideChar"
	DB	3
	DD	0,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTSTRING
RTTI_$SYSTEM_$$_SHORTSTRING	DB	7,11
		DB	"ShortString"
	DB	255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_longstring
RTTI_$SYSTEM_$$_longstring	DB	8,11
		DB	"$longstring"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ANSISTRING
RTTI_$SYSTEM_$$_ANSISTRING	DB	9,10
		DB	"AnsiString"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDESTRING
RTTI_$SYSTEM_$$_WIDESTRING	DB	10,10
		DB	"WideString"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNICODESTRING
RTTI_$SYSTEM_$$_UNICODESTRING	DB	24,13
		DB	"UnicodeString"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OPENSTRING
RTTI_$SYSTEM_$$_OPENSTRING	DB	7,10
		DB	"OpenString"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SINGLE
RTTI_$SYSTEM_$$_SINGLE	DB	4,6
		DB	"Single"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_DOUBLE
RTTI_$SYSTEM_$$_DOUBLE	DB	4,6
		DB	"Double"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_s80real
RTTI_$SYSTEM_$$_s80real	DB	4,8
		DB	"$s80real"
	DB	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_sc80real
RTTI_$SYSTEM_$$_sc80real	DB	4,9
		DB	"$sc80real"
	DB	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CURRENCY
RTTI_$SYSTEM_$$_CURRENCY	DB	4,8
		DB	"Currency"
	DB	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_char_pointer
RTTI_$SYSTEM_$$_char_pointer	DB	29,13
		DB	"$char_pointer"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_widechar_pointer
RTTI_$SYSTEM_$$_widechar_pointer	DB	29,17
		DB	"$widechar_pointer"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_parentfp_void_pointer
RTTI_$SYSTEM_$$_parentfp_void_pointer	DB	29,22
		DB	"$parentfp_void_pointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARPOINTER
RTTI_$SYSTEM_$$_NEARPOINTER	DB	29,11
		DB	"NearPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARCSPOINTER
RTTI_$SYSTEM_$$_NEARCSPOINTER	DB	29,13
		DB	"NearCsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARDSPOINTER
RTTI_$SYSTEM_$$_NEARDSPOINTER	DB	29,13
		DB	"NearDsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARSSPOINTER
RTTI_$SYSTEM_$$_NEARSSPOINTER	DB	29,13
		DB	"NearSsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARESPOINTER
RTTI_$SYSTEM_$$_NEARESPOINTER	DB	29,13
		DB	"NearEsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARFSPOINTER
RTTI_$SYSTEM_$$_NEARFSPOINTER	DB	29,13
		DB	"NearFsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARGSPOINTER
RTTI_$SYSTEM_$$_NEARGSPOINTER	DB	29,13
		DB	"NearGsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_openchararray
RTTI_$SYSTEM_$$_openchararray	DB	12,4
		DB	"Char"
	DQ	0,0,RTTI_$SYSTEM_$$_CHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_file
RTTI_$SYSTEM_$$_file	DB	0,5
		DB	"$file"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_VARIANT
RTTI_$SYSTEM_$$_VARIANT	DB	11,7
		DB	"Variant"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OLEVARIANT
RTTI_$SYSTEM_$$_OLEVARIANT	DB	11,10
		DB	"OleVariant"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXT
RTTI_$SYSTEM_$$_TEXT	DB	0,4
		DB	"Text"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TYPEDFILE
RTTI_$SYSTEM_$$_TYPEDFILE	DB	0,9
		DB	"TypedFile"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$___vtbl_ptr_type
INIT_$SYSTEM_$$___vtbl_ptr_type	DB	13,16
		DB	"$__vtbl_ptr_type"
	DQ	0
	DD	40
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_pvmt
RTTI_$SYSTEM_$$_pvmt	DB	29,5
		DB	"$pvmt"
	DQ	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000037
RTTI_$SYSTEM_$$_def00000037	DB	29,0
	DQ	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000038
RTTI_$SYSTEM_$$_def00000038	DB	12,0
	DQ	8,1,RTTI_$SYSTEM_$$_POINTER$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$___vtbl_ptr_type
RTTI_$SYSTEM_$$___vtbl_ptr_type	DB	13,16
		DB	"$__vtbl_ptr_type"
	DQ	INIT_$SYSTEM_$$___vtbl_ptr_type
	DD	40,5
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8,RTTI_$SYSTEM_$$_pvmt$indirect
	DQ	16,RTTI_$SYSTEM_$$_def00000037$indirect,24,RTTI_$SYSTEM_$$_def00000038$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_vtblarray
RTTI_$SYSTEM_$$_vtblarray	DB	12,10
		DB	"$vtblarray"
	DQ	16,2,RTTI_$SYSTEM_$$_pvmt$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_methodpointer
INIT_$SYSTEM_$$_methodpointer	DB	13,14
		DB	"$methodpointer"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_methodpointer
RTTI_$SYSTEM_$$_methodpointer	DB	13,14
		DB	"$methodpointer"
	DQ	INIT_$SYSTEM_$$_methodpointer
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_nestedprocpointer
INIT_$SYSTEM_$$_nestedprocpointer	DB	13,18
		DB	"$nestedprocpointer"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_nestedprocpointer
RTTI_$SYSTEM_$$_nestedprocpointer	DB	13,18
		DB	"$nestedprocpointer"
	DQ	INIT_$SYSTEM_$$_nestedprocpointer
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TBYTELOOKUP
RTTI_$SYSTEM_$$_TBYTELOOKUP	DB	12,11
		DB	"TByteLookup"
	DQ	256,256,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTELOOKUP
RTTI_$SYSTEM_$$_PBYTELOOKUP	DB	29,11
		DB	"PByteLookup"
	DQ	RTTI_$SYSTEM_$$_TBYTELOOKUP$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CARDINAL
RTTI_$SYSTEM_$$_CARDINAL	DB	1,8
		DB	"Cardinal"
	DB	5
	DD	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_HRESULT
RTTI_$SYSTEM_$$_HRESULT	DB	1,7
		DB	"HRESULT"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCHAR
RTTI_$SYSTEM_$$_PCHAR	DB	29,5
		DB	"PChar"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPCHAR
RTTI_$SYSTEM_$$_PPCHAR	DB	29,6
		DB	"PPChar"
	DQ	RTTI_$SYSTEM_$$_PCHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSICHAR
RTTI_$SYSTEM_$$_PANSICHAR	DB	29,9
		DB	"PAnsiChar"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSISTRING
RTTI_$SYSTEM_$$_PANSISTRING	DB	29,11
		DB	"PAnsiString"
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDECHAR
RTTI_$SYSTEM_$$_PWIDECHAR	DB	29,9
		DB	"PWideChar"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPWIDECHAR
RTTI_$SYSTEM_$$_PPWIDECHAR	DB	29,10
		DB	"PPWideChar"
	DQ	RTTI_$SYSTEM_$$_PWIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTSTRING
RTTI_$SYSTEM_$$_PSHORTSTRING	DB	29,12
		DB	"PShortString"
	DQ	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RAWBYTESTRING
RTTI_$SYSTEM_$$_RAWBYTESTRING	DB	9,13
		DB	"RawByteString"
	DW	65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRAWBYTESTRING
RTTI_$SYSTEM_$$_PRAWBYTESTRING	DB	29,14
		DB	"PRawByteString"
	DQ	RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UTF8STRING
RTTI_$SYSTEM_$$_UTF8STRING	DB	9,10
		DB	"UTF8String"
	DW	65001

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUTF8STRING
RTTI_$SYSTEM_$$_PUTF8STRING	DB	29,11
		DB	"PUTF8String"
	DQ	RTTI_$SYSTEM_$$_UTF8STRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODECHAR
RTTI_$SYSTEM_$$_PUNICODECHAR	DB	29,12
		DB	"PUnicodeChar"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODESTRING
RTTI_$SYSTEM_$$_PUNICODESTRING	DB	29,14
		DB	"PUnicodeString"
	DQ	RTTI_$SYSTEM_$$_UNICODESTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSMALLINT
RTTI_$SYSTEM_$$_PSMALLINT	DB	29,9
		DB	"PSmallInt"
	DQ	RTTI_$SYSTEM_$$_SMALLINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTINT
RTTI_$SYSTEM_$$_PSHORTINT	DB	29,9
		DB	"PShortInt"
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTEGER
RTTI_$SYSTEM_$$_PINTEGER	DB	29,8
		DB	"PInteger"
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTE
RTTI_$SYSTEM_$$_PBYTE	DB	29,5
		DB	"PByte"
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORD
RTTI_$SYSTEM_$$_PWORD	DB	29,5
		DB	"PWord"
	DQ	RTTI_$SYSTEM_$$_WORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDWORD
RTTI_$SYSTEM_$$_PDWORD	DB	29,6
		DB	"PDWord"
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGWORD
RTTI_$SYSTEM_$$_PLONGWORD	DB	29,9
		DB	"PLongWord"
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGINT
RTTI_$SYSTEM_$$_PLONGINT	DB	29,8
		DB	"PLongint"
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCARDINAL
RTTI_$SYSTEM_$$_PCARDINAL	DB	29,9
		DB	"PCardinal"
	DQ	RTTI_$SYSTEM_$$_CARDINAL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORD
RTTI_$SYSTEM_$$_PQWORD	DB	29,6
		DB	"PQWord"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINT64
RTTI_$SYSTEM_$$_PINT64	DB	29,6
		DB	"PInt64"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUINT64
RTTI_$SYSTEM_$$_PUINT64	DB	29,7
		DB	"PUInt64"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRINT
RTTI_$SYSTEM_$$_PPTRINT	DB	29,7
		DB	"PPtrInt"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRUINT
RTTI_$SYSTEM_$$_PPTRUINT	DB	29,8
		DB	"PPtrUInt"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEINT
RTTI_$SYSTEM_$$_PSIZEINT	DB	29,8
		DB	"PSizeInt"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEUINT
RTTI_$SYSTEM_$$_PSIZEUINT	DB	29,9
		DB	"PSizeUInt"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSINGLE
RTTI_$SYSTEM_$$_PSINGLE	DB	29,7
		DB	"PSingle"
	DQ	RTTI_$SYSTEM_$$_SINGLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDOUBLE
RTTI_$SYSTEM_$$_PDOUBLE	DB	29,7
		DB	"PDouble"
	DQ	RTTI_$SYSTEM_$$_DOUBLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXTENDED
RTTI_$SYSTEM_$$_PEXTENDED	DB	29,9
		DB	"PExtended"
	DQ	RTTI_$SYSTEM_$$_DOUBLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN
RTTI_$SYSTEM_$$_PBOOLEAN	DB	29,8
		DB	"PBoolean"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN16
RTTI_$SYSTEM_$$_PBOOLEAN16	DB	29,10
		DB	"PBoolean16"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN16$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN32
RTTI_$SYSTEM_$$_PBOOLEAN32	DB	29,10
		DB	"PBoolean32"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN32$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN64
RTTI_$SYSTEM_$$_PBOOLEAN64	DB	29,10
		DB	"PBoolean64"
	DQ	RTTI_$SYSTEM_$$_BOOLEAN64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTEBOOL
RTTI_$SYSTEM_$$_PBYTEBOOL	DB	29,9
		DB	"PByteBool"
	DQ	RTTI_$SYSTEM_$$_BYTEBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORDBOOL
RTTI_$SYSTEM_$$_PWORDBOOL	DB	29,9
		DB	"PWordBool"
	DQ	RTTI_$SYSTEM_$$_WORDBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGBOOL
RTTI_$SYSTEM_$$_PLONGBOOL	DB	29,9
		DB	"PLongBool"
	DQ	RTTI_$SYSTEM_$$_LONGBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORDBOOL
RTTI_$SYSTEM_$$_PQWORDBOOL	DB	29,10
		DB	"PQWordBool"
	DQ	RTTI_$SYSTEM_$$_QWORDBOOL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEINT
RTTI_$SYSTEM_$$_PNATIVEINT	DB	29,10
		DB	"PNativeInt"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEUINT
RTTI_$SYSTEM_$$_PNATIVEUINT	DB	29,11
		DB	"PNativeUInt"
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCURRENCY
RTTI_$SYSTEM_$$_PCURRENCY	DB	29,9
		DB	"PCurrency"
	DQ	RTTI_$SYSTEM_$$_CURRENCY$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARIANT
RTTI_$SYSTEM_$$_PVARIANT	DB	29,8
		DB	"PVariant"
	DQ	RTTI_$SYSTEM_$$_VARIANT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINTER
RTTI_$SYSTEM_$$_PPOINTER	DB	29,8
		DB	"PPointer"
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATETIME
RTTI_$SYSTEM_$$_TDATETIME	DB	4,9
		DB	"TDateTime"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATE
RTTI_$SYSTEM_$$_TDATE	DB	4,5
		DB	"TDate"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTIME
RTTI_$SYSTEM_$$_TTIME	DB	4,5
		DB	"TTime"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TPROCEDURE
RTTI_$SYSTEM_$$_TPROCEDURE	DB	23,10
		DB	"TProcedure"
	DB	0,0
	DQ	0
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTEXT
RTTI_$SYSTEM_$$_PTEXT	DB	29,5
		DB	"PText"
	DQ	RTTI_$SYSTEM_$$_TEXT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCODEPOINTER
RTTI_$SYSTEM_$$_PCODEPOINTER	DB	29,12
		DB	"PCodePointer"
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILETEXTRECCHAR
RTTI_$SYSTEM_$$_PFILETEXTRECCHAR	DB	29,16
		DB	"PFileTextRecChar"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_JMP_BUF
INIT_$SYSTEM_$$_JMP_BUF	DB	13,7
		DB	"jmp_buf"
	DQ	0
	DD	248
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_def00000078
INIT_$SYSTEM_$$_def00000078	DB	13,0
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000078
RTTI_$SYSTEM_$$_def00000078	DB	13,0
	DQ	INIT_$SYSTEM_$$_def00000078
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_JMP_BUF
RTTI_$SYSTEM_$$_JMP_BUF	DB	13,7
		DB	"jmp_buf"
	DQ	INIT_$SYSTEM_$$_JMP_BUF
	DD	248,23
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	16,RTTI_$SYSTEM_$$_QWORD$indirect,24,RTTI_$SYSTEM_$$_QWORD$indirect,32
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,40,RTTI_$SYSTEM_$$_QWORD$indirect,48,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	56,RTTI_$SYSTEM_$$_QWORD$indirect,64,RTTI_$SYSTEM_$$_QWORD$indirect,72
	DQ	RTTI_$SYSTEM_$$_def00000078$indirect,80,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	96,RTTI_$SYSTEM_$$_def00000078$indirect,112,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	128,RTTI_$SYSTEM_$$_def00000078$indirect,144,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	160,RTTI_$SYSTEM_$$_def00000078$indirect,176,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	192,RTTI_$SYSTEM_$$_def00000078$indirect,208,RTTI_$SYSTEM_$$_def00000078$indirect
	DQ	224,RTTI_$SYSTEM_$$_LONGWORD$indirect,240,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	244,RTTI_$SYSTEM_$$_WORD$indirect,246

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PJMP_BUF
RTTI_$SYSTEM_$$_PJMP_BUF	DB	29,8
		DB	"pjmp_buf"
	DQ	RTTI_$SYSTEM_$$_JMP_BUF$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTADDR
INIT_$SYSTEM_$$_TEXCEPTADDR	DB	13,11
		DB	"TExceptAddr"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTADDR
RTTI_$SYSTEM_$$_TEXCEPTADDR	DB	13,11
		DB	"TExceptAddr"
	DQ	INIT_$SYSTEM_$$_TEXCEPTADDR
	DD	24,3
	DQ	RTTI_$SYSTEM_$$_PJMP_BUF$indirect,0,RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGINT$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTADDR
RTTI_$SYSTEM_$$_PEXCEPTADDR	DB	29,11
		DB	"PExceptAddr"
	DQ	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TGUID
INIT_$SYSTEM_$$_TGUID	DB	13,5
		DB	"TGUID"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000082
RTTI_$SYSTEM_$$_def00000082	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000083
RTTI_$SYSTEM_$$_def00000083	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000084
RTTI_$SYSTEM_$$_def00000084	DB	12,0
	DQ	6,6,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TGUID
RTTI_$SYSTEM_$$_TGUID	DB	13,5
		DB	"TGUID"
	DQ	INIT_$SYSTEM_$$_TGUID
	DD	16,14
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	6,RTTI_$SYSTEM_$$_def00000082$indirect,8,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_def00000083$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4
	DQ	RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_BYTE$indirect,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DQ	9,RTTI_$SYSTEM_$$_def00000084$indirect,10

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PGUID
RTTI_$SYSTEM_$$_PGUID	DB	29,5
		DB	"PGUID"
	DQ	RTTI_$SYSTEM_$$_TGUID$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TLINEENDSTR
RTTI_$SYSTEM_$$_TLINEENDSTR	DB	7,11
		DB	"TLineEndStr"
	DB	3

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTBUF
RTTI_$SYSTEM_$$_TEXTBUF	DB	12,7
		DB	"TextBuf"
	DQ	256,256,RTTI_$SYSTEM_$$_CHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXTREC
INIT_$SYSTEM_$$_TEXTREC	DB	13,7
		DB	"TextRec"
	DQ	0
	DD	904
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000088
RTTI_$SYSTEM_$$_def00000088	DB	29,0
	DQ	RTTI_$SYSTEM_$$_TEXTBUF$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000089
RTTI_$SYSTEM_$$_def00000089	DB	12,0
	DQ	32,32,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000008A
RTTI_$SYSTEM_$$_def0000008A	DB	12,0
	DQ	512,256,RTTI_$SYSTEM_$$_WIDECHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTREC
RTTI_$SYSTEM_$$_TEXTREC	DB	13,7
		DB	"TextRec"
	DQ	INIT_$SYSTEM_$$_TEXTREC
	DD	904,17
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_LONGINT$indirect,8,RTTI_$SYSTEM_$$_INT64$indirect
	DQ	16,RTTI_$SYSTEM_$$_INT64$indirect,24,RTTI_$SYSTEM_$$_INT64$indirect,32
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,40,RTTI_$SYSTEM_$$_def00000088$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_POINTER$indirect,72,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	80,RTTI_$SYSTEM_$$_def00000089$indirect,88,RTTI_$SYSTEM_$$_def0000008A$indirect
	DQ	120,RTTI_$SYSTEM_$$_TLINEENDSTR$indirect,632,RTTI_$SYSTEM_$$_TEXTBUF$indirect
	DQ	636,RTTI_$SYSTEM_$$_LONGWORD$indirect,892,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	896

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TANSIREC
INIT_$SYSTEM_$$_TANSIREC	DB	13,8
		DB	"TAnsiRec"
	DQ	0
	DD	32
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSIREC
RTTI_$SYSTEM_$$_TANSIREC	DB	13,8
		DB	"TAnsiRec"
	DQ	INIT_$SYSTEM_$$_TANSIREC
	DD	32,5
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	8,RTTI_$SYSTEM_$$_INT64$indirect,16,RTTI_$SYSTEM_$$_INT64$indirect,24

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSIREC
RTTI_$SYSTEM_$$_PANSIREC	DB	29,8
		DB	"PAnsiRec"
	DQ	RTTI_$SYSTEM_$$_TANSIREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TWIDEREC
INIT_$SYSTEM_$$_TWIDEREC	DB	13,8
		DB	"TWideRec"
	DQ	0
	DD	6
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TWIDEREC
RTTI_$SYSTEM_$$_TWIDEREC	DB	13,8
		DB	"TWideRec"
	DQ	INIT_$SYSTEM_$$_TWIDEREC
	DD	6,2
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WIDECHAR$indirect
	DQ	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDEREC
RTTI_$SYSTEM_$$_PWIDEREC	DB	29,8
		DB	"PWideRec"
	DQ	RTTI_$SYSTEM_$$_TWIDEREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_FILEREC
INIT_$SYSTEM_$$_FILEREC	DB	13,7
		DB	"FileRec"
	DQ	0
	DD	632
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000093
RTTI_$SYSTEM_$$_def00000093	DB	12,0
	DQ	64,64,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000094
RTTI_$SYSTEM_$$_def00000094	DB	12,0
	DQ	32,32,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000095
RTTI_$SYSTEM_$$_def00000095	DB	12,0
	DQ	512,256,RTTI_$SYSTEM_$$_WIDECHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_FILEREC
RTTI_$SYSTEM_$$_FILEREC	DB	13,7
		DB	"FileRec"
	DQ	INIT_$SYSTEM_$$_FILEREC
	DD	632,6
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_LONGINT$indirect,8,RTTI_$SYSTEM_$$_INT64$indirect
	DQ	16,RTTI_$SYSTEM_$$_def00000093$indirect,24,RTTI_$SYSTEM_$$_def00000094$indirect
	DQ	88,RTTI_$SYSTEM_$$_def00000095$indirect,120

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TOBJECT
INIT_$SYSTEM_$$_TOBJECT	DB	15,7
		DB	"TObject"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TOBJECT
RTTI_$SYSTEM_$$_TOBJECT	DB	15,7
		DB	"TObject"
	DQ	VMT_$SYSTEM_$$_TOBJECT,0
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_IUNKNOWN
RTTI_$SYSTEM_$$_IUNKNOWN	DB	14,8
		DB	"IUnknown"
	DQ	0
	DB	1
	DD	0
	DW	0,0
	DB	192,0,0,0,0,0,0,70,6
		DB	"system"
	DW	0,3,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCLASS
RTTI_$SYSTEM_$$_TCLASS	DB	28,6
		DB	"TClass"
	DQ	RTTI_$SYSTEM_$$_TOBJECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCLASS
RTTI_$SYSTEM_$$_PCLASS	DB	29,6
		DB	"PClass"
	DQ	RTTI_$SYSTEM_$$_TCLASS$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE	DB	3,19
		DB	"TInterfaceEntryType"
	DB	5
	DD	0,6
	DQ	0
	DB	10
		DB	"etStandard"
	DB	21
		DB	"etVirtualMethodResult"
	DB	20
		DB	"etStaticMethodResult"
	DB	12
		DB	"etFieldValue"
	DB	20
		DB	"etVirtualMethodClass"
	DB	19
		DB	"etStaticMethodClass"
	DB	17
		DB	"etFieldValueClass"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o	DD	7,3
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	DD	6
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146
	DD	0
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	DD	5
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	DD	2
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	DD	4
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	DD	1
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEENTRY
INIT_$SYSTEM_$$_TINTERFACEENTRY	DB	13,15
		DB	"TInterfaceEntry"
	DQ	0
	DD	40
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CC
RTTI_$SYSTEM_$$_def000000CC	DB	29,0
	DQ	RTTI_$SYSTEM_$$_PGUID$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CE
RTTI_$SYSTEM_$$_def000000CE	DB	29,0
	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRY
RTTI_$SYSTEM_$$_TINTERFACEENTRY	DB	13,15
		DB	"TInterfaceEntry"
	DQ	INIT_$SYSTEM_$$_TINTERFACEENTRY
	DD	40,6
	DQ	RTTI_$SYSTEM_$$_def000000CC$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	16,RTTI_$SYSTEM_$$_def000000CE$indirect,24,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACEENTRY
RTTI_$SYSTEM_$$_PINTERFACEENTRY	DB	29,15
		DB	"PInterfaceEntry"
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACETABLE
INIT_$SYSTEM_$$_TINTERFACETABLE	DB	13,15
		DB	"TInterfaceTable"
	DQ	0
	DD	48
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D1
RTTI_$SYSTEM_$$_def000000D1	DB	12,0
	DQ	40,1,RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACETABLE
RTTI_$SYSTEM_$$_TINTERFACETABLE	DB	13,15
		DB	"TInterfaceTable"
	DQ	INIT_$SYSTEM_$$_TINTERFACETABLE
	DD	48,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_def000000D1$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACETABLE
RTTI_$SYSTEM_$$_PINTERFACETABLE	DB	29,15
		DB	"PInterfaceTable"
	DQ	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMSGSTRTABLE
INIT_$SYSTEM_$$_TMSGSTRTABLE	DB	13,12
		DB	"TMsgStrTable"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMSGSTRTABLE
RTTI_$SYSTEM_$$_TMSGSTRTABLE	DB	13,12
		DB	"TMsgStrTable"
	DQ	INIT_$SYSTEM_$$_TMSGSTRTABLE
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMSGSTRTABLE
RTTI_$SYSTEM_$$_PMSGSTRTABLE	DB	29,12
		DB	"PMsgStrTable"
	DQ	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE	DB	13,19
		DB	"TStringMessageTable"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D6
RTTI_$SYSTEM_$$_def000000D6	DB	12,0
	DQ	16,1,RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE	DB	13,19
		DB	"TStringMessageTable"
	DQ	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
	DD	24,2
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect,0,RTTI_$SYSTEM_$$_def000000D6$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE	DB	29,19
		DB	"pstringmessagetable"
	DQ	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVMT
INIT_$SYSTEM_$$_TVMT	DB	13,4
		DB	"TVmt"
	DQ	0
	DD	200
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPVMT
RTTI_$SYSTEM_$$_PPVMT	DB	29,5
		DB	"PPVmt"
	DQ	RTTI_$SYSTEM_$$_PVMT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVMT
RTTI_$SYSTEM_$$_TVMT	DB	13,4
		DB	"TVmt"
	DQ	INIT_$SYSTEM_$$_TVMT
	DD	200,25
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8,RTTI_$SYSTEM_$$_PPVMT$indirect
	DQ	16,RTTI_$SYSTEM_$$_PSHORTSTRING$indirect,24,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	32,RTTI_$SYSTEM_$$_POINTER$indirect,40,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_POINTER$indirect,72,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	80,RTTI_$SYSTEM_$$_POINTER$indirect,88,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	96,RTTI_$SYSTEM_$$_POINTER$indirect,104,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	112,RTTI_$SYSTEM_$$_POINTER$indirect,120,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	128,RTTI_$SYSTEM_$$_POINTER$indirect,136,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	144,RTTI_$SYSTEM_$$_POINTER$indirect,152,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	160,RTTI_$SYSTEM_$$_POINTER$indirect,168,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	176,RTTI_$SYSTEM_$$_POINTER$indirect,184,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	192

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVMT
RTTI_$SYSTEM_$$_PVMT	DB	29,4
		DB	"PVmt"
	DQ	RTTI_$SYSTEM_$$_TVMT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEDOBJECT
INIT_$SYSTEM_$$_TINTERFACEDOBJECT	DB	15,17
		DB	"TInterfacedObject"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDOBJECT
RTTI_$SYSTEM_$$_TINTERFACEDOBJECT	DB	15,17
		DB	"TInterfacedObject"
	DQ	VMT_$SYSTEM_$$_TINTERFACEDOBJECT,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDCLASS
RTTI_$SYSTEM_$$_TINTERFACEDCLASS	DB	28,16
		DB	"TInterfacedClass"
	DQ	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMETHOD
INIT_$SYSTEM_$$_TMETHOD	DB	13,7
		DB	"TMethod"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMETHOD
RTTI_$SYSTEM_$$_TMETHOD	DB	13,7
		DB	"TMethod"
	DQ	INIT_$SYSTEM_$$_TMETHOD
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMETHOD
RTTI_$SYSTEM_$$_PMETHOD	DB	29,7
		DB	"PMethod"
	DQ	RTTI_$SYSTEM_$$_TMETHOD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION	DB	3,21
		DB	"EXCEPTION_DISPOSITION"
	DB	5
	DD	0,3
	DQ	0
	DB	26
		DB	"ExceptionContinueExecution"
	DB	23
		DB	"ExceptionContinueSearch"
	DB	24
		DB	"ExceptionNestedException"
	DB	23
		DB	"ExceptionCollidedUnwind"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o	DD	4,3
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116
	DD	0
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40
	DD	1
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	DD	2
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40,RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91,RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_RECORD
INIT_$SYSTEM_$$_EXCEPTION_RECORD	DB	13,16
		DB	"EXCEPTION_RECORD"
	DQ	0
	DD	152
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000012C
RTTI_$SYSTEM_$$_def0000012C	DB	12,0
	DQ	120,15,RTTI_$SYSTEM_$$_QWORD$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_RECORD
RTTI_$SYSTEM_$$_EXCEPTION_RECORD	DB	13,16
		DB	"EXCEPTION_RECORD"
	DQ	INIT_$SYSTEM_$$_EXCEPTION_RECORD
	DD	152,6
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	16,RTTI_$SYSTEM_$$_LONGWORD$indirect,24,RTTI_$SYSTEM_$$_def0000012C$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_RECORD
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD	DB	29,17
		DB	"PEXCEPTION_RECORD"
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSEHFRAME
INIT_$SYSTEM_$$_TSEHFRAME	DB	13,9
		DB	"TSEHFrame"
	DQ	0
	DD	32
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSEHFRAME
RTTI_$SYSTEM_$$_TSEHFRAME	DB	13,9
		DB	"TSEHFrame"
	DQ	INIT_$SYSTEM_$$_TSEHFRAME
	DD	32,4
	DQ	RTTI_$SYSTEM_$$_PSEHFRAME$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	24

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSEHFRAME
RTTI_$SYSTEM_$$_PSEHFRAME	DB	29,9
		DB	"PSEHFrame"
	DQ	RTTI_$SYSTEM_$$_TSEHFRAME$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTOBJECT
INIT_$SYSTEM_$$_TEXCEPTOBJECT	DB	13,13
		DB	"TExceptObject"
	DQ	0
	DD	40
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJECT
RTTI_$SYSTEM_$$_TEXCEPTOBJECT	DB	13,13
		DB	"TExceptObject"
	DQ	INIT_$SYSTEM_$$_TEXCEPTOBJECT
	DD	40,6
	DQ	RTTI_$SYSTEM_$$_TOBJECT$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect,16,RTTI_$SYSTEM_$$_LONGINT$indirect
	DQ	24,RTTI_$SYSTEM_$$_LONGINT$indirect,28,RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTOBJECT
RTTI_$SYSTEM_$$_PEXCEPTOBJECT	DB	29,13
		DB	"PExceptObject"
	DQ	RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TFILTERREC
INIT_$SYSTEM_$$_TFILTERREC	DB	13,10
		DB	"TFilterRec"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TFILTERREC
RTTI_$SYSTEM_$$_TFILTERREC	DB	13,10
		DB	"TFilterRec"
	DQ	INIT_$SYSTEM_$$_TFILTERREC
	DD	8,2
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILTERREC
RTTI_$SYSTEM_$$_PFILTERREC	DB	29,10
		DB	"PFilterRec"
	DQ	RTTI_$SYSTEM_$$_TFILTERREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTION_FRAME
INIT_$SYSTEM_$$_TEXCEPTION_FRAME	DB	13,16
		DB	"TEXCEPTION_FRAME"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTION_FRAME
RTTI_$SYSTEM_$$_TEXCEPTION_FRAME	DB	13,16
		DB	"TEXCEPTION_FRAME"
	DQ	INIT_$SYSTEM_$$_TEXCEPTION_FRAME
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_FRAME
RTTI_$SYSTEM_$$_PEXCEPTION_FRAME	DB	29,16
		DB	"PEXCEPTION_FRAME"
	DQ	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNWINDPROC
RTTI_$SYSTEM_$$_TUNWINDPROC	DB	23,11
		DB	"TUnwindProc"
	DB	0,0
	DQ	0
	DB	1
	DW	0
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect
	DB	5
		DB	"frame"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJPROC
RTTI_$SYSTEM_$$_TEXCEPTOBJPROC	DB	23,14
		DB	"TExceptObjProc"
	DB	0,0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	2
	DW	0
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
	DB	4
		DB	"code"
	DW	2
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
	DB	3
		DB	"rec"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTCLSPROC
RTTI_$SYSTEM_$$_TEXCEPTCLSPROC	DB	23,14
		DB	"TExceptClsProc"
	DB	0,0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	1
	DW	0
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
	DB	4
		DB	"code"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TERRORPROC
RTTI_$SYSTEM_$$_TERRORPROC	DB	23,10
		DB	"TErrorProc"
	DB	0,0
	DQ	0
	DB	3
	DW	0
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect
	DB	5
		DB	"ErrNo"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	7
		DB	"Address"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	5
		DB	"Frame"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_M128A
INIT_$SYSTEM_$$_M128A	DB	13,5
		DB	"M128A"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_M128A
RTTI_$SYSTEM_$$_M128A	DB	13,5
		DB	"M128A"
	DQ	INIT_$SYSTEM_$$_M128A
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PM128A
RTTI_$SYSTEM_$$_PM128A	DB	29,6
		DB	"PM128A"
	DQ	RTTI_$SYSTEM_$$_M128A$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TCONTEXT
INIT_$SYSTEM_$$_TCONTEXT	DB	13,8
		DB	"TContext"
	DQ	0
	DD	1136
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013D
RTTI_$SYSTEM_$$_def0000013D	DB	12,0
	DQ	32,2,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013E
RTTI_$SYSTEM_$$_def0000013E	DB	12,0
	DQ	128,8,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013F
RTTI_$SYSTEM_$$_def0000013F	DB	12,0
	DQ	416,26,RTTI_$SYSTEM_$$_M128A$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCONTEXT
RTTI_$SYSTEM_$$_TCONTEXT	DB	13,8
		DB	"TContext"
	DQ	INIT_$SYSTEM_$$_TCONTEXT
	DD	1136,63
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	16,RTTI_$SYSTEM_$$_QWORD$indirect,24,RTTI_$SYSTEM_$$_QWORD$indirect,32
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,40,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	48,RTTI_$SYSTEM_$$_LONGWORD$indirect,52,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	56,RTTI_$SYSTEM_$$_WORD$indirect,58,RTTI_$SYSTEM_$$_WORD$indirect,60,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	62,RTTI_$SYSTEM_$$_WORD$indirect,64,RTTI_$SYSTEM_$$_WORD$indirect,66,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	68,RTTI_$SYSTEM_$$_QWORD$indirect,72,RTTI_$SYSTEM_$$_QWORD$indirect,80
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,88,RTTI_$SYSTEM_$$_QWORD$indirect,96,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	104,RTTI_$SYSTEM_$$_QWORD$indirect,112,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	120,RTTI_$SYSTEM_$$_QWORD$indirect,128,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	136,RTTI_$SYSTEM_$$_QWORD$indirect,144,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	152,RTTI_$SYSTEM_$$_QWORD$indirect,160,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	168,RTTI_$SYSTEM_$$_QWORD$indirect,176,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	184,RTTI_$SYSTEM_$$_QWORD$indirect,192,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	200,RTTI_$SYSTEM_$$_QWORD$indirect,208,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	216,RTTI_$SYSTEM_$$_QWORD$indirect,224,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	232,RTTI_$SYSTEM_$$_QWORD$indirect,240,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	248,RTTI_$SYSTEM_$$_def0000013D$indirect,256,RTTI_$SYSTEM_$$_def0000013E$indirect
	DQ	288,RTTI_$SYSTEM_$$_M128A$indirect,416,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	432,RTTI_$SYSTEM_$$_M128A$indirect,448,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	464,RTTI_$SYSTEM_$$_M128A$indirect,480,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	496,RTTI_$SYSTEM_$$_M128A$indirect,512,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	528,RTTI_$SYSTEM_$$_M128A$indirect,544,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	560,RTTI_$SYSTEM_$$_M128A$indirect,576,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	592,RTTI_$SYSTEM_$$_M128A$indirect,608,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	624,RTTI_$SYSTEM_$$_M128A$indirect,640,RTTI_$SYSTEM_$$_M128A$indirect
	DQ	656,RTTI_$SYSTEM_$$_def0000013F$indirect,672,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	1088,RTTI_$SYSTEM_$$_QWORD$indirect,1096,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	1104,RTTI_$SYSTEM_$$_QWORD$indirect,1112,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	1120,RTTI_$SYSTEM_$$_QWORD$indirect,1128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONTEXT
RTTI_$SYSTEM_$$_PCONTEXT	DB	29,8
		DB	"PContext"
	DQ	RTTI_$SYSTEM_$$_TCONTEXT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_POINTERS
INIT_$SYSTEM_$$_EXCEPTION_POINTERS	DB	13,18
		DB	"EXCEPTION_POINTERS"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_POINTERS
RTTI_$SYSTEM_$$_EXCEPTION_POINTERS	DB	13,18
		DB	"EXCEPTION_POINTERS"
	DQ	INIT_$SYSTEM_$$_EXCEPTION_POINTERS
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect,0,RTTI_$SYSTEM_$$_PCONTEXT$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS
RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS	DB	29,19
		DB	"PEXCEPTION_POINTERS"
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSCOPEREC
INIT_$SYSTEM_$$_TSCOPEREC	DB	13,9
		DB	"TScopeRec"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSCOPEREC
RTTI_$SYSTEM_$$_TSCOPEREC	DB	13,9
		DB	"TScopeRec"
	DQ	INIT_$SYSTEM_$$_TSCOPEREC
	DD	16,4
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGWORD$indirect,8,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	12

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSCOPEREC
RTTI_$SYSTEM_$$_PSCOPEREC	DB	29,9
		DB	"PScopeRec"
	DQ	RTTI_$SYSTEM_$$_TSCOPEREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE	DB	23,17
		DB	"EXCEPTION_ROUTINE"
	DB	0,0
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
	DB	4
	DW	1
	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
	DB	15
		DB	"ExceptionRecord"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	16
		DB	"EstablisherFrame"
	DW	1
	DQ	RTTI_$SYSTEM_$$_TCONTEXT$indirect
	DB	13
		DB	"ContextRecord"
	DW	0
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect
	DB	17
		DB	"DispatcherContext"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_RUNTIME_FUNCTION
INIT_$SYSTEM_$$_RUNTIME_FUNCTION	DB	13,16
		DB	"RUNTIME_FUNCTION"
	DQ	0
	DD	12
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RUNTIME_FUNCTION
RTTI_$SYSTEM_$$_RUNTIME_FUNCTION	DB	13,16
		DB	"RUNTIME_FUNCTION"
	DQ	INIT_$SYSTEM_$$_RUNTIME_FUNCTION
	DD	12,3
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGWORD$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION
RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION	DB	29,17
		DB	"PRUNTIME_FUNCTION"
	DQ	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY	DB	13,26
		DB	"UNWIND_HISTORY_TABLE_ENTRY"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY	DB	13,26
		DB	"UNWIND_HISTORY_TABLE_ENTRY"
	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE	DB	13,20
		DB	"UNWIND_HISTORY_TABLE"
	DQ	0
	DD	216
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000014A
RTTI_$SYSTEM_$$_def0000014A	DB	12,0
	DQ	192,12,RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE	DB	13,20
		DB	"UNWIND_HISTORY_TABLE"
	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE
	DD	216,8
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_BYTE$indirect,4,RTTI_$SYSTEM_$$_BYTE$indirect
	DQ	5,RTTI_$SYSTEM_$$_BYTE$indirect,6,RTTI_$SYSTEM_$$_BYTE$indirect,7,RTTI_$SYSTEM_$$_QWORD$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16,RTTI_$SYSTEM_$$_def0000014A$indirect
	DQ	24

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE
RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE	DB	29,21
		DB	"PUNWIND_HISTORY_TABLE"
	DQ	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT	DB	13,18
		DB	"TDispatcherContext"
	DQ	0
	DD	80
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT	DB	13,18
		DB	"TDispatcherContext"
	DQ	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
	DD	80,11
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	16,RTTI_$SYSTEM_$$_QWORD$indirect,24,RTTI_$SYSTEM_$$_QWORD$indirect,32
	DQ	RTTI_$SYSTEM_$$_PCONTEXT$indirect,40,RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_LONGWORD$indirect,72,RTTI_$SYSTEM_$$_LONGWORD$indirect
	DQ	76

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT	DB	29,18
		DB	"PDispatcherContext"
	DQ	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND
RTTI_$SYSTEM_$$_TTYPEKIND	DB	3,9
		DB	"TTypeKind"
	DB	5
	DD	0,29
	DQ	0
	DB	9
		DB	"tkUnknown"
	DB	9
		DB	"tkInteger"
	DB	6
		DB	"tkChar"
	DB	13
		DB	"tkEnumeration"
	DB	7
		DB	"tkFloat"
	DB	5
		DB	"tkSet"
	DB	8
		DB	"tkMethod"
	DB	9
		DB	"tkSString"
	DB	9
		DB	"tkLString"
	DB	9
		DB	"tkAString"
	DB	9
		DB	"tkWString"
	DB	9
		DB	"tkVariant"
	DB	7
		DB	"tkArray"
	DB	8
		DB	"tkRecord"
	DB	11
		DB	"tkInterface"
	DB	7
		DB	"tkClass"
	DB	8
		DB	"tkObject"
	DB	7
		DB	"tkWChar"
	DB	6
		DB	"tkBool"
	DB	7
		DB	"tkInt64"
	DB	7
		DB	"tkQWord"
	DB	10
		DB	"tkDynArray"
	DB	14
		DB	"tkInterfaceRaw"
	DB	9
		DB	"tkProcVar"
	DB	9
		DB	"tkUString"
	DB	7
		DB	"tkUChar"
	DB	8
		DB	"tkHelper"
	DB	6
		DB	"tkFile"
	DB	10
		DB	"tkClassRef"
	DB	9
		DB	"tkPointer"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_s2o
RTTI_$SYSTEM_$$_TTYPEKIND_s2o	DD	30,12
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+142
	DD	9
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+112
	DD	18
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+196
	DD	2
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+48
	DD	15
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+171
	DD	28
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+289
	DD	21
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+219
	DD	3
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+55
	DD	27
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+282
	DD	4
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+69
	DD	26
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+273
	DD	19
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+203
	DD	1
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+38
	DD	14
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+159
	DD	22
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+230
	DD	8
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+102
	DD	6
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+83
	DD	16
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+179
	DD	29
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+300
	DD	23
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+245
	DD	20
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+211
	DD	13
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+150
	DD	5
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+77
	DD	7
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+92
	DD	25
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+265
	DD	0
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+28
	DD	24
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+255
	DD	11
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+132
	DD	17
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+188
	DD	10
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+122

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_o2s
RTTI_$SYSTEM_$$_TTYPEKIND_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+28,RTTI_$SYSTEM_$$_TTYPEKIND+38,RTTI_$SYSTEM_$$_TTYPEKIND+48
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+55,RTTI_$SYSTEM_$$_TTYPEKIND+69,RTTI_$SYSTEM_$$_TTYPEKIND+77
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+83,RTTI_$SYSTEM_$$_TTYPEKIND+92,RTTI_$SYSTEM_$$_TTYPEKIND+102
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+112,RTTI_$SYSTEM_$$_TTYPEKIND+122,RTTI_$SYSTEM_$$_TTYPEKIND+132
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+142,RTTI_$SYSTEM_$$_TTYPEKIND+150,RTTI_$SYSTEM_$$_TTYPEKIND+159
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+171,RTTI_$SYSTEM_$$_TTYPEKIND+179,RTTI_$SYSTEM_$$_TTYPEKIND+188
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+196,RTTI_$SYSTEM_$$_TTYPEKIND+203,RTTI_$SYSTEM_$$_TTYPEKIND+211
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+219,RTTI_$SYSTEM_$$_TTYPEKIND+230,RTTI_$SYSTEM_$$_TTYPEKIND+245
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+255,RTTI_$SYSTEM_$$_TTYPEKIND+265,RTTI_$SYSTEM_$$_TTYPEKIND+273
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+282,RTTI_$SYSTEM_$$_TTYPEKIND+289,RTTI_$SYSTEM_$$_TTYPEKIND+300

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTYPEKIND
RTTI_$SYSTEM_$$_PTYPEKIND	DB	29,9
		DB	"PTypeKind"
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000198
RTTI_$SYSTEM_$$_def00000198	DB	12,13
		DB	"RawByteString"
	DQ	0,0,RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TUNICODEREC
INIT_$SYSTEM_$$_TUNICODEREC	DB	13,11
		DB	"tunicoderec"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNICODEREC
RTTI_$SYSTEM_$$_TUNICODEREC	DB	13,11
		DB	"tunicoderec"
	DQ	INIT_$SYSTEM_$$_TUNICODEREC
	DD	24,4
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4,RTTI_$SYSTEM_$$_INT64$indirect
	DQ	8,RTTI_$SYSTEM_$$_INT64$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODEREC
RTTI_$SYSTEM_$$_PUNICODEREC	DB	29,11
		DB	"punicoderec"
	DQ	RTTI_$SYSTEM_$$_TUNICODEREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000001BF
RTTI_$SYSTEM_$$_def000001BF	DB	12,13
		DB	"UnicodeString"
	DQ	0,0,RTTI_$SYSTEM_$$_UNICODESTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVARREC
INIT_$SYSTEM_$$_TVARREC	DB	13,7
		DB	"TVarRec"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVARREC
RTTI_$SYSTEM_$$_TVARREC	DB	13,7
		DB	"TVarRec"
	DQ	INIT_$SYSTEM_$$_TVARREC
	DD	16,20
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_LONGINT$indirect,8,RTTI_$SYSTEM_$$_BOOLEAN$indirect
	DQ	8,RTTI_$SYSTEM_$$_CHAR$indirect,8,RTTI_$SYSTEM_$$_WIDECHAR$indirect,8
	DQ	RTTI_$SYSTEM_$$_PEXTENDED$indirect,8,RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,8,RTTI_$SYSTEM_$$_PANSICHAR$indirect
	DQ	8,RTTI_$SYSTEM_$$_TOBJECT$indirect,8,RTTI_$SYSTEM_$$_TCLASS$indirect
	DQ	8,RTTI_$SYSTEM_$$_PWIDECHAR$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PCURRENCY$indirect,8,RTTI_$SYSTEM_$$_PVARIANT$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PINT64$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_PQWORD$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARREC
RTTI_$SYSTEM_$$_PVARREC	DB	29,7
		DB	"PVarRec"
	DQ	RTTI_$SYSTEM_$$_TVARREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TTESTEXCEPTION
INIT_$SYSTEM_$$_TTESTEXCEPTION	DB	15,14
		DB	"TTestException"
	DQ	0
	DD	8
	DQ	0,0
	DD	1
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTESTEXCEPTION
RTTI_$SYSTEM_$$_TTESTEXCEPTION	DB	15,14
		DB	"TTestException"
	DQ	VMT_$SYSTEM_$$_TTESTEXCEPTION,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYINDEX
RTTI_$SYSTEM_$$_PDYNARRAYINDEX	DB	29,14
		DB	"pdynarrayindex"
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAY
INIT_$SYSTEM_$$_TDYNARRAY	DB	13,9
		DB	"tdynarray"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAY
RTTI_$SYSTEM_$$_TDYNARRAY	DB	13,9
		DB	"tdynarray"
	DQ	INIT_$SYSTEM_$$_TDYNARRAY
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAY
RTTI_$SYSTEM_$$_PDYNARRAY	DB	29,9
		DB	"pdynarray"
	DQ	RTTI_$SYSTEM_$$_TDYNARRAY$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA
INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA	DB	13,17
		DB	"tdynarraytypedata"
	DQ	0
	DD	28
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA
RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA	DB	13,17
		DB	"tdynarraytypedata"
	DQ	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA
	DD	28,5
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_PPOINTER$indirect,8
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect,16,RTTI_$SYSTEM_$$_PPOINTER$indirect
	DQ	20,RTTI_$SYSTEM_$$_INT64$indirect,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA
RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA	DB	29,17
		DB	"pdynarraytypedata"
	DQ	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TENTRYINFORMATION
INIT_$SYSTEM_$$_TENTRYINFORMATION	DB	13,17
		DB	"TEntryInformation"
	DQ	0
	DD	56
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000021B
RTTI_$SYSTEM_$$_def0000021B	DB	23,0,0,0
	DQ	0
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TENTRYINFORMATION
RTTI_$SYSTEM_$$_TENTRYINFORMATION	DB	13,17
		DB	"TEntryInformation"
	DQ	INIT_$SYSTEM_$$_TENTRYINFORMATION
	DD	56,7
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	24,RTTI_$SYSTEM_$$_POINTER$indirect,32,RTTI_$SYSTEM_$$_def0000021B$indirect
	DQ	40,RTTI_$SYSTEM_$$_BOOLEAN$indirect,48

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000029D
RTTI_$SYSTEM_$$_def0000029D	DB	12,0
	DQ	296,37,RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT$indirect
VMT_$SYSTEM_$$_TOBJECT$indirect	DQ	VMT_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IID_$SYSTEM_$$_IUNKNOWN$indirect
IID_$SYSTEM_$$_IUNKNOWN$indirect	DQ	IID_$SYSTEM_$$_IUNKNOWN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect
IIDSTR_$SYSTEM_$$_IUNKNOWN$indirect	DQ	IIDSTR_$SYSTEM_$$_IUNKNOWN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
VMT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect	DQ	VMT_$SYSTEM_$$_TINTERFACEDOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TTESTEXCEPTION$indirect
VMT_$SYSTEM_$$_TTESTEXCEPTION$indirect	DQ	VMT_$SYSTEM_$$_TTESTEXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal$indirect
RTTI_$SYSTEM_$$_formal$indirect	DQ	RTTI_$SYSTEM_$$_formal

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_typedformal$indirect
RTTI_$SYSTEM_$$_typedformal$indirect	DQ	RTTI_$SYSTEM_$$_typedformal

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_void$indirect
RTTI_$SYSTEM_$$_void$indirect	DQ	RTTI_$SYSTEM_$$_void

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINTER$indirect
RTTI_$SYSTEM_$$_POINTER$indirect	DQ	RTTI_$SYSTEM_$$_POINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTE$indirect
RTTI_$SYSTEM_$$_BYTE$indirect	DQ	RTTI_$SYSTEM_$$_BYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTINT$indirect
RTTI_$SYSTEM_$$_SHORTINT$indirect	DQ	RTTI_$SYSTEM_$$_SHORTINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORD$indirect
RTTI_$SYSTEM_$$_WORD$indirect	DQ	RTTI_$SYSTEM_$$_WORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALLINT$indirect
RTTI_$SYSTEM_$$_SMALLINT$indirect	DQ	RTTI_$SYSTEM_$$_SMALLINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGWORD$indirect
RTTI_$SYSTEM_$$_LONGWORD$indirect	DQ	RTTI_$SYSTEM_$$_LONGWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGINT$indirect
RTTI_$SYSTEM_$$_LONGINT$indirect	DQ	RTTI_$SYSTEM_$$_LONGINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORD$indirect
RTTI_$SYSTEM_$$_QWORD$indirect	DQ	RTTI_$SYSTEM_$$_QWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_INT64$indirect
RTTI_$SYSTEM_$$_INT64$indirect	DQ	RTTI_$SYSTEM_$$_INT64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_uint128$indirect
RTTI_$SYSTEM_$$_uint128$indirect	DQ	RTTI_$SYSTEM_$$_uint128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_int128$indirect
RTTI_$SYSTEM_$$_int128$indirect	DQ	RTTI_$SYSTEM_$$_int128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN$indirect
RTTI_$SYSTEM_$$_BOOLEAN$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN8$indirect
RTTI_$SYSTEM_$$_BOOLEAN8$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN16$indirect
RTTI_$SYSTEM_$$_BOOLEAN16$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN32$indirect
RTTI_$SYSTEM_$$_BOOLEAN32$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN64$indirect
RTTI_$SYSTEM_$$_BOOLEAN64$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTEBOOL$indirect
RTTI_$SYSTEM_$$_BYTEBOOL$indirect	DQ	RTTI_$SYSTEM_$$_BYTEBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORDBOOL$indirect
RTTI_$SYSTEM_$$_WORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_WORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBOOL$indirect
RTTI_$SYSTEM_$$_LONGBOOL$indirect	DQ	RTTI_$SYSTEM_$$_LONGBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORDBOOL$indirect
RTTI_$SYSTEM_$$_QWORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_QWORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CHAR$indirect
RTTI_$SYSTEM_$$_CHAR$indirect	DQ	RTTI_$SYSTEM_$$_CHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDECHAR$indirect
RTTI_$SYSTEM_$$_WIDECHAR$indirect	DQ	RTTI_$SYSTEM_$$_WIDECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTSTRING$indirect
RTTI_$SYSTEM_$$_SHORTSTRING$indirect	DQ	RTTI_$SYSTEM_$$_SHORTSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_longstring$indirect
RTTI_$SYSTEM_$$_longstring$indirect	DQ	RTTI_$SYSTEM_$$_longstring

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ANSISTRING$indirect
RTTI_$SYSTEM_$$_ANSISTRING$indirect	DQ	RTTI_$SYSTEM_$$_ANSISTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDESTRING$indirect
RTTI_$SYSTEM_$$_WIDESTRING$indirect	DQ	RTTI_$SYSTEM_$$_WIDESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNICODESTRING$indirect
RTTI_$SYSTEM_$$_UNICODESTRING$indirect	DQ	RTTI_$SYSTEM_$$_UNICODESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OPENSTRING$indirect
RTTI_$SYSTEM_$$_OPENSTRING$indirect	DQ	RTTI_$SYSTEM_$$_OPENSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SINGLE$indirect
RTTI_$SYSTEM_$$_SINGLE$indirect	DQ	RTTI_$SYSTEM_$$_SINGLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_DOUBLE$indirect
RTTI_$SYSTEM_$$_DOUBLE$indirect	DQ	RTTI_$SYSTEM_$$_DOUBLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_s80real$indirect
RTTI_$SYSTEM_$$_s80real$indirect	DQ	RTTI_$SYSTEM_$$_s80real

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_sc80real$indirect
RTTI_$SYSTEM_$$_sc80real$indirect	DQ	RTTI_$SYSTEM_$$_sc80real

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CURRENCY$indirect
RTTI_$SYSTEM_$$_CURRENCY$indirect	DQ	RTTI_$SYSTEM_$$_CURRENCY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_char_pointer$indirect
RTTI_$SYSTEM_$$_char_pointer$indirect	DQ	RTTI_$SYSTEM_$$_char_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_widechar_pointer$indirect
RTTI_$SYSTEM_$$_widechar_pointer$indirect	DQ	RTTI_$SYSTEM_$$_widechar_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect	DQ	RTTI_$SYSTEM_$$_parentfp_void_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARPOINTER$indirect
RTTI_$SYSTEM_$$_NEARPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARCSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARDSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARSSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARESPOINTER$indirect
RTTI_$SYSTEM_$$_NEARESPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARESPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARFSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARGSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_openchararray$indirect
RTTI_$SYSTEM_$$_openchararray$indirect	DQ	RTTI_$SYSTEM_$$_openchararray

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_file$indirect
RTTI_$SYSTEM_$$_file$indirect	DQ	RTTI_$SYSTEM_$$_file

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_VARIANT$indirect
RTTI_$SYSTEM_$$_VARIANT$indirect	DQ	RTTI_$SYSTEM_$$_VARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OLEVARIANT$indirect
RTTI_$SYSTEM_$$_OLEVARIANT$indirect	DQ	RTTI_$SYSTEM_$$_OLEVARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXT$indirect
RTTI_$SYSTEM_$$_TEXT$indirect	DQ	RTTI_$SYSTEM_$$_TEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TYPEDFILE$indirect
RTTI_$SYSTEM_$$_TYPEDFILE$indirect	DQ	RTTI_$SYSTEM_$$_TYPEDFILE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$___vtbl_ptr_type$indirect
INIT_$SYSTEM_$$___vtbl_ptr_type$indirect	DQ	INIT_$SYSTEM_$$___vtbl_ptr_type

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_pvmt$indirect
RTTI_$SYSTEM_$$_pvmt$indirect	DQ	RTTI_$SYSTEM_$$_pvmt

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000037$indirect
RTTI_$SYSTEM_$$_def00000037$indirect	DQ	RTTI_$SYSTEM_$$_def00000037

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000038$indirect
RTTI_$SYSTEM_$$_def00000038$indirect	DQ	RTTI_$SYSTEM_$$_def00000038

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect
RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect	DQ	RTTI_$SYSTEM_$$___vtbl_ptr_type

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_vtblarray$indirect
RTTI_$SYSTEM_$$_vtblarray$indirect	DQ	RTTI_$SYSTEM_$$_vtblarray

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_methodpointer$indirect
INIT_$SYSTEM_$$_methodpointer$indirect	DQ	INIT_$SYSTEM_$$_methodpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_methodpointer$indirect
RTTI_$SYSTEM_$$_methodpointer$indirect	DQ	RTTI_$SYSTEM_$$_methodpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_nestedprocpointer$indirect
INIT_$SYSTEM_$$_nestedprocpointer$indirect	DQ	INIT_$SYSTEM_$$_nestedprocpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_nestedprocpointer$indirect
RTTI_$SYSTEM_$$_nestedprocpointer$indirect	DQ	RTTI_$SYSTEM_$$_nestedprocpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TBYTELOOKUP$indirect
RTTI_$SYSTEM_$$_TBYTELOOKUP$indirect	DQ	RTTI_$SYSTEM_$$_TBYTELOOKUP

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTELOOKUP$indirect
RTTI_$SYSTEM_$$_PBYTELOOKUP$indirect	DQ	RTTI_$SYSTEM_$$_PBYTELOOKUP

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CARDINAL$indirect
RTTI_$SYSTEM_$$_CARDINAL$indirect	DQ	RTTI_$SYSTEM_$$_CARDINAL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_HRESULT$indirect
RTTI_$SYSTEM_$$_HRESULT$indirect	DQ	RTTI_$SYSTEM_$$_HRESULT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCHAR$indirect
RTTI_$SYSTEM_$$_PCHAR$indirect	DQ	RTTI_$SYSTEM_$$_PCHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPCHAR$indirect
RTTI_$SYSTEM_$$_PPCHAR$indirect	DQ	RTTI_$SYSTEM_$$_PPCHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSICHAR$indirect
RTTI_$SYSTEM_$$_PANSICHAR$indirect	DQ	RTTI_$SYSTEM_$$_PANSICHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSISTRING$indirect
RTTI_$SYSTEM_$$_PANSISTRING$indirect	DQ	RTTI_$SYSTEM_$$_PANSISTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDECHAR$indirect
RTTI_$SYSTEM_$$_PWIDECHAR$indirect	DQ	RTTI_$SYSTEM_$$_PWIDECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPWIDECHAR$indirect
RTTI_$SYSTEM_$$_PPWIDECHAR$indirect	DQ	RTTI_$SYSTEM_$$_PPWIDECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
RTTI_$SYSTEM_$$_PSHORTSTRING$indirect	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect	DQ	RTTI_$SYSTEM_$$_RAWBYTESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_PRAWBYTESTRING$indirect	DQ	RTTI_$SYSTEM_$$_PRAWBYTESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UTF8STRING$indirect
RTTI_$SYSTEM_$$_UTF8STRING$indirect	DQ	RTTI_$SYSTEM_$$_UTF8STRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUTF8STRING$indirect
RTTI_$SYSTEM_$$_PUTF8STRING$indirect	DQ	RTTI_$SYSTEM_$$_PUTF8STRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODECHAR$indirect
RTTI_$SYSTEM_$$_PUNICODECHAR$indirect	DQ	RTTI_$SYSTEM_$$_PUNICODECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODESTRING$indirect
RTTI_$SYSTEM_$$_PUNICODESTRING$indirect	DQ	RTTI_$SYSTEM_$$_PUNICODESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSMALLINT$indirect
RTTI_$SYSTEM_$$_PSMALLINT$indirect	DQ	RTTI_$SYSTEM_$$_PSMALLINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTINT$indirect
RTTI_$SYSTEM_$$_PSHORTINT$indirect	DQ	RTTI_$SYSTEM_$$_PSHORTINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTEGER$indirect
RTTI_$SYSTEM_$$_PINTEGER$indirect	DQ	RTTI_$SYSTEM_$$_PINTEGER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTE$indirect
RTTI_$SYSTEM_$$_PBYTE$indirect	DQ	RTTI_$SYSTEM_$$_PBYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORD$indirect
RTTI_$SYSTEM_$$_PWORD$indirect	DQ	RTTI_$SYSTEM_$$_PWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDWORD$indirect
RTTI_$SYSTEM_$$_PDWORD$indirect	DQ	RTTI_$SYSTEM_$$_PDWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGWORD$indirect
RTTI_$SYSTEM_$$_PLONGWORD$indirect	DQ	RTTI_$SYSTEM_$$_PLONGWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGINT$indirect
RTTI_$SYSTEM_$$_PLONGINT$indirect	DQ	RTTI_$SYSTEM_$$_PLONGINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCARDINAL$indirect
RTTI_$SYSTEM_$$_PCARDINAL$indirect	DQ	RTTI_$SYSTEM_$$_PCARDINAL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORD$indirect
RTTI_$SYSTEM_$$_PQWORD$indirect	DQ	RTTI_$SYSTEM_$$_PQWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINT64$indirect
RTTI_$SYSTEM_$$_PINT64$indirect	DQ	RTTI_$SYSTEM_$$_PINT64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUINT64$indirect
RTTI_$SYSTEM_$$_PUINT64$indirect	DQ	RTTI_$SYSTEM_$$_PUINT64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRINT$indirect
RTTI_$SYSTEM_$$_PPTRINT$indirect	DQ	RTTI_$SYSTEM_$$_PPTRINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPTRUINT$indirect
RTTI_$SYSTEM_$$_PPTRUINT$indirect	DQ	RTTI_$SYSTEM_$$_PPTRUINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEINT$indirect
RTTI_$SYSTEM_$$_PSIZEINT$indirect	DQ	RTTI_$SYSTEM_$$_PSIZEINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSIZEUINT$indirect
RTTI_$SYSTEM_$$_PSIZEUINT$indirect	DQ	RTTI_$SYSTEM_$$_PSIZEUINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSINGLE$indirect
RTTI_$SYSTEM_$$_PSINGLE$indirect	DQ	RTTI_$SYSTEM_$$_PSINGLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDOUBLE$indirect
RTTI_$SYSTEM_$$_PDOUBLE$indirect	DQ	RTTI_$SYSTEM_$$_PDOUBLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXTENDED$indirect
RTTI_$SYSTEM_$$_PEXTENDED$indirect	DQ	RTTI_$SYSTEM_$$_PEXTENDED

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN$indirect
RTTI_$SYSTEM_$$_PBOOLEAN$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN16$indirect
RTTI_$SYSTEM_$$_PBOOLEAN16$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN32$indirect
RTTI_$SYSTEM_$$_PBOOLEAN32$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBOOLEAN64$indirect
RTTI_$SYSTEM_$$_PBOOLEAN64$indirect	DQ	RTTI_$SYSTEM_$$_PBOOLEAN64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTEBOOL$indirect
RTTI_$SYSTEM_$$_PBYTEBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PBYTEBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWORDBOOL$indirect
RTTI_$SYSTEM_$$_PWORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PWORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONGBOOL$indirect
RTTI_$SYSTEM_$$_PLONGBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PLONGBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PQWORDBOOL$indirect
RTTI_$SYSTEM_$$_PQWORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_PQWORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEINT$indirect
RTTI_$SYSTEM_$$_PNATIVEINT$indirect	DQ	RTTI_$SYSTEM_$$_PNATIVEINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PNATIVEUINT$indirect
RTTI_$SYSTEM_$$_PNATIVEUINT$indirect	DQ	RTTI_$SYSTEM_$$_PNATIVEUINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCURRENCY$indirect
RTTI_$SYSTEM_$$_PCURRENCY$indirect	DQ	RTTI_$SYSTEM_$$_PCURRENCY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARIANT$indirect
RTTI_$SYSTEM_$$_PVARIANT$indirect	DQ	RTTI_$SYSTEM_$$_PVARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINTER$indirect
RTTI_$SYSTEM_$$_PPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_PPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATETIME$indirect
RTTI_$SYSTEM_$$_TDATETIME$indirect	DQ	RTTI_$SYSTEM_$$_TDATETIME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDATE$indirect
RTTI_$SYSTEM_$$_TDATE$indirect	DQ	RTTI_$SYSTEM_$$_TDATE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTIME$indirect
RTTI_$SYSTEM_$$_TTIME$indirect	DQ	RTTI_$SYSTEM_$$_TTIME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TPROCEDURE$indirect
RTTI_$SYSTEM_$$_TPROCEDURE$indirect	DQ	RTTI_$SYSTEM_$$_TPROCEDURE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTEXT$indirect
RTTI_$SYSTEM_$$_PTEXT$indirect	DQ	RTTI_$SYSTEM_$$_PTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
RTTI_$SYSTEM_$$_PCODEPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_PCODEPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILETEXTRECCHAR$indirect
RTTI_$SYSTEM_$$_PFILETEXTRECCHAR$indirect	DQ	RTTI_$SYSTEM_$$_PFILETEXTRECCHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_JMP_BUF$indirect
INIT_$SYSTEM_$$_JMP_BUF$indirect	DQ	INIT_$SYSTEM_$$_JMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_def00000078$indirect
INIT_$SYSTEM_$$_def00000078$indirect	DQ	INIT_$SYSTEM_$$_def00000078

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000078$indirect
RTTI_$SYSTEM_$$_def00000078$indirect	DQ	RTTI_$SYSTEM_$$_def00000078

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_JMP_BUF$indirect
RTTI_$SYSTEM_$$_JMP_BUF$indirect	DQ	RTTI_$SYSTEM_$$_JMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PJMP_BUF$indirect
RTTI_$SYSTEM_$$_PJMP_BUF$indirect	DQ	RTTI_$SYSTEM_$$_PJMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTADDR$indirect
INIT_$SYSTEM_$$_TEXCEPTADDR$indirect	DQ	INIT_$SYSTEM_$$_TEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TGUID$indirect
INIT_$SYSTEM_$$_TGUID$indirect	DQ	INIT_$SYSTEM_$$_TGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000082$indirect
RTTI_$SYSTEM_$$_def00000082$indirect	DQ	RTTI_$SYSTEM_$$_def00000082

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000083$indirect
RTTI_$SYSTEM_$$_def00000083$indirect	DQ	RTTI_$SYSTEM_$$_def00000083

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000084$indirect
RTTI_$SYSTEM_$$_def00000084$indirect	DQ	RTTI_$SYSTEM_$$_def00000084

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TGUID$indirect
RTTI_$SYSTEM_$$_TGUID$indirect	DQ	RTTI_$SYSTEM_$$_TGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PGUID$indirect
RTTI_$SYSTEM_$$_PGUID$indirect	DQ	RTTI_$SYSTEM_$$_PGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TLINEENDSTR$indirect
RTTI_$SYSTEM_$$_TLINEENDSTR$indirect	DQ	RTTI_$SYSTEM_$$_TLINEENDSTR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTBUF$indirect
RTTI_$SYSTEM_$$_TEXTBUF$indirect	DQ	RTTI_$SYSTEM_$$_TEXTBUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXTREC$indirect
INIT_$SYSTEM_$$_TEXTREC$indirect	DQ	INIT_$SYSTEM_$$_TEXTREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000088$indirect
RTTI_$SYSTEM_$$_def00000088$indirect	DQ	RTTI_$SYSTEM_$$_def00000088

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000089$indirect
RTTI_$SYSTEM_$$_def00000089$indirect	DQ	RTTI_$SYSTEM_$$_def00000089

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000008A$indirect
RTTI_$SYSTEM_$$_def0000008A$indirect	DQ	RTTI_$SYSTEM_$$_def0000008A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTREC$indirect
RTTI_$SYSTEM_$$_TEXTREC$indirect	DQ	RTTI_$SYSTEM_$$_TEXTREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TANSIREC$indirect
INIT_$SYSTEM_$$_TANSIREC$indirect	DQ	INIT_$SYSTEM_$$_TANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSIREC$indirect
RTTI_$SYSTEM_$$_TANSIREC$indirect	DQ	RTTI_$SYSTEM_$$_TANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSIREC$indirect
RTTI_$SYSTEM_$$_PANSIREC$indirect	DQ	RTTI_$SYSTEM_$$_PANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TWIDEREC$indirect
INIT_$SYSTEM_$$_TWIDEREC$indirect	DQ	INIT_$SYSTEM_$$_TWIDEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TWIDEREC$indirect
RTTI_$SYSTEM_$$_TWIDEREC$indirect	DQ	RTTI_$SYSTEM_$$_TWIDEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PWIDEREC$indirect
RTTI_$SYSTEM_$$_PWIDEREC$indirect	DQ	RTTI_$SYSTEM_$$_PWIDEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_FILEREC$indirect
INIT_$SYSTEM_$$_FILEREC$indirect	DQ	INIT_$SYSTEM_$$_FILEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000093$indirect
RTTI_$SYSTEM_$$_def00000093$indirect	DQ	RTTI_$SYSTEM_$$_def00000093

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000094$indirect
RTTI_$SYSTEM_$$_def00000094$indirect	DQ	RTTI_$SYSTEM_$$_def00000094

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000095$indirect
RTTI_$SYSTEM_$$_def00000095$indirect	DQ	RTTI_$SYSTEM_$$_def00000095

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_FILEREC$indirect
RTTI_$SYSTEM_$$_FILEREC$indirect	DQ	RTTI_$SYSTEM_$$_FILEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TOBJECT$indirect
INIT_$SYSTEM_$$_TOBJECT$indirect	DQ	INIT_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TOBJECT$indirect
RTTI_$SYSTEM_$$_TOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_IUNKNOWN$indirect
RTTI_$SYSTEM_$$_IUNKNOWN$indirect	DQ	RTTI_$SYSTEM_$$_IUNKNOWN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCLASS$indirect
RTTI_$SYSTEM_$$_TCLASS$indirect	DQ	RTTI_$SYSTEM_$$_TCLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCLASS$indirect
RTTI_$SYSTEM_$$_PCLASS$indirect	DQ	RTTI_$SYSTEM_$$_PCLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect
INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CC$indirect
RTTI_$SYSTEM_$$_def000000CC$indirect	DQ	RTTI_$SYSTEM_$$_def000000CC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000CE$indirect
RTTI_$SYSTEM_$$_def000000CE$indirect	DQ	RTTI_$SYSTEM_$$_def000000CE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_PINTERFACEENTRY$indirect	DQ	RTTI_$SYSTEM_$$_PINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACETABLE$indirect
INIT_$SYSTEM_$$_TINTERFACETABLE$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D1$indirect
RTTI_$SYSTEM_$$_def000000D1$indirect	DQ	RTTI_$SYSTEM_$$_def000000D1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect	DQ	RTTI_$SYSTEM_$$_PINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect
INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect	DQ	INIT_$SYSTEM_$$_TMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect	DQ	RTTI_$SYSTEM_$$_TMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_PMSGSTRTABLE$indirect	DQ	RTTI_$SYSTEM_$$_PMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect	DQ	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000000D6$indirect
RTTI_$SYSTEM_$$_def000000D6$indirect	DQ	RTTI_$SYSTEM_$$_def000000D6

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect	DQ	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect	DQ	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVMT$indirect
INIT_$SYSTEM_$$_TVMT$indirect	DQ	INIT_$SYSTEM_$$_TVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPVMT$indirect
RTTI_$SYSTEM_$$_PPVMT$indirect	DQ	RTTI_$SYSTEM_$$_PPVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVMT$indirect
RTTI_$SYSTEM_$$_TVMT$indirect	DQ	RTTI_$SYSTEM_$$_TVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVMT$indirect
RTTI_$SYSTEM_$$_PVMT$indirect	DQ	RTTI_$SYSTEM_$$_PVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
INIT_$SYSTEM_$$_TINTERFACEDOBJECT$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACEDOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect
RTTI_$SYSTEM_$$_TINTERFACEDOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEDOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEDCLASS$indirect
RTTI_$SYSTEM_$$_TINTERFACEDCLASS$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEDCLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMETHOD$indirect
INIT_$SYSTEM_$$_TMETHOD$indirect	DQ	INIT_$SYSTEM_$$_TMETHOD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMETHOD$indirect
RTTI_$SYSTEM_$$_TMETHOD$indirect	DQ	RTTI_$SYSTEM_$$_TMETHOD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMETHOD$indirect
RTTI_$SYSTEM_$$_PMETHOD$indirect	DQ	RTTI_$SYSTEM_$$_PMETHOD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect
INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect	DQ	INIT_$SYSTEM_$$_EXCEPTION_RECORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000012C$indirect
RTTI_$SYSTEM_$$_def0000012C$indirect	DQ	RTTI_$SYSTEM_$$_def0000012C

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_RECORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSEHFRAME$indirect
INIT_$SYSTEM_$$_TSEHFRAME$indirect	DQ	INIT_$SYSTEM_$$_TSEHFRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSEHFRAME$indirect
RTTI_$SYSTEM_$$_TSEHFRAME$indirect	DQ	RTTI_$SYSTEM_$$_TSEHFRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSEHFRAME$indirect
RTTI_$SYSTEM_$$_PSEHFRAME$indirect	DQ	RTTI_$SYSTEM_$$_PSEHFRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect
INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect	DQ	INIT_$SYSTEM_$$_TEXCEPTOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TFILTERREC$indirect
INIT_$SYSTEM_$$_TFILTERREC$indirect	DQ	INIT_$SYSTEM_$$_TFILTERREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TFILTERREC$indirect
RTTI_$SYSTEM_$$_TFILTERREC$indirect	DQ	RTTI_$SYSTEM_$$_TFILTERREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PFILTERREC$indirect
RTTI_$SYSTEM_$$_PFILTERREC$indirect	DQ	RTTI_$SYSTEM_$$_PFILTERREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTION_FRAME$indirect
INIT_$SYSTEM_$$_TEXCEPTION_FRAME$indirect	DQ	INIT_$SYSTEM_$$_TEXCEPTION_FRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect
RTTI_$SYSTEM_$$_TEXCEPTION_FRAME$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTION_FRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_FRAME$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_FRAME

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNWINDPROC$indirect
RTTI_$SYSTEM_$$_TUNWINDPROC$indirect	DQ	RTTI_$SYSTEM_$$_TUNWINDPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTOBJPROC$indirect
RTTI_$SYSTEM_$$_TEXCEPTOBJPROC$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTOBJPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTCLSPROC$indirect
RTTI_$SYSTEM_$$_TEXCEPTCLSPROC$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTCLSPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TERRORPROC$indirect
RTTI_$SYSTEM_$$_TERRORPROC$indirect	DQ	RTTI_$SYSTEM_$$_TERRORPROC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_M128A$indirect
INIT_$SYSTEM_$$_M128A$indirect	DQ	INIT_$SYSTEM_$$_M128A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_M128A$indirect
RTTI_$SYSTEM_$$_M128A$indirect	DQ	RTTI_$SYSTEM_$$_M128A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PM128A$indirect
RTTI_$SYSTEM_$$_PM128A$indirect	DQ	RTTI_$SYSTEM_$$_PM128A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TCONTEXT$indirect
INIT_$SYSTEM_$$_TCONTEXT$indirect	DQ	INIT_$SYSTEM_$$_TCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013D$indirect
RTTI_$SYSTEM_$$_def0000013D$indirect	DQ	RTTI_$SYSTEM_$$_def0000013D

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013E$indirect
RTTI_$SYSTEM_$$_def0000013E$indirect	DQ	RTTI_$SYSTEM_$$_def0000013E

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000013F$indirect
RTTI_$SYSTEM_$$_def0000013F$indirect	DQ	RTTI_$SYSTEM_$$_def0000013F

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCONTEXT$indirect
RTTI_$SYSTEM_$$_TCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_TCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONTEXT$indirect
RTTI_$SYSTEM_$$_PCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_PCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_EXCEPTION_POINTERS$indirect
INIT_$SYSTEM_$$_EXCEPTION_POINTERS$indirect	DQ	INIT_$SYSTEM_$$_EXCEPTION_POINTERS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect
RTTI_$SYSTEM_$$_EXCEPTION_POINTERS$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_POINTERS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTION_POINTERS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSCOPEREC$indirect
INIT_$SYSTEM_$$_TSCOPEREC$indirect	DQ	INIT_$SYSTEM_$$_TSCOPEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSCOPEREC$indirect
RTTI_$SYSTEM_$$_TSCOPEREC$indirect	DQ	RTTI_$SYSTEM_$$_TSCOPEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSCOPEREC$indirect
RTTI_$SYSTEM_$$_PSCOPEREC$indirect	DQ	RTTI_$SYSTEM_$$_PSCOPEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect	DQ	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_RUNTIME_FUNCTION$indirect
INIT_$SYSTEM_$$_RUNTIME_FUNCTION$indirect	DQ	INIT_$SYSTEM_$$_RUNTIME_FUNCTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect
RTTI_$SYSTEM_$$_RUNTIME_FUNCTION$indirect	DQ	RTTI_$SYSTEM_$$_RUNTIME_FUNCTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect
RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION$indirect	DQ	RTTI_$SYSTEM_$$_PRUNTIME_FUNCTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY$indirect	DQ	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE_ENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect
INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect	DQ	INIT_$SYSTEM_$$_UNWIND_HISTORY_TABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000014A$indirect
RTTI_$SYSTEM_$$_def0000014A$indirect	DQ	RTTI_$SYSTEM_$$_def0000014A

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect
RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE$indirect	DQ	RTTI_$SYSTEM_$$_UNWIND_HISTORY_TABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE$indirect
RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE$indirect	DQ	RTTI_$SYSTEM_$$_PUNWIND_HISTORY_TABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect	DQ	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect	DQ	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND$indirect
RTTI_$SYSTEM_$$_TTYPEKIND$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTYPEKIND$indirect
RTTI_$SYSTEM_$$_PTYPEKIND$indirect	DQ	RTTI_$SYSTEM_$$_PTYPEKIND

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000198$indirect
RTTI_$SYSTEM_$$_def00000198$indirect	DQ	RTTI_$SYSTEM_$$_def00000198

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TUNICODEREC$indirect
INIT_$SYSTEM_$$_TUNICODEREC$indirect	DQ	INIT_$SYSTEM_$$_TUNICODEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TUNICODEREC$indirect
RTTI_$SYSTEM_$$_TUNICODEREC$indirect	DQ	RTTI_$SYSTEM_$$_TUNICODEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PUNICODEREC$indirect
RTTI_$SYSTEM_$$_PUNICODEREC$indirect	DQ	RTTI_$SYSTEM_$$_PUNICODEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def000001BF$indirect
RTTI_$SYSTEM_$$_def000001BF$indirect	DQ	RTTI_$SYSTEM_$$_def000001BF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVARREC$indirect
INIT_$SYSTEM_$$_TVARREC$indirect	DQ	INIT_$SYSTEM_$$_TVARREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVARREC$indirect
RTTI_$SYSTEM_$$_TVARREC$indirect	DQ	RTTI_$SYSTEM_$$_TVARREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVARREC$indirect
RTTI_$SYSTEM_$$_PVARREC$indirect	DQ	RTTI_$SYSTEM_$$_PVARREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TTESTEXCEPTION$indirect
INIT_$SYSTEM_$$_TTESTEXCEPTION$indirect	DQ	INIT_$SYSTEM_$$_TTESTEXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTESTEXCEPTION$indirect
RTTI_$SYSTEM_$$_TTESTEXCEPTION$indirect	DQ	RTTI_$SYSTEM_$$_TTESTEXCEPTION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYINDEX$indirect
RTTI_$SYSTEM_$$_PDYNARRAYINDEX$indirect	DQ	RTTI_$SYSTEM_$$_PDYNARRAYINDEX

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAY$indirect
INIT_$SYSTEM_$$_TDYNARRAY$indirect	DQ	INIT_$SYSTEM_$$_TDYNARRAY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAY$indirect
RTTI_$SYSTEM_$$_TDYNARRAY$indirect	DQ	RTTI_$SYSTEM_$$_TDYNARRAY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAY$indirect
RTTI_$SYSTEM_$$_PDYNARRAY$indirect	DQ	RTTI_$SYSTEM_$$_PDYNARRAY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect
INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect	DQ	INIT_$SYSTEM_$$_TDYNARRAYTYPEDATA

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect
RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA$indirect	DQ	RTTI_$SYSTEM_$$_TDYNARRAYTYPEDATA

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA$indirect
RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA$indirect	DQ	RTTI_$SYSTEM_$$_PDYNARRAYTYPEDATA

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect
INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect	DQ	INIT_$SYSTEM_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000021B$indirect
RTTI_$SYSTEM_$$_def0000021B$indirect	DQ	RTTI_$SYSTEM_$$_def0000021B

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect
RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect	DQ	RTTI_$SYSTEM_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000029D$indirect
RTTI_$SYSTEM_$$_def0000029D$indirect	DQ	RTTI_$SYSTEM_$$_def0000029D
; End asmlist al_indirectglobals

