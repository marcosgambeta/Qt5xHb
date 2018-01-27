%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|bufferAvailableChanged( bool available )
$slot=|bufferReady()
$slot=|durationChanged( qint64 duration )
$slot=|error( int error, const QString & errorString )
$slot=|finished()
$slot=|formatChanged( const QAudioFormat & format )
$slot=|positionChanged( qint64 position )
$slot=|sourceChanged()
$slot=|stateChanged( QAudioDecoder::State state )
$endSlotsClass

$signalMethod=|bufferAvailableChanged(bool)
$signalMethod=|bufferReady()
$signalMethod=|durationChanged(qint64)
$signalMethod=|error(int,QString)
$signalMethod=|finished()
$signalMethod=|formatChanged(QAudioFormat)
$signalMethod=|positionChanged(qint64)
$signalMethod=|sourceChanged()
$signalMethod=|stateChanged(QAudioDecoder::State)
