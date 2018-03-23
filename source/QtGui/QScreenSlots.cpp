/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScreenSlots.h"

QScreenSlots::QScreenSlots(QObject *parent) : QObject(parent)
{
}

QScreenSlots::~QScreenSlots()
{
}
void QScreenSlots::geometryChanged( const QRect & geometry )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometryChanged(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM pgeometry = Signals_return_object( (void *) &geometry, "QRECT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pgeometry );
    hb_itemRelease( psender );
    hb_itemRelease( pgeometry );
  }
}
void QScreenSlots::physicalSizeChanged( const QSizeF & size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "physicalSizeChanged(QSizeF)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM psize = Signals_return_object( (void *) &size, "QSIZEF" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}
void QScreenSlots::physicalDotsPerInchChanged( qreal dpi )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "physicalDotsPerInchChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM pdpi = hb_itemPutND( NULL, dpi );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdpi );
    hb_itemRelease( psender );
    hb_itemRelease( pdpi );
  }
}
void QScreenSlots::logicalDotsPerInchChanged( qreal dpi )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "logicalDotsPerInchChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM pdpi = hb_itemPutND( NULL, dpi );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdpi );
    hb_itemRelease( psender );
    hb_itemRelease( pdpi );
  }
}
void QScreenSlots::virtualGeometryChanged( const QRect & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "virtualGeometryChanged(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM prect = Signals_return_object( (void *) &rect, "QRECT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prect );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}
void QScreenSlots::primaryOrientationChanged( Qt::ScreenOrientation orientation )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "primaryOrientationChanged(Qt::ScreenOrientation)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, porientation );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}
void QScreenSlots::orientationChanged( Qt::ScreenOrientation orientation )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "orientationChanged(Qt::ScreenOrientation)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, porientation );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}
void QScreenSlots::refreshRateChanged( qreal refreshRate )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "refreshRateChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCREEN" );
    PHB_ITEM prefreshRate = hb_itemPutND( NULL, refreshRate );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prefreshRate );
    hb_itemRelease( psender );
    hb_itemRelease( prefreshRate );
  }
}

void QScreenSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QScreen * obj = (QScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QScreenSlots * s = QCoreApplication::instance()->findChild<QScreenSlots *>();

    if( s == NULL )
    {
      s = new QScreenSlots();
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
