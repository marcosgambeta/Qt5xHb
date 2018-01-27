%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|mapped( int arg )
$slot=|mapped( const QString & arg )
$slot=|mapped( QWidget * arg )
$slot=|mapped( QObject * arg )

$beginGroup
$signalMethod=|mapped(int)
$signalMethod=|mapped(QString)
$signalMethod=|mapped(QWidget*)
$signalMethod=|mapped(QObject*)
$endGroup

$endSlotsClass
