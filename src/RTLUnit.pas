// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
{$WARN IMPLICIT_STRING_CAST_LOSS OFF}
{$M-}
unit RTLUnit;

interface

uses
  Windows, global, Dialogs, SysUtils, StrUtils, Exceptions, Locales,
  Forms, Application;

type
  TByteLookup = array[0..255] of Byte;
  PByteLookup = ^TByteLookup;
const
  bsr8bit: TByteLookup = (
  $ff,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
	5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
	6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
	6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
);

function GetBsr8bit: PByteLookup; stdcall; export;

type
  TWidgetSet = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;
  end;

type
  TRtl = class(TObject)
  private
    FWidgetSet: TWidgetSet;
  public
    constructor Create;
    destructor Destroy; override;
  end;

function TRtl_Create: TRtl; stdcall; export;
procedure TRtl_Destroy(AValue: TRTL); stdcall; export;

type
  T_Array_Boolean = Array of Boolean;
  T_Array_Char    = Array of Char;
  T_Array_Byte    = Array of Byte;
  T_Array_Word    = Array of Word;
  T_Array_DWord   = Array of DWord;
  T_Array_Integer = Array of Integer;
  T_Array_String  = Array of String;

implementation

const mfcfpc = 'mfcfpc.dll';

function GetBsr8bit: PByteLookup; stdcall; export;
begin
  result := @bsr8bit;
end;

function ReplaceText(P: PDLLrequest): PDLLrequest; cdecl; external mfcfpc name 'fpc_ReplaceText';

//function ReplaceText(P: TDLLrequest): PAnsiChar; cdecl; external mfcfpc name 'fpc_ReplaceText';
(*/
 S: PAnsiChar;
    oldPattern: PAnsiChar;
    newPattern: PAnsiChar;
    Flags: Cardinal;
    lenS: Integer;
    lenOldPattern: Integer;
    lenNewPattern: Integer): PAnsiChar; cdecl;
    external mfcfpc name 'fpc_ReplaceText';*)

constructor TWidgetSet.Create;
begin
  inherited Create;
end;

destructor TWidgetSet.Destroy;
begin
  inherited Destroy;
end;

constructor TRtl.Create;
begin
  inherited Create;
end;

destructor TRTL.Destroy;
begin
  inherited Destroy;
end;

function TRTL_Create: TRTL; stdcall; export;
begin
  WriteLn('xxxx');
  result := TRTL.Create;
end;

procedure TRTL_Destroy(AValue: TRTL); stdcall; export;
begin
  AValue.Free;
end;

{$ifdef DLLIMPORT}
function IsGUIDEqual(const guid1, guid2: TGUID): boolean; stdcall; external RTLDLL;
{$endif DLLIMPORT}

{$ifdef DLLEXPORT}
exports
  sInformation name 'sInformation',
  sError       name 'sError',
  sHello       name 'sHello',
  
  GetBsr8bit            name 'GetBsr8bit',
  
  fpchandleerror        name 'fpchandleerror',
  fpcdivint64           name 'fpcdivint64',
  fpcdivqword           name 'fpcdivqword',
  
  fpcsetjmp          name 'fpcsetjmp',
  fpclongjmp         name 'fpclongjmp',
  
  fpcdynarraysetlength    name 'fpcdynarraysetlength',
  
  newansistring           name 'newansistring',
  newwidestring           name 'newwidestring',
  
  fpctruelyansistrunique  name 'fpctruelyansistrunique',
  
  fpcshortstrtoansistr  name 'fpcshortstrtoansistr',
  fpcshortstrcopy       name 'fpcshortstrcopy',
  
  fpcansistrassign        name 'fpcansistrassign',
  fpcansistrsetlength     name 'fpcansistrsetlength',
  fpcansistrdecrref       name 'fpcansistrdecrref',
  fpcansistrcopy          name 'fpcansistrcopy',
  fpcansistrcompareequal  name 'fpcansistrcompareequal',
  fpcansistrincrref       name 'fpcansistrincrref',
  
  fpcpwidechartoansistr name 'fpcpwidechartoansistr',
  fpcwidestrassign      name 'fpcwidestrassign',
  fpcpwidechartowidestr name 'fpcpwidechartowidestr',
  fpcwidestrincrref     name 'fpcwidestrincrref',
  fpcpchartoansistr     name 'fpcpchartoansistr',
  
//  makeuniqueansistring  name 'makeuniqueansistring',
    
  UIntToStrA            name 'UIntToStrA',
  
  itoa_exp              name 'itoa_exp',
  atoi_exp              name 'atoi_exp',
  
  PushException_              name 'PushException_',
  signals_exception_handler_  name 'signals_exception_handler_',
  fpc_popobjectstack_         name 'fpc_popobjectstack_',
  fpc_raiseexception_         name 'fpc_raiseexception_',
  
  TRTL_Create,
  TRTL_Destroy;
{$endif DLLEXPORT}

end.
