/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintPreviewDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD done
   METHOD setVisible

   METHOD onPaintRequested

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPrintPreviewDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtPrintSupport/QPrintPreviewDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtPrintSupport/QPrintPreviewDialog>
#endif

/*
explicit QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QPrintPreviewDialog_new1()
{
  QPrintPreviewDialog * o = new QPrintPreviewDialog( PQPRINTER(1), OPQWIDGET(2,0), ISNIL(3)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(3) );
  Qt5xHb::returnNewObject( o, false );
}

/*
explicit QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QPrintPreviewDialog_new2()
{
  QPrintPreviewDialog * o = new QPrintPreviewDialog( OPQWIDGET(1,0), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
  Qt5xHb::returnNewObject( o, false );
}

//[1]explicit QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]explicit QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_NEW )
{
  if( ISBETWEEN(1,3) && ISQPRINTER(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QPrintPreviewDialog_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QPrintPreviewDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_DELETE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) Qt5xHb::itemGetPtrStackSelfItem();

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
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_OPEN )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
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
QPrinter * printer ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_PRINTER )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPrinter * ptr = obj->printer();
      Qt5xHb::createReturnClass( ptr, "QPRINTER", false );
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
virtual void done ( int result )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_DONE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->done( PINT(1) );
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
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_SETVISIBLE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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

void QPrintPreviewDialogSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_ONPAINTREQUESTED )
{
  QPrintPreviewDialogSlots_connect_signal( "paintRequested(QPrinter*)", "paintRequested(QPrinter*)" );
}

#pragma ENDDUMP
