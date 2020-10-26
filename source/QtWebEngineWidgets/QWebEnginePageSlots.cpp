/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebEnginePageSlots.h"

QWebEnginePageSlots::QWebEnginePageSlots( QObject *parent ) : QObject( parent )
{
}

QWebEnginePageSlots::~QWebEnginePageSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::loadStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadStarted()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::loadProgress( int progress )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadProgress(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM pprogress = hb_itemPutNI( NULL, progress );

    hb_vmEvalBlockV( cb, 2, psender, pprogress );

    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::loadFinished( bool ok )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadFinished(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM pok = hb_itemPutL( NULL, ok );

    hb_vmEvalBlockV( cb, 2, psender, pok );

    hb_itemRelease( psender );
    hb_itemRelease( pok );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::linkHovered( const QString & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "linkHovered(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM purl = hb_itemPutC( NULL, QSTRINGTOSTRING(url) );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectionChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::geometryChangeRequested( const QRect & geom )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "geometryChangeRequested(QRect)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM pgeom = Qt5xHb::Signals_return_object( (void *) &geom, "QRECT" );

    hb_vmEvalBlockV( cb, 2, psender, pgeom );

    hb_itemRelease( psender );
    hb_itemRelease( pgeom );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::windowCloseRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "windowCloseRequested()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::featurePermissionRequested( const QUrl & securityOrigin, QWebEnginePage::Feature feature )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "featurePermissionRequested(QUrl,QWebEnginePage::Feature)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM psecurityOrigin = Qt5xHb::Signals_return_object( (void *) &securityOrigin, "QURL" );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );

    hb_vmEvalBlockV( cb, 3, psender, psecurityOrigin, pfeature );

    hb_itemRelease( psender );
    hb_itemRelease( psecurityOrigin );
    hb_itemRelease( pfeature );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::featurePermissionRequestCanceled( const QUrl & securityOrigin, QWebEnginePage::Feature feature )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM psecurityOrigin = Qt5xHb::Signals_return_object( (void *) &securityOrigin, "QURL" );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );

    hb_vmEvalBlockV( cb, 3, psender, psecurityOrigin, pfeature );

    hb_itemRelease( psender );
    hb_itemRelease( psecurityOrigin );
    hb_itemRelease( pfeature );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::authenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "authenticationRequired(QUrl,QAuthenticator*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM prequestUrl = Qt5xHb::Signals_return_object( (void *) &requestUrl, "QURL" );
    PHB_ITEM pauthenticator = Qt5xHb::Signals_return_object( (void *) authenticator, "QAUTHENTICATOR" );

    hb_vmEvalBlockV( cb, 3, psender, prequestUrl, pauthenticator );

    hb_itemRelease( psender );
    hb_itemRelease( prequestUrl );
    hb_itemRelease( pauthenticator );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::proxyAuthenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator, const QString & proxyHost )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM prequestUrl = Qt5xHb::Signals_return_object( (void *) &requestUrl, "QURL" );
    PHB_ITEM pauthenticator = Qt5xHb::Signals_return_object( (void *) authenticator, "QAUTHENTICATOR" );
    PHB_ITEM pproxyHost = hb_itemPutC( NULL, QSTRINGTOSTRING(proxyHost) );

    hb_vmEvalBlockV( cb, 4, psender, prequestUrl, pauthenticator, pproxyHost );

    hb_itemRelease( psender );
    hb_itemRelease( prequestUrl );
    hb_itemRelease( pauthenticator );
    hb_itemRelease( pproxyHost );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::titleChanged( const QString & title )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "titleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );

    hb_vmEvalBlockV( cb, 2, psender, ptitle );

    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::urlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "urlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM purl = Qt5xHb::Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEnginePageSlots::iconUrlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "iconUrlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBENGINEPAGE" );
    PHB_ITEM purl = Qt5xHb::Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

void QWebEnginePageSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QWebEnginePageSlots * s = QCoreApplication::instance()->findChild<QWebEnginePageSlots *>();

    if( s == NULL )
    {
      s = new QWebEnginePageSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
