/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEPAGE
REQUEST QWEBENGINEHISTORY
REQUEST QURL
REQUEST QACTION
REQUEST QSIZE
#endif

CLASS QWebEngineView INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD load
   METHOD setHtml
   METHOD setContent
   METHOD history
   METHOD title
   METHOD url
   METHOD setUrl
   METHOD iconUrl
   METHOD hasSelection
   METHOD selectedText
   METHOD pageAction
   METHOD triggerPageAction
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD sizeHint
   METHOD stop
   METHOD back
   METHOD forward
   METHOD reload

   METHOD onLoadStarted
   METHOD onLoadProgress
   METHOD onLoadFinished
   METHOD onTitleChanged
   METHOD onSelectionChanged
   METHOD onUrlChanged
   METHOD onIconUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEngineView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineView>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineView>
#endif
#endif

#include <QAction>

/*
explicit QWebEngineView(QWidget* parent = 0)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QWebEngineView * o = new QWebEngineView ( OPQWIDGET(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

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
QWebEnginePage* page() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_PAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebEnginePage * ptr = obj->page ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QWEBENGINEPAGE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPage(QWebEnginePage* page)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETPAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWEBENGINEPAGE(1) )
    {
      obj->setPage ( PQWEBENGINEPAGE(1) );
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
void load(const QUrl& url)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_LOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->load ( *PQURL(1) );
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
void setHtml(const QString& html, const QUrl& baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETHTML )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
    {
      obj->setHtml ( PQSTRING(1), ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2) );
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
void setContent(const QByteArray& data, const QString& mimeType = QString(), const QUrl& baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && ISOPTCHAR(2) && (ISQURL(3)||ISNIL(3)) )
    {
      obj->setContent ( *PQBYTEARRAY(1), OPQSTRING(2,QString()), ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3) );
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
QWebEngineHistory* history() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_HISTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebEngineHistory * ptr = obj->history ();
      _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORY", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QString title() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->title () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->url () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->setUrl ( *PQURL(1) );
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
QUrl iconUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_ICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->iconUrl () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool hasSelection() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_HASSELECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasSelection () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QString selectedText() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SELECTEDTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->selectedText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QAction* pageAction(QWebEnginePage::WebAction action) const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_PAGEACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_ACTION
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QAction * ptr = obj->pageAction ( (QWebEnginePage::WebAction) hb_parni(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
#endif
}

/*
void triggerPageAction(QWebEnginePage::WebAction action, bool checked = false)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_TRIGGERPAGEACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
      obj->triggerPageAction ( (QWebEnginePage::WebAction) hb_parni(1), OPBOOL(2,false) );
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
qreal zoomFactor() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_ZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->zoomFactor () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setZoomFactor(qreal factor)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setZoomFactor ( PQREAL(1) );
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
void findText(const QString &subString, QWebEnginePage::FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
*/

/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SIZEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void stop()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
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
void back()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_BACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->back ();
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
void forward()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_FORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->forward ();
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
void reload()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_RELOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->reload ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QWebEngineViewSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWEBENGINEVIEW_ONLOADSTARTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "loadStarted()", "loadStarted()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONLOADPROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "loadProgress(int)", "loadProgress(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONLOADFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "loadFinished(bool)", "loadFinished(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONTITLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "titleChanged(QString)", "titleChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONSELECTIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "urlChanged(QUrl)", "urlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONICONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "iconUrlChanged(QUrl)", "iconUrlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}


#pragma ENDDUMP
