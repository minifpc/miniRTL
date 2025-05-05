// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------

{$if defined(codeh) and defined(codei)}
{$FATAL interface and implementation at the same time not possible}
{$endif}

{$ifdef codeh}

const
   vtInteger       = 0;
   vtBoolean       = 1;
   vtChar          = 2;
{$ifndef FPUNONE}
   vtExtended      = 3;
{$endif}
   vtString        = 4;
   vtPointer       = 5;
   vtPChar         = 6;
   vtObject        = 7;
   vtClass         = 8;
   vtWideChar      = 9;
   vtPWideChar     = 10;
   vtAnsiString    = 11;
   vtCurrency      = 12;
   vtVariant       = 13;
   vtInterface     = 14;
   vtWideString    = 15;
   vtInt64         = 16;
   vtQWord         = 17;
   vtUnicodeString = 18;

type
  PVarRec = ^TVarRec;
  TVarRec = record
    case VType: sizeint of
      vtInteger: (VInteger: longint);
      vtBoolean: (VBoolean: boolean);
      vtChar: (VChar: char);
      vtWideChar: (VWideChar: widechar);
      {$ifndef FPUNONE}
      vtExtended: (VExtended: PExtended);
      {$endif}
      vtString: (VString: pshortstring);
      vtPointer: (VPointer: Pointer);
      vtPChar: (VPChar: pansichar);
      vtObject: (VObject: TObject);
      vtClass: (VClass: TClass);
      vtPWideChar: (VPWideChar: pwidechar);
      vtAnsiString: (VAnsiString: Pointer);
      vtCurrency: (VCurrency: PCurrency);
      vtVariant: (VVariant: PVariant);
      vtInterface: (VInterface: Pointer);
      vtWideString: (VWideString: Pointer);
      vtInt64: (VInt64: PInt64);
      vtUnicodeString: (VUnicodeString: Pointer);
      vtQWord: (VQWord: PQWord);
  end;

{$endif}

{$ifdef codei}

{$endif}

