// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// all rigths reserved.
//
// This file is part of Windows Error Codes
// ---------------------------------------------------------------------------------------
{$mode delphi}

unit ErrorData;

interface
uses
  {$ifdef DLLENU}   // english
  ErrorDataENU
  {$endif DLLENU}
  {$ifdef DLLDEU}   // german
  ErrorDataDEU
  {$endif DLLDEU}
  ;
implementation

end.
