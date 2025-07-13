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
    FBuffer     : PByteArray;
    FSize       : Integer;
    FCapacity   : Integer;
    FPosition   : Integer;
    FFileHandle : THandle;
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
    
    procedure ReadFromFile(const FileName: string);
    procedure LoadFromFile(const FileName: string);
    
    procedure LoadFromStream(Source: TStream);
    
    procedure SaveToFile(const FileName: string);
    procedure SaveToStream(dest: TStream);
    
    function  CopyFrom(Source: TStream; Count: Integer): Integer;
  published
    property Size     : Integer read FSize;
    property Capacity : Integer read FCapacity write SetCapacity;
    property Position : Integer read FPosition write FPosition;
  end;
  
  TMemoryStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
    
    //function Seek(Offset: Integer; Origin: Integer): Integer;
  end;
  
  TFileStream = class(TStream)
  public
    constructor Create(AFileName: String; mode: Integer);
    destructor Destroy; override;
    
    function Seek(Offset: Integer; Origin: Integer): Integer;
  end;
  
  TResourceStream = class(TStream)
  public
    constructor Create;
    destructor Destroy; override;
  end;

{$ifdef DLLEXPORT}
// ---------------------------------------------------------------------------------------
function  TStream_WriteBuffer    (p: TStream; const Buffer; Count: Integer): Integer; stdcall; export;
function  TStream_CopyFrom       (p: TStream; Source: TStream; Count: Integer): Integer; stdcall; export;

procedure TFileStream_Create     (p: TFileStream; AFileName: String; mode: Integer); stdcall; export;
function  TFileStream_Seek       (p: TFileStream; Offset: Integer; Origin: Integer): Integer; stdcall; export;

function  TStream_Write          (p: TStream; const Buffer; Count: Integer): Integer; stdcall; export;
function  TStream_Read           (p: TStream; var   Buffer; Count: Integer): Integer; stdcall; export;
procedure TStream_ReadBuffer     (p: TStream; var   Buffer; Count: LongInt); stdcall; export;

function  TStream_Seek           (p: TStream; Offset: Integer; Origin: Integer): Integer; stdcall; export;

procedure TStream_ReAlloc        (p: TStream; AValue: Integer); stdcall; export;
procedure TStream_SetSize        (p: TStream; AValue: Integer); stdcall; export;

procedure TStream_LoadFromStream (p: TStream; Source: TStream); stdcall; export;

procedure TStream_ReadFromFile   (p: TStream; const FileName: string); stdcall; export;
procedure TStream_SaveToFile     (p: TStream; const FileName: string); stdcall; export;
// ---------------------------------------------------------------------------------------
{$endif DLLEXPORT}
{$ifdef DLLIMPORT}
// ---------------------------------------------------------------------------------------
function  TStream_WriteBuffer    (p: TStream; const Buffer; Count: Integer): Integer; stdcall; external RTLDLL;
function  TStream_CopyFrom       (p: TStream; Source: TStream; Count: Integer): Integer; stdcall; external RTLDLL name 'TStream_CopyFrom';

procedure TFileStream_Create     (p: TFileStream; AFileName: String; mode: Integer); stdcall; external RTLDLL;
function  TFileStream_Seek       (p: TFileStream; Offset: Integer; Origin: Integer): Integer; stdcall; external RTLDLL;

function  TStream_Write          (p: TStream; const Buffer; Count: Integer): Integer; stdcall; external RTLDLL;
function  TStream_Read           (p: TStream; var   Buffer; Count: Integer): Integer; stdcall; external RTLDLL;
procedure TStream_ReadBuffer     (p: TStream; var   Buffer; Count: LongInt); stdcall; external RTLDLL;

function  TStream_Seek           (p: TStream; Offset: Integer; Origin: Integer): Integer; stdcall; external RTLDLL;

procedure TStream_ReAlloc        (p: TStream; AValue: Integer); stdcall; external RTLDLL;
procedure TStream_SetSize        (p: TStream; AValue: Integer); stdcall; external RTLDLL;

