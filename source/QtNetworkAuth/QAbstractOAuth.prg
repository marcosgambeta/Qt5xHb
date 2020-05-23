/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTOAUTHREPLYHANDLER
REQUEST QNETWORKACCESSMANAGER
REQUEST QURL
#endif

CLASS QAbstractOAuth INHERIT QObject

   METHOD delete
   METHOD clientIdentifier
   METHOD setClientIdentifier
   METHOD token
   METHOD setToken
   METHOD authorizationUrl
   METHOD setAuthorizationUrl
   METHOD setContentType
   METHOD networkAccessManager
   METHOD setNetworkAccessManager
   METHOD replyHandler
   METHOD setReplyHandler
   METHOD grant

   METHOD onAuthorizationUrlChanged
   METHOD onAuthorizeWithBrowser
   METHOD onClientIdentifierChanged
   METHOD onContentTypeChanged
   METHOD onFinished
   METHOD onGranted
   METHOD onReplyDataReceived
   METHOD onStatusChanged
   METHOD onTokenChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractOAuth
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuth>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuth>
#endif
#endif

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetworkAuth/QAbstractOAuthReplyHandler>

/*
explicit QAbstractOAuth(QAbstractOAuthPrivate &, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QAbstractOAuth()
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QString clientIdentifier() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_CLIENTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->clientIdentifier() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setClientIdentifier(const QString &clientIdentifier)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETCLIENTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setClientIdentifier( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString token() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_TOKEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->token() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setToken(const QString &token)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETTOKEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setToken( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Status status() const
*/

/*
QUrl authorizationUrl() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_AUTHORIZATIONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->authorizationUrl() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setAuthorizationUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETAUTHORIZATIONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setAuthorizationUrl( *PQURL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QVariantMap extraTokens() const
*/

/*
ContentType contentType() const
*/

/*
void setContentType(ContentType contentType)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETCONTENTTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setContentType( (QAbstractOAuth::ContentType) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QNetworkAccessManager *networkAccessManager() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_NETWORKACCESSMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkAccessManager * ptr = obj->networkAccessManager();
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKACCESSMANAGER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setNetworkAccessManager(QNetworkAccessManager *networkAccessManager)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETNETWORKACCESSMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1) )
    {
#endif
      obj->setNetworkAccessManager( PQNETWORKACCESSMANAGER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAbstractOAuthReplyHandler *replyHandler() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_REPLYHANDLER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractOAuthReplyHandler * ptr = obj->replyHandler();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTOAUTHREPLYHANDLER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setReplyHandler(QAbstractOAuthReplyHandler *handler)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETREPLYHANDLER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTOAUTHREPLYHANDLER(1) )
    {
#endif
      obj->setReplyHandler( PQABSTRACTOAUTHREPLYHANDLER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Q_INVOKABLE virtual QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *deleteResource( const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
ModifyParametersFunction modifyParametersFunction() const
*/

/*
void setModifyParametersFunction(const ModifyParametersFunction &modifyParametersFunction)
*/

/*
virtual void grant() = 0 (slot)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_GRANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->grant();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setStatus(Status status) [protected]
*/

/*
QString callback() const [protected]
*/

/*
virtual void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters) [protected]
*/

/*
static QByteArray generateRandomString(quint8 length) [protected]
*/

void QAbstractOAuthSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTOAUTH_ONAUTHORIZATIONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "authorizationUrlChanged(QUrl)", "authorizationUrlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONAUTHORIZEWITHBROWSER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "authorizeWithBrowser(QUrl)", "authorizeWithBrowser(QUrl)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONCLIENTIDENTIFIERCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "clientIdentifierChanged(QString)", "clientIdentifierChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONCONTENTTYPECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "contentTypeChanged(QAbstractOAuth::ContentType)", "contentTypeChanged(QAbstractOAuth::ContentType)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "finished(QNetworkReply*)", "finished(QNetworkReply*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONGRANTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "granted()", "granted()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONREPLYDATARECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "replyDataReceived(QByteArray)", "replyDataReceived(QByteArray)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONSTATUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "statusChanged(QAbstractOAuth::Status)", "statusChanged(QAbstractOAuth::Status)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTH_ONTOKENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthSlots_connect_signal( "tokenChanged(QString)", "tokenChanged(QString)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
