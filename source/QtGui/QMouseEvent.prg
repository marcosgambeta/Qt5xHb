/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QMouseEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD button
   METHOD buttons
   METHOD globalX
   METHOD globalY
   METHOD localPos
   METHOD screenPos
   METHOD windowPos
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMouseEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QMouseEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QMouseEvent>
#endif

/*
QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
void QMouseEvent_new1()
{
  QMouseEvent * o = new QMouseEvent( (QEvent::Type) hb_parni(1), *PQPOINTF(2), (Qt::MouseButton) hb_parni(3), (Qt::MouseButtons) hb_parni(4), (Qt::KeyboardModifiers) hb_parni(5) );
  Qt5xHb::returnNewObject( o, false );
}

/*
QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
void QMouseEvent_new2()
{
  QMouseEvent * o = new QMouseEvent( (QEvent::Type) hb_parni(1), *PQPOINTF(2), *PQPOINTF(3), (Qt::MouseButton) hb_parni(4), (Qt::MouseButtons) hb_parni(5), (Qt::KeyboardModifiers) hb_parni(6) );
  Qt5xHb::returnNewObject( o, false );
}

/*
QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
void QMouseEvent_new3()
{
  QMouseEvent * o = new QMouseEvent( (QEvent::Type) hb_parni(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4), (Qt::MouseButton) hb_parni(5), (Qt::MouseButtons) hb_parni(6), (Qt::KeyboardModifiers) hb_parni(7) );
  Qt5xHb::returnNewObject( o, false );
}

//[1]QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[2]QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[3]QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QMouseEvent_new1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMouseEvent_new2();
  }
  else if( ISNUMPAR(7) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) )
  {
    QMouseEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOUSEEVENT_DELETE )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

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
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTON )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->button() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTONS )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->buttons() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int globalX () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_GLOBALX )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalX() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int globalY () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_GLOBALY )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalY() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QPointF & localPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_LOCALPOS )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->localPos();
      Qt5xHb::createReturnClass( ptr, "QPOINTF", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QPointF & screenPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_SCREENPOS )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->screenPos();
      Qt5xHb::createReturnClass( ptr, "QPOINTF", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QPointF & windowPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_WINDOWPOS )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->windowPos();
      Qt5xHb::createReturnClass( ptr, "QPOINTF", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int x () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_X )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->x() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int y () const
*/
HB_FUNC_STATIC( QMOUSEEVENT_Y )
{
  QMouseEvent * obj = (QMouseEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->y() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
