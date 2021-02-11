/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QProcessSlots.h"

QProcessSlots::QProcessSlots( QObject *parent ) : QObject( parent )
{
}

QProcessSlots::~QProcessSlots()
{
}

void QProcessSlots::error( QProcess::ProcessError error )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QProcess::ProcessError)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPROCESS" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );

    hb_vmEvalBlockV( cb, 2, psender, perror );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void QProcessSlots::finished( int exitCode, QProcess::ExitStatus exitStatus )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished(int,QProcess::ExitStatus)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPROCESS" );
    PHB_ITEM pexitCode = hb_itemPutNI( NULL, exitCode );
    PHB_ITEM pexitStatus = hb_itemPutNI( NULL, (int) exitStatus );

    hb_vmEvalBlockV( cb, 3, psender, pexitCode, pexitStatus );

    hb_itemRelease( psender );
    hb_itemRelease( pexitCode );
    hb_itemRelease( pexitStatus );
  }
}

void QProcessSlots::readyReadStandardError()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "readyReadStandardError()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPROCESS" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QProcessSlots::readyReadStandardOutput()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "readyReadStandardOutput()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPROCESS" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QProcessSlots::started()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "started()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPROCESS" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QProcessSlots::stateChanged( QProcess::ProcessState newState )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QProcess::ProcessState)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPROCESS" );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );

    hb_vmEvalBlockV( cb, 2, psender, pnewState );

    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
void QProcessSlots::errorOccurred( QProcess::ProcessError error )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "errorOccurred(QProcess::ProcessError)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPROCESS" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );

    hb_vmEvalBlockV( cb, 2, psender, perror );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
#endif

void QProcessSlots_connect_signal( const QString & signal, const QString & slot )
{
  QProcess * obj = (QProcess *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QProcessSlots * s = QCoreApplication::instance()->findChild<QProcessSlots *>();

    if( s == NULL )
    {
      s = new QProcessSlots();
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
