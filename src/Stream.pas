// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
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

const FILE_BEGIN        = 0;
const FILE_CURRENT      = 1;
const FILE_END          = 2;

// ---------------------------------------------------------------------------------------
/// <class name="TStream">
///   <brief>
///     <lang name="deu">
///     </lang>
///     <lang name="enu">
///       This is the base class of streams for:
///       - Memory
///       - File
///       - Resource
///     </lang>
///   </brief>
///   <private></private>
///   <protected></protected>
///   <public>
///     <constructor name="Create">
///       <param></param>
///       <brief>
///         <lang name="enu">
///         </lang>
///         <lang name="deu">
///         </lang>
///       </brief>
///     </constructor
///   </public>
/// </class>
// ---------------------------------------------------------------------------------------
type
  TStream = class(TObject)
  private
    FBuffer   : PByteArray;
    FSize     : Integer;
    FCapacity : Integer;
    FPosition : Integer;
  protected
    function  GetSize:            Integer ;
    procedure SetSize    (AValue: Integer);
    procedure SetCapacity(AValue: Integer);
    procedure ReAlloc    (AValue: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    
    procedure ReadBuffer (var   Buffer; Count: Integer);
    function  Read       (var   Buffer; Count: Integer): Integer;
    function  WriteBuffer(const Buffer; Count: Integer): Integer;
    function  Write      (const Buffer; Count: Integer): Integer;
    
    function Seek(Offset: Integer; Origin: Integer): Integer;
    
    procedure LoadFromFile(const FileName: string);
    procedure LoadFromStream(Source: TStream);
    
    procedure SaveToFile(const FileName: string);
    procedure SaveToStream(dest: TStream);
    
    procedure ReadFromFile(const FileName: string);
    
  published
    property Size     : Integer read FSize;
    property Capacity : Integer read FCapacity write SetCapacity;
    property Position : Integer read FPosition write FPosition;
  end;
  
  TMemoryStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
    
    function Seek(Offset: Integer; Origin: Integer): Integer;
  end;
  
  TFileStream = class(TStream)
  private
    FFileHandle : THandle;
  public
    constructor Create(AFileName: String; mode: Integer);
    destructor Destroy; override;
  end;
  
  TResourceStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation
uses
  Memory, Exceptions, ErrorData;

{ TStream }
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

procedure TStream.SetSize(AValue: Integer);
begin
  if AValue <> GetSize then
  begin
    if AValue > FCapacity then
    SetCapacity(AValue);
    
    FSize := AValue;
    
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
begin
  if AValue < FSize then
  AValue := FSize;

  if AValue = 0 then
  begin
    if FBuffer <> nil then
    begin
      FreeMem(FBuffer);
      FBuffer := nil;
    end;
  end else
  begin
    if FBuffer = nil then
    GetMem(FBuffer, AValue) else
    ReAllocMemory(FBuffer, AValue);
  end;

  FCapacity := AValue;
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
  FPosition := Count + FSize;
  
  Move(PByteArray(FBuffer)^[FPosition], Buffer, Count);
  inc(FPosition, Count);
  
  result := Count;
end;

function TStream.Write(const Buffer; Count: Integer): Integer;
var
  NewPos: LongInt;
begin
  NewPos := FPosition + Count;
  
  if NewPos > FCapacity then
  SetCapacity(NewPos * 2); // wächst dynamisch

  Move(Buffer, PByteArray(FBuffer)^[FPosition], Count);
  FPosition := NewPos;
  
  if FPosition > FSize then
  FSize  := FPosition;
  
  result := Count;
end;

function TStream.Seek(Offset: Integer; Origin: Integer): Integer;
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
constructor TFileStream.Create(AFileName: String; mode: Integer);
var
  BytesRead: PDWORD;
begin
  inherited Create;
  
  FFileHandle := CreateFileA(
    PChar(AFileName),       // Dateiname
    GENERIC_READ,           // Zugriffsmodus: lesen
    FILE_SHARE_READ,        // anderen Prozessen lesen erlauben
    nil,                    // Sicherheit
    OPEN_EXISTING,          // nur öffnen, wenn existiert
    FILE_ATTRIBUTE_NORMAL,  // Dateiattribute
    0                       // Template
  );
  
  if FFileHandle = INVALID_HANDLE_VALUE then
  begin
    ShowError('file could not be open.');
    Exit;
  end;
  
  // 2. Dateigröße ermitteln
  FSize := GetFileSize(FFileHandle, nil);
  if FSize = INVALID_FILE_SIZE then
  begin
    ShowError('could not get file size.');
    CloseHandle(FFileHandle);
    Exit;
  end;
  
  // 3. Speicher allozieren
  GetMem(FBuffer, FSize);
  
  // 4. Datei einlesen
  if not ReadFile(FFileHandle, @FBuffer^[0], FSize, BytesRead, nil) then
  begin
    ShowError('could not read file: ' +
    SysErrorMessage(GetLastError));
    
    FreeMem(FBuffer);
    CloseHandle(FFileHandle);
    Exit;
  end;
end;

function TFileStream.Seek(Offset: Integer; Origin: Integer): Integer;
  function SeekFile(hFile: THandle; Offset: Integer; MoveMethod: DWORD): Int64;
  var
    NewPos: DWORD;
  begin
    NewPos := SetFilePointer(hFile, Offset, nil, MoveMethod);
    if NewPos = $FFFFFFFF then
    if GetLastError <> NO_ERROR then
    raise Exception.CreateFmt('Seek fehlgeschlagen: %s', [SysErrorMessage(GetLastError)]);
    result := NewPos;
  end;
begin
end;

destructor TFileStream.Destroy;
begin
  // 5. Aufräumen
  FreeMem(FBuffer);
  CloseHandle(FFileHandle);
  
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
