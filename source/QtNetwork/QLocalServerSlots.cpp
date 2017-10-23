/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QLocalServerSlots.h"


static SlotsQLocalServer * s = NULL;

SlotsQLocalServer::SlotsQLocalServer(QObject *parent) : QObject(parent)
{
}

SlotsQLocalServer::~SlotsQLocalServer()
{
}

void SlotsQLocalServer::newConnection ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "newConnection()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QLOCALSERVER_ONNEWCONNECTION )
{
  if( s == NULL )
  {
    s = new SlotsQLocalServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "newConnection()", "newConnection()" ) );
}
