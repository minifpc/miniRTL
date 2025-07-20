// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
unit Stream;

interface
uses
  Windows, Dialogs, Container;

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
  generic TStream<T1> = class(TObject)
  private
    FBuffer     : Array of Byte;
    FTop        : specialize TStream<T1>;
    FBottom     : specialize TStream<T1>;
    FPrev       : specialize TStream<T1>;
    FNext       : specialize TStream<T1>;
    FCount      : Integer;
    FSize       : DWORD;
    FPosition   : Integer;
    FFileHandle : THandle;
  protected
  public
    constructor Create(AValue: T1);
    destructor Destroy; override;
    
    function  ReadBuffer (var   Buffer; Count: Integer): Integer;
    function  Read       (var   Buffer; Count: Integer): Integer;
    
    function  WriteBuffer(const Buffer; Count: Integer): Integer;
    function  Write      (const Buffer; Count: Integer): Integer;
    
    function  Seek(Offset: Integer; Origin: Integer): Integer;
    
    procedure LoadFromStream(Source: TStream);
    
    procedure SaveToFile(const FileName: string);
    procedure SaveToStream(dest: TStream);
    
  published
    property Size     : DWORD   read FSize;
    property Position : Integer read FPosition write FPosition;
  end;
  
  generic TFileStream<T1> = class(specialize TStream<T1>)
  public
    constructor Create;
    destructor Destroy; override;
    
    procedure LoadFromFile(const AFileName: string);
  end;
  
  generic TMemoryStream<T1> = class(specialize TStream<T1>)
  public
    constructor Create;
    destructor Destroy; override;
  end;

  generic TResourceStream<T1> = class(specialize TStream<T1>)
  public
    constructor Create;
    destructor Destroy; override;
  end;

// ---------------------------------------------------------------------------------------

implementation
uses
  StrUtils, Memory, Exceptions, ErrorData;

const
  CopyBufferSize = 8192; // 8 KB

{ TStream }
constructor TStream.Create(AValue: T1);
begin
  inherited Create;

  SetLength(FBuffer, 1);
  FBuffer[0]  := AValue;

  FTop      := self;
  //FTop.Write(AValue, 1);

  FBottom   := self;
  FNext     := nil;
  
  FCount    := 1;
  FSize     := 0;
  FPosition := 0;
end;

destructor TStream.Destroy;
begin
  inherited Destroy;
end;

function TStream.WriteBuffer(const Buffer; Count: Integer): Integer;
begin
end;

procedure TStream.SaveToFile(const FileName: string);
var
  FileStream: specialize TFileStream<T1>;
begin
  //FileStream := specialize TFileStream<T1>.Create(FileName, fmCreate);
  (*try
    
  finally
    FileStream.Free;
  end;*)
end;

procedure TStream.LoadFromStream(Source: TStream);
begin
end;

procedure TStream.SaveToStream(dest: TStream);
begin
end;

function TStream.ReadBuffer(var Buffer; Count: LongInt): Integer;
begin
end;

function TStream.Read(var Buffer; Count: Integer): Integer;
begin
end;

function TStream.Write(const Buffer; Count: Integer): Integer;
begin
end;

function TStream.Seek(Offset: Integer; Origin: Integer): Integer;
begin
end;


{ TMemoryStream }
constructor TMemoryStream.Create;
begin
  inherited Create(Default(T1));
  FBuffer   := nil;
  FSize     := 0;
  FPosition := 0;
end;

destructor TMemoryStream.Destroy;
begin
  inherited Destroy;
end;


{ TFileStream }
constructor TFileStream.Create;
begin
  inherited Create(Default(T1));
end;

destructor TFileStream.Destroy;
begin
  // 5. Aufräumen
  //FreeMem(FBuffer);
  CloseHandle(FFileHandle);
  
  inherited Destroy;
end;

procedure TFileStream.LoadFromFile(const AFileName: String);
var
  BytesRead: PDWORD;
  success: BOOL;
begin
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
  if FSize = DWORD(-1) then //INVALID_FILE_SIZE then
  begin
  writeln('Size: ' + inttostr(FSize));
    Dialogs.ShowError(PChar('could not get file size.'));
    //MessageBoxA(0, PChar('could not get file size.'), PChar('Error'), MB_OK);
    CloseHandle(FFileHandle);
    Exit;
  end;
  writeln('size: ' + inttostr(FSize));
  // 3. Speicher allozieren
  SetLength(FBuffer, FSize + 1);
  writeln('1111');
  // 4. Datei einlesen
  repeat
    success := ReadFile(FFileHandle, @FBuffer, sizeof(FBuffer), BytesRead, nil);
    if not success then
    begin
      ShowErrorA('error on read file: ' +
      SysErrorMessage(GetLastError));
      break;
    end;
  until BytesRead^ = 0;
writeln('2222');
  CloseHandle(FFileHandle);
end;

{ TResourceStream }
constructor TResourceStream.Create;
begin
  inherited Create(Default(T1));
end;

destructor TResourceStream.Destroy;
begin
  inherited Destroy;
end;

end.
