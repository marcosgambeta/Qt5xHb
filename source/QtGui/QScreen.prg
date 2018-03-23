/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QRECT
REQUEST QSIZEF
REQUEST QTRANSFORM
REQUEST QPIXMAP
#endif

CLASS QScreen INHERIT QObject

   METHOD delete
   METHOD name
   METHOD depth
   METHOD size
   METHOD geometry
   METHOD physicalSize
   METHOD physicalDotsPerInchX
   METHOD physicalDotsPerInchY
   METHOD physicalDotsPerInch
   METHOD logicalDotsPerInchX
   METHOD logicalDotsPerInchY
   METHOD logicalDotsPerInch
   METHOD devicePixelRatio
   METHOD availableSize
   METHOD availableGeometry
   METHOD virtualSiblings
   METHOD virtualSize
   METHOD virtualGeometry
   METHOD availableVirtualSize
   METHOD availableVirtualGeometry
   METHOD primaryOrientation
   METHOD orientation
   METHOD orientationUpdateMask
   METHOD setOrientationUpdateMask
   METHOD angleBetween
   METHOD transformBetween
   METHOD mapBetween
   METHOD isPortrait
   METHOD isLandscape
   METHOD grabWindow
   METHOD refreshRate

   METHOD onGeometryChanged
   METHOD onPhysicalSizeChanged
   METHOD onPhysicalDotsPerInchChanged
   METHOD onLogicalDotsPerInchChanged
   METHOD onVirtualGeometryChanged
   METHOD onPrimaryOrientationChanged
   METHOD onOrientationChanged
   METHOD onRefreshRateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScreen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScreen>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScreen>
#endif

#include <QPixmap>

