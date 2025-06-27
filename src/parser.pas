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
  TTokenType = (_tkIdentifier, _tkNumber, _tkAssign, _tkSemicolon, _tkEOF, _tkUnknown);

  TToken = record
    TokenType: TTokenType;
    Lexeme: string;
  end;

var
  Source: string;
  Position: Integer;
  CurrentToken: TToken;

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
  lex: string;
begin
  while (NextChar in [' ', #10, #13, #9]) do
  Advance;

  ch := NextChar;

  if ch = #0 then
  begin
    Result.TokenType := _tkEOF;
    Result.Lexeme := '';
  end else
  if ch in ['a'..'z', 'A'..'Z'] then
  begin
    lex := '';
    while NextChar in ['a'..'z', 'A'..'Z', '0'..'9', '_'] do
    begin
      lex := lex + NextChar;
      Advance;
    end;
    CurrentToken.TokenType := _tkIdentifier;
    CurrentToken.Lexeme    := lex;
    result := CurrentToken;
    exit;
  end else
  if ch in ['0'..'9'] then
  begin
    lex := '';
    while NextChar in ['0'..'9'] do
    begin
      lex := lex + NextChar;
      Advance;
    end;
    CurrentToken.TokenType := _tkNumber;
    CurrentToken.Lexeme := lex;
    result := CurrentToken;
    exit;
  end else
  if ch = ':' then
  begin
    lex := ':';
    Advance;
    if NextChar = '=' then
    begin
      lex := lex + '=';
      Advance;
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
    Advance;
    CurrentToken.TokenType := _tkSemicolon;
    CurrentToken.Lexeme := ';';
    result := CurrentToken;
  end else
  begin
    CurrentToken.TokenType := _tkUnknown;
    CurrentToken.Lexeme := ch;
    Advance;
    result := CurrentToken;
  end;
end;

procedure Match(expected: TTokenType);
begin
  if CurrentToken.TokenType = expected then
  begin
    CurrentToken := GetToken;
  end else
  raise Exception.Create('Syntax Error: Expected ' + IntToStr(Ord(expected)) + ' but found: ' + CurrentToken.Lexeme);
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
      raise Exception.Create('Syntax Error: Expected number');
      CurrentToken := GetToken;
      if CurrentToken.TokenType = _tkSemicolon then
      WriteLn('Assignment OK');
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
