%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void finished();
$signal=|void frameChanged( int frame );
$signal=|void stateChanged( QTimeLine::State newState );
$signal=|void valueChanged( qreal value );
$endSlotsClass