%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCanBusFactory

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=virtual ~QCanBusFactoryV2() (protected)
%% $deleteMethod

$prototype=virtual QCanBusDevice *createDevice(const QString &interfaceName, QString *errorMessage) const = 0

$prototype=virtual QList<QCanBusDeviceInfo> availableDevices(QString *errorMessage) const = 0

#pragma ENDDUMP
