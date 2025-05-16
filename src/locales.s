	.file "Locales.pas"
# Begin asmlist al_procedures

.section .text.n_locales_$$_sinformation$$ansistring,"x"
.globl	LOCALES_$$_SINFORMATION$$ANSISTRING
LOCALES_$$_SINFORMATION$$ANSISTRING:
.Lc1:
.seh_proc LOCALES_$$_SINFORMATION$$ANSISTRING
# [Locales.pas]
# [38] function sInformation: AnsiString; export; begin Exit('Information'); end;
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	leaq	.Ld1(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc2:

.section .text.n_locales_$$_swarning$$ansistring,"x"
.globl	LOCALES_$$_SWARNING$$ANSISTRING
LOCALES_$$_SWARNING$$ANSISTRING:
.Lc4:
.seh_proc LOCALES_$$_SWARNING$$ANSISTRING
# [39] function sWarning    : AnsiString; export; begin Exit('Warnung'    ); end;
	leaq	-40(%rsp),%rsp
.Lc6:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	leaq	.Ld2(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc5:

.section .text.n_locales_$$_serror$$ansistring,"x"
.globl	LOCALES_$$_SERROR$$ANSISTRING
LOCALES_$$_SERROR$$ANSISTRING:
.Lc7:
.seh_proc LOCALES_$$_SERROR$$ANSISTRING
# [40] function sError      : AnsiString; export; begin Exit('Fehler'     ); end;
	leaq	-40(%rsp),%rsp
.Lc9:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	leaq	.Ld3(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc8:

.section .text.n_locales_$$_shello$$ansistring,"x"
.globl	LOCALES_$$_SHELLO$$ANSISTRING
LOCALES_$$_SHELLO$$ANSISTRING:
.Lc10:
.seh_proc LOCALES_$$_SHELLO$$ANSISTRING
# [41] function sHello      : AnsiString; export; begin Exit('Hallo'      ); end;
	leaq	-40(%rsp),%rsp
.Lc12:
.seh_stackalloc 40
.seh_endprologue
# Var $result located in register rax
	leaq	.Ld4(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc11:
# End asmlist al_procedures
# Begin asmlist al_typedconsts

.section .rodata.n_.Ld1,"d"
.Ld1$strlab:
	.short	0,1
	.long	0
	.quad	-1,11
.Ld1:
	.ascii	"Information\000"

.section .rodata.n_.Ld2,"d"
.Ld2$strlab:
	.short	0,1
	.long	0
	.quad	-1,7
.Ld2:
	.ascii	"Warnung\000"

.section .rodata.n_.Ld3,"d"
.Ld3$strlab:
	.short	0,1
	.long	0
	.quad	-1,6
.Ld3:
	.ascii	"Fehler\000"

.section .rodata.n_.Ld4,"d"
.Ld4$strlab:
	.short	0,1
	.long	0
	.quad	-1,5
.Ld4:
	.ascii	"Hallo\000"
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc13:
	.long	.Lc15-.Lc14
.Lc14:
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
.Lc15:
	.long	.Lc17-.Lc16
.Lc16:
	.secrel32	.Lc13
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc17:
	.long	.Lc19-.Lc18
.Lc18:
	.secrel32	.Lc13
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc19:
	.long	.Lc21-.Lc20
.Lc20:
	.secrel32	.Lc13
	.quad	.Lc7
	.quad	.Lc8-.Lc7
	.byte	4
	.long	.Lc9-.Lc7
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc21:
	.long	.Lc23-.Lc22
.Lc22:
	.secrel32	.Lc13
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.byte	4
	.long	.Lc12-.Lc10
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc23:
# End asmlist al_dwarf_frame

