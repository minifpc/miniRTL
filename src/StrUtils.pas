// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
//{$mode delphi}
//unit StrUtils;

//interface

{$if defined(codeh) and defined(codei)}
{$FATAL interface and implementation at the same time not possible}
{$endif}

{$ifdef codeh}

type
  TReplaceFlag  = (
    rfReplaceAll,
    rfIgnoreCase
  );
  TReplaceFlags = set of TReplaceFlag;

{$ifdef DLLEXPORT}
function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; stdcall; export;
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;
{$endif DLLIMPORT}

procedure fpc_setstring_ansistr_pansichar(var dest: AnsiString; source: PAnsiChar);

//implementation

{$endif}
{$ifdef codei}

procedure fpc_setstring_ansistr_pansichar(var dest: AnsiString; source: PAnsiChar);
var
  len: SizeInt;
  i: SizeInt;
begin
  if source = nil then
  begin
    dest := '';
    Exit;
  end;

  len := 0;
  while source[len] <> #0 do
    Inc(len);

  SetLength(dest, len);
  for i := 1 to len do
    dest[i] := source[i - 1];
end;


{$ifdef DLLEXPORT}
function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; stdcall; export;
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
//exports
//  StringReplace  name 'StringReplace'
//  ;
{$endif DLLEXPORT}

//end.

{$endif}

