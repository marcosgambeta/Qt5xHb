/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVXYModelMapperSlots.h"

static SlotsQVXYModelMapper * s = NULL;

SlotsQVXYModelMapper::SlotsQVXYModelMapper(QObject *parent) : QObject(parent)
{
}

SlotsQVXYModelMapper::~SlotsQVXYModelMapper()
{
}
void SlotsQVXYModelMapper::firstRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "firstRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVXYModelMapper::modelReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modelReplaced()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVXYModelMapper::rowCountChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowCountChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVXYModelMapper::seriesReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "seriesReplaced()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVXYModelMapper::xColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVXYModelMapper::yColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QVXYMODELMAPPER_ONFIRSTROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVXYModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "firstRowChanged()", "firstRowChanged()" ) );
}

HB_FUNC( QVXYMODELMAPPER_ONMODELREPLACED )
{
  if( s == NULL )
  {
    s = new SlotsQVXYModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "modelReplaced()", "modelReplaced()" ) );
}

HB_FUNC( QVXYMODELMAPPER_ONROWCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVXYModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rowCountChanged()", "rowCountChanged()" ) );
}

HB_FUNC( QVXYMODELMAPPER_ONSERIESREPLACED )
{
  if( s == NULL )
  {
    s = new SlotsQVXYModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "seriesReplaced()", "seriesReplaced()" ) );
}

HB_FUNC( QVXYMODELMAPPER_ONXCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVXYModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "xColumnChanged()", "xColumnChanged()" ) );
}

HB_FUNC( QVXYMODELMAPPER_ONYCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVXYModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "yColumnChanged()", "yColumnChanged()" ) );
}
