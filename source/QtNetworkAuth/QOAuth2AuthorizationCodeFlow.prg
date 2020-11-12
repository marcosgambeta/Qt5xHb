/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QOAuth2AuthorizationCodeFlow INHERIT QAbstractOAuth2

   METHOD new
   METHOD delete
   METHOD accessTokenUrl
   METHOD setAccessTokenUrl
   METHOD grant
   METHOD refreshAccessToken

   METHOD onAccessTokenUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOAuth2AuthorizationCodeFlow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth2AuthorizationCodeFlow>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth2AuthorizationCodeFlow>
#endif
#endif

/*
explicit QOAuth2AuthorizationCodeFlow(QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = new QOAuth2AuthorizationCodeFlow( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
explicit QOAuth2AuthorizationCodeFlow(QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = new QOAuth2AuthorizationCodeFlow( PQNETWORKACCESSMANAGER(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = new QOAuth2AuthorizationCodeFlow( PQSTRING(1), PQNETWORKACCESSMANAGER(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QOAuth2AuthorizationCodeFlow(const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new4()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = new QOAuth2AuthorizationCodeFlow( *PQURL(1), *PQURL(2), PQNETWORKACCESSMANAGER(3), OPQOBJECT(4,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new5()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = new QOAuth2AuthorizationCodeFlow( PQSTRING(1), *PQURL(2), *PQURL(3), PQNETWORKACCESSMANAGER(4), OPQOBJECT(5,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuth2AuthorizationCodeFlow_new1();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuth2AuthorizationCodeFlow_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQNETWORKACCESSMANAGER(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QOAuth2AuthorizationCodeFlow_new3();
  }
  else if( ISBETWEEN(3,4) && ISQURL(1) && ISQURL(2) && ISQNETWORKACCESSMANAGER(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QOAuth2AuthorizationCodeFlow_new4();
  }
  else if( ISBETWEEN(4,5) && ISCHAR(1) && ISQURL(2) && ISQURL(3) && ISQNETWORKACCESSMANAGER(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QOAuth2AuthorizationCodeFlow_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QOAuth2AuthorizationCodeFlow()
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) Qt5xHb::itemGetPtrStackSelfItem();

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
QUrl accessTokenUrl() const
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_ACCESSTOKENURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->accessTokenUrl() );
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
void setAccessTokenUrl(const QUrl &accessTokenUrl)
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_SETACCESSTOKENURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setAccessTokenUrl( *PQURL(1) );
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
void grant() override 
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_GRANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) Qt5xHb::itemGetPtrStackSelfItem();

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
void refreshAccessToken() 
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_REFRESHACCESSTOKEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->refreshAccessToken();
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

void QOAuth2AuthorizationCodeFlowSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_ONACCESSTOKENURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth2AuthorizationCodeFlowSlots_connect_signal( "accessTokenUrlChanged(QUrl)", "accessTokenUrlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
