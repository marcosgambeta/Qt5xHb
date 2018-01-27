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
$slot=|typeChanged( QDnsLookup::Type type )

$signalMethod=|finished()
$signalMethod=|nameChanged(QString)
$signalMethod=|typeChanged(QDnsLookup::Type)

$endSlotsClass
