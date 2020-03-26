/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoAreaMonitorSourceSlots.h"

QGeoAreaMonitorSourceSlots::QGeoAreaMonitorSourceSlots(QObject *parent) : QObject(parent)
{
}

QGeoAreaMonitorSourceSlots::~QGeoAreaMonitorSourceSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoAreaMonitorSourceSlots::areaEntered( const QGeoAreaMonitorInfo & monitor, const QGeoPositionInfo & update )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGEOAREAMONITORSOURCE" );
    PHB_ITEM pmonitor = Signals_return_object( (void *) &monitor, "QGEOAREAMONITORINFO" );
    PHB_ITEM pupdate = Signals_return_object( (void *) &update, "QGEOPOSITIONINFO" );
    hb_vmEvalBlockV( cb, 3, psender, pmonitor, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
    hb_itemRelease( pupdate );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoAreaMonitorSourceSlots::areaExited( const QGeoAreaMonitorInfo & monitor, const QGeoPositionInfo & update )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGEOAREAMONITORSOURCE" );
    PHB_ITEM pmonitor = Signals_return_object( (void *) &monitor, "QGEOAREAMONITORINFO" );
    PHB_ITEM pupdate = Signals_return_object( (void *) &update, "QGEOPOSITIONINFO" );
    hb_vmEvalBlockV( cb, 3, psender, pmonitor, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
    hb_itemRelease( pupdate );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoAreaMonitorSourceSlots::monitorExpired( const QGeoAreaMonitorInfo & monitor )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "monitorExpired(QGeoAreaMonitorInfo)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGEOAREAMONITORSOURCE" );
    PHB_ITEM pmonitor = Signals_return_object( (void *) &monitor, "QGEOAREAMONITORINFO" );
    hb_vmEvalBlockV( cb, 2, psender, pmonitor );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoAreaMonitorSourceSlots::error( QGeoAreaMonitorSource::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoAreaMonitorSource::Error)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGEOAREAMONITORSOURCE" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
#endif

void QGeoAreaMonitorSourceSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QGeoAreaMonitorSourceSlots * s = QCoreApplication::instance()->findChild<QGeoAreaMonitorSourceSlots *>();

    if( s == NULL )
    {
      s = new QGeoAreaMonitorSourceSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
