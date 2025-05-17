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

{$ifdef DLLEXPORT}
function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; stdcall; export;
{$endif DLLEXPORT}

{$ifdef DLLIMPORT}
function StringReplace(const S, OldPattern, NewPattern: string; Flags: TReplaceFlags): string; external RTLDLL;
{$endif DLLIMPORT}

implementation

{$ifdef DLLEXPORT}
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
  StringReplace  name 'StringReplace'
  ;
{$endif DLLEXPORT}

end.
