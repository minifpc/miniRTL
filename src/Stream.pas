// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}{$H+}
unit Stream;

interface
uses
  Windows, Dialogs;

// ---------------------------------------------------------------------------------------
// fm - stream file modes ...
// ---------------------------------------------------------------------------------------
const fmOpenRead        = 0;        // open file for read  only
const fmOpenWrite       = 1;        // open file for write only
const fmOpenReadWrite   = 2;        // open file for read & write
const fmCreate          = $FF00;    // create a new file

const fmShareCompat     = $00;      // DOS compatible (obsulete)
const fmShareExclusive  = $10;      // no other process can access the file
const fmShareDenyWrite  = $20;      // by other processes: deny read/write
const fmShareDenyRead   = $30;      // other processes - only read access
const fmShareDenyNone   = $40;      // read/write access for other processes
// ---------------------------------------------------------------------------------------
const soBeginning       = 0;
const soCurrent         = 1;
const soEnd             = 2;
  
type
  TStream = class(TObject)
  private
    FBuffer   : Pointer;
    FSize     : Integer;
    FCapacity : Integer;
    FPosition : Integer;
  protected
    function  GetSize: Integer;
    procedure SetCapacity(AValue: Integer);
    procedure ReAlloc    (AValue: Integer);
  public
    constructor Create(AFileName: String); overload;
    constructor Create; overload;
    
    destructor Destroy; override;
    
    procedure ReadBuffer (var   Buffer; Count: Integer);
    function  Read       (var   Buffer; Count: Integer): Integer;
    function  WriteBuffer(const Buffer; Count: Integer): Integer;
    function  Write      (const Buffer; Count: Integer): Integer;
    
    function Seek(Offset: Integer; Origin: Word): Integer;
    
    procedure LoadFromFile(const FileName: string);
    procedure LoadFromStream(Source: TStream);
    
    procedure SaveToFile(const FileName: string);
    procedure SaveToStream(dest: TStream);
    
  published
    property Size     : Integer read FSize;
    property Capacity : Integer read FCapacity write SetCapacity;
    property Position : Integer read FPosition write FPosition;
  end;
  
  TMemoryStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;

    property Buffer: Pointer read FBuffer;
  end;
  
  TFileStream = class(TStream)
  public
    constructor Create(FileName : String; mode: Integer);
    destructor Destroy; override;
  end;
  
  TResourceStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation
uses
  Memory, Exceptions;

{ TStream }
constructor TStream.Create(AFileName: String);
begin
  inherited Create;
end;

constructor TStream.Create;
begin
  inherited Create;
  FSize     := 0;
  FCapacity := 0;
  FPosition := 0;
end;

destructor TStream.Destroy;
begin
  if FBuffer <> nil then
  FreeMem(FBuffer);
  
  inherited Destroy;
end;

function TStream.Write(const Buffer; Count: LongInt): Integer;
var
  NewPos: Integer;
begin
  if Count <= 0 then
  Exit(0);

  NewPos := FPosition + Count;

  // Puffer vergrößern, falls notwendig
  if NewPos > FCapacity then
  SetCapacity(NewPos);

  // Größe anpassen, wenn über das aktuelle Ende hinaus geschrieben wird
  if NewPos > FSize then
  FSize := NewPos;

  // Daten kopieren
  Move(Buffer, PByte(Fbuffer)[FPosition], Count);

  // Position aktualisieren
  inc(FPosition, Count);

  // Rückgabe = Anzahl geschriebener Bytes
  result := Count;
end;

function TStream.WriteBuffer(const Buffer; Count: Integer): Integer;
var
  P: PByte;
  BytesWritten, TotalWritten: Integer;
begin
  P := @Buffer;
  TotalWritten := 0;

  while Count > 0 do
  begin
    BytesWritten := Write(P^, Count);
    
    if BytesWritten <= 0 then
    Break;
    
    inc(P, BytesWritten);
    inc(TotalWritten, BytesWritten);
    
    dec(Count, BytesWritten);
  end;

  result := TotalWritten;
end;

