/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSslSocketSlots.h"


static SlotsQSslSocket * s = NULL;

SlotsQSslSocket::SlotsQSslSocket(QObject *parent) : QObject(parent)
{
}

SlotsQSslSocket::~SlotsQSslSocket()
{
}

void SlotsQSslSocket::encrypted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "encrypted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSslSocket::encryptedBytesWritten ( qint64 written )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "encryptedBytesWritten(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwritten = hb_itemPutNI( NULL, written );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwritten );
    hb_itemRelease( psender );
    hb_itemRelease( pwritten );
  }
}

void SlotsQSslSocket::modeChanged ( QSslSocket::SslMode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modeChanged(QSslSocket::SslMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQSslSocket::peerVerifyError ( const QSslError & error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "peerVerifyError(QSslError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutPtr( NULL, (QSslError *) &error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQSslSocket::sslErrors ( const QList<QSslError> & errors )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sslErrors(QList<QSslError>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSSLERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QSSLERROR" );
    #endif
    PHB_ITEM perrors = hb_itemArrayNew(0);
    int i;
    for(i=0;i<errors.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QSslError *) new QSslError ( errors [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( perrors, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perrors );
    hb_itemRelease( psender );
    hb_itemRelease( perrors );
  }
}

HB_FUNC( QSSLSOCKET_ONENCRYPTED )
{
  if( s == NULL )
  {
    s = new SlotsQSslSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "encrypted()", "encrypted()" ) );
}

HB_FUNC( QSSLSOCKET_ONENCRYPTEDBYTESWRITTEN )
{
  if( s == NULL )
  {
    s = new SlotsQSslSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "encryptedBytesWritten(qint64)", "encryptedBytesWritten(qint64)" ) );
}

HB_FUNC( QSSLSOCKET_ONMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSslSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "modeChanged(QSslSocket::SslMode)", "modeChanged(QSslSocket::SslMode)" ) );
}

HB_FUNC( QSSLSOCKET_ONPEERVERIFYERROR )
{
  if( s == NULL )
  {
    s = new SlotsQSslSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "peerVerifyError(QSslError)", "peerVerifyError(QSslError)" ) );
}

HB_FUNC( QSSLSOCKET_ONSSLERRORS )
{
  if( s == NULL )
  {
    s = new SlotsQSslSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sslErrors(QList<QSslError>)", "sslErrors(QList<QSslError>)" ) );
}
