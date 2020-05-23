/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QToolButtonSlots.h"

QToolButtonSlots::QToolButtonSlots( QObject *parent ) : QObject( parent )
{
}

QToolButtonSlots::~QToolButtonSlots()
{
}

void QToolButtonSlots::triggered( QAction * action )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "triggered(QAction*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTOOLBUTTON" );
    PHB_ITEM paction = Signals_return_qobject( (QObject *) action, "QACTION" );

    hb_vmEvalBlockV( cb, 2, psender, paction );

    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void QToolButtonSlots_connect_signal( const QString & signal, const QString & slot )
{
  QToolButton * obj = (QToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QToolButtonSlots * s = QCoreApplication::instance()->findChild<QToolButtonSlots *>();

    if( s == NULL )
    {
      s = new QToolButtonSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
