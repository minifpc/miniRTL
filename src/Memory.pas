// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
unit Memory;

interface

function GetMemory    (Size: PtrUInt): Pointer;                stdcall;
function FreeMemory   (P: Pointer): PtrUInt;                   stdcall;
function ReAllocMemory(P: Pointer; NewSize: PtrUInt): Pointer; stdcall;

{$ifdef DLLIMPORT}
function ReAllocMemory(P: Pointer; NewSize: PtrUInt): Pointer; stdcall; external RTLDLL;
function GetMemory(Size: PtrUInt): Pointer; stdcall; external RTLDLL;
function FreeMemory(P: Pointer): PtrUInt; stdcall; external RTLDLL;
{$endif}

implementation

uses xmm;
type
  PMemHeader = ^TMemHeader;
  TMemHeader = record
    Size: PtrUInt;
  end;

function Min(A, B: Integer): Integer;
begin
  if A < B then
  result := A else
  result := B ;
end;

function Max(A, B: Integer): Integer;
begin
  if A > B then
  result := A else
  result := B ;
end;

{$ifdef DLLEXPORT}
function GetMemory(Size: PtrUInt): Pointer; stdcall; export;
var
  Header: PMemHeader;
begin
  GetMem(Header, Size + SizeOf(TMemHeader));
  Header^.Size := Size;
  Result := Pointer(PByte(Header) + SizeOf(TMemHeader));
end;

function FreeMemory(P: Pointer): PtrUInt; stdcall; export;
var
  Header: PMemHeader;
begin
  if P = nil then Exit(0);
  Header := PMemHeader(PByte(P) - SizeOf(TMemHeader));
  Result := Header^.Size;
  FreeMem(Header);
end;

function ReAllocMemory(P: Pointer; NewSize: PtrUInt): Pointer; stdcall; export;
var
  OldHeader: PMemHeader;
  OldSize: PtrUInt;
  NewP: Pointer;
begin
  if P = nil then
    Exit(GetMemory(NewSize));

  OldHeader := PMemHeader(PByte(P) - SizeOf(TMemHeader));
  OldSize := OldHeader^.Size;

  NewP := GetMemory(NewSize);
  if OldSize > 0 then
  Move(P^, NewP^, Min(OldSize, NewSize));

  FreeMemory(P);
  Result := NewP;
end;

exports
  ReAllocMemory name 'ReAllocMemory',
  FreeMemory    name 'FreeMemory',
  GetMemory     name 'GetMemory'
  ;
{$endif DLLEXPORT}

end.
