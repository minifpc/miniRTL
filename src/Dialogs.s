	.file "Dialogs.pas"
# Begin asmlist al_procedures

.section .text.n_dialogs_$$_showmessage$pchar,"x"
	.balign 16,0x90
.globl	DIALOGS_$$_SHOWMESSAGE$PCHAR
DIALOGS_$$_SHOWMESSAGE$PCHAR:
.globl	SHIWMESSAGE
SHIWMESSAGE:
.Lc1:
.seh_proc DIALOGS_$$_SHOWMESSAGE$PCHAR
# [Dialogs.pas]
# [23] begin
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
# Var msg located in register rax
# Var msg located in register rdx
# [24] MessageBoxA(0, msg, PChar(' '), 0);
	xorl	%r9d,%r9d
	leaq	.Ld1(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
# [25] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc2:
# End asmlist al_procedures
# Begin asmlist al_typedconsts

.section .rodata.n_.Ld1,"d"
	.balign 8
.Ld1$strlab:
	.short	0,1
	.long	0
	.quad	-1,1
.Ld1:
	.ascii	" \000"
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc4:
	.long	.Lc6-.Lc5
.Lc5:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc6:
	.long	.Lc8-.Lc7
.Lc7:
	.secrel32	.Lc4
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc8:
# End asmlist al_dwarf_frame

