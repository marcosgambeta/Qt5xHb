%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|finished()
$slot=|nameChanged( const QString & name )
$slot=|nameserverChanged( const QHostAddress & nameserver )
$slot=|typeChanged( QDnsLookup::Type type )
$endSlotsClass

$signalMethod=|finished()
$signalMethod=|nameChanged(QString)
$signalMethod=|nameserverChanged(QHostAddress)
$signalMethod=|typeChanged(QDnsLookup::Type)