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
    _tkWhile, _tkDo,
    _tkWrite, _tkWriteln,
    _tkIf, _tkThen, _tkElse,
    _tkEqual, _tkLess, _tkGreater, _tkLessEqual, _tkGreaterEqual, _tkNotEqual,
    _tkAssign, _tkSemicolon, _tkDot,
    _tkPlus, _tkMinus, _tkTimes, _tkDivide,
    _tkLParen, _tkRParen,
    _tkEOF, _tkUnknown
  );

  TToken = record
    TokenType: TTokenType;
    Lexeme: string;
  end;

type
  TProcTable = class(TStringList)
  public
    procedure AddProcedure(name: string; position: Integer);
    function  GetPosition (name: string): Integer;
  end;
  
var
  Source: string;
  Position: Integer;
  CurrentToken: TToken;
  SymbolTable: TStringList;
var
  right_count, left_count: Integer;
  eval_left  , eval_right: Integer;

procedure ParseStatement      ; forward;
procedure ParseIfStatement    ; forward;
procedure ParseWhileStatement ; forward;
procedure ParseTokenExpression; forward;

function  ParseExpression: String; forward;
function  EvalExpression: Integer; forward;

procedure Match(expected: TTokenType); forward;

procedure InitScanner(input: string);
begin
  Source      := input;
  Position    := 1;
  right_count := 0;
  left_count  := 0;
  SymbolTable := TStringList.Create;
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

function EvalCondition: Boolean;
var
  left, right: Integer;
begin
  left := EvalExpression;
  case Lookahead.TokenType of
    _tkEqual:        begin Match(_tkEqual       ); right := EvalExpression; Result := left =  right; end;
    _tkNotEqual:     begin Match(_tkNotEqual    ); right := EvalExpression; Result := left <> right; end;
    _tkLess:         begin Match(_tkLess        ); right := EvalExpression; Result := left <  right; end;
    _tkLessEqual:    begin Match(_tkLessEqual   ); right := EvalExpression; Result := left <= right; end;
    _tkGreater:      begin Match(_tkGreater     ); right := EvalExpression; Result := left >  right; end;
    _tkGreaterEqual: begin Match(_tkGreaterEqual); right := EvalExpression; Result := left >= right; end;
    else
    yyerror('Ungültiger Vergleichsoperator.');
  end;
end;

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
    else if id = 'do'      then begin CurrentToken.TokenType := _tkDo;      result := CurrentToken; exit; end
    else if id = 'while'   then begin CurrentToken.TokenType := _tkWhile;   result := CurrentToken; exit; end
    else if id = 'write'   then begin CurrentToken.TokenType := _tkWrite;   result := CurrentToken; exit; end
    else if id = 'writeln' then begin CurrentToken.TokenType := _tkWriteln; result := CurrentToken; exit: end
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
  if ch = '=' then
  begin
    result.TokenType := _tkEqual;
  end else
  if ch = '<' then
  begin
    ch := _PeekChar;
    if ch = '=' then
    begin
      ReadChar;
      Result.TokenType := _tkLessEqual;
    end else
    if ch = '>' then
    begin
      ReadChar;
      Result.TokenType := _tkNotEqual;
    end else
    Result.TokenType := _tkLess;
  end else
  if ch = '>' then
  begin
    ch := PeekChar;
    if ch = '=' then
    begin
      ReadChar;
      Result.TokenType := _tkGreaterEqual;
    end else
    Result.TokenType := _tkGreater;
  end;
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

function GetVariableValue(name: string): Integer;
var
  idx: Integer;
begin
  idx := SymbolTable.IndexOfName(name);
  if idx = -1 then
  begin
    {$ifdef DLLDEBUG}
    writeln('Variable: "' + name + '" not found.');
    {$endif DLLDEBUG}
    SymbolTable.Add(name);
    result := 32;
  end else
  begin
    writeln('found var');
    Result := StrToInt(SymbolTable.ValueFromIndex(idx));
  end;
end;

procedure SetVariableValue(name: string; value: Integer);
var
  i : Integer;
begin
  i := SymbolTable.IndexOfName(name);
  if i < 0 then
  SymbolTable.Add(name) else
  SymbolTable.Values[i] := IntToStr(value);
end;

function EvalFactor: Integer;
var
  val: Integer;
begin
  case CurrentToken.TokenType of
    _tkNumber: begin
      val := StrToInt(CurrentToken.Lexeme);
      Match(_tkNumber);
      Result := val;
    end;
    _tkIdentifier: begin
      result := GetVariableValue(CurrentToken.Lexeme);
      Match(_tkIdentifier);
      writeln('###> ', inttostr(result));
    end;
    _tkLParen: begin
      Match(_tkLParen);
      Result := EvalExpression;
      Match(_tkRParen);
    end; else
    yyerror('Syntaxfehler in Factor.');
  end;
end;

procedure ParseTokenParen;
begin
  if CurrentToken.TokenType = _tkLParen then
  begin
    Match(_tkLParen);
    inc(left_count);
  end else
  if CurrentToken.TokenType = _tkRParen then
  begin
    Match(_tkRParen);
    inc(right_count);
  end else
  if CurrentToken.TokenType = _tkSemicolon then
  begin
    Match(_tkSemicolon);
    
    if left_count  > right_count then yyerror('too much lparen');
    if right_count > left_count  then yyerror('too much rparen');
      
    writeln('sema');
  end;
end;

procedure ParseTokenType(var eval_result: Integer);
begin
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    Match(_tkIdentifier);
    eval_result := EvalFactor;
  end else
  if CurrentToken.TokenType = _tkNumber then
  begin
    Match(_tkNumber);
    eval_result := EvalFactor;
  end else
  if CurrentToken.TokenType = _tkLParen then ParseTokenParen else
  if CurrentToken.TokenType = _tkRParen then ParseTokenParen else
  yyerror('error 333');
end;

procedure ParseTokenFactor;
begin
  if CurrentToken.TokenType = _tkTimes then
  begin
    writeln('TIMES');
    Match(_tkTimes);
    ParseTokenType(eval_right);
  end else
  if CurrentToken.TokenType = _tkDivide then
  begin
    writeln('DIVIDE');
    Match(_tkDivide);
    ParseTokenType(eval_right);
  end;
end;

function EvalTerm: Integer;
begin
  eval_left := EvalFactor;
  writeln('EvalFactor left: ' + CurrentToken.Lexeme);
  Match(_tkAssign);
  while true do
  begin
    if CurrentToken.TokenType = _tkIdentifier then
    begin
      writeln('IDDDD');
      Match(_tkIdentifier);
      ParseTokenFactor;
    end else
    if CurrentToken.TokenType = _tkNumber then
    begin
      writeln('NUMMB');
      Match(_tkNumber);
      ParseTokenFactor;
    end else
    begin
      ParseTokenParen;
    end;
    yyerror('expr errrr');
  end;

(*  
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    Match(_tkIdentifier);
  while CurrentToken.TokenType in [_tkTimes, _tkDivide] do
  begin
    if CurrentToken.TokenType = _tkTimes then
    begin
      Match(_tkTimes);
      right := EvalFactor;
      left := left * right;
    end else
    begin
      Match(_tkDivide);
      right := EvalFactor;
      if right = 0 then raise Exception.Create('Division durch 0!');
      left := left div right;
    end;
  end;*)
  Result := eval_left;
end;

function EvalExpression: Integer;
var
  left, right: Integer;
begin
  writeln('ooooo>> ' + CurrentToken.Lexeme);
  if CurrentToken.TokenType = _tkSemicolon then
  begin
    writeln('emixx');
    result := StrToInt(CurrentToken.Lexeme);
    exit;
  end;
  left := EvalTerm;
  while CurrentToken.TokenType in [_tkPlus, _tkMinus] do
  begin
    if CurrentToken.TokenType = _tkPlus then
    begin
      Match(_tkPlus);
      right := EvalTerm;
      left := left + right;
    end else
    if CurrentToken.TokenType = _tkMinus then
    begin
      Match(_tkMinus);
      right := EvalTerm;
      left := left - right;
    end;
  end;
  Result := left;
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
  exprValue: Integer;
begin
  varName := CurrentToken.Lexeme;
  {$ifdef DLLDEBUG}
  writeln('var: ', varName);
  WriteLn('Assignment an Variable: ', varName);
  {$endif DLLDEBUG}
  
  exprValue := EvalExpression;
  writeln('ooooo');
  SetVariableValue(varName, exprValue);
  writeln('Zuweisung: ', varName, ' := ', intTostr(exprValue));
  Match(_tkSemicolon);
  
    (*
    if CurrentToken.TokenType = _tkIdentifier then
    begin
      CurrentToken := GetNextToken;
      {$ifdef DLLDEBUG}
      writeln('oo> ', CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      ParseTokenExpression;
      Match(_tkSemicolon);
    end;*)
end;

procedure ParseTokenExpression;
  procedure subParse;
  begin
    CurrentToken := GetNextToken;
    if CurrentToken.TokenType = _tkLParen then
    begin
      {$ifdef DLLDEBUG}
      writeln('TOKLEFTPAR');
      {$endif DLLDEBUG}
      inc(left_count);
      CurrentToken := GetNextToken;
      ParseTokenExpression;
      exit;
    end else
    if CurrentToken.TokenType = _tkNumber then
    begin
      {$ifdef DLLDEBUG}
      writeln('plus num: ' + CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      CurrentToken := GetNextToken;
      if CurrentToken.TokenType = _tkSemicolon then
      begin
        {$ifdef DLLDEBUG}
        writeln('num semi');
        {$endif DLLDEBUG}
        CurrentToken := GetNextToken;
        {$ifdef DLLDEBUG}
        writeln('plunum: ' + CurrentToken.Lexeme);
        {$endif DLLDEBUG}
        if CurrentToken.TokenType = _tkIdentifier then
        begin
          ParseStatement;
          exit;
        end;
      end else
      if CurrentToken.TokenType = _tkIdentifier then
      begin
        ParseTokenExpression;
        exit;
      end;
    end else
    if CurrentToken.TokenType = _tkIdentifier then
    begin
      {$ifdef DLLDEBUG}
      writeln('plus ident: ' + CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      CurrentToken := GetNextToken;
      ParseTokenExpression;
      exit;
    end else
    yyerror('token error');
  end;
begin
  if CurrentToken.TokenType = _tkPlus then
  begin
    {$ifdef DLLDEBUG}
    writeln('plus');
    {$endif DLLDEBUG}
    subParse;
  end else
  if CurrentToken.TokenType = _tkMinus then
  begin
    {$ifdef DLLDEBUG}
    writeln('minus');
    {$endif DLLDEBUG}
    subParse;
  end else
  if CurrentToken.TokenType = _tkTimes then
  begin
    {$ifdef DLLDEBUG}
    writeln('times');
    {$endif DLLDEBUG}
    subParse;
  end else
  if CurrentToken.TokenType = _tkDivide then
  begin
    {$ifdef DLLDEBUG}
    writeln('divide');
    {$endif DLLDEBUG}
    subParse;
  end else
  if CurrentToken.TokenType = _tkNumber then
  begin
    {$ifdef DLLDEBUG}
    writeln('  valuE: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    CurrentToken := GetNextToken;
    ParseTokenExpression;
  end else
  if CurrentToken.TokenType = _tkRParen then
  begin
    inc(right_count);
    CurrentToken := GetNextToken;
    {$ifdef DLLDEBUG}
    writeln('TOk: ' + CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    if CurrentToken.TokenType = _tkSemicolon then
    begin
      {$ifdef DLLDEBUG}
      writeln('lhs: ' + IntToStr(left_count));
      writeln('rhs: ' + IntToStr(right_count));
      {$endif DLLDEBUG}
      if right_count < left_count  then yyerror('right paren without left paren.');
      if left_count  < right_count then yyerror('left paren without right paren.');

      right_count := 0;
      left_count  := 0;
      
      {$ifdef DLLDEBUG}
      writeln('semi expr end');
      {$endif DLLDEBUG}
      exit;
    end else
    if CurrentToken.TokenType = _tkRParen then
    begin
      inc(right_count);
      CurrentToken := GetNextToken;
      
      {$ifdef DLLDEBUG}
      writeln('tok: ' + CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      if CurrentToken.TokenType = _tkSemicolon then
      begin
        {$ifdef DLLDEBUG}
        writeln('LHS: ' + IntToStr(left_count));
        writeln('RHS: ' + IntToStr(right_count));
        {$endif DLLDEBUG}
        if right_count < left_count  then yyerror('right paren without left paren.');
        if left_count  < right_count then yyerror('left paren without right paren.');
        
        right_count := 0;
        left_count  := 0;
        
        {$ifdef DLLDEBUG}
        writeln('end expr');
        {$endif DLLDEBUG}
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
    {$ifdef DLLDEBUG}
    writeln('Lparen');
    {$endif DLLDEBUG}
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
    {$ifdef DLLDEBUG}
    WriteLn('Statement: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    Match(_tkIdentifier);
    Match(_tkAssign);
    while CurrentToken.TokenType <> _tkSemicolon do
    begin
      if CurrentToken.TokenType = _tkNumber then
      begin
        {$ifdef DLLDEBUG}
        WriteLn('  Value: ', CurrentToken.Lexeme);
        {$endif DLLDEBUG}
        Match(_tkNumber);
        if CurrentToken.TokenType = _tkSemicolon then
        begin
          {$ifdef DLLDEBUG}
          writeln('smei');
          {$endif DLLDEBUG}
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
        {$ifdef DLLDEBUG}
        writeln('--> ' + CurrentToken.Lexeme);
        {$endif DLLDEBUG}
        CurrentToken := GetNextToken;
        {$ifdef DLLDEBUG}
        writeln('--> ' + CurrentToken.Lexeme);
        {$endif DLLDEBUG}
        if CurrentToken.TokenType = _tkRParen then
        begin
          inc(right_count);
          CurrentToken := GetNextToken;
          while CurrentToken.TokenType <> _tkSemicolon do
          begin
            CurrentToken := GetNextToken;
            if CurrentToken.TokenType = _tkRParen then
            begin
              continue
            end else
            if CurrentToken.TokenType = _tkSemicolon then
            begin
              {$ifdef DLLDEBUG}
              writeln('SEM');
              {$endif DLLDEBUG}
              break;
            end else
            yyerror('swapse');
          end;
        end else
        if CurrentToken.TokenType = _tkLParen then
        begin
          inc(left_count);
          CurrentToken := GetNextToken;
          continue;
        end else
        begin
          {$ifdef DLLDEBUG}
          writeln('www: ', CurrentToken.Lexeme);
          {$endif DLLDEBUG}
        //yyerror('Semicolon expected');
        end;
      end;
    end;
    //end else
    //yyerror('Expected number');
  end else
  if CurrentToken.TokenType = _tkIf then
  begin
    {$ifdef DLLDEBUG}
    writeln('if');
    {$endif DLLDEBUG}
    ParseIfStatement;
  end else
  if CurrentToken.TokenType = _tkWhile then
  begin
    ParseWhileStatement;
  end else
  yyerror('Expected identifier');
end;

procedure ParseIfStatement;
begin
  Match(_tkIf);
  if CurrentToken.TokenType = _tkIdentifier then
  begin
    {$ifdef DLLDEBUG}
    WriteLn('If-Bedingung: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    CurrentToken := GetNextToken;
    Match(_tkThen);
    
    {$ifdef DLLDEBUG}
    WriteLn('If-Bedingung: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    Match(_tkIdentifier);
    
    if CurrentToken.TokenType = _tkAssign then
    begin
      {$ifdef DLLDEBUG}
      WriteLn('If-Assugn: ', CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      Match(_tkAssign);
    end;
    
    {$ifdef DLLDEBUG}
    WriteLn('If-Number: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    
    CurrentToken := GetNextToken;    
    Match(_tkElse);
    
    {$ifdef DLLDEBUG}
    WriteLn('If-Else: else');
    WriteLn('If-ident: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    Match(_tkIdentifier);
    
    {$ifdef DLLDEBUG}
    WriteLn('If-Assign: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    
    CurrentToken := GetNextToken;
    {$ifdef DLLDEBUG}
    WriteLn('If-number: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    
    CurrentToken := GetNextToken;
    Match(_tkSemicolon);
    
    if CurrentToken.TokenType = _tkWhile then
    begin
      CurrentToken := GetNextToken;
      ParseWhileStatement;
    end else
    if CurrentToken.TokenType = _tkIdentifier then
    begin
      {$ifdef DLLDEBUG}
      WriteLn('ident: semico: ', CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      ParseStatement;
    end;
  end else
  yyerror('Expected identifier as condition');
end;

(*
procedure ParseWhileStatement;
var
  conditionToken: TToken;
  conditionVar: string;
begin
  Match(tkWhile);

  // einfache Bedingung: Variable
  if Lookahead.TokenType = tkIdentifier then
  begin
    conditionToken := Lookahead;
    conditionVar := Lookahead.Lexeme;
    Match(tkIdentifier);
  end else
  raise Exception.Create('Syntax Error: Nur Variable als Bedingung erlaubt (Demo).');

  Match(tkDo);

  while GetVariableValue(conditionVar) <> 0 do
  begin
    ParseStatement;
  end;
end;

procedure ParseIfStatement;
var condition: Boolean;
begin
  Match(tkIf);
  condition := EvalCondition;
  Match(tkThen);
  if condition then
    ParseStatement
  else if Lookahead.TokenType = tkElse then
  begin
    Match(tkElse); ParseStatement; // else-Zweig wird ausgeführt
  end
  else
    SkipStatement; // then-Zweig überspringen
end;

procedure ParseWhileStatement;
begin
  Match(tkWhile);
  while EvalCondition do
    ParseStatement;
  Match(tkDo);
end;

*)
procedure ParseWhileStatement;
begin
  {$ifdef DLLDEBUG}
  writeln('tk: ', CurrentToken.Lexeme);
  {$endif DLLDEBUG}
  if (CurrentToken.TokenType = _tkIdentifier)
  or (CurrentToken.TokenType = _tkNumber) then
  begin
    {$ifdef DLLDEBUG}
    WriteLn('While-Condition: ', CurrentToken.Lexeme);
    {$endif DLLDEBUG}
    CurrentToken := GetNextToken;
    if CurrentToken.TokenType = _tkDo then
    begin
      {$ifdef DLLDEBUG}
      WriteLn('While-DO Condition: ');
      {$endif DLLDEBUG}
      Match(_tkDo);
      
      {$ifdef DLLDEBUG}
      WriteLn('While-Condition Expr: ', CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      ParseAssignment;
    end;
  end else
  yyerror('Expected identifier or number in while');
end;

procedure ParseBlock;
begin
  Match(tkBegin);
  while not (CurrentToken.TokenType in [_tkEnd]) do
  ParseStatement;
  Match(_tkEnd);
end;

procedure ParseWriteStatement;
var val: Integer;
begin
  Match(_tkWrite);
  Match(_tkLParen);
  val := EvalExpression;
  Write(val);
  Match(_tkRParen);
  Match(_tkSemicolon);
end;

procedure ParseWritelnStatement;
var val: Integer;
begin
  Match(_tkWriteln);
  Match(_tkLParen);
  val := EvalExpression;
  WriteLn(val);
  Match(_tkRParen);
  Match(_tkSemicolon);
end;

procedure ParseProgram;
begin
  CurrentToken := GetNextToken;
  if CurrentToken.TokenType = _tkProgram then
  begin
    {$ifdef DLLDEBUG}
    writeln('program');
    {$endif DLLDEBUG}
    CurrentToken := GetNextToken;
    if CurrentToken.TokenType = _tkIdentifier then
    begin
      {$ifdef DLLDEBUG}
      writeln('ident: ' + CurrentToken.Lexeme);
      {$endif DLLDEBUG}
      CurrentToken := GetNextToken;
      if CurrentToken.TokenType = _tkSemicolon then
      begin
        {$ifdef DLLDEBUG}
        writeln('semicolon');
        {$endif DLLDEBUG}
        CurrentToken := GetNextToken;
        if CurrentToken.TokenType = _tkBegin then
        begin
          {$ifdef DLLDEBUG}
          writeln('begin');
          {$endif DLLDEBUG}
          while true do
          begin
            CurrentToken := GetNextToken;
            if CurrentToken.TokenType = _tkWrite      then ParseWriteStatement      else
            if CurrentToken.TokenType = _tkWeiteLn    then ParseWritelnStatement    else
            if CurrentToken.TokenType = _tkIdentifier then ParseStatement           else
            if CurrentToken.TokenType = _tkWhile      then ParseWhileStatement      else
            if CurrentToken.TokenType = _tkIf         then ParseIfStatement         else
            if CurrentToken.TokenType = _tkEnd        then break                    else
            if CurrentToken.TokenType = _tkEOF        then yyerror('end of file');
          end;
        end;
        if CurrentToken.TokenType = _tkEnd then
        begin
          {$ifdef DLLDEBUG}
          writeln('end');
          {$endif DLLDEBUG}
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
  + 'while wx do '
  + '  x := x + 1; '
  + 'cy :=  7;'
  + 'end.'
  ;
  
  InitScanner(Source);
  ParseProgram;
  
  ExitProcess(0);
end.
