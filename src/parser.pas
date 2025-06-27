// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$M-}
{$define DLLIMPORT}
program parser;

uses
  Windows, StrUtils, Exceptions;

type
  TTokenType = (
    _tkKeyword, _tkIdentifier, _tkNumber,
    _tkProgram, _tkBegin, _tkEnd, 
    _tkAssign, _tkSemicolon, _tkDot,
    _tkEOF, _tkUnknown
  );

  TToken = record
    TokenType: TTokenType;
    Lexeme: string;
  end;

var
  Source: string;
  Position: Integer;
  CurrentToken: TToken;
  Lookahead: TToken;

procedure InitScanner(input: string);
begin
  Source := input;
  Position := 1;
end;

function _PeekChar: Char;
begin
  if Position > Length(Source) then
  result := #0 else
  result := Source[Position];
end;

procedure SkipWhitespace;
begin
  while _PeekChar in [' ', #9, #10, #13] do
  inc(Position);
end;

function ReadIdentifier: string;
begin
  Result := '';
  while _PeekChar in ['A'..'Z', 'a'..'z', '0'..'9', '_'] do
  begin
    Result := Result + _PeekChar;
    Inc(Position);
  end;
end;

function ReadNumber: string;
begin
  Result := '';
  while _PeekChar in ['0'..'9'] do
  begin
    Result := Result + _PeekChar;
    Inc(Position);
  end;
end;

function NextChar: Char;
begin
  if Position > Length(Source) then
  result := #0  else
  result := Source[Position];
end;

procedure Advance; begin inc(Position); end;

function GetToken: TToken;
var
  ch: Char;
  id: string;
begin
  SkipWhitespace;
  ch := _PeekChar;

  ch := NextChar;

  if ch = #0 then
  begin
    CurrentToken.TokenType := _tkEOF;
    CurrentToken.Lexeme := '';
    result := CurrentToken;
    exit;
  end else
  if ch in ['0'..'9'] then
  begin
    CurrentToken.TokenType := _tkNumber;
    CurrentToken.Lexeme    := ReadNumber;
    result := CurrentToken;
    exit;
  end else
  if ch in ['a'..'z', 'A'..'Z'] then
  begin
    id := LowerCase(ReadIdentifier);
         if id = 'program' then begin CurrentToken.TokenType := _tkProgram; result := CurrentToken; exit; end
    else if id = 'begin'   then begin CurrentToken.TokenType := _tkBegin;   result := CurrentToken; exit; end
    else if id = 'end'     then begin CurrentToken.TokenType := _tkEnd;     result := CurrentToken; exit; end
    else begin
      CurrentToken.TokenType := _tkIdentifier;
      result := CurrentToken;
      exit;
    end;
    CurrentToken.Lexeme := id;
    Result := CurrentToken;
    exit;
  end else
  if ch = ':' then
  begin
    inc(Position);
    if _PeekChar = '=' then
    begin
      Inc(Position);
      CurrentToken.TokenType := _tkAssign;
      CurrentToken.Lexeme := ':=';
      result := CurrentToken;
      exit;
    end else
    begin
      CurrentToken.TokenType := _tkUnknown;
      CurrentToken.Lexeme := ':';
      result := CurrentToken;
    end;
  end else
  if ch = ';' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkSemicolon;
    CurrentToken.Lexeme := ';';
    result := CurrentToken;
    exit;
  end else
  if ch = '.' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkDot;
    CurrentToken.Lexeme := '.';
  end else
  begin
    inc(Position);
    CurrentToken.TokenType := _tkUnknown;
    CurrentToken.Lexeme := ch;
    result := CurrentToken;
    exit;
  end;
end;

procedure Match(expected: TTokenType);
begin
  if Lookahead.TokenType = expected then
  Lookahead := GetToken  else
  raise Exception.Create('Syntax Error: Expected ' + IntToStr(Ord(expected)) + ' but found: ' + Lookahead.Lexeme);
end;

procedure ParseStatement;
begin
  if Lookahead.TokenType = _tkIdentifier then
  begin
    WriteLn('Statement: ', Lookahead.Lexeme);
    Match(_tkIdentifier);
    Match(_tkAssign);
    if Lookahead.TokenType = _tkNumber then
    begin
      WriteLn('  Value: ', Lookahead.Lexeme);
      Match(_tkNumber);
    end else
    raise Exception.Create('Syntax Error: Expected number');
    Match(_tkSemicolon);
  end else
  raise Exception.Create('Syntax Error: Expected identifier');
end;

procedure ParseAssignment;
begin
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    WriteLn('Found Identifier: ' + CurrentToken.Lexeme);
    CurrentToken := GetToken;
    if CurrentToken.TokenType = _tkAssign then
    begin
      CurrentToken := GetToken;
      if CurrentToken.TokenType = _tkNumber then
      WriteLn('Found Number: ' + CurrentToken.Lexeme) else
      raise Exception.Create('Syntax Error: Expected number.');
      
      CurrentToken := GetToken;
      if CurrentToken.TokenType = _tkSemicolon then
      WriteLn('Assignment OK') else
      raise Exception.Create('Syntax Error: Expected semicolon.');
    end;
  end else
  raise Exception.Create('Syntax Error: Expected identifier');
end;

begin
  writeln(
  'miniFPC + miniRTL Version 0.0.1'   + #13#10 +
  '(c) 2025 by paule32 and fibonacci' + #13#10 +
  'all rights reserved.'              + #13#10 );
  
  Source       := '  x  := 42   ' + #13#10 +';';
  Position     := 1;
  CurrentToken := GetToken;
  try
    ParseAssignment;
  except
    on E: Exception do
      WriteLn('Error: ', E.Message);
  end;
  
  ExitProcess(0);
end.