procedure TStream.ReadFromFile(const FileName: string);
var
  FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    // Position an das Ende setzen
    FileStream.Seek(0, soEnd);
    CopyFrom(FileStream, FileStream.Size);
  finally
    FileStream.Free;
  end;
end;
procedure TStream.SaveToFile(const FileName: string);
var
  FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(FileName, fmCreate);
  try
    SaveToStream(FileStream);
  finally
    FileStream.Free;
  end;
end;

procedure TStream.SetSize(NewSize: Integer);
begin
  if NewSize <> self.GetSize then
  begin
    if NewSize > FCapacity then
    SetCapacity(NewSize);
    
    FSize := NewSize;
    
    if FPosition > FSize then
    FPosition := FSize;
  end;
end;

procedure TStream.LoadFromStream(Source: TStream);
begin
  SetSize(0);             // Inhalt löschen
  Seek(0, soBeginning);   // an Anfang gehen
  CopyFrom(Source, Source.Size); // neuen Inhalt lesen
  Seek(0, soBeginning);   // wieder zurück
end;
procedure TStream.SaveToStream(dest: TStream);
begin
  if FSize > 0 then
  dest.WriteBuffer(FBuffer^, FSize);
end;

procedure TStream.SetCapacity(AValue: Integer);
begin
  if AValue <> FCapacity then
  ReAllocMemory(FBuffer, AValue);
end;

procedure TStream.ReAlloc(AValue: Integer);
var
  NewBuffer: Pointer;
begin
  if AValue < FSize then
  AValue := FSize;

  if AValue = 0 then
  begin
    if FBuffer <> nil then
    begin
      // alten Inhalt kopieren
      Move(FBuffer^, NewBuffer^, FSize);
      FreeMem(FBuffer);
    end;
  end else
  begin
    if FBuffer = nil then
    GetMem(FBuffer, AValue) else
    ReAllocMemory(FBuffer)
  end;

  FBuffer   := NewBuffer;
  FCapacity := NewCapacity;
end;

procedure TStream.ReadBuffer(var Buffer; Count: LongInt);
var
  P: PByte;
  BytesRead, Remaining: LongInt;
begin
  if Count <= 0 then
  exit;

  P := @Buffer;
  Remaining := Count;

  while Remaining > 0 do
  begin
    BytesRead := Read(P^, Remaining);
    if BytesRead <= 0 then
    raise EReadError.Create('Fehler beim Lesen aus dem Stream');

    Inc(P, BytesRead);
    Dec(Remaining, BytesRead);
  end;
end;

function TStream.Read(var Buffer; Count: Integer): Integer;
begin
  if FPosition >= FSize then
  Exit(0);
  
  if FPosition + Count > FSize then
  Count := FSize - FPosition;
  
  Move(PByte(FBuffer)^[FPosition], Buffer, Count);
  inc(FPosition), Count);
  
  result := Count;
end;

function TStream.Write(const Buffer; Count: Integer): Integer;
var
  NewPos: LongInt;
begin
  NewPos := FPosition + Count;
  
  if NewPos > FCapacity then
  SetCapacity(NewPos * 2); // wächst dynamisch

  Move(Buffer, PByte(FBuffer)^[FPosition], Count);
  FPosition := NewPos;
  
  if FPosition > FSize then
  FSize  := FPosition;
  
  result := Count;
end;

function TStream.Seek(Offset: Integer; Origin: Word): Integer;
begin
  case Origin of
    soBeginning: FPosition := Offset;
    soCurrent:   FPosition := FPosition + Offset;
    soEnd:       FPosition := FSize     + Offset;
  else
    raise Exception.Create('invalid Seek-Offset');
  end;

  if FPosition < 0 then
  FPosition := 0 else if FPosition > FSize then
  FPosition := FSize;

  result    := FPosition;
end;


{ TMemoryStream }
constructor TMemoryStream.Create;
begin
  inherited Create;
  FBuffer   := nil;
  FSize     := 0;
  FCapacity := 0;
  FPosition := 0;
end;

destructor TMemoryStream.Destroy;
begin
  if FBuffer <> nil then
  FreeMem(FBuffer);
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
