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
    _tkPlus, _tkMinus, _tkTimes, _tkDivide,
    _tkLParen, _tkRParen,
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
var
  right_count, left_count: Integer;

procedure ParseIfStatement; forward;
function  ParseExpression: String; forward;

procedure InitScanner(input: string);
begin
  Source      := input;
  Position    := 1;
  right_count := 0;
  left_count  := 0;
end;

procedure yyerror(msg: String);
begin
  writeln('Syntax Error: ' + msg);
  ExitProcess(2);
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
  if ch = '-' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkMinus;
    CurrentToken.Lexeme := '-';
    result := CurrentToken;
    exit;
  end else
  if ch = '+' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkPlus;
    CurrentToken.Lexeme := '+';
    result := CurrentToken;
    exit;
  end else
  if ch = '*' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkTimes;
    CurrentToken.Lexeme := '*';
    result := CurrentToken;
    exit;
  end else
  if ch = '/' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkDivide;
    CurrentToken.Lexeme := '/';
    result := CurrentToken;
    exit;
  end else
  if ch = '(' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkLParen;
    CurrentToken.Lexeme := '(';
    result := CurrentToken;
    exit;
  end else
  if ch = ')' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkRParen;
    CurrentToken.Lexeme := ')';
    result := CurrentToken;
    exit;
  end else
  if ch = '.' then
  begin
    inc(Position);
    CurrentToken.TokenType := _tkDot;
    CurrentToken.Lexeme := '.';
    result := CurrentToken;
    exit;
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
  yyerror('Expected ' + IntToStr(Ord(expected)) + ' but found: ' + CurrentToken.Lexeme);
end;

function ParseFactor: string;
begin
  case CurrentToken.TokenType of
    _tkNumber: begin
      result := CurrentToken.Lexeme;
      Match(_tkNumber);
    end;
    _tkIdentifier: begin
      result := CurrentToken.Lexeme;
      Match(_tkIdentifier);
    end;
    _tkLParen: begin
      Match(_tkLParen);
      result := '(' + ParseExpression + ')';
      Match(_tkRParen);
    end else
    yyerror('Unexpected token in factor: "' + CurrentToken.Lexeme + '"');
  end;
end;

function ParseTerm: string;
var
  left, op, right: string;
begin
  left := ParseFactor;
  while (CurrentToken.TokenType = _tkTimes)
  or    (CurrentToken.TokenType = _tkDivide) do
  begin
    if CurrentToken.TokenType = _tkTimes then
    begin
      op := '*';
      Match(_tkTimes);
    end else
    begin
      op := '/';
      Match(_tkDivide);
    end;
    right := ParseFactor;
    left := left + ' ' + op + ' ' + right;
  end;
  result := left;
end;

function ParseExpression: string;
var
  left, op, right: string;
begin
  left := ParseTerm;
  while (CurrentToken.TokenType = _tkPlus)
  or    (CurrentToken.TokenType = _tkMinus) do
  begin
    if CurrentToken.TokenType = _tkPlus then
    begin
      op := '+';
      Match(_tkPlus);
    end else
    begin
      op := '-';
      Match(_tkMinus);
    end;
    right := ParseTerm;
    left := left + ' ' + op + ' ' + right;
  end;
  result := left;
end;

procedure ParseAssignment;
var
  varName, expr: string;
begin
  varName := CurrentToken.Lexeme;
  WriteLn('Assignment an Variable: ', varName);
  Match(_tkIdentifier);
  Match(_tkAssign);
  expr := ParseExpression;
  WriteLn('  Ausdruck: ', expr);
  Match(_tkSemicolon);
end;

procedure ParseTokenExpression;
  procedure subParse;
  begin
    CurrentToken := GetNextToken;
    if CurrentToken.TokenType = _tkLParen then
    begin
      writeln('TOKLEFTPAR');
      inc(left_count);
      CurrentToken := GetNextToken;
      ParseTokenExpression;
      exit;
    end else
    if CurrentToken.TokenType = _tkNumber then
    begin
      writeln('plus num: ' + CurrentToken.Lexeme);
      CurrentToken := GetNextToken;
      ParseTokenExpression;
      exit;
    end else
    if CurrentToken.TokenType = _tkIdentifier then
    begin
      writeln('plus ident: ' + CurrentToken.Lexeme);
      CurrentToken := GetNextToken;
      ParseTokenExpression;
      exit;
    end else
    yyerror('token error');
  end;
