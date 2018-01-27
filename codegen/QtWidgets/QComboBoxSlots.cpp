%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|activated( int index )
$slot=|activated( const QString & text )
$slot=|currentIndexChanged( int index )
$slot=|currentIndexChanged( const QString & text )
$slot=|editTextChanged( const QString & text )
$slot=|highlighted( int index )
$slot=|highlighted( const QString & text )

$beginGroup
$signalMethod=|activated(int)
$signalMethod=|activated(QString)
$endGroup
$beginGroup
$signalMethod=|currentIndexChanged(int)
$signalMethod=|currentIndexChanged(QString)
$endGroup
$signalMethod=|editTextChanged(QString)
$beginGroup
$signalMethod=|highlighted(int)
$signalMethod=|highlighted(QString)
$endGroup

$endSlotsClass
