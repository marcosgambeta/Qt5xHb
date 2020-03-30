/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QMIMEDATA
REQUEST QPIXMAP
#endif

CLASS QClipboard INHERIT QObject

   METHOD clear
   METHOD image
   METHOD mimeData
   METHOD ownsClipboard
   METHOD ownsFindBuffer
   METHOD ownsSelection
   METHOD pixmap
   METHOD setImage
   METHOD setMimeData
   METHOD setPixmap
   METHOD setText
   METHOD supportsFindBuffer
   METHOD supportsSelection
   METHOD text

   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QClipboard
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QClipboard>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QClipboard>
#endif

#include <QtGui/QImage>
#include <QtCore/QMimeData>
#include <QtGui/QPixmap>

/*
void clear ( Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_CLEAR )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      obj->clear( ISNIL(1)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QImage image ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_IMAGE )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QImage * ptr = new QImage( obj->image( ISNIL(1)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
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
const QMimeData * mimeData ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_MIMEDATA )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      const QMimeData * ptr = obj->mimeData( ISNIL(1)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QMIMEDATA" );
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
bool ownsClipboard () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSCLIPBOARD )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->ownsClipboard() );
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
bool ownsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->ownsFindBuffer() );
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
bool ownsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSSELECTION )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->ownsSelection() );
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
QPixmap pixmap ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_PIXMAP )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->pixmap( ISNIL(1)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
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
void setImage ( const QImage & image, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETIMAGE )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
    {
#endif
      obj->setImage( *PQIMAGE(1), ISNIL(2)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMimeData ( QMimeData * src, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETMIMEDATA )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQMIMEDATA(1) && ISOPTNUM(2) )
    {
#endif
      obj->setMimeData( PQMIMEDATA(1), ISNIL(2)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETPIXMAP )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQPIXMAP(1) && ISOPTNUM(2) )
    {
#endif
      obj->setPixmap( *PQPIXMAP(1), ISNIL(2)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETTEXT )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
#endif
      obj->setText( PQSTRING(1), ISNIL(2)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool supportsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->supportsFindBuffer() );
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
bool supportsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSSELECTION )
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->supportsSelection() );
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
QString text ( Mode mode = Clipboard ) const
*/
void QClipboard_text1()
{
  QClipboard * obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->text( ISNIL(1)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(1) ) );
  }
}

/*
QString text ( QString & subtype, Mode mode = Clipboard ) const
*/
void QClipboard_text2 ()
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = PQSTRING(1);
    RQSTRING( obj->text ( par1, ISNIL(2)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(2) ) );
    hb_storc( QSTRINGTOSTRING(par1), 1 );
  }
}

//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QClipboard_text1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QClipboard_text2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

void QClipboardSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCLIPBOARD_ONCHANGED )
{
  QClipboardSlots_connect_signal( "changed(QClipboard::Mode)", "changed(QClipboard::Mode)" );
}

HB_FUNC_STATIC( QCLIPBOARD_ONDATACHANGED )
{
  QClipboardSlots_connect_signal( "dataChanged()", "dataChanged()" );
}

HB_FUNC_STATIC( QCLIPBOARD_ONFINDBUFFERCHANGED )
{
  QClipboardSlots_connect_signal( "findBufferChanged()", "findBufferChanged()" );
}

HB_FUNC_STATIC( QCLIPBOARD_ONSELECTIONCHANGED )
{
  QClipboardSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
}

#pragma ENDDUMP
