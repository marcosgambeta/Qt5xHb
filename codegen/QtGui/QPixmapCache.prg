$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QPixmapCache

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD cacheLimit
   METHOD setCacheLimit
   METHOD find1
   METHOD find2
   METHOD find3
   METHOD find
   METHOD insert1
   METHOD insert
   METHOD remove1
   METHOD remove
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
static int cacheLimit()
*/
HB_FUNC_STATIC( QPIXMAPCACHE_CACHELIMIT )
{
  RINT( QPixmapCache::cacheLimit () );
}

/*
static void setCacheLimit(int)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_SETCACHELIMIT )
{
  QPixmapCache::setCacheLimit ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QPixmap *find(const QString &key)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_FIND1 )
{
  QPixmap * ptr = QPixmapCache::find ( PQSTRING(1) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP" );
}

/*
static bool find(const QString &key, QPixmap &pixmap)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_FIND2 )
{
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  RBOOL( QPixmapCache::find ( PQSTRING(1), *par2 ) );
}

/*
static bool find(const QString &key, QPixmap *pixmap)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_FIND3 )
{
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  RBOOL( QPixmapCache::find ( PQSTRING(1), par2 ) );
}

//[1]static QPixmap *find(const QString &key)
//[2]static bool find(const QString &key, QPixmap &pixmap)
//[3]static bool find(const QString &key, QPixmap *pixmap)
//[4]static bool find(const Key &key, QPixmap *pixmap)

HB_FUNC_STATIC( QPIXMAPCACHE_FIND )
{
  // TODO: implementar
}

/*
static bool insert(const QString &key, const QPixmap &pixmap)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_INSERT1 )
{
  RBOOL( QPixmapCache::insert ( PQSTRING(1), *PQPIXMAP(2) ) );
}

//[1]static bool insert(const QString &key, const QPixmap &pixmap)
//[2]static Key insert(const QPixmap &pixmap)

HB_FUNC_STATIC( QPIXMAPCACHE_INSERT )
{
  // TODO: implementar
}

/*
static void remove(const QString &key)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_REMOVE1 )
{
  QPixmapCache::remove ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]static void remove(const QString &key)
//[2]static void remove(const Key &key)

HB_FUNC_STATIC( QPIXMAPCACHE_REMOVE )
{
  // TODO: implementar
}

/*
static void clear()
*/
HB_FUNC_STATIC( QPIXMAPCACHE_CLEAR )
{
  QPixmapCache::clear ();
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
