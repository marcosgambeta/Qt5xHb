$header

#include "hbclass.ch"

CLASS QGeoSatelliteInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setSatelliteSystem
   METHOD satelliteSystem
   METHOD setSatelliteIdentifier
   METHOD satelliteIdentifier
   METHOD setSignalStrength
   METHOD signalStrength
   METHOD setAttribute
   METHOD attribute
   METHOD removeAttribute
   METHOD hasAttribute

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QGeoSatelliteInfo()
*/
$constructor=5,2,0|new1|

/*
QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
*/
$constructor=5,2,0|new2|const QGeoSatelliteInfo &

//[1]QGeoSatelliteInfo()
//[2]QGeoSatelliteInfo(const QGeoSatelliteInfo &other)

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOSATELLITEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOSATELLITEINFO(1) )
  {
    HB_FUNC_EXEC( QGEOSATELLITEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
void setSatelliteSystem(SatelliteSystem system)
*/
$method=5,2,0|void|setSatelliteSystem|QGeoSatelliteInfo::SatelliteSystem

/*
SatelliteSystem satelliteSystem() const
*/
$method=5,2,0|QGeoSatelliteInfo::SatelliteSystem|satelliteSystem|

/*
void setSatelliteIdentifier(int satId)
*/
$method=5,2,0|void|setSatelliteIdentifier|int

/*
int satelliteIdentifier() const
*/
$method=5,2,0|int|satelliteIdentifier|

/*
void setSignalStrength(int signalStrength)
*/
$method=5,2,0|void|setSignalStrength|int

/*
int signalStrength() const
*/
$method=5,2,0|int|signalStrength|

/*
void setAttribute(Attribute attribute, qreal value)
*/
$method=5,2,0|void|setAttribute|QGeoSatelliteInfo::Attribute,qreal

/*
qreal attribute(Attribute attribute) const
*/
$method=5,2,0|qreal|attribute|QGeoSatelliteInfo::Attribute

/*
void removeAttribute(Attribute attribute)
*/
$method=5,2,0|void|removeAttribute|QGeoSatelliteInfo::Attribute

/*
bool hasAttribute(Attribute attribute) const
*/
$method=5,2,0|bool|hasAttribute|QGeoSatelliteInfo::Attribute

$extraMethods

#pragma ENDDUMP
