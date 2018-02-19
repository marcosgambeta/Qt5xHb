/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstract3DInputHandlerSlots.h"

static QAbstract3DInputHandlerSlots * s = NULL;

QAbstract3DInputHandlerSlots::QAbstract3DInputHandlerSlots(QObject *parent) : QObject(parent)
{
}

QAbstract3DInputHandlerSlots::~QAbstract3DInputHandlerSlots()
{
}
void QAbstract3DInputHandlerSlots::inputViewChanged( QAbstract3DInputHandler::InputView view )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputViewChanged(QAbstract3DInputHandler::InputView)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pview = hb_itemPutNI( NULL, (int) view );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pview );
    hb_itemRelease( psender );
    hb_itemRelease( pview );
  }
}
void QAbstract3DInputHandlerSlots::positionChanged( const QPoint & position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionChanged(QPoint)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutPtr( NULL, (QPoint *) &position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}
void QAbstract3DInputHandlerSlots::sceneChanged( Q3DScene * scene )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sceneChanged(Q3DScene*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pscene = hb_itemPutPtr( NULL, (Q3DScene *) scene );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscene );
    hb_itemRelease( psender );
    hb_itemRelease( pscene );
  }
}

HB_FUNC( QABSTRACT3DINPUTHANDLER_ONINPUTVIEWCHANGED )
{
  if( s == NULL )
  {
    s = new QAbstract3DInputHandlerSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "inputViewChanged(QAbstract3DInputHandler::InputView)", "inputViewChanged(QAbstract3DInputHandler::InputView)" ) );
}

HB_FUNC( QABSTRACT3DINPUTHANDLER_ONPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new QAbstract3DInputHandlerSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "positionChanged(QPoint)", "positionChanged(QPoint)" ) );
}

HB_FUNC( QABSTRACT3DINPUTHANDLER_ONSCENECHANGED )
{
  if( s == NULL )
  {
    s = new QAbstract3DInputHandlerSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "sceneChanged(Q3DScene*)", "sceneChanged(Q3DScene*)" ) );
}

