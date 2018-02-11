%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|void connected();
$signal=5,2,0|void disconnected();
$signal=5,2,0|void error( QBluetoothSocket::SocketError error );
$signal=5,2,0|void stateChanged( QBluetoothSocket::SocketState state );
$endSlotsClass