HB_FUNC_STATIC( QSCREEN_DELETE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

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
QPlatformScreen *handle() const
*/

/*
QString name() const
*/
HB_FUNC_STATIC( QSCREEN_NAME )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->name () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int depth() const
*/
HB_FUNC_STATIC( QSCREEN_DEPTH )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->depth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize size() const
*/
HB_FUNC_STATIC( QSCREEN_SIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->size () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect geometry() const
*/
HB_FUNC_STATIC( QSCREEN_GEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->geometry () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSizeF physicalSize() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALSIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSizeF * ptr = new QSizeF( obj->physicalSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal physicalDotsPerInchX() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALDOTSPERINCHX )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->physicalDotsPerInchX () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal physicalDotsPerInchY() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALDOTSPERINCHY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->physicalDotsPerInchY () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal physicalDotsPerInch() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALDOTSPERINCH )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->physicalDotsPerInch () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal logicalDotsPerInchX() const
*/
HB_FUNC_STATIC( QSCREEN_LOGICALDOTSPERINCHX )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->logicalDotsPerInchX () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal logicalDotsPerInchY() const
*/
HB_FUNC_STATIC( QSCREEN_LOGICALDOTSPERINCHY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->logicalDotsPerInchY () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal logicalDotsPerInch() const
*/
HB_FUNC_STATIC( QSCREEN_LOGICALDOTSPERINCH )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->logicalDotsPerInch () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal devicePixelRatio() const
*/
HB_FUNC_STATIC( QSCREEN_DEVICEPIXELRATIO )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->devicePixelRatio () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize availableSize() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLESIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->availableSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect availableGeometry() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLEGEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->availableGeometry () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QScreen *> virtualSiblings() const // TODO: implementar m�todo
*/
HB_FUNC_STATIC( QSCREEN_VIRTUALSIBLINGS )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QScreen *> list = obj->virtualSiblings ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSCREEN" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QScreen *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSCREEN", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize virtualSize() const
*/
HB_FUNC_STATIC( QSCREEN_VIRTUALSIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->virtualSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect virtualGeometry() const
*/
HB_FUNC_STATIC( QSCREEN_VIRTUALGEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->virtualGeometry () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize availableVirtualSize() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLEVIRTUALSIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->availableVirtualSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect availableVirtualGeometry() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLEVIRTUALGEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->availableVirtualGeometry () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ScreenOrientation primaryOrientation() const
*/
HB_FUNC_STATIC( QSCREEN_PRIMARYORIENTATION )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->primaryOrientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ScreenOrientation orientation() const
*/
HB_FUNC_STATIC( QSCREEN_ORIENTATION )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ScreenOrientations orientationUpdateMask() const
*/
HB_FUNC_STATIC( QSCREEN_ORIENTATIONUPDATEMASK )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientationUpdateMask () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setOrientationUpdateMask(Qt::ScreenOrientations mask)
*/
HB_FUNC_STATIC( QSCREEN_SETORIENTATIONUPDATEMASK )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOrientationUpdateMask ( (Qt::ScreenOrientations) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int angleBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b) const
*/
HB_FUNC_STATIC( QSCREEN_ANGLEBETWEEN )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      RINT( obj->angleBetween ( (Qt::ScreenOrientation) hb_parni(1), (Qt::ScreenOrientation) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTransform transformBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &target) const
*/
HB_FUNC_STATIC( QSCREEN_TRANSFORMBETWEEN )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQRECT(3) )
    {
      QTransform * ptr = new QTransform( obj->transformBetween ( (Qt::ScreenOrientation) hb_parni(1), (Qt::ScreenOrientation) hb_parni(2), *PQRECT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect mapBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &rect) const
*/
HB_FUNC_STATIC( QSCREEN_MAPBETWEEN )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQRECT(3) )
    {
      QRect * ptr = new QRect( obj->mapBetween ( (Qt::ScreenOrientation) hb_parni(1), (Qt::ScreenOrientation) hb_parni(2), *PQRECT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isPortrait(Qt::ScreenOrientation orientation) const
*/
HB_FUNC_STATIC( QSCREEN_ISPORTRAIT )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isPortrait ( (Qt::ScreenOrientation) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isLandscape(Qt::ScreenOrientation orientation) const
*/
HB_FUNC_STATIC( QSCREEN_ISLANDSCAPE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isLandscape ( (Qt::ScreenOrientation) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap grabWindow(WId window, int x = 0, int y = 0, int w = -1, int h = -1)
*/
HB_FUNC_STATIC( QSCREEN_GRABWINDOW )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,5) && ISPOINTER(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
    {
      QPixmap * ptr = new QPixmap( obj->grabWindow ( (WId) hb_parptr(1), OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal refreshRate() const
*/
HB_FUNC_STATIC( QSCREEN_REFRESHRATE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->refreshRate () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

void QScreenSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSCREEN_ONGEOMETRYCHANGED )
{
  QScreenSlots_connect_signal( "geometryChanged(QRect)", "geometryChanged(QRect)" );
}

HB_FUNC_STATIC( QSCREEN_ONPHYSICALSIZECHANGED )
{
  QScreenSlots_connect_signal( "physicalSizeChanged(QSizeF)", "physicalSizeChanged(QSizeF)" );
}

HB_FUNC_STATIC( QSCREEN_ONPHYSICALDOTSPERINCHCHANGED )
{
  QScreenSlots_connect_signal( "physicalDotsPerInchChanged(qreal)", "physicalDotsPerInchChanged(qreal)" );
}

HB_FUNC_STATIC( QSCREEN_ONLOGICALDOTSPERINCHCHANGED )
{
  QScreenSlots_connect_signal( "logicalDotsPerInchChanged(qreal)", "logicalDotsPerInchChanged(qreal)" );
}

HB_FUNC_STATIC( QSCREEN_ONVIRTUALGEOMETRYCHANGED )
{
  QScreenSlots_connect_signal( "virtualGeometryChanged(QRect)", "virtualGeometryChanged(QRect)" );
}

HB_FUNC_STATIC( QSCREEN_ONPRIMARYORIENTATIONCHANGED )
{
  QScreenSlots_connect_signal( "primaryOrientationChanged(Qt::ScreenOrientation)", "primaryOrientationChanged(Qt::ScreenOrientation)" );
}

HB_FUNC_STATIC( QSCREEN_ONORIENTATIONCHANGED )
{
  QScreenSlots_connect_signal( "orientationChanged(Qt::ScreenOrientation)", "orientationChanged(Qt::ScreenOrientation)" );
}

HB_FUNC_STATIC( QSCREEN_ONREFRESHRATECHANGED )
{
  QScreenSlots_connect_signal( "refreshRateChanged(qreal)", "refreshRateChanged(qreal)" );
}

#pragma ENDDUMP
