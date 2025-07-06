// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode objfpc}{$H+}
unit Graphics;

interface

type
  TColor = (red, greem, blue);
  TPaletteKind = (pkLight, pkDark);

  TCustomPalette = class(TObject)
  private
    FMode: TPaletteKind;
  protected
     procedure setPalette(AMode: TPaletteKind);
  public
    constructor Create(AMode: TPaletteKind);
    constructor Create;
  published
    property Mode: TPaletteKind read FMode write setPalette;
  end;
  
  TPaletteDark = class(TCustomPalette)
  public
    const Window         : array[TColor] of Byte = ( 53,  53,  53);
    const WindowText     : array[TColor] of Byte = (255, 255, 255);
    const Button         : array[TColor] of Byte = (53,   53,  53);
    const BtnFace        : array[TColor] of Byte = ( 45,  45,  40);
    const ButtonText     : array[TColor] of Byte = (255, 255, 255);
    const Base           : array[TColor] of Byte = ( 25,  25,  25);
    const Menu           : array[TColor] of Byte = ( 45,  45,  40);
    const MenuText       : array[TColor] of Byte = (255, 255, 255);
    const ScrollBar      : array[TColor] of Byte = ( 63,  63,  70);
    const Shadow3D       : array[TColor] of Byte = ( 26,  26,  26);
    const Highlight3D    : array[TColor] of Byte = ( 60,  60,  60);
    const AlternateBase  : array[TColor] of Byte = ( 53,  53,  53);
    const ToolTipBase    : array[TColor] of Byte = (255, 255, 255);
    const ToolTipText    : array[TColor] of Byte = (255, 255, 255);
    const Text           : array[TColor] of Byte = (255, 255, 255);
    const BrightText     : array[TColor] of Byte = (255,   0,   0);
    const BorderActive   : array[TColor] of Byte = ( 60,  60,  60);
    const BorderInActive : array[TColor] of Byte = ( 60,  60,  60);
    
    constructor Create;
  end;
  
  TPaletteLight = class(TCustomPalette)
  public
    const Window         : array[TColor] of Byte = (255, 255, 255);  // Weißer Hintergrund
    const WindowText     : array[TColor] of Byte = (  0,   0,   0);  // Schwarzer Text
    const Button         : array[TColor] of Byte = (240, 240, 240);  // Standard Button
    const BtnFace        : array[TColor] of Byte = (240, 240, 240);  // Klassisches Grau
    const ButtonText     : array[TColor] of Byte = (  0,   0,   0);  // Schwarzer Text
    const Base           : array[TColor] of Byte = (255, 255, 255);  // Eingabefelder
    const Menu           : array[TColor] of Byte = (240, 240, 240);  // Menü-Hintergrund
    const MenuText       : array[TColor] of Byte = (  0,   0,   0);  // Schwarzer Menütext
    const ScrollBar      : array[TColor] of Byte = (200, 200, 200);  // Helles Grau
    const Shadow3D       : array[TColor] of Byte = (160, 160, 160);  // Grauer Schatten
    const Highlight3D    : array[TColor] of Byte = (255, 255, 255);  // Hell für Kanten
    const AlternateBase  : array[TColor] of Byte = (245, 245, 245);  // Leicht abgesetzt
    const ToolTipBase    : array[TColor] of Byte = (255, 255, 225);  // Helles Gelb
    const ToolTipText    : array[TColor] of Byte = (  0,   0,   0);  // Schwarzer Text
    const Text           : array[TColor] of Byte = (  0,   0,   0);  // Allgemeiner Text
    const BrightText     : array[TColor] of Byte = (255,   0,   0);  // Fehler/Signal
    const BorderActive   : array[TColor] of Byte = (180, 180, 180);  // Aktivierter Rahmen
    const BorderInActive : array[TColor] of Byte = (220, 220, 220);  // Inaktiver Rahmen
  
    constructor Create;
  end;
  
implementation
uses
  ApplicationUnit;

{ TCustomPalette }
constructor TCustomPalette.Create(AMode: TPaletteKind);
begin
  inherited Create;
  setPalette(AMode);
end;

constructor TCustomPalette.Create;
begin
  inherited Create;
  setPalette(pkLight);  // default is light
end;

procedure TCustomPalette.setPalette(AMode: TPaletteKind);
begin
  //if AMode = pkLight then
  //Application.Palette := TPaletteLight.Create else
  //Application.Palette := TPaletteDark .Create ;
  
  FMode := AMode;
end;

{ TPaletteDark }
constructor TPaletteDark.Create;
begin
  inherited Create;
  FMode := pkDark;
end;


{ TPaletteLight }
constructor TPaletteLight.Create;
begin
  inherited Create;
  FMode := pkLight;
end;

end.
