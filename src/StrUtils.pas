// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit StrUtils;

interface

uses
  Exceptions, Dialogs;
  
type
  TReplaceFlag  = (
    rfReplaceAll,
    rfIgnoreCase
  );
  TReplaceFlags = set of TReplaceFlag;

type
  PStringListArray = ^TStringListArray;
  TStringListArray = array[0..0] of String;

type
  TStringList = class(TObject)
  private
    FItems: PStringListArray;
    FCount: Integer;
    FSorted: BOOL;
  protected
    procedure  Grow;
    function   GetCount: Integer;
    procedure  InsertSorted(const S: String);
    procedure  SetSorted(AValue: BOOL);
    
    procedure  SetString(Index: Integer; const Value: String);
    function   GetString(Index: Integer): String;
  public
    constructor Create;
    destructor  Destroy; override;

    procedure Add(const S: string);
    procedure Sort;
    procedure Clear;
    function  Get(Index: Integer): string;
    
    function  IndexOfName(AString: String): Integer;
    function  ValueFromIndex(AValue: Integer): String;
  published
    property Count: Integer read GetCount;
    property Sorted: BOOL read FSorted write SetSorted;
    property Values[i: Integer]: String read GetString write SetString; default;
  end;

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLEXPORT}
function  StrAlloc(Size: Cardinal): PChar; stdcall; export;
procedure StrDispose(P: PChar); stdcall; export;

function  StrCopy(var Dest: PChar; Source: PChar): PChar; stdcall; export;
function  StrCat (var Dest: PChar; Source: PChar): PChar; stdcall; export;

function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; stdcall; export;

function IntToStr (Value: Integer): string; export;
function IntToStrA(Value: Integer): string; export;
function IntToStrB(Value: UInt64 ): string; export;

function StrToInt(const S: string): Integer; stdcall; export;

function StrPas(p: PChar): AnsiString; stdcall; export;

function FloatToStr(Value: Double): string; stdcall; export;
function Format(const FormatStr: string; const Args: array of const): string; stdcall; export;

function  fpc_char_to_ansistr(ch: PChar): AnsiString; export;
procedure fpc_ansistr_setlength(var s: AnsiString; newlen: SizeInt); export;
procedure fpc_ansistr_unique(var s: AnsiString); export;

function Trim(const S: String): String; stdcall; export;

function UpCase(c: Char): Char; stdcall; export;
function LoCase(c: Char): Char; stdcall; export;

function LowerCase(const S: string): string; stdcall; export;
function UpperCase(const S: string): String; stdcall; export;

function CompareText(const S1, S2: string): Integer; stdcall; export;

function SetStringListLength(var Arr: PStringListArray; oldsize, newsize: Integer): PStringListArray; stdcall; export;

