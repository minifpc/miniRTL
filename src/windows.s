	.file "windows.pas"
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$WINDOWS_$$_PHANDLE,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PHANDLE
RTTI_$WINDOWS_$$_PHANDLE:
	.byte	29,7
# [windows.pas]
# [395] 
	.ascii	"PHANDLE"
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect

.section .rodata.n_RTTI_$WINDOWS_$$_PLONG,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PLONG
RTTI_$WINDOWS_$$_PLONG:
	.byte	29,5
	.ascii	"PLONG"
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_INIT_$WINDOWS_$$_LARGE_INTEGER,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_LARGE_INTEGER
INIT_$WINDOWS_$$_LARGE_INTEGER:
	.byte	13,13
	.ascii	"LARGE_INTEGER"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_LARGE_INTEGER,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LARGE_INTEGER
RTTI_$WINDOWS_$$_LARGE_INTEGER:
	.byte	13,13
	.ascii	"LARGE_INTEGER"
	.quad	INIT_$WINDOWS_$$_LARGE_INTEGER
	.long	8,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0

.section .rodata.n_RTTI_$WINDOWS_$$_PLARGE_INTEGER,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PLARGE_INTEGER
RTTI_$WINDOWS_$$_PLARGE_INTEGER:
	.byte	29,14
	.ascii	"PLARGE_INTEGER"
	.quad	RTTI_$WINDOWS_$$_LARGE_INTEGER$indirect

.section .rodata.n_RTTI_$WINDOWS_$$_PPANSICHAR,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PPANSICHAR
RTTI_$WINDOWS_$$_PPANSICHAR:
	.byte	29,10
	.ascii	"PPAnsiChar"
	.quad	RTTI_$SYSTEM_$$_PANSICHAR$indirect

.section .rodata.n_RTTI_$WINDOWS_$$_LPBYTE,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPBYTE
RTTI_$WINDOWS_$$_LPBYTE:
	.byte	29,6
	.ascii	"LPBYTE"
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect

.section .rodata.n_INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES
INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES:
	.byte	13,19
	.ascii	"SECURITY_ATTRIBUTES"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES
RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES:
	.byte	13,19
	.ascii	"SECURITY_ATTRIBUTES"
	.quad	INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES
	.long	24,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGBOOL$indirect
	.quad	16

.section .rodata.n_RTTI_$WINDOWS_$$_LPSECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPSECURITY_ATTRIBUTES
RTTI_$WINDOWS_$$_LPSECURITY_ATTRIBUTES:
	.byte	29,21
	.ascii	"LPSECURITY_ATTRIBUTES"
	.quad	RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES$indirect

.section .rodata.n_INIT_$WINDOWS_$$_OVERLAPPED,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_OVERLAPPED
INIT_$WINDOWS_$$_OVERLAPPED:
	.byte	13,10
	.ascii	"OVERLAPPED"
	.quad	0
	.long	32
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_OVERLAPPED,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_OVERLAPPED
RTTI_$WINDOWS_$$_OVERLAPPED:
	.byte	13,10
	.ascii	"OVERLAPPED"
	.quad	INIT_$WINDOWS_$$_OVERLAPPED
	.long	32,5
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	20
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	24

.section .rodata.n_RTTI_$WINDOWS_$$_LPOVERLAPPED,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPOVERLAPPED
RTTI_$WINDOWS_$$_LPOVERLAPPED:
	.byte	29,12
	.ascii	"LPOVERLAPPED"
	.quad	RTTI_$WINDOWS_$$_OVERLAPPED$indirect

.section .rodata.n_INIT_$WINDOWS_$$_POINT,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_POINT
INIT_$WINDOWS_$$_POINT:
	.byte	13,5
	.ascii	"POINT"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_POINT,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_POINT
RTTI_$WINDOWS_$$_POINT:
	.byte	13,5
	.ascii	"POINT"
	.quad	INIT_$WINDOWS_$$_POINT
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4

