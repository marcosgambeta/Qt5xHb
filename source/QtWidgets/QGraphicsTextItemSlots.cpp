/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsTextItemSlots.h"

QGraphicsTextItemSlots::QGraphicsTextItemSlots( QObject *parent ) : QObject( parent )
{
}

QGraphicsTextItemSlots::~QGraphicsTextItemSlots()
{
}

void QGraphicsTextItemSlots::linkActivated( const QString & link )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "linkActivated(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGRAPHICSTEXTITEM" );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );

    hb_vmEvalBlockV( cb, 2, psender, plink );

    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void QGraphicsTextItemSlots::linkHovered( const QString & link )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "linkHovered(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGRAPHICSTEXTITEM" );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );

    hb_vmEvalBlockV( cb, 2, psender, plink );

    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void QGraphicsTextItemSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsTextItemSlots * s = QCoreApplication::instance()->findChild<QGraphicsTextItemSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsTextItemSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
