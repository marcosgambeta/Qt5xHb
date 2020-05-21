/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QNetworkReplySlots.h"

QNetworkReplySlots::QNetworkReplySlots( QObject *parent ) : QObject( parent )
{
}

QNetworkReplySlots::~QNetworkReplySlots()
{
}

void QNetworkReplySlots::downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "downloadProgress(qint64,qint64)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );
    PHB_ITEM pbytesReceived = hb_itemPutNLL( NULL, bytesReceived );
    PHB_ITEM pbytesTotal = hb_itemPutNLL( NULL, bytesTotal );

    hb_vmEvalBlockV( cb, 3, psender, pbytesReceived, pbytesTotal );

    hb_itemRelease( psender );
    hb_itemRelease( pbytesReceived );
    hb_itemRelease( pbytesTotal );
  }
}

void QNetworkReplySlots::error( QNetworkReply::NetworkError code )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "error(QNetworkReply::NetworkError)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );
    PHB_ITEM pcode = hb_itemPutNI( NULL, (int) code );

    hb_vmEvalBlockV( cb, 2, psender, pcode );

    hb_itemRelease( psender );
    hb_itemRelease( pcode );
  }
}

void QNetworkReplySlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QNetworkReplySlots::metaDataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QNetworkReplySlots::uploadProgress( qint64 bytesSent, qint64 bytesTotal )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "uploadProgress(qint64,qint64)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );
    PHB_ITEM pbytesSent = hb_itemPutNLL( NULL, bytesSent );
    PHB_ITEM pbytesTotal = hb_itemPutNLL( NULL, bytesTotal );

    hb_vmEvalBlockV( cb, 3, psender, pbytesSent, pbytesTotal );

    hb_itemRelease( psender );
    hb_itemRelease( pbytesSent );
    hb_itemRelease( pbytesTotal );
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QNetworkReplySlots::encrypted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "encrypted()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

void QNetworkReplySlots::sslErrors( const QList<QSslError> & errors )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "sslErrors(QList<QSslError>)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLERROR" );
    PHB_ITEM perrors = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < errors.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QSslError *) new QSslError( errors [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( perrors, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, perrors );

    hb_itemRelease( psender );
    hb_itemRelease( perrors );
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
void QNetworkReplySlots::preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );
    PHB_ITEM pauthenticator = Signals_return_object( (void *) authenticator, "QSSLPRESHAREDKEYAUTHENTICATOR" );

    hb_vmEvalBlockV( cb, 2, psender, pauthenticator );

    hb_itemRelease( psender );
    hb_itemRelease( pauthenticator );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
void QNetworkReplySlots::redirected( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "redirected(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );
    PHB_ITEM purl = Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QNetworkReplySlots::redirectAllowed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "redirectAllowed()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKREPLY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

void QNetworkReplySlots_connect_signal( const QString & signal, const QString & slot )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QNetworkReplySlots * s = QCoreApplication::instance()->findChild<QNetworkReplySlots *>();

    if( s == NULL )
    {
      s = new QNetworkReplySlots();
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
