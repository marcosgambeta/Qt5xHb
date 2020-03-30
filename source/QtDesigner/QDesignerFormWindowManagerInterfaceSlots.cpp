/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDesignerFormWindowManagerInterfaceSlots.h"

QDesignerFormWindowManagerInterfaceSlots::QDesignerFormWindowManagerInterfaceSlots(QObject *parent) : QObject(parent)
{
}

QDesignerFormWindowManagerInterfaceSlots::~QDesignerFormWindowManagerInterfaceSlots()
{
}
void QDesignerFormWindowManagerInterfaceSlots::activeFormWindowChanged( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeFormWindowChanged(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
    PHB_ITEM pformWindow = Signals_return_qobject( (QObject *) formWindow, "QDESIGNERFORMWINDOWINTERFACE" );
    hb_vmEvalBlockV( cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}
void QDesignerFormWindowManagerInterfaceSlots::formWindowAdded( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowAdded(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
    PHB_ITEM pformWindow = Signals_return_qobject( (QObject *) formWindow, "QDESIGNERFORMWINDOWINTERFACE" );
    hb_vmEvalBlockV( cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}
void QDesignerFormWindowManagerInterfaceSlots::formWindowRemoved( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowRemoved(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
    PHB_ITEM pformWindow = Signals_return_qobject( (QObject *) formWindow, "QDESIGNERFORMWINDOWINTERFACE" );
    hb_vmEvalBlockV( cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

void QDesignerFormWindowManagerInterfaceSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerFormWindowManagerInterfaceSlots * s = QCoreApplication::instance()->findChild<QDesignerFormWindowManagerInterfaceSlots *>();

    if( s == NULL )
    {
      s = new QDesignerFormWindowManagerInterfaceSlots();
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
