
//function  Lo(B: Byte):Byte;{$ifdef SYSTEMINLINE}inline;{$endif}
//function  Hi(b : Byte) : Byte;{$ifdef SYSTEMINLINE}inline;{$endif}
//function  Lo(i : Integer) : byte;  [INTERNPROC: fpc_in_lo_Word] overload;
//function  Lo(w : Word) : byte;     [INTERNPROC: fpc_in_lo_Word] overload;
//function  Lo(l : Longint) : Word;  [INTERNPROC: fpc_in_lo_long];
//function  Lo(l : DWord) : Word;    [INTERNPROC: fpc_in_lo_long] overload;
//function  Lo(i : Int64) : DWord;   [INTERNPROC: fpc_in_lo_qword] overload;
//function  Lo(q : QWord) : DWord;   [INTERNPROC: fpc_in_lo_qword] overload;
//function  Hi(i : Integer) : byte;  [INTERNPROC: fpc_in_hi_Word] overload;
//function  Hi(w : Word) : byte;     [INTERNPROC: fpc_in_hi_Word] overload;
//function  Hi(l : Longint) : Word;  [INTERNPROC: fpc_in_hi_long];
//function  Hi(l : DWord) : Word;    [INTERNPROC: fpc_in_hi_long] overload;
//function  Hi(i : Int64) : DWord;   [INTERNPROC: fpc_in_hi_qword] overload;
//function  Hi(q : QWord) : DWord;   [INTERNPROC: fpc_in_hi_qword] overload;


function Lo(i: Integer): Byte ; overload;
function Lo(w: Word   ): Byte ; overload;
function Lo(l: Longint): Word ; overload;
function Lo(l: DWord  ): Word ; overload;

function Lo(i: Int64  ): DWord; overload;
function Lo(q: QWord  ): DWord; overload;

function Hi(i: Integer): Byte ; overload;
function Hi(w: Word   ): Byte ; overload;

function Hi(l: DWord  ): Word ; overload;
function Hi(i: Int64  ): DWord; overload;
function Hi(q: QWord  ): DWord; overload;


//function BsfByte(const avalue: byte): byte;{$ifdef SYSTEMINLINE}inline;{$endif}
function BsrByte(const avalue: byte): byte;{$ifdef SYSTEMINLINE}inline;{$endif}
//function BsfWord(const avalue: word): {$ifdef CPU16}byte{$else}cardinal{$endif};{$ifdef SYSTEMINLINE}inline;{$endif}
//function BsrWord(const avalue: word): {$ifdef CPU16}byte{$else}cardinal{$endif};{$ifdef SYSTEMINLINE}inline;{$endif}
//function BsfDWord(const avalue : dword): {$ifdef CPU16}byte{$else}cardinal{$endif};{$ifdef SYSTEMINLINE}inline;{$endif}
function BsrDWord(const avalue : dword): {$ifdef CPU16}byte{$else}cardinal{$endif};{$ifdef SYSTEMINLINE}inline;{$endif}
//function BsfQWord(const avalue : qword): {$ifdef CPU16}byte{$else}cardinal{$endif};{$ifdef SYSTEMINLINE}inline;{$endif}
function BsrQWord(const avalue: qword): cardinal; {$ifdef SYSTEMINLINE}inline;{$endif}

//function Pi: ValReal; [internproc: fpc_in_pi_real];
//function Abs(d: ValReal): ValReal; [internproc: fpc_in_abs_real];
//function Sqr(d: ValReal): ValReal; [internproc: fpc_in_sqr_real];
//function Sqrt(d: ValReal): ValReal; [internproc: fpc_in_sqrt_real];
//function ArcTan(d: ValReal): ValReal; [internproc: fpc_in_arctan_real];
//function Ln(d: ValReal): ValReal; [internproc: fpc_in_ln_real];
//function Sin(d: ValReal): ValReal; [internproc: fpc_in_sin_real];
//function Cos(d: ValReal): ValReal; [internproc: fpc_in_cos_real];
//function Exp(d: ValReal): ValReal; [internproc: fpc_in_exp_real];
//function Round(d: ValReal): int64; [internproc: fpc_in_round_real];
//function Frac(d: ValReal): ValReal; [internproc: fpc_in_frac_real];
//function Int(d: ValReal): ValReal; [internproc: fpc_in_int_real];
//function Trunc(d: ValReal): int64; [internproc: fpc_in_trunc_real];

function Abs(l: LongInt): LongInt; [internproc: fpc_in_abs_long];

