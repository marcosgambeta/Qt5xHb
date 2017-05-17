/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QObjectSlots.h"


static SlotsQObject * s = NULL;

SlotsQObject::SlotsQObject(QObject *parent) : QObject(parent)
{
}

SlotsQObject::~SlotsQObject()
{
}

void SlotsQObject::destroyed(QObject * obj)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "destroyed(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pobj = hb_itemPutPtr( NULL, (QObject *) obj );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pobj );
    hb_itemRelease( psender );
    hb_itemRelease( pobj );
    Signals_disconnect_signal( object, "destroyed(QObject*)" );
  }
}

void SlotsQObject::objectNameChanged(const QString & objectName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "objectNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pobjectName = hb_itemPutC( NULL, RQSTRING(objectName) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pobjectName );
    hb_itemRelease( psender );
    hb_itemRelease( pobjectName );
  }
}

HB_FUNC( QOBJECT_ONDESTROYED )
{
  if( s == NULL )
  {
    s = new SlotsQObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "destroyed(QObject*)", "destroyed(QObject*)" ) );
}

HB_FUNC( QOBJECT_ONOBJECTNAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "objectNameChanged(QString)", "objectNameChanged(QString)" ) );
}