.section .rodata.n_INIT_$WINDOWS_$$_MSG,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_MSG
INIT_$WINDOWS_$$_MSG:
	.byte	13,3
	.ascii	"MSG"
	.quad	0
	.long	48
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_MSG,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_MSG
RTTI_$WINDOWS_$$_MSG:
	.byte	13,3
	.ascii	"MSG"
	.quad	INIT_$WINDOWS_$$_MSG
	.long	48,6
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_CARDINAL$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	32
	.quad	RTTI_$WINDOWS_$$_POINT$indirect
	.quad	36

.section .rodata.n_RTTI_$WINDOWS_$$_LPMSG,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPMSG
RTTI_$WINDOWS_$$_LPMSG:
	.byte	29,5
	.ascii	"LPMSG"
	.quad	RTTI_$WINDOWS_$$_MSG$indirect

.section .rodata.n_RTTI_$WINDOWS_$$_TIMERPROC,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_TIMERPROC
RTTI_$WINDOWS_$$_TIMERPROC:
	.byte	23,9
	.ascii	"TIMERPROC"
	.byte	0,3
	.quad	0
	.byte	4
	.short	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.byte	4
	.ascii	"hWnd"
	.short	0
	.quad	RTTI_$SYSTEM_$$_CARDINAL$indirect
	.byte	4
	.ascii	"uMsg"
	.short	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.byte	7
	.ascii	"idEvent"
	.short	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.byte	6
	.ascii	"dwTime"

.section .rodata.n_INIT_$WINDOWS_$$_STARTUPINFOA,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_STARTUPINFOA
INIT_$WINDOWS_$$_STARTUPINFOA:
	.byte	13,12
	.ascii	"STARTUPINFOA"
	.quad	0
	.long	104
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_STARTUPINFOA,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_STARTUPINFOA
RTTI_$WINDOWS_$$_STARTUPINFOA:
	.byte	13,12
	.ascii	"STARTUPINFOA"
	.quad	INIT_$WINDOWS_$$_STARTUPINFOA
	.long	104,18
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PANSICHAR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PANSICHAR$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_PANSICHAR$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	36
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	44
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	52
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	60
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	66
	.quad	RTTI_$WINDOWS_$$_LPBYTE$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	96

.section .rodata.n_INIT_$WINDOWS_$$_STARTUPINFOW,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_STARTUPINFOW
INIT_$WINDOWS_$$_STARTUPINFOW:
	.byte	13,12
	.ascii	"STARTUPINFOW"
	.quad	0
	.long	104
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_STARTUPINFOW,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_STARTUPINFOW
RTTI_$WINDOWS_$$_STARTUPINFOW:
	.byte	13,12
	.ascii	"STARTUPINFOW"
	.quad	INIT_$WINDOWS_$$_STARTUPINFOW
	.long	104,18
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PWIDECHAR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PWIDECHAR$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_PWIDECHAR$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	36
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	44
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	52
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	60
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	66
	.quad	RTTI_$WINDOWS_$$_LPBYTE$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	96

.section .rodata.n_INIT_$WINDOWS_$$_PROCESS_INFORMATION,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_PROCESS_INFORMATION
INIT_$WINDOWS_$$_PROCESS_INFORMATION:
	.byte	13,19
	.ascii	"PROCESS_INFORMATION"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_PROCESS_INFORMATION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PROCESS_INFORMATION
RTTI_$WINDOWS_$$_PROCESS_INFORMATION:
	.byte	13,19
	.ascii	"PROCESS_INFORMATION"
	.quad	INIT_$WINDOWS_$$_PROCESS_INFORMATION
	.long	24,4
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	20

.section .rodata.n_RTTI_$WINDOWS_$$_PPROCESS_INFORMATION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PPROCESS_INFORMATION
RTTI_$WINDOWS_$$_PPROCESS_INFORMATION:
	.byte	29,20
	.ascii	"PPROCESS_INFORMATION"
	.quad	RTTI_$WINDOWS_$$_PROCESS_INFORMATION$indirect

.section .rodata.n_RTTI_$WINDOWS_$$_LPTHREAD_START_ROUTINE,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPTHREAD_START_ROUTINE
RTTI_$WINDOWS_$$_LPTHREAD_START_ROUTINE:
	.byte	23,22
	.ascii	"LPTHREAD_START_ROUTINE"
	.byte	0,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.byte	1
	.short	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	11
	.ascii	"lpParameter"

