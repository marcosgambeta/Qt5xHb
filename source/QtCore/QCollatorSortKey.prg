/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QCollatorSortKey

   DATA pointer
   //DATA class_id INIT Class_Id_QCollatorSortKey
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD compare

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCollatorSortKey
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCollatorSortKey>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCollatorSortKey>
#endif

/*
QCollatorSortKey(const QCollatorSortKey &other)
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_NEW )
{
  if( ISNUMPAR(1) && ISQCOLLATORSORTKEY(1) )
  {
    QCollatorSortKey * par1 = (QCollatorSortKey *) _qt5xhb_itemGetPtr(1);
    QCollatorSortKey * o = new QCollatorSortKey ( *par1 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_DELETE )
{
  QCollatorSortKey * obj = (QCollatorSortKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void swap(QCollatorSortKey &other)
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_SWAP )
{
  QCollatorSortKey * obj = (QCollatorSortKey *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOLLATORSORTKEY(1) )
    {
      QCollatorSortKey * par1 = (QCollatorSortKey *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int compare(const QCollatorSortKey &key) const
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_COMPARE )
{
  QCollatorSortKey * obj = (QCollatorSortKey *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOLLATORSORTKEY(1) )
    {
      QCollatorSortKey * par1 = (QCollatorSortKey *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->compare ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_NEWFROM )
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

HB_FUNC_STATIC( QCOLLATORSORTKEY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOLLATORSORTKEY_NEWFROM );
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOLLATORSORTKEY_NEWFROM );
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_SETSELFDESTRUCTION )
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
