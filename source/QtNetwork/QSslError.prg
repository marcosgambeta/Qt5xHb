/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
#endif

CLASS QSslError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD certificate
   METHOD error
   METHOD errorString
   METHOD swap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QSslError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QSslError>
#endif

/*
QSslError ()
*/
void QSslError_new1()
{
  QSslError * obj = new QSslError();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSslError ( SslError error )
*/
void QSslError_new2()
{
  QSslError * obj = new QSslError( (QSslError::SslError) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSslError ( SslError error, const QSslCertificate & certificate )
*/
void QSslError_new3()
{
  QSslError * obj = new QSslError( (QSslError::SslError) hb_parni(1), *PQSSLCERTIFICATE(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSslError ( const QSslError & other )
*/
void QSslError_new4()
{
  QSslError * obj = new QSslError( *PQSSLERROR(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QSslError ()
[2]QSslError ( SslError error )
[3]QSslError ( SslError error, const QSslCertificate & certificate )
[4]QSslError ( const QSslError & other )
*/

HB_FUNC_STATIC( QSSLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslError_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslError_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSSLCERTIFICATE(2) )
  {
    QSslError_new3();
  }
  else if( ISNUMPAR(1) && ISQSSLERROR(1) )
  {
    QSslError_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QSslError()
*/
HB_FUNC_STATIC( QSSLERROR_DELETE )
{
  QSslError * obj = (QSslError *) Qt5xHb::itemGetPtrStackSelfItem();

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
QSslCertificate certificate () const
*/
HB_FUNC_STATIC( QSSLERROR_CERTIFICATE )
{
  QSslError * obj = (QSslError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSslCertificate * ptr = new QSslCertificate( obj->certificate() );
      Qt5xHb::createReturnClass( ptr, "QSSLCERTIFICATE", true );
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
SslError error () const
*/
HB_FUNC_STATIC( QSSLERROR_ERROR )
{
  QSslError * obj = (QSslError *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString errorString () const
*/
HB_FUNC_STATIC( QSSLERROR_ERRORSTRING )
{
  QSslError * obj = (QSslError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
void swap(QSslError &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QSSLERROR_SWAP )
{
  QSslError * obj = (QSslError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSSLERROR(1) )
    {
#endif
      obj->swap( *PQSSLERROR(1) );
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

HB_FUNC_STATIC( QSSLERROR_NEWFROM )
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

HB_FUNC_STATIC( QSSLERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSSLERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSSLERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLERROR_SETSELFDESTRUCTION )
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
