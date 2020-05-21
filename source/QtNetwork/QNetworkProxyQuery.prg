/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QURL
#endif

CLASS QNetworkProxyQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD localPort
   METHOD peerHostName
   METHOD peerPort
   METHOD protocolTag
   METHOD queryType
   METHOD setLocalPort
   METHOD setPeerHostName
   METHOD setPeerPort
   METHOD setProtocolTag
   METHOD setQueryType
   METHOD setUrl
   METHOD url
   METHOD swap
   METHOD networkConfiguration
   METHOD setNetworkConfiguration

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkProxyQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkProxyQuery>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkProxyQuery>
#endif

#include <QtCore/QUrl>
#include <QtNetwork/QNetworkConfiguration>

/*
QNetworkProxyQuery ()
*/
void QNetworkProxyQuery_new1()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery();
  Qt5xHb::returnNewObject( obj, true );
}

/*
explicit QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
void QNetworkProxyQuery_new2()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQURL(1), ISNIL(2)? (QNetworkProxyQuery::QueryType) QNetworkProxyQuery::UrlRequest : (QNetworkProxyQuery::QueryType) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
void QNetworkProxyQuery_new3()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery( PQSTRING(1), PINT(2), OPQSTRING(3,QString()), ISNIL(4)? (QNetworkProxyQuery::QueryType) QNetworkProxyQuery::TcpSocket : (QNetworkProxyQuery::QueryType) hb_parni(4) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
explicit QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
void QNetworkProxyQuery_new4()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery( PQUINT16(1), OPQSTRING(2,QString()), ISNIL(3)? (QNetworkProxyQuery::QueryType) QNetworkProxyQuery::TcpServer : (QNetworkProxyQuery::QueryType) hb_parni(3) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
void QNetworkProxyQuery_new5()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKCONFIGURATION(1), *PQURL(2), ISNIL(3)? (QNetworkProxyQuery::QueryType) QNetworkProxyQuery::UrlRequest : (QNetworkProxyQuery::QueryType) hb_parni(3) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
void QNetworkProxyQuery_new6()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKCONFIGURATION(1), PQSTRING(2), PINT(3), OPQSTRING(4,QString()), ISNIL(5)? (QNetworkProxyQuery::QueryType) QNetworkProxyQuery::TcpSocket : (QNetworkProxyQuery::QueryType) hb_parni(5) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
void QNetworkProxyQuery_new7()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKCONFIGURATION(1), PQUINT16(2), OPQSTRING(3,QString()), ISNIL(4)? (QNetworkProxyQuery::QueryType) QNetworkProxyQuery::TcpServer : (QNetworkProxyQuery::QueryType) hb_parni(4) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QNetworkProxyQuery ( const QNetworkProxyQuery & other )
*/
void QNetworkProxyQuery_new8()
{
  QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKPROXYQUERY(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QNetworkProxyQuery()
[2]explicit QNetworkProxyQuery(const QUrl &requestUrl, QueryType queryType = UrlRequest)
[3]QNetworkProxyQuery(const QString &hostname, int port, const QString &protocolTag = QString(), QueryType queryType = TcpSocket)
[4]explicit QNetworkProxyQuery(quint16 bindPort, const QString &protocolTag = QString(), QueryType queryType = TcpServer)
[5]QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, const QUrl &requestUrl, QueryType queryType = UrlRequest)
[6]QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, const QString &hostname, int port, const QString &protocolTag = QString(), QueryType queryType = TcpSocket)
[7]QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, quint16 bindPort, const QString &protocolTag = QString(), QueryType queryType = TcpServer)
[8]QNetworkProxyQuery(const QNetworkProxyQuery &other)
*/

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkProxyQuery_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTNUM(2) )
  {
    QNetworkProxyQuery_new2();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QNetworkProxyQuery_new3();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QNetworkProxyQuery_new4();
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && ISOPTNUM(3) )
  {
    QNetworkProxyQuery_new5();
  }
  else if( ISBETWEEN(3,5) && ISQNETWORKCONFIGURATION(1) && ISCHAR(2) && ISNUM(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    QNetworkProxyQuery_new6();
  }
  else if( ISBETWEEN(2,4) && ISQNETWORKCONFIGURATION(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QNetworkProxyQuery_new7();
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
    QNetworkProxyQuery_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QNetworkProxyQuery()
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_DELETE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

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
int localPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_LOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->localPort() );
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
QString peerHostName () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERHOSTNAME )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->peerHostName() );
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
int peerPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->peerPort() );
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
QString protocolTag () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PROTOCOLTAG )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->protocolTag() );
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
QueryType queryType () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_QUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->queryType() );
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
void setLocalPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETLOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLocalPort( PINT(1) );
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
void setPeerHostName ( const QString & hostname )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERHOSTNAME )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPeerHostName( PQSTRING(1) );
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
void setPeerPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPeerPort( PINT(1) );
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
void setProtocolTag ( const QString & protocolTag )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPROTOCOLTAG )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setProtocolTag( PQSTRING(1) );
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
void setQueryType ( QueryType type )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETQUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setQueryType( (QNetworkProxyQuery::QueryType) hb_parni(1) );
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
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETURL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setUrl( *PQURL(1) );
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
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_URL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

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
void swap(QNetworkProxyQuery &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SWAP )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
    {
#endif
      obj->swap( *PQNETWORKPROXYQUERY(1) );
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
QNetworkConfiguration networkConfiguration() const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NETWORKCONFIGURATION )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->networkConfiguration() );
      Qt5xHb::createReturnClass( ptr, "QNETWORKCONFIGURATION", true );
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
void setNetworkConfiguration(const QNetworkConfiguration &networkConfiguration)
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETNETWORKCONFIGURATION )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
    {
#endif
      obj->setNetworkConfiguration( *PQNETWORKCONFIGURATION(1) );
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

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
