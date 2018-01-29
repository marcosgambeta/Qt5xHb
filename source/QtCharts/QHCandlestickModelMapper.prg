/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QHCandlestickModelMapper INHERIT QCandlestickModelMapper

   METHOD new

   METHOD closeColumn
   METHOD firstSetRow
   METHOD highColumn
   METHOD lastSetRow
   METHOD lowColumn
   METHOD openColumn
   METHOD orientation
   METHOD setCloseColumn
   METHOD setFirstSetRow
   METHOD setHighColumn
   METHOD setLastSetRow
   METHOD setLowColumn
   METHOD setOpenColumn
   METHOD setTimestampColumn
   METHOD timestampColumn

   METHOD onCloseColumnChanged
   METHOD onFirstSetRowChanged
   METHOD onHighColumnChanged
   METHOD onLastSetRowChanged
   METHOD onLowColumnChanged
   METHOD onOpenColumnChanged
   METHOD onTimestampColumnChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHCandlestickModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHCandlestickModelMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHCandlestickModelMapper>
#endif

/*
explicit QHCandlestickModelMapper(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHCandlestickModelMapper * o = new QHCandlestickModelMapper ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int timestampColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_TIMESTAMPCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->timestampColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTimestampColumn(int timestampColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETTIMESTAMPCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTimestampColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int openColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_OPENCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->openColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setOpenColumn(int openColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETOPENCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOpenColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int highColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_HIGHCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->highColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHighColumn(int highColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETHIGHCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHighColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int lowColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_LOWCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lowColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLowColumn(int lowColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETLOWCOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLowColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int closeColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_CLOSECOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->closeColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCloseColumn(int closeColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETCLOSECOLUMN )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCloseColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int firstSetRow() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_FIRSTSETROW )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->firstSetRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFirstSetRow(int firstSetRow)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETFIRSTSETROW )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstSetRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int lastSetRow() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_LASTSETROW )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lastSetRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLastSetRow(int lastSetRow)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETLASTSETROW )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLastSetRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ORIENTATION )
{
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
