// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$modeswitch generics}
unit Container;
 
interface
 
type
  generic TList<T1> = class
  private
    FValue  : T1;
    FTop    : specialize TList<T1>;
    FBottom : specialize TList<T1>;
    FPrev   : specialize TList<T1>;
    FNext   : specialize TList<T1>;
    FCount  : Integer;
  type
    Enumerator = class
    private
      FCurrent : specialize TList<T1>;
      FHead    : specialize TList<T1>;
    public
      constructor Create(AList: specialize TList<T1>);
      function GetCurrent: T1;
      function MoveNext: Boolean;
      property Current: T1 read GetCurrent;
    end;
    ReverseEnumerator = class
    private
      FCurrent: specialize TList<T1>;
    public
      constructor Create(AList: specialize TList<T1>);
      function MoveNext: Boolean;
      function GetCurrent: T1;
      property Current: T1 read GetCurrent;
    end;
  public
    constructor Create(AValue: T1);
    procedure Add(AValue: T1);
   
    function GetEnumerator:               Enumerator;
    function GetReverseEnumerator: ReverseEnumerator;
  published
    property Count: Integer read FCount;
  end;
 
  generic TListVector<T1> = class(specialize TList<T1>)
  public
    constructor Create(AValue: T1);
  end;
 
  generic TMap<T1, T2> = class
  private
    FValue1 : T1;
    FValue2 : T2;
    FCount  : Integer;
  public
    constructor Create(AValue1: T1; AValue2: T2);
  end;
 
implementation
 
{ TListEnumerator }
constructor TList.Enumerator.Create(AList: specialize TList<T1>);
begin
  inherited Create;
  FCurrent := nil;
  FHead := AList.FTop;
end;
 
function TList.Enumerator.MoveNext: Boolean;
begin
  if FCurrent = nil then
  FCurrent := FHead else
  FCurrent := FCurrent.FNext;
 
  result   := FCurrent <> nil;
end;
 
function TList.Enumerator.GetCurrent: T1;
begin
  Result := FCurrent.FValue;
end;
 
 
{ TListReverseEnumerator }
constructor TList.ReverseEnumerator.Create(AList: specialize TList<T1>);
begin
  inherited Create;
  FCurrent := AList.FBottom; // Beginne ganz unten
end;
 
function TList.ReverseEnumerator.MoveNext: Boolean;
begin
  Result := FCurrent <> nil;
  if Result then
  FCurrent := FCurrent.FPrev;
end;
 
function TList.ReverseEnumerator.GetCurrent: T1;
begin
  Result := FCurrent.FValue;
end;
 
 
{ TListVector }
constructor TListVector.Create(AValue: T1);
begin
  inherited Create(AValue);
end;
 
 
{ TList }
constructor TList.Create(AValue: T1);
begin
  inherited Create;
  FValue  := AValue;
 
  FTop    := self;
  FBottom := self;
  FNext   := nil;
 
  FCount  := 1;
end;
 
procedure TList.Add(AValue: T1);
var
  tmp: specialize TList<T1>;
begin
  tmp := TList.Create(AValue);
  FBottom.FNext := tmp;
  FBottom       := tmp;
 
  inc(FCount);
end;
 
function TList.GetEnumerator:                     Enumerator; begin result :=        Enumerator.Create(Self); end;
function TList.GetReverseEnumerator: TList.ReverseEnumerator; begin result := ReverseEnumerator.Create(Self); end;
 
constructor TMap.Create(AValue1: T1; AValue2: T2);
begin
  inherited Create;
end;
 
end.
