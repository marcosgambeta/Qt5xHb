/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebViewSlots.h"

QWebViewSlots::QWebViewSlots(QObject *parent) : QObject(parent)
{
}

QWebViewSlots::~QWebViewSlots()
{
}
void QWebViewSlots::iconChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "iconChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QWebViewSlots::linkClicked( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkClicked(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    PHB_ITEM purl = Signals_return_object( (void *) &url, "QURL" );
    hb_vmEvalBlockV( cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
void QWebViewSlots::loadFinished( bool ok )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadFinished(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    PHB_ITEM pok = hb_itemPutL( NULL, ok );
    hb_vmEvalBlockV( cb, 2, psender, pok );
    hb_itemRelease( psender );
    hb_itemRelease( pok );
  }
}
void QWebViewSlots::loadProgress( int progress )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadProgress(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    PHB_ITEM pprogress = hb_itemPutNI( NULL, progress );
    hb_vmEvalBlockV( cb, 2, psender, pprogress );
    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}
void QWebViewSlots::loadStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadStarted()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QWebViewSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QWebViewSlots::statusBarMessage( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusBarMessage(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}
void QWebViewSlots::titleChanged( const QString & title )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );
    hb_vmEvalBlockV( cb, 2, psender, ptitle );
    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}
void QWebViewSlots::urlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "urlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBVIEW" );
    PHB_ITEM purl = Signals_return_object( (void *) &url, "QURL" );
    hb_vmEvalBlockV( cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}

void QWebViewSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QWebView * obj = (QWebView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QWebViewSlots * s = QCoreApplication::instance()->findChild<QWebViewSlots *>();

    if( s == NULL )
    {
      s = new QWebViewSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
