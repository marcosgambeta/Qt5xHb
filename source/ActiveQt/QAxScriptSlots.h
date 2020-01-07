/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAXSCRIPTSLOTS_H
#define QAXSCRIPTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <ActiveQt/QAxScript>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QAxScriptSlots: public QObject
{
  Q_OBJECT
  public:
  QAxScriptSlots(QObject *parent = 0);
  ~QAxScriptSlots();
  public slots:
  void entered();
  void error( int code, const QString & description, int sourcePosition, const QString & sourceText );
  void finished();
  void finished( const QVariant & result );
  void finished( int code, const QString & source, const QString & description, const QString & help );
  void stateChanged( int state );
};

#endif /* QAXSCRIPTSLOTS_H */
