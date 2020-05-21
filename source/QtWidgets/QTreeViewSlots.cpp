/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTreeViewSlots.h"

QTreeViewSlots::QTreeViewSlots( QObject *parent ) : QObject( parent )
{
}

QTreeViewSlots::~QTreeViewSlots()
{
}

void QTreeViewSlots::collapsed( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "collapsed(QModelIndex)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTREEVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QTreeViewSlots::expanded( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "expanded(QModelIndex)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTREEVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QTreeViewSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTreeView * obj = (QTreeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QTreeViewSlots * s = QCoreApplication::instance()->findChild<QTreeViewSlots *>();

    if( s == NULL )
    {
      s = new QTreeViewSlots();
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
