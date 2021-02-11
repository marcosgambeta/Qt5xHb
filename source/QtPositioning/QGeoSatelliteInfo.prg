/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QGeoSatelliteInfo

   DATA pointer
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject() CLASS QGeoSatelliteInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoSatelliteInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoSatelliteInfo>
#endif
#endif

/*
QGeoSatelliteInfo()
*/
void QGeoSatelliteInfo_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = new QGeoSatelliteInfo();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
*/
void QGeoSatelliteInfo_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = new QGeoSatelliteInfo( *PQGEOSATELLITEINFO(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoSatelliteInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOSATELLITEINFO(1) )
  {
    QGeoSatelliteInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setSatelliteSystem(SatelliteSystem system)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSATELLITESYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSatelliteSystem( (QGeoSatelliteInfo::SatelliteSystem) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
SatelliteSystem satelliteSystem() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SATELLITESYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->satelliteSystem() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setSatelliteIdentifier(int satId)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSATELLITEIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSatelliteIdentifier( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int satelliteIdentifier() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SATELLITEIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->satelliteIdentifier() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setSignalStrength(int signalStrength)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSIGNALSTRENGTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSignalStrength( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int signalStrength() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SIGNALSTRENGTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->signalStrength() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setAttribute(Attribute attribute, qreal value)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setAttribute( (QGeoSatelliteInfo::Attribute) hb_parni(1), PQREAL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal attribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->attribute( (QGeoSatelliteInfo::Attribute) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void removeAttribute(Attribute attribute)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_REMOVEATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->removeAttribute( (QGeoSatelliteInfo::Attribute) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool hasAttribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_HASATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->hasAttribute( (QGeoSatelliteInfo::Attribute) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOSATELLITEINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOSATELLITEINFO_NEWFROM );
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
