/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLocalSocketSlots.h"

static QLocalSocketSlots * s = NULL;

QLocalSocketSlots::QLocalSocketSlots(QObject *parent) : QObject(parent)
{
}

QLocalSocketSlots::~QLocalSocketSlots()
{
}
void QLocalSocketSlots::connected()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "connected()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QLOCALSOCKET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QLocalSocketSlots::disconnected()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "disconnected()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QLOCALSOCKET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QLocalSocketSlots::error( QLocalSocket::LocalSocketError socketError )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QLocalSocket::LocalSocketError)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QLOCALSOCKET" );
    PHB_ITEM psocketError = hb_itemPutNI( NULL, (int) socketError );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketError );
    hb_itemRelease( psender );
    hb_itemRelease( psocketError );
  }
}
void QLocalSocketSlots::stateChanged( QLocalSocket::LocalSocketState socketState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QLocalSocket::LocalSocketState)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QLOCALSOCKET" );
    PHB_ITEM psocketState = hb_itemPutNI( NULL, (int) socketState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketState );
    hb_itemRelease( psender );
    hb_itemRelease( psocketState );
  }
}

void QLocalSocketSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QLocalSocketSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
