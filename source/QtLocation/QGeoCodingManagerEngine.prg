/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManagerEngine INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD geocode1
   METHOD geocode2
   METHOD geocode
   METHOD reverseGeocode
   METHOD setLocale
   METHOD locale

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoCodingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodingManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodingManagerEngine>
#endif
#endif

#include <QLocale>


HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString managerName() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->managerName () ) );
  }
#endif
}


/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->managerVersion () );
  }
#endif
}


/*
virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoAddress * par1 = (QGeoAddress *) _qt5xhb_itemGetPtr(1);
    QGeoShape * par2 = (QGeoShape *) _qt5xhb_itemGetPtr(2);
    QGeoCodeReply * ptr = obj->geocode ( *par1, *par2 );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}

/*
virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * par4 = (QGeoShape *) _qt5xhb_itemGetPtr(4);
    QGeoCodeReply * ptr = obj->geocode ( PQSTRING(1), PINT(2), PINT(3), *par4 );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}


//[1]virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
//[2]virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE )
{
  if( ISNUMPAR(2) && ISQGEOADDRESS(1) && ISQGEOSHAPE(2) )
  {
    HB_FUNC_EXEC( QGEOCODINGMANAGERENGINE_GEOCODE1 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISQGEOSHAPE(4) )
  {
    HB_FUNC_EXEC( QGEOCODINGMANAGERENGINE_GEOCODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_REVERSEGEOCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * par1 = (QGeoCoordinate *) _qt5xhb_itemGetPtr(1);
    QGeoShape * par2 = (QGeoShape *) _qt5xhb_itemGetPtr(2);
    QGeoCodeReply * ptr = obj->reverseGeocode ( *par1, *par2 );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}


/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * par1 = (QLocale *) _qt5xhb_itemGetPtr(1);
    obj->setLocale ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
#endif
}




#pragma ENDDUMP
