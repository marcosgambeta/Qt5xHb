%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|anchorClicked( const QUrl & link )
$slot=|backwardAvailable( bool available )
$slot=|forwardAvailable( bool available )
$slot=|highlighted( const QUrl & link )
$slot=|highlighted( const QString & link )
$slot=|historyChanged()
$slot=|sourceChanged( const QUrl & src )
$endSlotsClass

$signalMethod=|anchorClicked(QUrl)
$signalMethod=|backwardAvailable(bool)
$signalMethod=|forwardAvailable(bool)
$beginGroup
$signalMethod=|highlighted(QUrl)
$signalMethod=|highlighted(QString)
$endGroup
$signalMethod=|historyChanged()
$signalMethod=|sourceChanged(QUrl)