.section .rodata.n_INIT_$WINDOWS_$$_RECT,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_RECT
INIT_$WINDOWS_$$_RECT:
	.byte	13,4
	.ascii	"RECT"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_RECT,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_RECT
RTTI_$WINDOWS_$$_RECT:
	.byte	13,4
	.ascii	"RECT"
	.quad	INIT_$WINDOWS_$$_RECT
	.long	16,4
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	12

.section .rodata.n_INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION
INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION:
	.byte	13,20
	.ascii	"RTL_CRITICAL_SECTION"
	.quad	0
	.long	40
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION
RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION:
	.byte	13,20
	.ascii	"RTL_CRITICAL_SECTION"
	.quad	INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION
	.long	40,6
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	32

.section .rodata.n_RTTI_$WINDOWS_$$_PRTL_CRITICAL_SECTION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PRTL_CRITICAL_SECTION
RTTI_$WINDOWS_$$_PRTL_CRITICAL_SECTION:
	.byte	29,21
	.ascii	"PRTL_CRITICAL_SECTION"
	.quad	RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION$indirect

.section .rodata.n_INIT_$WINDOWS_$$_SYSTEMTIME,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_SYSTEMTIME
INIT_$WINDOWS_$$_SYSTEMTIME:
	.byte	13,10
	.ascii	"SYSTEMTIME"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_SYSTEMTIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_SYSTEMTIME
RTTI_$WINDOWS_$$_SYSTEMTIME:
	.byte	13,10
	.ascii	"SYSTEMTIME"
	.quad	INIT_$WINDOWS_$$_SYSTEMTIME
	.long	16,8
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	2
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	10
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	14

.section .rodata.n_RTTI_$WINDOWS_$$_PSYSTEMTIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PSYSTEMTIME
RTTI_$WINDOWS_$$_PSYSTEMTIME:
	.byte	29,11
	.ascii	"PSYSTEMTIME"
	.quad	RTTI_$WINDOWS_$$_SYSTEMTIME$indirect

.section .rodata.n_INIT_$WINDOWS_$$_FILETIME,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_FILETIME
INIT_$WINDOWS_$$_FILETIME:
	.byte	13,8
	.ascii	"FILETIME"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$WINDOWS_$$_FILETIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_FILETIME
RTTI_$WINDOWS_$$_FILETIME:
	.byte	13,8
	.ascii	"FILETIME"
	.quad	INIT_$WINDOWS_$$_FILETIME
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	4

.section .rodata.n_RTTI_$WINDOWS_$$_PFILETIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PFILETIME
RTTI_$WINDOWS_$$_PFILETIME:
	.byte	29,9
	.ascii	"PFILETIME"
	.quad	RTTI_$WINDOWS_$$_FILETIME$indirect
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_RTTI_$WINDOWS_$$_PHANDLE,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PHANDLE$indirect
RTTI_$WINDOWS_$$_PHANDLE$indirect:
	.quad	RTTI_$WINDOWS_$$_PHANDLE

.section .rodata.n_RTTI_$WINDOWS_$$_PLONG,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PLONG$indirect
RTTI_$WINDOWS_$$_PLONG$indirect:
	.quad	RTTI_$WINDOWS_$$_PLONG

.section .rodata.n_INIT_$WINDOWS_$$_LARGE_INTEGER,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_LARGE_INTEGER$indirect
INIT_$WINDOWS_$$_LARGE_INTEGER$indirect:
	.quad	INIT_$WINDOWS_$$_LARGE_INTEGER

.section .rodata.n_RTTI_$WINDOWS_$$_LARGE_INTEGER,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LARGE_INTEGER$indirect
RTTI_$WINDOWS_$$_LARGE_INTEGER$indirect:
	.quad	RTTI_$WINDOWS_$$_LARGE_INTEGER

.section .rodata.n_RTTI_$WINDOWS_$$_PLARGE_INTEGER,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PLARGE_INTEGER$indirect
RTTI_$WINDOWS_$$_PLARGE_INTEGER$indirect:
	.quad	RTTI_$WINDOWS_$$_PLARGE_INTEGER

.section .rodata.n_RTTI_$WINDOWS_$$_PPANSICHAR,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PPANSICHAR$indirect
RTTI_$WINDOWS_$$_PPANSICHAR$indirect:
	.quad	RTTI_$WINDOWS_$$_PPANSICHAR

