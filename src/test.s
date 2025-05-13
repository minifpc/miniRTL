BITS 64
default rel
CPU x64

EXTERN	_$dll$rtllib$ShowMessage
EXTERN	EXESTART
EXTERN	fpc_initializeunits
EXTERN	fpc_do_exit
EXTERN	XMM_$$_XMMINIT
EXTERN	XMM_$$_XGETFREECHUNKS$$LONGINT
EXTERN	XMM_$$_XMEMCOMPARE$POINTER$POINTER$QWORD$$BOOLEAN
EXTERN	XMM_$$_XMEMDIFFAT$POINTER$POINTER$QWORD$$QWORD
EXTERN	XMM_$$_XMOVEMEM$POINTER$POINTER$QWORD$$QWORD
EXTERN	XMM_$$_XZEROMEM$POINTER$QWORD$$QWORD
EXTERN	XMM_$$_XFREEMEM$POINTER$$QWORD
EXTERN	XMM_$$_XMEMAVAILSIZE$POINTER$$QWORD
EXTERN	XMM_$$_XMEMREALSIZE$POINTER$$QWORD
EXTERN	XMM_$$_XMEMSIZE$POINTER$$QWORD
EXTERN	XMM_$$_XCLONE$POINTER$$POINTER
EXTERN	XMM_$$_XGETMEM$QWORD$$POINTER
EXTERN	XMM_$$_XFILLMEM_CHAR$POINTER$QWORD$CHAR$$QWORD
EXTERN	XMM_$$_XFILLMEM_BYTE$POINTER$QWORD$BYTE$$QWORD
EXTERN	XMM_$$_XALLOCMEM$QWORD$$POINTER
EXTERN	XMM_$$__ATOMIC32$LONGINT$LONGINT$$LONGINT
EXTERN	INIT$_$XMM
EXTERN	INIT$_$SYSTEM
EXTERN	INIT$_$EXCEPTIONS
; Begin asmlist al_procedures

SECTION .text
	ALIGN 16
	GLOBAL PASCALMAIN
PASCALMAIN:
	GLOBAL main
main:
..@c1:
; [test.pas]
; [20] begin
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-32]
		call	fpc_initializeunits
; [21] ShowMessage('sError');
		lea	rax,[_$TEST$_Ld1]
		mov	rcx,rax
		call	_$dll$rtllib$ShowMessage
; [22] ExeStart;
		call	EXESTART
; [23] end.
		call	fpc_do_exit
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c2:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INITFINAL
INITFINAL	DQ	3,0,INIT$_$XMM,0,INIT$_$SYSTEM,0,INIT$_$EXCEPTIONS,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_THREADVARTABLES
FPC_THREADVARTABLES	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_WIDEINITTABLES
FPC_WIDEINITTABLES	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES	DQ	0

SECTION .fpc
	ALIGN 16,DB 0
__fpc_ident		DB	"FPC 3.2.2-r0d122c49 [2024/11/15] for x86_64 - Win64"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL __heapsize
__heapsize	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL __fpc_valgrind
__fpc_valgrind	DB	0
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 8,DB 0
_$TEST$_Ld1:
		DB	"sError",0
; End asmlist al_typedconsts
; Begin asmlist al_exports

SECTION .edata
	GLOBAL EDATA_$P$TEST
EDATA_$P$TEST	DD	0,0
	DW	0,0
	DD	1,16,16
..@j3:
		DB	"TEST.dll",0
	ALIGN 4,DB 0
..@j4:
	ALIGN 4,DB 0
..@j5:
	ALIGN 4,DB 0
..@j6:
	DW	15,14,10,13,12,6,1,11,7,2,3,8,9,0,4,5
	ALIGN 4,DB 0
	ALIGN 2,DB 0
..@j7:
		DB	"_atomic32",0
	ALIGN 2,DB 0
..@j8:
		DB	"xallocmem",0
	ALIGN 2,DB 0
..@j9:
		DB	"xclone",0
	ALIGN 2,DB 0
..@j10:
		DB	"xfillmem_byte",0
	ALIGN 2,DB 0
..@j11:
		DB	"xfillmem_char",0
	ALIGN 2,DB 0
..@j12:
		DB	"xfreemem",0
	ALIGN 2,DB 0
..@j13:
		DB	"xgetfreechunks",0
	ALIGN 2,DB 0
..@j14:
		DB	"xgetmem",0
	ALIGN 2,DB 0
..@j15:
		DB	"xmemavailsize",0
	ALIGN 2,DB 0
..@j16:
		DB	"xmemcompare",0
	ALIGN 2,DB 0
..@j17:
		DB	"xmemdiffat",0
	ALIGN 2,DB 0
..@j18:
		DB	"xmemrealsize",0
	ALIGN 2,DB 0
..@j19:
		DB	"xmemsize",0
	ALIGN 2,DB 0
..@j20:
		DB	"xmminit",0
	ALIGN 2,DB 0
..@j21:
		DB	"xmovemem",0
	ALIGN 2,DB 0
..@j22:
		DB	"xzeromem",0
; End asmlist al_exports

