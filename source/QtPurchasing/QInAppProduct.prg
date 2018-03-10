/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QInAppProduct INHERIT QObject

   METHOD delete

   METHOD identifier
   METHOD productType
   METHOD price
   METHOD title
   METHOD description
   METHOD purchase

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInAppProduct
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInAppProduct>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInAppProduct>
#endif

/*
explicit QInAppProduct(const QString &price, const QString &title, const QString &description, ProductType productType, const QString &identifier, QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QInAppProduct()
*/
HB_FUNC_STATIC( QINAPPPRODUCT_DELETE )
{
  QInAppProduct * obj = (QInAppProduct *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString identifier() const
*/
HB_FUNC_STATIC( QINAPPPRODUCT_IDENTIFIER )
{
  QInAppProduct * obj = (QInAppProduct *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->identifier () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ProductType productType() const
*/
HB_FUNC_STATIC( QINAPPPRODUCT_PRODUCTTYPE )
{
  QInAppProduct * obj = (QInAppProduct *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->productType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString price() const
*/
HB_FUNC_STATIC( QINAPPPRODUCT_PRICE )
{
  QInAppProduct * obj = (QInAppProduct *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->price () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString title() const
*/
HB_FUNC_STATIC( QINAPPPRODUCT_TITLE )
{
  QInAppProduct * obj = (QInAppProduct *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->title () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString description() const
*/
HB_FUNC_STATIC( QINAPPPRODUCT_DESCRIPTION )
{
  QInAppProduct * obj = (QInAppProduct *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->description () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Q_INVOKABLE virtual void purchase() = 0
*/
HB_FUNC_STATIC( QINAPPPRODUCT_PURCHASE )
{
  QInAppProduct * obj = (QInAppProduct *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->purchase ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP