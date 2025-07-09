// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}  // required for FPC
{$H+}           // String = AnsiString
unit Generics;

interface

type
  generic TCompareFunc<T> = function(const A, B: T): Integer;
  
  generic function Min<T>(const A, B: T; const CompareFunc: specialize TCompareFunc<T>): T;
  generic function Max<T>(const A, B: T; const CompareFunc: specialize TCompareFunc<T>): T;
  
implementation

generic function Min<T>(A, B: T; const CompareFunc: specialize TCompareFunc<T>): T;
begin
  if CompareFunc(A, B) < 0 then result := A else
  if CompareFunc(A, B) = 0 then result := A else
  if CompareFunc(A, B) > 0 then result := B ;
end;

generic function Max<T>(A, B: T; const CompareFunc: specialize TCompareFunc<T>): T;
begin
  if CompareFunc(A, B) > B then result := A else
  if CompareFunc(A, B) = 0 then result := A else
  if CompareFunc(A, B) < 0 then result := B ;
end;

end.
