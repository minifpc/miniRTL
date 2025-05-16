	.file "global.pas"
# Begin asmlist al_globals

.section .bss
	.balign 4
# [global.pas]
# [17] QApplication_Counter: DWORD32;
	.globl U_$GLOBAL_$$_QAPPLICATION_COUNTER
U_$GLOBAL_$$_QAPPLICATION_COUNTER:
	.zero 4
# End asmlist al_globals
# Begin asmlist al_rtti

.section .rodata.n_INIT_$GLOBAL_$$_TDLLERROR,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLERROR
INIT_$GLOBAL_$$_TDLLERROR:
	.byte	13,9
# [57] 
	.ascii	"TDLLerror"
	.quad	0
	.long	64
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$GLOBAL_$$_def00000006,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_def00000006
RTTI_$GLOBAL_$$_def00000006:
	.byte	12,0
	.quad	32,32
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLERROR,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLERROR
RTTI_$GLOBAL_$$_TDLLERROR:
	.byte	13,9
	.ascii	"TDLLerror"
	.quad	INIT_$GLOBAL_$$_TDLLERROR
	.long	64,7
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_PCHAR$indirect
	.quad	16
	.quad	RTTI_$GLOBAL_$$_def00000006$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_PCHAR$indirect
	.quad	56

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLERROR,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLERROR
RTTI_$GLOBAL_$$_PDLLERROR:
	.byte	29,9
	.ascii	"PDLLerror"
	.quad	RTTI_$GLOBAL_$$_TDLLERROR$indirect

.section .rodata.n_INIT_$GLOBAL_$$_TDLLARGUMENTS,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLARGUMENTS
INIT_$GLOBAL_$$_TDLLARGUMENTS:
	.byte	13,13
	.ascii	"TDLLarguments"
	.quad	0
	.long	80
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$GLOBAL_$$_def00000009,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_def00000009
RTTI_$GLOBAL_$$_def00000009:
	.byte	12,0
	.quad	65,65
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLARGUMENTS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLARGUMENTS
RTTI_$GLOBAL_$$_TDLLARGUMENTS:
	.byte	13,13
	.ascii	"TDLLarguments"
	.quad	INIT_$GLOBAL_$$_TDLLARGUMENTS
	.long	80,3
	.quad	RTTI_$GLOBAL_$$_def00000009$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	68
	.quad	RTTI_$SYSTEM_$$_PCHAR$indirect
	.quad	72

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLARGUMENTS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLARGUMENTS
RTTI_$GLOBAL_$$_PDLLARGUMENTS:
	.byte	29,13
	.ascii	"PDLLarguments"
	.quad	RTTI_$GLOBAL_$$_TDLLARGUMENTS$indirect

.section .rodata.n_INIT_$GLOBAL_$$_def0000000C,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_def0000000C
INIT_$GLOBAL_$$_def0000000C:
	.byte	21,0
	.quad	80
	.quad	INIT_$GLOBAL_$$_TDLLARGUMENTS$indirect
	.long	-1
	.quad	0
	.byte	6
	.ascii	"global"

.section .rodata.n_INIT_$GLOBAL_$$_TDLLARGS,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLARGS
INIT_$GLOBAL_$$_TDLLARGS:
	.byte	13,8
	.ascii	"TDLLargs"
	.quad	0
	.long	16
	.quad	0,0
	.long	1
	.quad	INIT_$GLOBAL_$$_def0000000C$indirect
	.quad	8

.section .rodata.n_RTTI_$GLOBAL_$$_def0000000C,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_def0000000C
RTTI_$GLOBAL_$$_def0000000C:
	.byte	21,0
	.quad	80
	.quad	RTTI_$GLOBAL_$$_TDLLARGUMENTS$indirect
	.long	-1
	.quad	0
	.byte	6
	.ascii	"global"

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLARGS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLARGS
RTTI_$GLOBAL_$$_TDLLARGS:
	.byte	13,8
	.ascii	"TDLLargs"
	.quad	INIT_$GLOBAL_$$_TDLLARGS
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$GLOBAL_$$_def0000000C$indirect
	.quad	8

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLARGS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLARGS
RTTI_$GLOBAL_$$_PDLLARGS:
	.byte	29,8
	.ascii	"PDLLargs"
	.quad	RTTI_$GLOBAL_$$_TDLLARGS$indirect

