%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void metaDataChanged();
$signal=|void metaDataChanged( const QString & key, const QVariant & value );
$signal=|void writableChanged( bool writable );
$signal=|void metaDataAvailableChanged( bool available );
$endSlotsClass