function  TStringList_IndexOfName    (p: TStringList; AString: String): Integer; stdcall; export;
function  TStringList_GetString      (p: TStringList; AValue: Integer): string ; stdcall; export;
function  TStringList_ValueFromIndex (p: TStringList; AValue: Integer): String ; stdcall; export;
function  TStringList_Get            (p: TStringList; Index: Integer ): string ; stdcall; export;
procedure TStringList_GetSorted      (p: TStringList; AValue: BOOL   );          stdcall; export;
procedure TStringList_Sort           (p: TStringList                 );          stdcall; export;
procedure TStringList_Add            (p: TStringList; const S: string);          stdcall; export;
procedure TStringList_InsertSorted   (p: TStringList; const S: String);          stdcall; export;
{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function  StrAlloc(Size: Cardinal): PChar; stdcall; external RTLDLL;
procedure StrDispose(P: PChar); stdcall; external RTLDLL;

function  StrCopy(var Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;
function  StrCat (var Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;

function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;

function IntToStr (Value: Integer): string; overload; external RTLDLL name 'IntToStrA';
function IntToStrA(Value: Integer): string; external RTLDLL;
function IntToStrB(Value: UInt64 ): string; external RTLDLL;

function StrToInt(const S: string): Integer; stdcall; external RTLDLL;
function StrPas(p: PChar): AnsiString; stdcall; external RTLDLL;

function FloatToStr(Value: Double): string; stdcall; external RTLDLL;
function Format(const FormatStr: string; const Args: array of const): string; stdcall; external RTLDLL;

function  fpc_char_to_ansistr(ch: PChar): AnsiString; external RTLDLL;
procedure fpc_ansistr_setlength(var s: AnsiString; newlen: SizeInt); external RTLDLL;
procedure fpc_ansistr_unique(var s: AnsiString); external RTLDLL;
procedure fpc_ansistr_concat(var dests: RawByteString; const s1, s2: RawByteString; cp: TSystemCodePage); stdcall; external RTLDLL;

function Trim(const S: String): String; stdcall; external RTLDLL;

function UpCase(c: Char): Char; stdcall; external RTLDLL;
function LoCase(c: Char): Char; stdcall; external RTLDLL;

function LowerCase(const S: string): string; stdcall; external RTLDLL;
function UpperCase(const S: string): String; stdcall; external RTLDLL;

function CompareText(const S1, S2: string): Integer; stdcall; external RTLDLL;

function SetStringListLength(var Arr: PStringListArray; oldsize, newsize: Integer): PStringListArray; stdcall; external RTLDLL;

function  TStringList_IndexOfName    (p: TStringList; AString: String): Integer; stdcall; external RTLDLL;
function  TStringList_GetString      (p: TStringList; AValue: Integer): string ; stdcall; external RTLDLL;
function  TStringList_ValueFromIndex (p: TStringList; AValue: Integer): string ; stdcall; external RTLDLL;
function  TStringList_Get            (p: TStringList; Index: Integer ): string ; stdcall; external RTLDLL;
procedure TStringList_GetSorted      (p: TStringList; AValue: BOOL   );          stdcall; external RTLDLL;
procedure TStringList_Sort           (p: TStringList                 );          stdcall; external RTLDLL;
procedure TStringList_Add            (p: TStringList; const S: string);          stdcall; external RTLDLL;
procedure TStringList_InsertSorted   (p: TStringList; const S: String);          stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

uses SysUtils;

{ TStringList }
constructor TStringList.Create;
begin
  inherited Create;
  
  FCount  := 0;
  FSorted := false;
  
  SetStringListLength(FItems, 0, 1);
end;

procedure TStringList.Grow;
begin
  writeln('coun: ' + inttostr(FCount));
  SetStringListLength(FItems, FCount, FCount + 1);
  FItems[FCount] := 'test';
  writeln('====> ' + FItems^[FCount]);
  inc(FCount);
end;

procedure TStringList.Add(const S: string);
begin
  TStringList_Add(self, S);
end;

procedure TStringList.InsertSorted(const S: String);
begin
  TStringList_InsertSorted(self, S);
end;

function TStringList.Get(Index: Integer): string;
begin
  result := TStringList_Get(self, Index);
end;

procedure TStringList.Clear;
begin
  SetStringListLength(FItems, FCount, 1);
  FCount := 0;
end;

function TStringList.GetCount: Integer;
begin
  result := FCount;
end;

function TStringList.IndexOfName(AString: String): Integer;
begin
  result := TStringList_IndexOfName(self, AString);
end;

function TStringList.ValueFromIndex(AValue: Integer): String;
begin
  result := TStringList_ValueFromIndex(self, AValue);
end;

procedure TStringList.SetSorted(AValue: BOOL);
begin
  TStringList_GetSorted(self, AValue);
end;

procedure TStringList.Sort;
begin
  TStringList_Sort(self);
end;

function TStringList.GetString(Index: Integer): String;
begin
  result := TStringList_GetString(self, Index);
end;

procedure TStringList.SetString(Index: Integer; const Value: String);
begin
  if (Index >= 0) and (Index <= FCount) then
  FItems[Index] := Value else
  raise Exception.Create('index out of bounds');
end;

destructor TStringList.Destroy;
begin
  Clear;
  inherited Destroy;
end;

{$ifdef DLLEXPORT}
function TStringList_ValueFromIndex(p: TStringList; AValue: Integer): String; stdcall; export;
begin
  result := '';
  if AValue < 0 then
  begin
    ShowError('TStringList: index value must be positive.');
    exit;
  end;
  if AValue <> p.FCount then
  begin
    ShowError('TStringList: index out of bounds.');
    exit;
  end;
  result := p.FItems[AValue];
end;

function TStringList_IndexOfName (p: TStringList; AString: String): Integer; stdcall; export;
var
  i: Integer;
  found: BOOL;
begin
  if p.FCount < 1 then
  begin
    ShowError('list is empty');
    result := -1;
    exit;
  end else
  begin
    found := false;
    for i := 0 to p.FCount - 1 do
    begin
      if CompareText(p.FItems[i], AString) > 0 then
      begin
        found  := true;
        result := i;
        exit;
      end;
    end;
    if not found then
    result := -1;
  end;
end;

procedure TStringList_Sort(p: TStringList); stdcall; export;
var
  i, j: Integer;
  temp: string;
begin
  // Einfacher BubbleSort
  for i := 0 to p.FCount - 2 do
  for j := 0 to p.FCount - 2 - i do
    if CompareText(p.FItems[j], p.FItems[j + 1]) > 0 then
    begin
      temp := p.FItems[j];
      
      p.FItems[j] := p.FItems[j + 1];
      p.FItems[j + 1] := temp;
    end;
end;

procedure TStringList_GetSorted(p: TStringList; AValue: BOOL); stdcall; export;
begin
  if p.FSorted <> AValue then
  begin
    p.FSorted := AValue;
    if p.FSorted then
    p.Sort;
  end;
end;

procedure TStringList_InsertSorted(p: TStringList; const S: String); stdcall; export;
var
  i, j: Integer;
begin
  p.Grow;
  
  // suche Position zum Einfügen
  i := 0;
  while (i < p.FCount) and (CompareText(S, p.FItems[i]) > 0) do
  inc(i);
  
  // schiebe nachfolgende Elemente
  for j := p.FCount downto i + 1 do
  p.FItems[j] := p.FItems[j - 1];
  
  // Einfügen
  p.FItems[i] := S;
  inc(p.FCount);
end;

function TStringList_GetString(p: TStringList; AValue: Integer): String; stdcall; export;
begin
  if (AValue >= 0) and (AValue <= p.FCount) then
  result := p.FItems[AValue] else
  raise Exception.Create('index out of bounds');
end;

function TStringList_Get(p: TStringList; Index: Integer): string; stdcall; export;
begin
  if (index >= 0) and (index < p.FCount) then
  result := p.FItems[Index] else
  raise Exception.Create('Index out of bounds');
end;

procedure TStringList_Add(p: TStringList; const S: string); stdcall; export;
var
 newmem: PStringListArray;
 i: Integer;
begin
  if p.FSorted then
  p.InsertSorted(S) else
  begin
    inc(p.FCount);
    GetMem(newmem, StrLen(PChar(S)) + 1);
    
    for i := 0 to p.FCount - 1 do
    newmem^[i] := p.FItems^[i];
    
    newmem[p.FCount-1] := S;
    
    for i := 0 to p.FCount - 1 do
    p.FItems^[i] := '';
    
    FreeMem(p.FItems);
    p.FItems := newmem;
  end;
end;

function SetStringListLength(var Arr: PStringListArray; oldsize, newsize: Integer): PStringListArray; stdcall; export;
var
  NewMem: PStringListArray;
  CopyCount, i: Integer;
begin
  GetMem  (NewMem , NewSize * sizeof(Integer));
  FillChar(NewMem^, NewSize * sizeof(Integer), 0);
  writeln('set 1');
  if (Arr <> nil) then
  begin
  writeln('set 2');
    CopyCount := oldsize;
    if newsize < oldsize then
    CopyCount := NewSize;
    writeln('set 3');
    for i := 0 to CopyCount - 1 do
    NewMem^[i] := Arr^[i];
    writeln('set 4');
    FreeMem(Arr);
    writeln('set 5');
  end;
  writeln('set 6');
  Arr := NewMem;
  writeln('set 7');
  result := Arr;
end;

function Min(a, b: Integer): Integer;
begin
  if a < b then
    Result := a
  else
    Result := b;
end;

function StrAlloc(Size: Cardinal): PChar; stdcall; export;
begin
  GetMem(result, Size + 1); // +1 für Nullterminator
  result[0] := #0;          // sicherstellen, dass String leer initialisiert ist
end;
procedure StrDispose(P: PChar); stdcall; export;
begin
  if P <> nil then
    FreeMem(P);
end;
function StrCopy(var Dest: PChar; Source: PChar): PChar; stdcall; export;
var
  I : Integer;
  L : Integer;
begin
  L      := StrLen(Source);
  Dest   := StrAlloc(L + 1);
  
  for I := 0 to L - 1 do
  Dest  [i] := Source[i];
  Dest  [L] := #0;
  
  Exit(Dest);
end;
function StrCat(var Dest: PChar; Source: PChar): PChar; stdcall; export;
var
  D       : PChar;
  L, I, J : Integer;
begin
  if Dest = nil then
  begin
    MessageBoxA(0,'Error: StrCat Dest not initialized.','Error',0);
    Exit;
  end;

  if Strlen(Source) < 1 then
  begin
    Dest := '';
    Exit(Dest);
  end;
  
  L := StrLen(Dest) + StrLen(Source) + 1;
  D := StrAlloc(L);
  
  L := StrLen(Dest);
  i := 0;
  repeat
    D[i] := Dest[i];
    inc(i);
  until i = L;
  
  L := StrLen(Source);
  j := 0;
  repeat
    D[i + j] := Source[j];
    inc(j);
  until j = L;

  D[i + j] := #0;
  Dest := D;
  
  Exit(D);
end;

procedure fpc_ansistr_unique(var s: AnsiString); export;
var
  pSrc, pDst: PChar;
  len: LongInt;
  refCountPtr: PLongInt;
  newMem: Pointer;
begin
  if Pointer(s) = nil then
    Exit;

  // RefCount-Adresse berechnen
  refCountPtr := PLongInt(Pointer(s) - 8);
  len := PLongInt(Pointer(s) - 4)^;

  // Nur bei mehrfacher Referenz kopieren
  if refCountPtr^ > 1 then
  begin
    // Neuen Speicherblock mit Header (8 Byte) + Inhalt + Nullterminierung
    GetMem(newMem, 8 + len + 1);
    
    // RefCount = 1
    PLongInt(newMem)^ := 1;
    // Länge übernehmen
    PLongInt(Pointer(newMem) + 4)^ := len;
    // Daten kopieren
    pSrc := PChar(s);
    pDst := PChar(Pointer(newMem) + 8);
    Move(pSrc^, pDst^, len);
    pDst[len] := #0;

    // Alten RefCount dekrementieren
    Dec(refCountPtr^);

    // neuen Zeiger setzen
    Pointer(s) := PChar(Pointer(newMem) + 8);
  end;
end;

procedure fpc_ansistr_setlength(var s: AnsiString; newlen: SizeInt); export;
var
  tmp: AnsiString;
  i: Integer;
begin
  tmp := StrPas('');
  if Length(s) < newlen then
  begin
    for i := 1 to newlen do
    tmp[i] := s[i];
  end else
  begin
    for i := Length(s) to newlen do
    tmp[i] := s[i];
  end;
  s := tmp;
end;

function fpc_char_to_ansistr(ch: PChar): AnsiString; export;
begin
  if ch = nil then
    Result := StrPas('')
  else
    Result := StrPas(ch);
end;

function StrPas(p: PChar): AnsiString; stdcall; export;
var
  i: Integer;
begin
  if p = nil then
  begin
    Result := StrPas('');
    Exit;
  end;

  i := 0;
  // Zählen, wie lang der nullterminierte String ist
  while p[i] <> #0 do
    Inc(i);

  // Pascal-String daraus erzeugen
  SetLength(Result, i);
  Move(p^, Result[1], i);
end;

procedure PrependDigitCharUsingStrCat(Digit: Byte; var Temp: PChar);
var
  DigitStr: array[0..1] of Char;  // Ein Zeichen + Nullterminator
  NewStr: PChar;
begin
  // Digit in ein Zeichen konvertieren
  DigitStr[0] := Chr(Ord('0') + Digit);
  DigitStr[1] := #0;

  // Speicher reservieren für neuen String (1 Zeichen + Temp)
  GetMem(NewStr, StrLen(Temp) + 2); // +1 für Ziffer, +1 für #0

  // Ziffer voranstellen
  StrCopy(NewStr, DigitStr);
  // Temp anhängen
  StrCat(NewStr, PChar(Temp));

  // Alten Temp freigeben, neuen zuweisen
  //FreeMem(Temp);
  Temp := NewStr;
end;

function IntToStr(Value: Integer): string; stdcall; begin result := IntToStrA(Value); end;
//function IntToStr(Value: UInt64 ): string; overload; stdcall; begin result := IntToStrB(Value); end;

function IntToStrA(Value: Integer): string; stdcall; export;
var
  Buffer: array[0..31] of Char;
  Temp: PChar;
  Negative: Boolean;
  Digit: Integer;
  Len: Integer;
  I: Integer;
  P: PAnsiChar;
begin
  Len := 0;
  Buffer[0] := #0;

  Negative := Value < 0;
  if Negative then
    Value := -Value;

  repeat
    Digit := Value mod 10;
    Move(Buffer[0], Buffer[1], Len + 1);
    Buffer[0] := Chr(Ord('0') + Digit);
    Inc(Len);
    Value := Value div 10;
  until Value = 0;

  if Negative then
  begin
    Move(Buffer[0], Buffer[1], Len + 1);
    Buffer[0] := '-';
    Inc(Len);
  end;
  
  I := 0;
  
  GetMem(P, Len + 1);
  Move(Buffer[i], P^, Len);
  P[Len] := #0;
  Result := P;
  //SetString(Result, Buffer, Len);
end;
function IntToStrB(Value: UInt64): string; stdcall; export;
var
  temp: array[0..31] of Char;
  i: Integer;
begin
  i := High(temp);
  temp[i] := #0;
  Dec(i);

  repeat
    temp[i] := Char(Ord('0') + (Value mod 10));
    Value := Value div 10;
    Dec(i);
  until Value = 0;

  Result := AnsiString(@temp[i + 1]);
end;

function StrToInt(const S: string): Integer; stdcall; export;
var
  i, Len, Digit: Integer;
  Negative: Boolean;
begin
  Result := 0;
  Negative := False;
  i := 1;
  Len := Length(S);

  if Len = 0 then
    Exit(0); // Leerer String → 0 zurückgeben

  // Prüfen auf Vorzeichen
  if S[i] = '-' then
  begin
    Negative := True;
    Inc(i);
  end
  else if S[i] = '+' then
    Inc(i);

  // Ziffern durchgehen
  while i <= Len do
  begin
    if (S[i] < '0') or (S[i] > '9') then
    begin
      Exit(0);  // Ungültiges Zeichen → Fehlerfall (einfachheitshalber 0)
    end;

    Digit := Ord(S[i]) - Ord('0');
    Result := Result * 10 + Digit;
    Inc(i);
  end;

  if Negative then
    Result := -Result;
end;

function StringReplace(
  const S          : string;
  const OldPattern : string;
  const NewPattern : string;
  Flags            : TReplaceFlags): string; export;
var
  i, StartPos, OldLen: Integer;
  ResultStr: string;
begin
  ResultStr := '';
  StartPos := 1;
  OldLen := Length(OldPattern);

  if OldLen = 0 then
  begin
    Exit(S);
  end;

  i := Pos(OldPattern, S);

  while i > 0 do
  begin
    // alles bis zum gefundenen Pattern übernehmen
    ResultStr := ResultStr + Copy(S, StartPos, i - StartPos);

    // Ersatztext einfügen
    ResultStr := ResultStr + NewPattern;

    // Position für nächste Suche anpassen
    StartPos := i + OldLen;

    // nächstes Vorkommen suchen
    i := Pos(OldPattern, Copy(S, StartPos, Length(S) - StartPos + 1));
    if i > 0 then
      i := i + StartPos - 1;
  end;

  // Rest anhängen
  ResultStr := ResultStr + Copy(S, StartPos, Length(S) - StartPos + 1);

  Exit(ResultStr);
end;

function FloatToStr(Value: Double): string; stdcall; export;
var
  IntPart, FracPart: Int64;
  S: string;
  I: Integer;
begin
  if Value = 0 then
    Exit('0');

  if Value < 0 then
    Result := '-' + FloatToStr(-Value)
  else
  begin
    IntPart  := Trunc(Value);
    FracPart := Round((Value - IntPart) * 1000000);  // 6 Nachkommastellen
    Str(IntPart, S);
    Result := S;

    if FracPart > 0 then
    begin
      Result := Result + '.';
      S := '';
      // führende Nullen in der Nachkommazahl sicherstellen
      for I := 5 downto 0 do
        if FracPart < Round(10 * I) then
          S := S + '0';
      Str(FracPart, S);
      Result := Result + S;
    end;
  end;
end;

function Format(const FormatStr: string; const Args: array of const): string; stdcall; export;
var
  I, ArgIndex: Integer;
  Ch: Char;
  ResultStr: string;
begin
  ResultStr := '';
  ArgIndex := 0;
  I := 1;

  while I <= Length(FormatStr) do
  begin
    Ch := FormatStr[I];

    if (Ch = '%') and (I < Length(FormatStr)) then
    begin
      Inc(I);
      Ch := FormatStr[I];

      if ArgIndex >= Length(Args) then
      raise Exception.Create('Nicht genügend Argumente für Format-String');

      case Ch of
        'd': ResultStr := ResultStr + IntToStr(Args[ArgIndex].VInteger);
        's': ResultStr := ResultStr + string(Args[ArgIndex].VString^);
        'f': ResultStr := ResultStr + FloatToStr(Args[ArgIndex].VExtended^);
        else
        raise Exception.Create('Unbekanntes Formatzeichen: ' + Ch);
      end;

      Inc(ArgIndex);
    end else
    begin
      ResultStr := ResultStr + Ch;
    end;

    Inc(I);
  end;

  Result := ResultStr;
end;

function IsWhiteSpace(ch: Char): Boolean; stdcall; export;
begin
  Result := ch in [' ', #9, #10, #13]; // Leerzeichen, Tab, LF, CR
end;

function Trim(const S: String): String; stdcall; export;
var
  startIdx, endIdx: Integer;
begin
  startIdx := 1;
  endIdx := Length(S);

  // Anfangs-Leerzeichen überspringen
  while (startIdx <= endIdx) and IsWhiteSpace(S[startIdx]) do
  inc(startIdx);

  // End-Leerzeichen überspringen
  while (endIdx >= startIdx) and IsWhiteSpace(S[endIdx]) do
  dec(endIdx);

  // Ergebnis extrahieren
  result := Copy(S, startIdx, endIdx - startIdx + 1);
end;

function LoCase(c: Char): Char; stdcall; export;
begin
  if (c >= 'A') and (c <= 'Z') then
  result := Chr(Ord(c) - Ord('A') + Ord('a')) else
  result := c;
end;

function LowerCase(const S: string): string; stdcall; export;
var
  i: Integer;
  ch: Char;
begin
  result := S;
  for i := 1 to StrLen(S) do
  begin
    ch := S[i];
    if (ch >= 'A') and (ch <= 'Z') then
    result[i] := Chr(Ord(ch) + 32) else
    result[i] := ch;
  end;
end;

function UpCase(c: Char): Char; stdcall; export;
begin
  if (c >= 'a') and (c <= 'z') then
  result := Chr(Ord(c) - Ord('a') + Ord('A')) else
  result := c;
end;

function UpperCase(const S: string): String; stdcall; export;
var
  i, len: Integer;
  p: PChar;
begin
  len := StrLen(S) + 1;
  GetMem(P, len);
  
  move(Pointer(S)^, P^, len);
  //for i := 1 to len do
  //result[i] := UpCase(S[i]);
  
  P[len] := #0;
end;

function CompareText(const S1, S2: string): Integer; stdcall; export;
var
  i: Integer;
  c1, c2: Char;
  len: Integer;
begin
  len := StrLen(S1);
  if Length(S2) < len then
  len := StrLen(S2);

  for i := 1 to len do
  begin
    c1 := UpCase(S1[i]);
    c2 := UpCase(S2[i]);
    if c1 <> c2 then
    begin
      result := Ord(c1) - Ord(c2);
      Exit;
    end;
  end;

  // Bisher gleich – jetzt Länge vergleichen
  result := StrLen(S1) - StrLen(S2);
end;

exports
  StringReplace  name 'StringReplace',
  
  StrAlloc          name 'StrAlloc',
  StrCat            name 'StrCat',
  StrCopy           name 'StrCopy',
  StrDispose        name 'StrDispose',
  StrToInt          name 'StrToInt',
  
  IntToStrA         name 'IntToStrA',
  IntToStrB         name 'IntToStrB',
  IntToStr          name 'IntToStr',
  
  Trim              name 'Trim',
  CompareText       name 'CompareText',
  
  LoCase            name 'LoCase',
  LowerCase         name 'LowerCase',
  
  UpCase            name 'UpCase',
  UpperCase         name 'UpperCase',
  
  FloatToStr        name 'FloatToStr',
  Format            name 'Format',

  TStringList_IndexOfName    name 'TStringList_IndexOfName',
  TStringList_ValueFromIndex name 'TStringList_ValueFromIndex',
  TStringList_GetString      name 'TStringList_GetString',
  TStringList_GetSorted      name 'TStringList_GetSorted',
  TStringList_Get            name 'TStringList_Get',
  TStringList_Add            name 'TStringList_Add',
  TStringList_InsertSorted   name 'TStringList_InsertSorted',
  
  SetStringListLength name 'SetStringListLength',
  
  fpc_char_to_ansistr   name 'fpc_char_to_ansistr',
  fpc_ansistr_setlength name 'fpc_ansistr_setlength',
  fpc_ansistr_unique    name 'fpc_ansistr_unique'
  //fpc_ansistr_assign    name 'fpc_ansistr_assign'
  ;
{$endif DLLEXPORT}

end.
