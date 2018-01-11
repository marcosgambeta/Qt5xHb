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
REQUEST QWIDGET
REQUEST QSCROLLBAR
#endif

CLASS QAbstractScrollArea INHERIT QFrame

   METHOD delete
   METHOD addScrollBarWidget
   METHOD horizontalScrollBarPolicy
   METHOD setHorizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD horizontalScrollBar
   METHOD setHorizontalScrollBar
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD setVerticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD setVerticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setupViewport
   METHOD sizeAdjustPolicy
   METHOD setSizeAdjustPolicy

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractScrollArea
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractScrollArea>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractScrollArea>
#endif

HB_FUNC_STATIC( QABSTRACTSCROLLAREA_DELETE )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

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
void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_ADDSCROLLBARWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
    {
      obj->addScrollBarWidget ( PQWIDGET(1), (Qt::Alignment) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ScrollBarPolicy horizontalScrollBarPolicy () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_HORIZONTALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->horizontalScrollBarPolicy () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETHORIZONTALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHorizontalScrollBarPolicy ( (Qt::ScrollBarPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize maximumViewportSize () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_MAXIMUMVIEWPORTSIZE )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->maximumViewportSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SCROLLBARWIDGETS )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QWidgetList list = obj->scrollBarWidgets ( (Qt::Alignment) hb_parni(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QWIDGET" );
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
          hb_itemPutPtr( pItem, (QWidget *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
          hb_itemRelease( pItem );
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
QWidget * cornerWidget () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_CORNERWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->cornerWidget ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCornerWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETCORNERWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setCornerWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScrollBar * horizontalScrollBar () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_HORIZONTALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScrollBar * ptr = obj->horizontalScrollBar ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QSCROLLBAR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHorizontalScrollBar ( QScrollBar * scrollBar )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETHORIZONTALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSCROLLBAR(1) )
    {
      obj->setHorizontalScrollBar ( PQSCROLLBAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewport ( QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setViewport ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScrollBar * verticalScrollBar () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VERTICALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScrollBar * ptr = obj->verticalScrollBar ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QSCROLLBAR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setVerticalScrollBar ( QScrollBar * scrollBar )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVERTICALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSCROLLBAR(1) )
    {
      obj->setVerticalScrollBar ( PQSCROLLBAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ScrollBarPolicy verticalScrollBarPolicy () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VERTICALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->verticalScrollBarPolicy () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVERTICALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVerticalScrollBarPolicy ( (Qt::ScrollBarPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * viewport () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->viewport ();
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_MINIMUMSIZEHINT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->minimumSizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SIZEHINT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setupViewport(QWidget *viewport)
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETUPVIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setupViewport ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SizeAdjustPolicy sizeAdjustPolicy() const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SIZEADJUSTPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->sizeAdjustPolicy () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSizeAdjustPolicy(SizeAdjustPolicy policy)
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETSIZEADJUSTPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSizeAdjustPolicy ( (QAbstractScrollArea::SizeAdjustPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