procedure TStream_LoadFromStream (p: TStream; Source: TStream); stdcall; external RTLDLL;

procedure TStream_ReadFromFile   (p: TStream; const FileName: string); stdcall; external RTLDLL;
procedure TStream_SaveToFile     (p: TStream; const FileName: string); stdcall; external RTLDLL;
// ---------------------------------------------------------------------------------------
{$endif DLLIMPORT}

implementation
uses
  Memory, Exceptions, ErrorData;

const
  CopyBufferSize = 8192; // 8 KB

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

function TStream.GetSize: Integer;
begin
  result := FSize;
end;

{$ifdef DLLEXPORT}
function TStream_WriteBuffer(p: TStream; const Buffer; Count: Integer): Integer; stdcall; export;
var
  Pb: PByte;
  BytesWritten, TotalWritten: Integer;
begin
  Pb := @Buffer;
  TotalWritten := 0;

  while Count > 0 do
  begin
    BytesWritten := p.Write(Pb^, Count);
    
    if BytesWritten <= 0 then
    Break;
    
    inc(Pb, BytesWritten);
    inc(TotalWritten, BytesWritten);
    
    dec(Count, BytesWritten);
  end;

  result := TotalWritten;
end;
{$endif DLLEXPORT}
function TStream.WriteBuffer(const Buffer; Count: Integer): Integer;
begin
  result := TStream_WriteBuffer(self, Buffer, Count);
end;

{$ifdef DLLEXPORT}
function TStream_CopyFrom(p: TStream; Source: TStream; Count: Integer): Integer; stdcall; export;
var
  Buffer: PByte;
  ReadNow, ToRead: Integer;
  TotalCopied: Integer;
begin
  Result := 0;
  GetMem(Buffer, CopyBufferSize);
  try
    // Wenn Count = 0 → alles vom aktuellen Position bis EOF
    if Count = 0 then
      Count := Source.Size - Source.Position;

    TotalCopied := 0;
    while Count > 0 do
    begin
      ToRead := CopyBufferSize;
      if Count < ToRead then
        ToRead := Count;

      ReadNow := Source.Read(Buffer^, ToRead);
      if ReadNow = 0 then
        Break; // EOF oder Fehler

      p.Write(Buffer^, ReadNow);

      Inc(TotalCopied, ReadNow);
      Dec(Count, ReadNow);
    end;
    Result := TotalCopied;
  finally
    FreeMem(Buffer);
  end;
end;
{$endif DLLEXPORT}
function TStream.CopyFrom(Source: TStream; Count: Integer): Integer;
begin
  result := TStream_CopyFrom(self, Source, Count);
end;

{$ifdef DLLEXPORT}
procedure TStream_ReadFromFile(p: TStream; const FileName: string); stdcall; export;
var
  FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    // Position an das Ende setzen
    FileStream.Seek(0, soEnd);
    p.CopyFrom(FileStream, FileStream.Size);
  finally
    FileStream.Free;
  end;
end;
{$endif DLLEXPORT}
procedure TStream.LoadFromFile(const FileName: string);
begin
  TStream_ReadFromFile(self,FileName);
end;
procedure TStream.ReadFromFile(const FileName: string);
begin
  LoadFromFile(FileName);
end;

{$ifdef DLLEXPORT}
procedure TStream_SaveToFile(p: TStream; const FileName: string); stdcall; export;
var
  FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(FileName, fmCreate);
  try
    p.SaveToStream(FileStream);
  finally
    FileStream.Free;
  end;
end;
{$endif DLLEXPORT}
procedure TStream.SaveToFile(const FileName: string);
begin
  TStream_SaveToFile(self, FileName);
end;

{$ifdef DLLEXPORT}
procedure TStream_SetSize(p: TStream; AValue: Integer); stdcall; export;
begin
  if AValue <> p.GetSize then
  begin
    if AValue > p.FCapacity then
    p.SetCapacity(AValue);
    
    p.FSize := AValue;
    
    if p.FPosition > p.FSize then
    p.FPosition := p.FSize;
  end;
