// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
unit global;
interface
uses Windows;

// todo: versioning !
{$ifdef FPC}
const RTLLib_Version = 20250510;
{$endif}

const
  KERNEL32 = 'kenrel32.dll';
  RTLDLL   = 'rtllib.dll';

type
  PDLLerror = ^TDLLerror;
  TDLLerror = record
    ErrorCode               : DWORD32;
    ErrorTextLength         : DWORD32;
    ErrorFromFunctionLength : DWORD32;
    ErrorFromLine           : DWORD32;
    ErrorText               : LPCSTR;
    ErrorTimeStamp          : Array [0..31] of Char;
    ErrorFromFunction       : LPCSTR;
  end;

type
  PDLLarguments = ^TDLLarguments;
  TDLLarguments = record
    ArgTypeName      : Array [0..64] of Char;
    ArgContentLength : DWORD32;
    ArgContent       : LPCSTR;
  end;
  
type
  PDLLargs = ^TDLLargs;
  TDLLargs = record
    ArgsCount : DWORD32;
    ArgsArray : Array of TDLLArguments;
  end;
  
type
  PDLLrequest = ^TDLLrequest;
  TDLLrequest = record
    Version : DWORD32;
    Error   : TDLLerror;
    Args    : TDLLargs;
  end;

implementation

end.
