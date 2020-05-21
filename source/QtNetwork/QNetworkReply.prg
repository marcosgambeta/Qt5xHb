/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QNETWORKACCESSMANAGER
REQUEST QNETWORKREQUEST
REQUEST QSSLCONFIGURATION
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QNetworkReply INHERIT QIODevice

   METHOD delete
   METHOD close
   METHOD isSequential
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD manager
   METHOD operation
   METHOD request
   METHOD error
   METHOD isFinished
   METHOD isRunning
   METHOD url
   METHOD header
   METHOD hasRawHeader
   METHOD rawHeaderList
   METHOD rawHeader
   METHOD attribute
   METHOD sslConfiguration
   METHOD setSslConfiguration
   METHOD abort
   METHOD ignoreSslErrors

   METHOD onDownloadProgress
   METHOD onError
   METHOD onFinished
   METHOD onMetaDataChanged
   METHOD onUploadProgress
   METHOD onEncrypted
   METHOD onSslErrors
   METHOD onPreSharedKeyAuthenticationRequired
   METHOD onRedirected
   METHOD onRedirectAllowed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkReply>
#endif

#include <QtNetwork/QSslConfiguration>

/*
explicit QNetworkReply(QObject *parent = Q_NULLPTR) [protected]
*/

/*
QNetworkReply(QNetworkReplyPrivate &dd, QObject *parent) [protected]
*/

/*
~QNetworkReply()
*/
HB_FUNC_STATIC( QNETWORKREPLY_DELETE )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
virtual void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKREPLY_CLOSE )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
virtual bool isSequential() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISSEQUENTIAL )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential() );
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
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_READBUFFERSIZE )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->readBufferSize() );
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
virtual void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QNETWORKREPLY_SETREADBUFFERSIZE )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setReadBufferSize( PQINT64(1) );
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
QNetworkAccessManager * manager () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_MANAGER )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkAccessManager * ptr = obj->manager();
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKACCESSMANAGER" );
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
QNetworkAccessManager::Operation operation () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_OPERATION )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->operation() );
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
QNetworkRequest request () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_REQUEST )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkRequest * ptr = new QNetworkRequest( obj->request() );
      Qt5xHb::createReturnClass( ptr, "QNETWORKREQUEST", true );
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
NetworkError error () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ERROR )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
bool isFinished () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISFINISHED )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinished() );
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
bool isRunning () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISRUNNING )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRunning() );
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
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_URL )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
QVariant header ( QNetworkRequest::KnownHeaders header ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_HEADER )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->header( (QNetworkRequest::KnownHeaders) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
bool hasRawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_HASRAWHEADER )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      RBOOL( obj->hasRawHeader( *PQBYTEARRAY(1) ) );
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
QList<QByteArray> rawHeaderList () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_RAWHEADERLIST )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QByteArray> list = obj->rawHeaderList();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QByteArray rawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_RAWHEADER )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->rawHeader( *PQBYTEARRAY(1) ) );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
const QList<RawHeaderPair>& rawHeaderPairs() const;
*/

/*
QVariant attribute ( QNetworkRequest::Attribute code ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ATTRIBUTE )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->attribute( (QNetworkRequest::Attribute) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
QSslConfiguration sslConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_SSLCONFIGURATION )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration() );
      Qt5xHb::createReturnClass( ptr, "QSSLCONFIGURATION", true );
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
void setSslConfiguration ( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QNETWORKREPLY_SETSSLCONFIGURATION )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
    {
#endif
      obj->setSslConfiguration( *PQSSLCONFIGURATION(1) );
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
virtual void abort () = 0 (slot)
*/
HB_FUNC_STATIC( QNETWORKREPLY_ABORT )
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->abort();
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
void ignoreSslErrors ( const QList<QSslError> & errors )
*/
void QNetworkReply_ignoreSslErrors1()
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QSslError> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->ignoreSslErrors( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void ignoreSslErrors () (slot)
*/
void QNetworkReply_ignoreSslErrors2()
{
  QNetworkReply * obj = (QNetworkReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ignoreSslErrors();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void ignoreSslErrors ( const QList<QSslError> & errors )
[2]virtual void ignoreSslErrors ()
*/

HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QNetworkReply_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QNetworkReply_ignoreSslErrors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE [protected]
*/

/*
void setOperation(QNetworkAccessManager::Operation operation) [protected]
*/

/*
void setRequest(const QNetworkRequest &request) [protected]
*/

/*
void setError(NetworkError errorCode, const QString &errorString) [protected]
*/

/*
void setFinished(bool) [protected]
*/

/*
void setUrl(const QUrl &url) [protected]
*/

/*
void setHeader(QNetworkRequest::KnownHeaders header, const QVariant &value) [protected]
*/

/*
void setRawHeader(const QByteArray &headerName, const QByteArray &value) [protected]
*/

/*
void setAttribute(QNetworkRequest::Attribute code, const QVariant &value) [protected]
*/

/*
virtual void sslConfigurationImplementation(QSslConfiguration &) const [protected]
*/

/*
virtual void setSslConfigurationImplementation(const QSslConfiguration &) [protected]
*/

/*
virtual void ignoreSslErrorsImplementation(const QList<QSslError> &) [protected]
*/

void QNetworkReplySlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QNETWORKREPLY_ONDOWNLOADPROGRESS )
{
  QNetworkReplySlots_connect_signal( "downloadProgress(qint64,qint64)", "downloadProgress(qint64,qint64)" );
}

HB_FUNC_STATIC( QNETWORKREPLY_ONERROR )
{
  QNetworkReplySlots_connect_signal( "error(QNetworkReply::NetworkError)", "error(QNetworkReply::NetworkError)" );
}

HB_FUNC_STATIC( QNETWORKREPLY_ONFINISHED )
{
  QNetworkReplySlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QNETWORKREPLY_ONMETADATACHANGED )
{
  QNetworkReplySlots_connect_signal( "metaDataChanged()", "metaDataChanged()" );
}

HB_FUNC_STATIC( QNETWORKREPLY_ONUPLOADPROGRESS )
{
  QNetworkReplySlots_connect_signal( "uploadProgress(qint64,qint64)", "uploadProgress(qint64,qint64)" );
}

HB_FUNC_STATIC( QNETWORKREPLY_ONENCRYPTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QNetworkReplySlots_connect_signal( "encrypted()", "encrypted()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QNETWORKREPLY_ONSSLERRORS )
{
  QNetworkReplySlots_connect_signal( "sslErrors(QList<QSslError>)", "sslErrors(QList<QSslError>)" );
}

HB_FUNC_STATIC( QNETWORKREPLY_ONPRESHAREDKEYAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QNetworkReplySlots_connect_signal( "preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)", "preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QNETWORKREPLY_ONREDIRECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QNetworkReplySlots_connect_signal( "redirected(QUrl)", "redirected(QUrl)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QNETWORKREPLY_ONREDIRECTALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkReplySlots_connect_signal( "redirectAllowed()", "redirectAllowed()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
