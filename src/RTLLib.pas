// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$define DLLEXPORT}
{$undef  DLLIMPORT}

{$mode delphi}
{$WARN IMPLICIT_STRING_CAST_LOSS OFF}
library RTLLib;

uses global, RTLUnit;

begin
  QApplication_Counter := 0;
end.
