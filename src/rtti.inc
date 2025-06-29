// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 & @fibonacci
// ---------------------------------------------------------------------------------------

{$if defined(codeh) and defined(codei)}
{$FATAL interface and implementation at the same time not possible}
{$endif}

{$ifdef codeh}

type
  PTypeKind = ^TTypeKind;
  TTypeKind = (tkUnknown, tkInteger, tkChar, tkEnumeration, tkFloat, tkSet,
    tkMethod, tkSString, tkLString, tkAString, tkWString, tkVariant, tkArray,
    tkRecord, tkInterface, tkClass, tkObject, tkWChar, tkBool, tkInt64, tkQWord,
    tkDynArray, tkInterfaceRaw, tkProcVar, tkUString, tkUChar, tkHelper, tkFile,
    tkClassRef, tkPointer);

procedure fpc_initialize(data, typeinfo: pointer); compilerproc;
procedure fpc_finalize(data, typeinfo: pointer); compilerproc;
procedure fpc_addref(data, typeinfo: pointer); compilerproc;
procedure fpc_decref(data, typeinfo: pointer); compilerproc;
//procedure fpc_initialize_array(data, typeinfo: pointer; count: sizeint); compilerproc;
//procedure fpc_finalize_array(data, typeinfo: pointer; count: sizeint); compilerproc;
//procedure fpc_addref_array(data, typeinfo: pointer; count: sizeint); compilerproc;
//procedure fpc_decref_array(data, typeinfo: pointer; count: sizeint); compilerproc;
//function fpc_copy(src, dest, typeinfo: pointer): sizeint; compilerproc;
//procedure fpc_copy_proc(src, dest, typeinfo: pointer); compilerproc; inline;

{$endif}

{$ifdef codei}

procedure fpc_initialize(data, typeinfo: pointer); compilerproc; [public, alias: 'FPC_INITIALIZE'];
begin
  //writeln('fpc_initialize');
end;

procedure fpc_finalize(data, typeinfo: pointer); compilerproc; [public, alias: 'FPC_FINALIZE'];
begin
  //writeln('fpc_finalize');

  case PTypeKind(typeinfo)^ of
    tkInterface: writeln('decrease refcount of interfaced object');
  end;
end;

procedure fpc_addref(data, typeinfo: pointer); compilerproc; [public, alias: 'FPC_ADDREF'];
begin
  //writeln('fpc_addref');
end;

procedure fpc_decref(data, typeinfo: pointer); compilerproc; [public, alias: 'FPC_DECREF'];
begin
  //writeln('fpc_decref');
end;

{$endif}

