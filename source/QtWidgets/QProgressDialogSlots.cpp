/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QProgressDialogSlots.h"

QProgressDialogSlots::QProgressDialogSlots( QObject *parent ) : QObject( parent )
{
}

QProgressDialogSlots::~QProgressDialogSlots()
{
}

void QProgressDialogSlots::canceled()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QPROGRESSDIALOG" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QProgressDialogSlots_connect_signal( const QString & signal, const QString & slot )
{
  QProgressDialog * obj = (QProgressDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QProgressDialogSlots * s = QCoreApplication::instance()->findChild<QProgressDialogSlots *>();

    if( s == NULL )
    {
      s = new QProgressDialogSlots();
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
