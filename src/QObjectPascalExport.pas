// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
unit QObjectPascalExport;

interface
uses SysUtils;

type
  (**
   * \class   QObject
   * \brief   The QObject class is the base class of all Qt objects
   * \details QObject is the heart of the Qt Object Model.
   *          The central feature in this model is a very powerful mechanism for seamless
   *          object communication called signals and slots.
   *          You can connect a signal to a slot with connect() and destroy the connection
   *          with disconnect(). To avoid never ending notification loops you can temporarily
   *          block signals with blockSignals(). The protected functions connectNotify() and
   *          disconnectNotify() make it possible to track connections.
   *)
  QObject = class
  public
    (**
     * \brief this is the CTOR of class QObject
     *)
    constructor Create;
    
    (**
     * \brief This is the DTOR of class QObject
     *)
    destructor Destroy;
    
    (**
     * \brief This is a member of QObject
     *)
    procedure test;
  end;
  
implementation

constructor QObject.Create;
begin
end;

destructor QObject.Destroy;
begin
end;

procedure QObject.test;
begin
end;

end.