.section .rodata.n_RTTI_$WINDOWS_$$_LPBYTE,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPBYTE$indirect
RTTI_$WINDOWS_$$_LPBYTE$indirect:
	.quad	RTTI_$WINDOWS_$$_LPBYTE

.section .rodata.n_INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES$indirect
INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES$indirect:
	.quad	INIT_$WINDOWS_$$_SECURITY_ATTRIBUTES

.section .rodata.n_RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES$indirect
RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES$indirect:
	.quad	RTTI_$WINDOWS_$$_SECURITY_ATTRIBUTES

.section .rodata.n_RTTI_$WINDOWS_$$_LPSECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPSECURITY_ATTRIBUTES$indirect
RTTI_$WINDOWS_$$_LPSECURITY_ATTRIBUTES$indirect:
	.quad	RTTI_$WINDOWS_$$_LPSECURITY_ATTRIBUTES

.section .rodata.n_INIT_$WINDOWS_$$_OVERLAPPED,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_OVERLAPPED$indirect
INIT_$WINDOWS_$$_OVERLAPPED$indirect:
	.quad	INIT_$WINDOWS_$$_OVERLAPPED

.section .rodata.n_RTTI_$WINDOWS_$$_OVERLAPPED,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_OVERLAPPED$indirect
RTTI_$WINDOWS_$$_OVERLAPPED$indirect:
	.quad	RTTI_$WINDOWS_$$_OVERLAPPED

.section .rodata.n_RTTI_$WINDOWS_$$_LPOVERLAPPED,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPOVERLAPPED$indirect
RTTI_$WINDOWS_$$_LPOVERLAPPED$indirect:
	.quad	RTTI_$WINDOWS_$$_LPOVERLAPPED

.section .rodata.n_INIT_$WINDOWS_$$_POINT,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_POINT$indirect
INIT_$WINDOWS_$$_POINT$indirect:
	.quad	INIT_$WINDOWS_$$_POINT

.section .rodata.n_RTTI_$WINDOWS_$$_POINT,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_POINT$indirect
RTTI_$WINDOWS_$$_POINT$indirect:
	.quad	RTTI_$WINDOWS_$$_POINT

.section .rodata.n_INIT_$WINDOWS_$$_MSG,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_MSG$indirect
INIT_$WINDOWS_$$_MSG$indirect:
	.quad	INIT_$WINDOWS_$$_MSG

.section .rodata.n_RTTI_$WINDOWS_$$_MSG,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_MSG$indirect
RTTI_$WINDOWS_$$_MSG$indirect:
	.quad	RTTI_$WINDOWS_$$_MSG

.section .rodata.n_RTTI_$WINDOWS_$$_LPMSG,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPMSG$indirect
RTTI_$WINDOWS_$$_LPMSG$indirect:
	.quad	RTTI_$WINDOWS_$$_LPMSG

.section .rodata.n_RTTI_$WINDOWS_$$_TIMERPROC,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_TIMERPROC$indirect
RTTI_$WINDOWS_$$_TIMERPROC$indirect:
	.quad	RTTI_$WINDOWS_$$_TIMERPROC

.section .rodata.n_INIT_$WINDOWS_$$_STARTUPINFOA,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_STARTUPINFOA$indirect
INIT_$WINDOWS_$$_STARTUPINFOA$indirect:
	.quad	INIT_$WINDOWS_$$_STARTUPINFOA

.section .rodata.n_RTTI_$WINDOWS_$$_STARTUPINFOA,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_STARTUPINFOA$indirect
RTTI_$WINDOWS_$$_STARTUPINFOA$indirect:
	.quad	RTTI_$WINDOWS_$$_STARTUPINFOA

.section .rodata.n_INIT_$WINDOWS_$$_STARTUPINFOW,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_STARTUPINFOW$indirect
INIT_$WINDOWS_$$_STARTUPINFOW$indirect:
	.quad	INIT_$WINDOWS_$$_STARTUPINFOW

.section .rodata.n_RTTI_$WINDOWS_$$_STARTUPINFOW,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_STARTUPINFOW$indirect
RTTI_$WINDOWS_$$_STARTUPINFOW$indirect:
	.quad	RTTI_$WINDOWS_$$_STARTUPINFOW

