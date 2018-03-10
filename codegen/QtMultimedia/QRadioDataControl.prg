%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QRadioDataControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD error
   METHOD errorString
   METHOD isAlternativeFrequenciesEnabled
   METHOD programType
   METHOD programTypeName
   METHOD radioText
   METHOD setAlternativeFrequenciesEnabled
   METHOD stationId
   METHOD stationName

   METHOD onAlternativeFrequenciesEnabledChanged
   METHOD onError
   METHOD onProgramTypeChanged
   METHOD onProgramTypeNameChanged
   METHOD onRadioTextChanged
   METHOD onStationIdChanged
   METHOD onStationNameChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QRadioDataControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QRadioDataControl()
$deleteMethod

$prototype=virtual QString stationId() const = 0
$virtualMethod=|QString|stationId|

$prototype=virtual QRadioData::ProgramType programType() const = 0
$virtualMethod=|QRadioData::ProgramType|programType|

$prototype=virtual QString programTypeName() const = 0
$virtualMethod=|QString|programTypeName|

$prototype=virtual QString stationName() const = 0
$virtualMethod=|QString|stationName|

$prototype=virtual QString radioText() const = 0
$virtualMethod=|QString|radioText|

$prototype=virtual void setAlternativeFrequenciesEnabled(bool enabled) = 0
$virtualMethod=|void|setAlternativeFrequenciesEnabled|bool

$prototype=virtual bool isAlternativeFrequenciesEnabled() const = 0
$virtualMethod=|bool|isAlternativeFrequenciesEnabled|

$prototype=virtual QRadioData::Error error() const = 0
$virtualMethod=|QRadioData::Error|error|

$prototype=virtual QString errorString() const = 0
$virtualMethod=|QString|errorString|

$beginSignals
$signalMethod=|stationIdChanged(QString)
$signalMethod=|programTypeChanged(QRadioData::ProgramType)
$signalMethod=|programTypeNameChanged(QString)
$signalMethod=|stationNameChanged(QString)
$signalMethod=|radioTextChanged(QString)
$signalMethod=|alternativeFrequenciesEnabledChanged(bool)
$signalMethod=|error(QRadioData::Error)
$endSignals

#pragma ENDDUMP
