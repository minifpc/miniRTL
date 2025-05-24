// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit StrUtils;

interface

type
  TReplaceFlag  = (
    rfReplaceAll,
    rfIgnoreCase
  );
  TReplaceFlags = set of TReplaceFlag;

// ---------------------------------------------------------------------------------------
// the internal "export" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLEXPORT}
function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; stdcall; export;
function IntToStr(Value: Integer): string; stdcall; export;
function StrToInt(const S: string): Integer; stdcall; export;

function StrPas(p: PChar): AnsiString; stdcall; export;

function  fpc_char_to_ansistr(ch: PChar): AnsiString; export;
procedure fpc_ansistr_setlength(var s: AnsiString; newlen: SizeInt); export;
procedure fpc_ansistr_assign(var Dest: AnsiString; const Source: AnsiString); export;
procedure fpc_ansistr_unique(var s: AnsiString); export;

{$endif DLLEXPORT}

// ---------------------------------------------------------------------------------------
// the internal "import" function's and procedure's ...
// ---------------------------------------------------------------------------------------
{$ifdef DLLIMPORT}
function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;
function IntToStr(Value: Integer): string; stdcall; external RTLDLL;

function StrToInt(const S: string): Integer; stdcall; external RTLDLL;
function StrCopy(var Dest: PChar; Source: PChar): PChar; stdcall; external RTLDLL;

function StrPas(p: PChar): AnsiString; stdcall; external RTLDLL;

function  fpc_char_to_ansistr(ch: PChar): AnsiString; external RTLDLL;
procedure fpc_ansistr_setlength(var s: AnsiString; newlen: SizeInt); external RTLDLL;
procedure fpc_ansistr_assign(var Dest: AnsiString; const Source: AnsiString); external RTLDLL;
procedure fpc_ansistr_unique(var s: AnsiString); external RTLDLL;
procedure fpc_ansistr_concat(var dests: RawByteString; const s1, s2: RawByteString; cp: TSystemCodePage); stdcall; external RTLDLL;
{$endif DLLIMPORT}

implementation

uses SysUtils;
{$ifdef DLLEXPORT}
function Min(a, b: Integer): Integer;
begin
  if a < b then
    Result := a
  else
    Result := b;
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

procedure fpc_ansistr_assign(var Dest: AnsiString; const Source: AnsiString); export;
var
  len: SizeInt;
  p: PByte;
begin
  // Alten Inhalt von Dest freigeben (optional, wenn du Speicher sauber halten willst)
  if Pointer(Dest) <> nil then
    FreeMem(Pointer(Dest));

  len := 0;
  if Pointer(Source) <> nil then
  begin
    // Länge berechnen (bis null-Terminierung, oder mit Length(Source))
    while PByte(@Source[1])[len] <> 0 do
      Inc(len);
  end;

  if len > 0 then
  begin
    // neuen Speicher allokieren (+1 für #0)
    GetMem(p, len + 1);
    Move(Source[1], p^, len);
    p[len] := 0; // Null-Terminierung setzen
    Pointer(Dest) := p;
  end
  else
    Pointer(Dest) := nil;
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

function IntToStr(Value: Integer): string; stdcall; export;
var
  Temp, tmp: PChar;
  Negative: Boolean;
  Digit: Integer;
begin
  Temp := '';
  Negative := Value < 0;

  if Negative then
    Value := -Value;

  repeat
    Digit := Value mod 10;
    PrependDigitCharUsingStrCat(Digit, Temp);
    //Temp := Chr(Ord('0') + Digit) + Temp;
    Value := Value div 10;
  until Value = 0;

  if Negative then
  begin
    StrCopy(tmp, Temp);
    StrCopy(Temp, '-');
    StrCat (Temp, tmp);
  end;

  Result := Temp;
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
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
{$endif DLLIMPORT}

{$ifdef DLLEXPORT}
exports
  StringReplace  name 'StringReplace',
  IntToStr       name 'IntToStr',
  StrToInt       name 'StrToInt',
  
  fpc_char_to_ansistr   name 'fpc_char_to_ansistr',
  fpc_ansistr_setlength name 'fpc_ansistr_setlength',
  fpc_ansistr_unique    name 'fpc_ansistr_unique',
  fpc_ansistr_assign    name 'fpc_ansistr_assign'
  ;
{$endif DLLEXPORT}

end.