end;
{$endif DLLEXPORT}
procedure TStream.SetSize(AValue: Integer);
begin
  TStream_SetSize(self, AValue);
end;

{$ifdef DLLEXPORT}
procedure TStream_LoadFromStream(p: TStream; Source: TStream); stdcall; export;
begin
  p.SetSize(0);             // Inhalt löschen
  p.Seek(0, soBeginning);   // an Anfang gehen
  p.CopyFrom(Source, Source.Size); // neuen Inhalt lesen
  p.Seek(0, soBeginning);   // wieder zurück
end;
{$endif DLLEXPORT}
procedure TStream.LoadFromStream(Source: TStream);
begin
  TStream_LoadFromStream(self, Source);
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

{$ifdef DLLEXPORT}
procedure TStream_ReAlloc(p: TStream; AValue: Integer); stdcall; export;
begin
  if AValue < p.FSize then
  AValue := p.FSize;

  if AValue = 0 then
  begin
    if p.FBuffer <> nil then
    begin
      FreeMem(p.FBuffer);
      p.FBuffer := nil;
    end;
  end else
  begin
    if p.FBuffer = nil then
    GetMem(p.FBuffer, AValue) else
    ReAllocMemory(p.FBuffer, AValue);
  end;

  p.FCapacity := AValue;
end;
{$endif DLLEXPORT}
procedure TStream.ReAlloc(AValue: Integer);
begin
  TStream_ReAlloc(self, AValue);
end;

{$ifdef DLLEXPORT}
procedure TStream_ReadBuffer(p: TStream; var Buffer; Count: LongInt); stdcall; export;
var
  Pb: PByte;
  BytesRead, Remaining: LongInt;
begin
  if Count <= 0 then
  exit;

  Pb := @Buffer;
  Remaining := Count;

  while Remaining > 0 do
  begin
    BytesRead := p.Read(Pb^, Remaining);
    if BytesRead <= 0 then
    raise EReadError.Create('Fehler beim Lesen aus dem Stream');

    Inc(Pb, BytesRead);
    Dec(Remaining, BytesRead);
  end;
end;
{$endif DLLEXPORT}
procedure TStream.ReadBuffer(var Buffer; Count: LongInt);
begin
  TStream_ReadBuffer(self, Buffer, Count);
end;

{$ifdef DLLEXPORT}
function TStream_Read(p: TStream; var Buffer; Count: Integer): Integer; stdcall; export;
begin
  if p.FPosition >= p.FSize then
  Exit(0);
  
  if p.FPosition + Count > p.FSize then
  p.FPosition := Count + p.FSize;
  
  Move(PByteArray(p.FBuffer)^[p.FPosition], Buffer, Count);
  inc(p.FPosition, Count);
  
  result := Count;
end;
{$endif DLLEXPORT}
function TStream.Read(var Buffer; Count: Integer): Integer;
begin
  result := TStream_Read(self, Buffer, Count);
end;

{$ifdef DLLEXPORT}
function TStream_Write(p: TStream; const Buffer; Count: Integer): Integer; stdcall; export;
var
  NewPos: LongInt;
begin
  NewPos := p.FPosition + Count;
  
  if NewPos > p.FCapacity then
  p.SetCapacity(NewPos * 2); // wächst dynamisch

  Move(Buffer, PByteArray(p.FBuffer)^[p.FPosition], Count);
  p.FPosition := NewPos;
  
  if p.FPosition > p.FSize then
  p.FSize := p.FPosition;
  
  result  := Count;
end;
{$endif DLLEXPORT}
function TStream.Write(const Buffer; Count: Integer): Integer;
begin
  result := TStream_Write(self, Buffer, Count);
end;

