%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|currentIndexChanged( int position )
$slot=|currentMediaChanged( const QMediaContent & content )
$slot=|loadFailed()
$slot=|loaded()
$slot=|mediaAboutToBeInserted( int start, int end )
$slot=|mediaAboutToBeRemoved( int start, int end )
$slot=|mediaChanged( int start, int end )
$slot=|mediaInserted( int start, int end )
$slot=|mediaRemoved( int start, int end )
$slot=|playbackModeChanged( QMediaPlaylist::PlaybackMode mode )
$endSlotsClass

$signalMethod=|currentIndexChanged(int)
$signalMethod=|currentMediaChanged(QMediaContent)
$signalMethod=|loadFailed()
$signalMethod=|loaded()
$signalMethod=|mediaAboutToBeInserted(int,int)
$signalMethod=|mediaAboutToBeRemoved(int,int)
$signalMethod=|mediaChanged(int,int)
$signalMethod=|mediaInserted(int,int)
$signalMethod=|mediaRemoved(int,int)
$signalMethod=|playbackModeChanged(QMediaPlaylist::PlaybackMode)