%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|void deviceDiscovered( const QBluetoothDeviceInfo & info );
$signal=5,2,0|void finished();
$signal=5,2,0|void error( QBluetoothDeviceDiscoveryAgent::Error error );
$signal=5,2,0|void canceled();
$endSlotsClass