{$ifdef DLLEXPORT}
function TStream_Seek(p: TStream; Offset: Integer; Origin: Integer): Integer; stdcall; export;
begin
  case Origin of
    soBeginning: p.FPosition := Offset;
    soCurrent:   p.FPosition := p.FPosition + Offset;
    soEnd:       p.FPosition := p.FSize     + Offset;
    else
    raise Exception.Create('invalid Seek-Offset');
  end;

  if p.FPosition < 0 then
  p.FPosition := 0 else if p.FPosition > p.FSize then
  p.FPosition := p.FSize;

  result    := p.FPosition;
end;
{$endif DLLEXPORT}
function TStream.Seek(Offset: Integer; Origin: Integer): Integer;
begin
  result := TStream_Seek(self, Offset, Origin);
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
{$ifdef DLLEXPORT}
procedure TFileStream_Create(p: TFileStream; AFileName: String; mode: Integer); stdcall; export;
var
  BytesRead: PDWORD;
begin
  p.FFileHandle := CreateFileA(
    PChar(AFileName),       // Dateiname
    GENERIC_READ,           // Zugriffsmodus: lesen
    FILE_SHARE_READ,        // anderen Prozessen lesen erlauben
    nil,                    // Sicherheit
    OPEN_EXISTING,          // nur öffnen, wenn existiert
    FILE_ATTRIBUTE_NORMAL,  // Dateiattribute
    0                       // Template
  );
  
  if p.FFileHandle = INVALID_HANDLE_VALUE then
  begin
    ShowError('file could not be open.');
    Exit;
  end;
  
  // 2. Dateigröße ermitteln
  p.FSize := GetFileSize(p.FFileHandle, nil);
  if p.FSize = INVALID_FILE_SIZE then
  begin
    ShowError('could not get file size.');
    CloseHandle(p.FFileHandle);
    Exit;
  end;
  
  // 3. Speicher allozieren
  GetMem(p.FBuffer, p.FSize);
  
  // 4. Datei einlesen
  if not ReadFile(p.FFileHandle, @p.FBuffer^[0], p.FSize, BytesRead, nil) then
  begin
    ShowError('could not read file: ' +
    SysErrorMessage(GetLastError));
    
    FreeMem(p.FBuffer);
    CloseHandle(p.FFileHandle);
    Exit;
  end;
end;
{$endif DLLEXPORT}
constructor TFileStream.Create(AFileName: String; mode: Integer);
begin
  inherited Create;
  TFileStream_Create(self, AFileName, mode);
end;
{$ifdef DLLEXPORT}
function TFileStream_Seek(p: TFileStream; Offset: Integer; Origin: Integer): Integer; stdcall; export;
  function SeekFile(hFile: THandle; Offset: Integer; MoveMethod: DWORD): Integer;
  var
    NewPos: DWORD;
  begin
    NewPos := SetFilePointer(hFile, Offset, nil, MoveMethod);
    if NewPos = $FFFFFFFF then
    if GetLastError <> 0 then
    raise Exception.CreateFmt('Seek fehlgeschlagen: %s', [SysErrorMessage(GetLastError)]);
    result := NewPos;
  end;
begin
  result := SeekFile(p.FFileHandle, Offset, DWORD(Origin));
end;
{$endif DLLEXPORT}
function TFileStream.Seek(Offset: Integer; Origin: Integer): Integer;
begin
  result := TFileStream_Seek(self, Offset, Origin);
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

{$ifdef DLLEXPORT}
exports
  TStream_ReadBuffer     name 'TStream_ReadBuffer',
  TStream_WriteBuffer    name 'TStream_WriteBuffer',
  TStream_ReAlloc        name 'TStream_ReAlloc',
  TStream_Write          name 'TStream_Write',
  TStream_Read           name 'TStream_Read',
  TStream_SetSize        name 'TStream_SetSize',
  TStream_CopyFrom       name 'TStream_CopyFrom',
  TStream_LoadFromStream name 'TStream_LoadFromStream',
  TStream_SaveToFile     name 'TStream_SaveToFile',
  TStream_ReadFromFile   name 'TStream_ReadFromFile',
  
  TFileStream_Create     name 'TFileStream_Create',
  TFileStream_Seek       name 'TFileStream_Seek'
  ;
{$endif DLLEXPORT}

end.
