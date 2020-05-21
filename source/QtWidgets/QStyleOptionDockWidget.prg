/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionDockWidget INHERIT QStyleOption

   METHOD new
   METHOD title
   METHOD setTitle
   METHOD closable
   METHOD SetClosable
   METHOD movable
   METHOD setMovable
   METHOD floatable
   METHOD setFloatable
   METHOD verticalTitleBar
   METHOD setVerticalTitleBar

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionDockWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionDockWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionDockWidget>
#endif

/*
QStyleOptionDockWidget()
*/
void QStyleOptionDockWidget_new1()
{
  QStyleOptionDockWidget * obj = new QStyleOptionDockWidget();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionDockWidget(const QStyleOptionDockWidget &other)
*/
void QStyleOptionDockWidget_new2()
{
  QStyleOptionDockWidget * obj = new QStyleOptionDockWidget( *PQSTYLEOPTIONDOCKWIDGET(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionDockWidget(int version) [protected]
*/

/*
[1]QStyleOptionDockWidget()
[2]QStyleOptionDockWidget(const QStyleOptionDockWidget &other)
[3]QStyleOptionDockWidget(int version) [protected]
*/

HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionDockWidget_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONDOCKWIDGET(1) )
  {
    QStyleOptionDockWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString title
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_TITLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->title );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETTITLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->title= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool closable
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_CLOSABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->closable );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETCLOSABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->closable= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool movable
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_MOVABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->movable );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETMOVABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->movable= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool floatable
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_FLOATABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->floatable );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETFLOATABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->floatable= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool verticalTitleBar
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_VERTICALTITLEBAR )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->verticalTitleBar );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETVERTICALTITLEBAR )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->verticalTitleBar= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
