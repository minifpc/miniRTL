// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------

type
  HWND    = NativeUInt;
  HANDLE  = NativeUInt;
  HMODULE = NativeUInt;
  lParam  = NativeInt;
  wParam  = NativeInt;
  LPCSTR  = PChar;
  PCSTR   = PChar;
  LPCWSTR = PWideChar;
  PVOID   = Pointer;
  LPVOID  = Pointer;
  WINBOOL = LongBool;
  BOOL    = WINBOOL;
  LPDWORD = PDWORD;
  
const
  MEM_COMMIT     = $00001000;
  MEM_RESERVE    = $00002000;
  MEM_RESET      = $00080000;
  MEM_RESET_UNDO = $1000000;
  
  PAGE_EXECUTE           = $10;
  PAGE_EXECUTE_READ      = $20;
  PAGE_EXECUTE_READWRITE = $40;
  PAGE_EXECUTE_WRITECOPY = $80;
  PAGE_NOACCESS          = $01;
  PAGE_READONLY          = $02;
  PAGE_READWRITE         = $04;
  PAGE_WRITECOPY         = $08;
  
  PAGE_TARGETS_INVALID   = $40000000;
  PAGE_TARGETS_NO_UPDATE = $40000000;
  MEM_DECOMMIT = $00004000;
  MEM_RELEASE  = $00008000;
