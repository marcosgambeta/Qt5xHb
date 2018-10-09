/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMARGINS
REQUEST QMARGINSF
REQUEST QPAGESIZE
REQUEST QRECT
REQUEST QRECTF
#endif

CLASS QPageLayout

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEquivalentTo
   METHOD isValid
   METHOD mode
   METHOD setMode
   METHOD pageSize
   METHOD orientation
   METHOD setOrientation
   METHOD units
   METHOD setUnits
   METHOD setMargins
   METHOD setLeftMargin
   METHOD setRightMargin
   METHOD setTopMargin
   METHOD setBottomMargin
   METHOD margins
   METHOD marginsPoints
   METHOD marginsPixels
   METHOD setMinimumMargins
   METHOD minimumMargins
   METHOD maximumMargins
   METHOD fullRect
   METHOD fullRectPoints
   METHOD fullRectPixels
   METHOD paintRect
   METHOD paintRectPoints
   METHOD paintRectPixels

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPageLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QPageLayout>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QPageLayout>
#endif
#endif

#include <QRect>

/*
QPageLayout()
*/
void QPageLayout_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * o = new QPageLayout ();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
*/

/*
QPageLayout(const QPageLayout &other)
*/
void QPageLayout_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * o = new QPageLayout ( *PQPAGELAYOUT(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

//[1]QPageLayout()
//[2]QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
//[3]QPageLayout(const QPageLayout &other)

HB_FUNC_STATIC( QPAGELAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_new1();
  }
  //else if( ISBETWEEN(3,5) && ISQPAGESIZE(1) && ISNUM(2) && ISQMARGINSF(3) && ISOPTNUM(4) && (ISQMARGINSF(5)||ISNIL(5)) )
  //{
  //  QPageLayout_new2();
  //}
  else if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
  {
    QPageLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAGELAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QPageLayout &other)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
    {
      obj->swap ( *PQPAGELAYOUT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isEquivalentTo(const QPageLayout &other) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ISEQUIVALENTTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
    {
      RBOOL( obj->isEquivalentTo ( *PQPAGELAYOUT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
Mode mode() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->mode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMode(Mode mode)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMode ( (QPageLayout::Mode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPageSize pageSize() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAGESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPageSize * ptr = new QPageSize( obj->pageSize () );
      _qt5xhb_createReturnClass ( ptr, "QPAGESIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
Orientation orientation() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setOrientation(Orientation orientation)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOrientation ( (QPageLayout::Orientation) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Unit units() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_UNITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->units () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setUnits(Unit units)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETUNITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setUnits ( (QPageLayout::Unit) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool setMargins(const QMarginsF &margins)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMARGINSF(1) )
    {
      RBOOL( obj->setMargins ( *PQMARGINSF(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool setLeftMargin(qreal leftMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETLEFTMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->setLeftMargin ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool setRightMargin(qreal rightMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETRIGHTMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->setRightMargin ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool setTopMargin(qreal topMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETTOPMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->setTopMargin ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool setBottomMargin(qreal bottomMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETBOTTOMMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->setBottomMargin ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QMarginsF margins() const
*/
void QPageLayout_margins1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QMarginsF * ptr = new QMarginsF( obj->margins () );
      _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
  }
#endif
}

/*
QMarginsF margins(Unit units) const
*/
void QPageLayout_margins2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QMarginsF * ptr = new QMarginsF( obj->margins ( (QPageLayout::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
  }
#endif
}

//[1]QMarginsF margins() const
//[2]QMarginsF margins(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_MARGINS )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_margins1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_margins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMargins marginsPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINSPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMargins * ptr = new QMargins( obj->marginsPoints () );
      _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QMargins marginsPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINSPIXELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QMargins * ptr = new QMargins( obj->marginsPixels ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMinimumMargins(const QMarginsF &minMargins)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMINIMUMMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMARGINSF(1) )
    {
      obj->setMinimumMargins ( *PQMARGINSF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QMarginsF minimumMargins() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MINIMUMMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMarginsF * ptr = new QMarginsF( obj->minimumMargins () );
      _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QMarginsF maximumMargins() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MAXIMUMMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMarginsF * ptr = new QMarginsF( obj->maximumMargins () );
      _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QRectF fullRect() const
*/
void QPageLayout_fullRect1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRectF * ptr = new QRectF( obj->fullRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
#endif
}

/*
QRectF fullRect(Unit units) const
*/
void QPageLayout_fullRect2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRectF * ptr = new QRectF( obj->fullRect ( (QPageLayout::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
#endif
}

//[1]QRectF fullRect() const
//[2]QRectF fullRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_fullRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_fullRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect fullRectPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECTPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->fullRectPoints () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QRect fullRectPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECTPIXELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QRect * ptr = new QRect( obj->fullRectPixels ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QRectF paintRect() const
*/
void QPageLayout_paintRect1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRectF * ptr = new QRectF( obj->paintRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
#endif
}

/*
QRectF paintRect(Unit units) const
*/
void QPageLayout_paintRect2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRectF * ptr = new QRectF( obj->paintRect ( (QPageLayout::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
#endif
}

//[1]QRectF paintRect() const
//[2]QRectF paintRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_paintRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_paintRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect paintRectPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECTPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->paintRectPoints () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QRect paintRectPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECTPIXELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QRect * ptr = new QRect( obj->paintRectPixels ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

HB_FUNC_STATIC( QPAGELAYOUT_NEWFROM )
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

HB_FUNC_STATIC( QPAGELAYOUT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAGELAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QPAGELAYOUT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAGELAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QPAGELAYOUT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAGELAYOUT_SETSELFDESTRUCTION )
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
