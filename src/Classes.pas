// ---------------------------------------------------------------------------------------
// Copyright(c) 2025 @paule32 and @fibonacci
// ---------------------------------------------------------------------------------------
{$mode delphi}
/// <file>
/// Classes
unit Classes;

interface
uses SysUtils;

type
  // -----------------------------------------------------------------------------------------------
  /// <class>
  /// <name>QObject/name>
  /// <parent>
  /// </parent>
  /// <brief>
  ///   The QObject class is the base class of all Qt objects
  /// </brief>
  /// <details>
  ///   QObject is the heart of the Qt Object Model.
  ///   The central feature in this model is a very powerful mechanism for seamless
  ///   object communication called signals and slots.
  ///   You can connect a signal to a slot with connect() and destroy the connection
  ///   with disconnect(). To avoid never ending notification loops you can temporarily
  ///   block signals with blockSignals(). The protected functions connectNotify() and
  ///   disconnectNotify() make it possible to track connections.
  /// </details>
  // -----------------------------------------------------------------------------------------------
  QObject = class
  public
    /// <constructor>
    /// <brief>
    ///   This is the Pascal default constructor for class QObject.
    /// </brief>
    /// </constructor>
    constructor Create;
    
    /// <destructor>
    /// <brief>
    ///   This ist the Pascal destructor for class QObject.
    /// </brief>
    /// </destructor>
    destructor Destroy;
    
    (**
     * \brief This is a member of QObject
     *)
    procedure test;
  end;
  /// </class>
  
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
/// </file>