.section .rodata.n_INIT_$WINDOWS_$$_PROCESS_INFORMATION,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_PROCESS_INFORMATION$indirect
INIT_$WINDOWS_$$_PROCESS_INFORMATION$indirect:
	.quad	INIT_$WINDOWS_$$_PROCESS_INFORMATION

.section .rodata.n_RTTI_$WINDOWS_$$_PROCESS_INFORMATION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PROCESS_INFORMATION$indirect
RTTI_$WINDOWS_$$_PROCESS_INFORMATION$indirect:
	.quad	RTTI_$WINDOWS_$$_PROCESS_INFORMATION

.section .rodata.n_RTTI_$WINDOWS_$$_PPROCESS_INFORMATION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PPROCESS_INFORMATION$indirect
RTTI_$WINDOWS_$$_PPROCESS_INFORMATION$indirect:
	.quad	RTTI_$WINDOWS_$$_PPROCESS_INFORMATION

.section .rodata.n_RTTI_$WINDOWS_$$_LPTHREAD_START_ROUTINE,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_LPTHREAD_START_ROUTINE$indirect
RTTI_$WINDOWS_$$_LPTHREAD_START_ROUTINE$indirect:
	.quad	RTTI_$WINDOWS_$$_LPTHREAD_START_ROUTINE

.section .rodata.n_INIT_$WINDOWS_$$_RECT,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_RECT$indirect
INIT_$WINDOWS_$$_RECT$indirect:
	.quad	INIT_$WINDOWS_$$_RECT

.section .rodata.n_RTTI_$WINDOWS_$$_RECT,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_RECT$indirect
RTTI_$WINDOWS_$$_RECT$indirect:
	.quad	RTTI_$WINDOWS_$$_RECT

.section .rodata.n_INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION$indirect
INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION$indirect:
	.quad	INIT_$WINDOWS_$$_RTL_CRITICAL_SECTION

.section .rodata.n_RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION$indirect
RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION$indirect:
	.quad	RTTI_$WINDOWS_$$_RTL_CRITICAL_SECTION

.section .rodata.n_RTTI_$WINDOWS_$$_PRTL_CRITICAL_SECTION,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PRTL_CRITICAL_SECTION$indirect
RTTI_$WINDOWS_$$_PRTL_CRITICAL_SECTION$indirect:
	.quad	RTTI_$WINDOWS_$$_PRTL_CRITICAL_SECTION

.section .rodata.n_INIT_$WINDOWS_$$_SYSTEMTIME,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_SYSTEMTIME$indirect
INIT_$WINDOWS_$$_SYSTEMTIME$indirect:
	.quad	INIT_$WINDOWS_$$_SYSTEMTIME

.section .rodata.n_RTTI_$WINDOWS_$$_SYSTEMTIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_SYSTEMTIME$indirect
RTTI_$WINDOWS_$$_SYSTEMTIME$indirect:
	.quad	RTTI_$WINDOWS_$$_SYSTEMTIME

.section .rodata.n_RTTI_$WINDOWS_$$_PSYSTEMTIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PSYSTEMTIME$indirect
RTTI_$WINDOWS_$$_PSYSTEMTIME$indirect:
	.quad	RTTI_$WINDOWS_$$_PSYSTEMTIME

.section .rodata.n_INIT_$WINDOWS_$$_FILETIME,"d"
	.balign 8
.globl	INIT_$WINDOWS_$$_FILETIME$indirect
INIT_$WINDOWS_$$_FILETIME$indirect:
	.quad	INIT_$WINDOWS_$$_FILETIME

.section .rodata.n_RTTI_$WINDOWS_$$_FILETIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_FILETIME$indirect
RTTI_$WINDOWS_$$_FILETIME$indirect:
	.quad	RTTI_$WINDOWS_$$_FILETIME

.section .rodata.n_RTTI_$WINDOWS_$$_PFILETIME,"d"
	.balign 8
.globl	RTTI_$WINDOWS_$$_PFILETIME$indirect
RTTI_$WINDOWS_$$_PFILETIME$indirect:
	.quad	RTTI_$WINDOWS_$$_PFILETIME
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

