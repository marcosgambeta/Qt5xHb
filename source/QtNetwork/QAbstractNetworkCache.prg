/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QAbstractNetworkCache INHERIT QObject

   METHOD delete
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractNetworkCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractNetworkCache>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractNetworkCache>
#endif

HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DELETE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
virtual qint64 cacheSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CACHESIZE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->cacheSize () );
  }
}


/*
virtual QIODevice * data ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->data ( *PQURL(1) );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual void insert ( QIODevice * device ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_INSERT )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insert ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_METADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData ( *PQURL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_PREPARE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->prepare ( *PQNETWORKCACHEMETADATA(1) );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual bool remove ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_REMOVE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->remove ( *PQURL(1) ) );
  }
}


/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_UPDATEMETADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateMetaData ( *PQNETWORKCACHEMETADATA(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void clear () = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CLEAR )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
