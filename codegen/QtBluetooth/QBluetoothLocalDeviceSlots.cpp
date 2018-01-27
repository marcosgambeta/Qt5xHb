%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=5,2,0|hostModeStateChanged( QBluetoothLocalDevice::HostMode state )
$slot=5,2,0|pairingFinished( const QBluetoothAddress & address, QBluetoothLocalDevice::Pairing pairing )
$slot=5,2,0|pairingDisplayPinCode( const QBluetoothAddress & address, QString pin )
$slot=5,2,0|pairingDisplayConfirmation( const QBluetoothAddress & address, QString pin )
$slot=5,2,0|error( QBluetoothLocalDevice::Error error )

$signalMethod=5,2,0|hostModeStateChanged(QBluetoothLocalDevice::HostMode)
$signalMethod=5,2,0|pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)
$signalMethod=5,2,0|pairingDisplayPinCode(QBluetoothAddress,QString)
$signalMethod=5,2,0|pairingDisplayConfirmation(QBluetoothAddress,QString)
$signalMethod=5,2,0|error(QBluetoothLocalDevice::Error)

$endSlotsClass
