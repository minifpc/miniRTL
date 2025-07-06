// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
unit Stream;

interface
uses
  Windows, Dialogs;

type
  TStream = class(TObject)
  private
    FBuffer   : Pointer;
    FSize     : Integer;
    FPosition : Integer;
  public
    constructor Create(AFileName: String); overload;
    constructor Create; overload;
    
    destructor Destroy; override;
    
    function Read (var   Buffer; Count: Integer): Integer;
    function Write(const Buffer; Count: Integer): Integer;
    function Seek(Offset: Integer; Origin: Word): Integer;
  end;
  
  TMemoryStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Memory:
  end;
  
  TFileStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TResourceStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TStream }
constructor TStream.Create(AFileName: String);
begin
  inherited Create;
end;

constructor TStream.Create;
begin
  inherited Create;
end;

destructor TStream.Destroy;
begin
  inherited Destroy;
end;

function TStream.Read(var Buffer; Count: Integer): Integer;
begin
end;

function TStream.Write(const Buffer; Count: Integer): Integer;
begin
end;

function TStream.Seek(Offset: Integer; Origin: Word): Integer;
begin
end;


{ TMemoryStream }
constructor TMemoryStream.Create;
begin
  inherited Create;
end;

destructor TMemoryStream.Destroy;
begin
  inherited Destroy;
end;


{ TFileStream }
constructor TFileStream.Create;
begin
  inherited Create;
end;

destructor TFileStream.Destroy;
begin
  inherited Destroy;
end;


{ TResourceStream }
constructor TResourceStream.Create;
begin
  inherited Create;
end;

destructor TResourceStream.Destroy;
begin
  inherited Destroy;
end;

end.
