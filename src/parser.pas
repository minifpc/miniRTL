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
    _tkIf, _tkThen, _tkElse,
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

procedure ParseIfStatement; forward;

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

function GetNextToken: TToken;
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
    else if id = 'if'      then begin CurrentToken.TokenType := _tkIf;      result := CurrentToken; exit; end
    else if id = 'then'    then begin CurrentToken.TokenType := _tkThen;    result := CurrentToken; exit; end
    else if id = 'else'    then begin CurrentToken.TokenType := _tkElse;    result := CurrentToken; exit; end
    else begin
      CurrentToken.TokenType := _tkIdentifier;
      CurrentToken.Lexeme    := id;
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
  if CurrentToken.TokenType = expected then
  CurrentToken := GetNextToken  else
  raise Exception.Create('Syntax Error: Expected ' + IntToStr(Ord(expected)) + ' but found: ' + CurrentToken.Lexeme);
end;

procedure ParseStatement;
begin
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    WriteLn('Statement: ', CurrentToken.Lexeme);
    Match(_tkIdentifier);
    Match(_tkAssign);
    if CurrentToken.TokenType = _tkNumber then
    begin
      WriteLn('  Value: ', CurrentToken.Lexeme);
      Match(_tkNumber);
    end else
    raise Exception.Create('Syntax Error: Expected number');
    Match(_tkSemicolon);
    if CurrentToken.TokenType = _tkIdentifier then
    ParseStatement else
    if CurrentToken.TokenType = _tkIf then
    writeln('IF');
    ParseIfStatement;
  end else
  if CurrentToken.TokenType = _tkIf then
  begin
    writeln('if');
    ParseIfStatement;
  end else
  raise Exception.Create('Syntax Error: Expected identifier');
end;

procedure ParseIfStatement;
begin
  Match(_tkIf);
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    WriteLn('If-Bedingung: ', CurrentToken.Lexeme);
    CurrentToken := GetNextToken;
    Match(_tkThen);
    writeln('----> ' + CurrentToken.Lexeme);
    
    Match(_tkIdentifier);
    writeln('----> ' + CurrentToken.Lexeme);
    
    Match(_tkAssign);
    writeln('----> ' + CurrentToken.Lexeme);
    
    CurrentToken := GetNextToken;
    Match(_tkElse);
    writeln('----> ' + CurrentToken.Lexeme);
    
    Match(_tkIdentifier);
    writeln('---> ' + CurrentToken.Lexeme);
    
    CurrentToken := GetNextToken;
    Match(_tkAssign);
    writeln('---> ' + CurrentToken.Lexeme);
    
    CurrentToken := GetNextToken;
    Match(_tkSemicolon);
    writeln('----> ' + CurrentToken.Lexeme);
  end else
  raise Exception.Create('Syntax Error: Expected identifier as condition');

  Match(_tkThen);
  ParseStatement;

  if CurrentToken.TokenType = _tkElse then
  begin
    Match(_tkElse);
    ParseStatement;
  end;
end;

procedure ParseProgram;
begin
  CurrentToken := GetNextToken;
  if CurrentToken.TokenType = _tkProgram then
  begin
  writeln('program');
    CurrentToken := GetNextToken;
    if CurrentToken.TokenType = _tkIdentifier then
    begin
    writeln('ident: ' + CurrentToken.Lexeme);
      CurrentToken := GetNextToken;
      if CurrentToken.TokenType = _tkSemicolon then
      begin
      writeln('semicolon');
        CurrentToken := GetNextToken;
        if CurrentToken.TokenType = _tkBegin then
        begin
        writeln('begin');
          while true do
          begin
            CurrentToken := GetNextToken;
            if CurrentToken.TokenType = _tkIdentifier then ParseStatement;
            if CurrentToken.TokenType = _tkEnd        then break;
            if CurrentToken.TokenType = _tkEOF        then raise Exception.Create('error: end of file.');
          end;
        end;
        if CurrentToken.TokenType = _tkEnd then
        begin
        writeln('end');
          CurrentToken := GetNextToken;
          if CurrentToken.TokenType = _tkDot then
          begin
            WriteLn('. Program korrekt geparst.');
          end;
        end;
      end;
    end;
  end;
end;

begin
  writeln(
  'miniFPC + miniRTL Version 0.0.1'   + #13#10 +
  '(c) 2025 by paule32 and fibonacci' + #13#10 +
  'all rights reserved.'              + #13#10 );
  
  Source       := ''
  + 'program test; '
  + 'begin '
  + 'x := 42; '
  + 'if x then yx := 2 else ayc := 3; '
  + 'y :=  7;'
  + 'end.'
  ;
  
  try
    InitScanner(Source);
    ParseProgram;
  except
    on E: Exception do
      WriteLn('Error: ', E.Message);
  end;
  
  ExitProcess(0);
end.