begin
  if CurrentToken.TokenType = _tkPlus then
  begin
    writeln('plus');
    subParse;
  end else
  if CurrentToken.TokenType = _tkMinus then
  begin
    writeln('minus');
    subParse;
  end else
  if CurrentToken.TokenType = _tkTimes then
  begin
    writeln('times');
    subParse;
  end else
  if CurrentToken.TokenType = _tkDivide then
  begin
    writeln('divide');
    subParse;
  end else
  if CurrentToken.TokenType = _tkNumber then
  begin
    writeln('  valuE: ', CurrentToken.Lexeme);
    
    CurrentToken := GetNextToken;
    ParseTokenExpression;
  end else
  if CurrentToken.TokenType = _tkRParen then
  begin
    inc(right_count);
    CurrentToken := GetNextToken;
    writeln('TOk: ' + CurrentToken.Lexeme);
    if CurrentToken.TokenType = _tkSemicolon then
    begin
    writeln('lhs: ' + IntToStr(left_count));
    writeln('rhs: ' + IntToStr(right_count));
      if right_count < left_count  then yyerror('right paren without left paren.');
      if left_count  < right_count then yyerror('left paren without right paren.');

      right_count := 0;
      left_count  := 0;
      
      writeln('semi expr end');
      exit;
    end else
    if CurrentToken.TokenType = _tkRParen then
    begin
      inc(right_count);
      CurrentToken := GetNextToken;
      writeln('tok: ' + CurrentToken.Lexeme);
      if CurrentToken.TokenType = _tkSemicolon then
      begin
      writeln('LHS: ' + IntToStr(left_count));
      writeln('RHS: ' + IntToStr(right_count));
        if right_count < left_count  then yyerror('right paren without left paren.');
        if left_count  < right_count then yyerror('left paren without right paren.');
        
        right_count := 0;
        left_count  := 0;
        
        writeln('end expr');
        exit;
      end else
      ParseTokenExpression;
      exit;
    end else
    if CurrentToken.TokenType = _tkMinus then
    begin
      CurrentToken := GetNextToken;
      ParseTokenExpression;
    end else
    if CurrentToken.TokenType = _tkPlus then
    begin
      CurrentToken := GetNextToken;
      ParseTokenExpression;
    end else
    if CurrentToken.TokenType = _tkTimes then
    begin
      CurrentToken := GetNextToken;
      ParseTokenExpression;
    end else
    if CurrentToken.TokenType = _tkDivide then
    begin
      CurrentToken := GetNextToken;
      ParseTokenExpression;
    end else
    yyerror('expression error');
  end else
  if CurrentToken.TokenType = _tkLParen then
  begin
  writeln('Lparen');
    inc(left_count);
    CurrentToken := GetNextToken;
    ParseTokenExpression;
    exit;
  end else
  yyerror('Expected number');
end;

procedure ParseStatement;
begin
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    WriteLn('Statement: ', CurrentToken.Lexeme);
    Match(_tkIdentifier);
    Match(_tkAssign);
    while CurrentToken.TokenType <> _tkSemicolon do
    begin
      if CurrentToken.TokenType = _tkNumber then
      begin
        WriteLn('  Value: ', CurrentToken.Lexeme);
        Match(_tkNumber);
        if CurrentToken.TokenType = _tkSemicolon then
        begin
          writeln('smei');
          Match(_tkSemicolon);
          break;
        end else
        if CurrentToken.TokenType = _tkPlus then
        begin
          CurrentToken := GetNextToken;
          ParseTokenExpression;
        end else
        if CurrentToken.TokenType = _tkMinus then
        begin
          CurrentToken := GetNextToken;
          ParseTokenExpression;
        end else
        if CurrentToken.TokenType = _tkTimes then
        begin
          CurrentToken := GetNextToken;
          ParseTokenExpression;
        end else
        if CurrentToken.TokenType = _tkDivide then
        begin
          CurrentToken := GetNextToken;
          ParseTokenExpression;
        end;
      
        writeln('--> ' + CurrentToken.Lexeme);
        if CurrentToken.TokenType = _tkSemicolon then
        begin
          writeln('SE');
          break;
        end else
        yyerror('Semicolon expected');
      end;
    end;
    //end else
    //yyerror('Expected number');
  end else
  if CurrentToken.TokenType = _tkIf then
  begin
    writeln('if');
    ParseIfStatement;
  end else
  yyerror('Expected identifier');
end;

procedure ParseIfStatement;
begin
  Match(_tkIf);
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    WriteLn('If-Bedingung: ', CurrentToken.Lexeme);
    CurrentToken := GetNextToken;
    Match(_tkThen);
    WriteLn('If-Bedingung: ', CurrentToken.Lexeme);
    Match(_tkIdentifier);
    
    if CurrentToken.TokenType = _tkAssign then
    begin
        WriteLn('If-Assugn: ', CurrentToken.Lexeme);
        Match(_tkAssign);
    end;
    
    WriteLn('If-Number: ', CurrentToken.Lexeme);
    
    CurrentToken := GetNextToken;    
    Match(_tkElse);
    WriteLn('If-Else: else');
    
    WriteLn('If-ident: ', CurrentToken.Lexeme);
    Match(_tkIdentifier);
    
    WriteLn('If-Assign: ', CurrentToken.Lexeme);
    
    CurrentToken := GetNextToken;
    WriteLn('If-number: ', CurrentToken.Lexeme);
    
    CurrentToken := GetNextToken;
    Match(_tkSemicolon);
    
    if CurrentToken.TokenType = _tkIdentifier then
    begin
      WriteLn('ident: semico: ', CurrentToken.Lexeme);
      ParseStatement;
    end;
  end else
  yyerror('Expected identifier as condition');
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
            if CurrentToken.TokenType = _tkIf         then ParseIfStatement;
            if CurrentToken.TokenType = _tkEnd        then break;
            if CurrentToken.TokenType = _tkEOF        then yyerror('end of file');
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
  + 'x := 42 + (11 + xxy + (12 + (9 * 2 + (2))) );'
  + 'if x then yx := 2 else ayc := 3; '
  + 'cy :=  7;'
  + 'end.'
  ;
  
  InitScanner(Source);
  ParseProgram;
  
  ExitProcess(0);
end.
