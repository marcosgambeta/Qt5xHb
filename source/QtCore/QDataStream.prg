/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
#endif

CLASS QDataStream

   DATA pointer
   //DATA class_id INIT Class_Id_QDataStream
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD device
   METHOD setDevice
   METHOD unsetDevice
   METHOD atEnd
   METHOD status
   METHOD setStatus
   METHOD resetStatus
   METHOD floatingPointPrecision
   METHOD setFloatingPointPrecision
   METHOD byteOrder
   METHOD setByteOrder
   METHOD version
   METHOD setVersion
   METHOD readBytes
   METHOD readRawData
   METHOD writeBytes
   METHOD writeRawData
   METHOD skipRawData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDataStream
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDataStream>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDataStream>
#endif

/*
QDataStream()
*/
void QDataStream_new1 ()
{
  QDataStream * o = new QDataStream (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDataStream(QIODevice *)
*/
void QDataStream_new2 ()
{
  QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
  QDataStream * o = new QDataStream ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDataStream(QByteArray *, QIODevice::OpenMode flags)
*/
void QDataStream_new3 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QDataStream * o = new QDataStream ( par1,  (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDataStream(const QByteArray &)
*/
void QDataStream_new4 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QDataStream * o = new QDataStream ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QDataStream()
//[2]QDataStream(QIODevice *)
//[3]QDataStream(QByteArray *, QIODevice::OpenMode flags)
//[4]QDataStream(const QByteArray &)

HB_FUNC_STATIC( QDATASTREAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDataStream_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDataStream_new2();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QDataStream_new3();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QDataStream_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATASTREAM_DELETE )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QIODevice *device() const
*/
HB_FUNC_STATIC( QDATASTREAM_DEVICE )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
void setDevice(QIODevice *)
*/
HB_FUNC_STATIC( QDATASTREAM_SETDEVICE )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) )
    {
      QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
      obj->setDevice ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetDevice()
*/
HB_FUNC_STATIC( QDATASTREAM_UNSETDEVICE )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetDevice (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool atEnd() const
*/
HB_FUNC_STATIC( QDATASTREAM_ATEND )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}

/*
Status status() const
*/
HB_FUNC_STATIC( QDATASTREAM_STATUS )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}

/*
void setStatus(Status status)
*/
HB_FUNC_STATIC( QDATASTREAM_SETSTATUS )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setStatus (  (QDataStream::Status) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetStatus()
*/
HB_FUNC_STATIC( QDATASTREAM_RESETSTATUS )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resetStatus (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
FloatingPointPrecision floatingPointPrecision() const
*/
HB_FUNC_STATIC( QDATASTREAM_FLOATINGPOINTPRECISION )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->floatingPointPrecision (  ) );
  }
}

/*
void setFloatingPointPrecision(FloatingPointPrecision precision)
*/
HB_FUNC_STATIC( QDATASTREAM_SETFLOATINGPOINTPRECISION )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFloatingPointPrecision (  (QDataStream::FloatingPointPrecision) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ByteOrder byteOrder() const
*/
HB_FUNC_STATIC( QDATASTREAM_BYTEORDER )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->byteOrder (  ) );
  }
}

/*
void setByteOrder(ByteOrder)
*/
HB_FUNC_STATIC( QDATASTREAM_SETBYTEORDER )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setByteOrder (  (QDataStream::ByteOrder) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int version() const
*/
HB_FUNC_STATIC( QDATASTREAM_VERSION )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->version (  ) );
  }
}

/*
void setVersion(int)
*/
HB_FUNC_STATIC( QDATASTREAM_SETVERSION )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setVersion ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDataStream &readBytes(char *&, uint &len) // TODO: revisar implementacao do metodo
*/
HB_FUNC_STATIC( QDATASTREAM_READBYTES )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISPOINTER(1) && ISNUM(2) )
    {
      char * * par1 = (char * *) _qt5xhb_itemGetPtr(1);
      uint  * par2 = (uint  *) _qt5xhb_itemGetPtr(2);
      QDataStream * ptr = &obj->readBytes ( *par1, *par2 );
      _qt5xhb_createReturnClass ( ptr, "QDATASTREAM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int readRawData(char *, int len)
*/
HB_FUNC_STATIC( QDATASTREAM_READRAWDATA )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      char * par1 = (char *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->readRawData ( par1, (int) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDataStream &writeBytes(const char *, uint len)
*/
HB_FUNC_STATIC( QDATASTREAM_WRITEBYTES )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      const char * par1 = hb_parc(1);
      QDataStream * ptr = &obj->writeBytes (  (const char *) par1, (uint) hb_parni(2) );
      _qt5xhb_createReturnClass ( ptr, "QDATASTREAM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int writeRawData(const char *, int len)
*/
HB_FUNC_STATIC( QDATASTREAM_WRITERAWDATA )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      const char * par1 = hb_parc(1);
      hb_retni( obj->writeRawData (  (const char *) par1, (int) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int skipRawData(int len)
*/
HB_FUNC_STATIC( QDATASTREAM_SKIPRAWDATA )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->skipRawData ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QDATASTREAM_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDATASTREAM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDATASTREAM_NEWFROM );
}

HB_FUNC_STATIC( QDATASTREAM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDATASTREAM_NEWFROM );
}

HB_FUNC_STATIC( QDATASTREAM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDATASTREAM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