.section .rodata.n_INIT_$GLOBAL_$$_TDLLREQUEST,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLREQUEST
INIT_$GLOBAL_$$_TDLLREQUEST:
	.byte	13,11
	.ascii	"TDLLrequest"
	.quad	0
	.long	88
	.quad	0,0
	.long	1
	.quad	INIT_$GLOBAL_$$_TDLLARGS$indirect
	.quad	72

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLREQUEST,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLREQUEST
RTTI_$GLOBAL_$$_TDLLREQUEST:
	.byte	13,11
	.ascii	"TDLLrequest"
	.quad	INIT_$GLOBAL_$$_TDLLREQUEST
	.long	88,3
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$GLOBAL_$$_TDLLERROR$indirect
	.quad	8
	.quad	RTTI_$GLOBAL_$$_TDLLARGS$indirect
	.quad	72

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLREQUEST,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLREQUEST
RTTI_$GLOBAL_$$_PDLLREQUEST:
	.byte	29,11
	.ascii	"PDLLrequest"
	.quad	RTTI_$GLOBAL_$$_TDLLREQUEST$indirect
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_INIT_$GLOBAL_$$_TDLLERROR,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLERROR$indirect
INIT_$GLOBAL_$$_TDLLERROR$indirect:
	.quad	INIT_$GLOBAL_$$_TDLLERROR

.section .rodata.n_RTTI_$GLOBAL_$$_def00000006,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_def00000006$indirect
RTTI_$GLOBAL_$$_def00000006$indirect:
	.quad	RTTI_$GLOBAL_$$_def00000006

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLERROR,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLERROR$indirect
RTTI_$GLOBAL_$$_TDLLERROR$indirect:
	.quad	RTTI_$GLOBAL_$$_TDLLERROR

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLERROR,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLERROR$indirect
RTTI_$GLOBAL_$$_PDLLERROR$indirect:
	.quad	RTTI_$GLOBAL_$$_PDLLERROR

.section .rodata.n_INIT_$GLOBAL_$$_TDLLARGUMENTS,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLARGUMENTS$indirect
INIT_$GLOBAL_$$_TDLLARGUMENTS$indirect:
	.quad	INIT_$GLOBAL_$$_TDLLARGUMENTS

.section .rodata.n_RTTI_$GLOBAL_$$_def00000009,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_def00000009$indirect
RTTI_$GLOBAL_$$_def00000009$indirect:
	.quad	RTTI_$GLOBAL_$$_def00000009

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLARGUMENTS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLARGUMENTS$indirect
RTTI_$GLOBAL_$$_TDLLARGUMENTS$indirect:
	.quad	RTTI_$GLOBAL_$$_TDLLARGUMENTS

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLARGUMENTS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLARGUMENTS$indirect
RTTI_$GLOBAL_$$_PDLLARGUMENTS$indirect:
	.quad	RTTI_$GLOBAL_$$_PDLLARGUMENTS

.section .rodata.n_INIT_$GLOBAL_$$_def0000000C,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_def0000000C$indirect
INIT_$GLOBAL_$$_def0000000C$indirect:
	.quad	INIT_$GLOBAL_$$_def0000000C

.section .rodata.n_INIT_$GLOBAL_$$_TDLLARGS,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLARGS$indirect
INIT_$GLOBAL_$$_TDLLARGS$indirect:
	.quad	INIT_$GLOBAL_$$_TDLLARGS

.section .rodata.n_RTTI_$GLOBAL_$$_def0000000C,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_def0000000C$indirect
RTTI_$GLOBAL_$$_def0000000C$indirect:
	.quad	RTTI_$GLOBAL_$$_def0000000C

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLARGS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLARGS$indirect
RTTI_$GLOBAL_$$_TDLLARGS$indirect:
	.quad	RTTI_$GLOBAL_$$_TDLLARGS

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLARGS,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLARGS$indirect
RTTI_$GLOBAL_$$_PDLLARGS$indirect:
	.quad	RTTI_$GLOBAL_$$_PDLLARGS

.section .rodata.n_INIT_$GLOBAL_$$_TDLLREQUEST,"d"
	.balign 8
.globl	INIT_$GLOBAL_$$_TDLLREQUEST$indirect
INIT_$GLOBAL_$$_TDLLREQUEST$indirect:
	.quad	INIT_$GLOBAL_$$_TDLLREQUEST

.section .rodata.n_RTTI_$GLOBAL_$$_TDLLREQUEST,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_TDLLREQUEST$indirect
RTTI_$GLOBAL_$$_TDLLREQUEST$indirect:
	.quad	RTTI_$GLOBAL_$$_TDLLREQUEST

.section .rodata.n_RTTI_$GLOBAL_$$_PDLLREQUEST,"d"
	.balign 8
.globl	RTTI_$GLOBAL_$$_PDLLREQUEST$indirect
RTTI_$GLOBAL_$$_PDLLREQUEST$indirect:
	.quad	RTTI_$GLOBAL_$$_PDLLREQUEST
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
	.long	.Lc3-.Lc2
.Lc2:
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
.Lc3:
# End asmlist al_dwarf_frame

