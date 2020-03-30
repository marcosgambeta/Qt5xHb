/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSCREENSLOTS_H
#define QSCREENSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QScreen>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QScreenSlots: public QObject
{
  Q_OBJECT
  public:
  QScreenSlots(QObject *parent = 0);
  ~QScreenSlots();
  public slots:
  void geometryChanged( const QRect & geometry );
  void physicalSizeChanged( const QSizeF & size );
  void physicalDotsPerInchChanged( qreal dpi );
  void logicalDotsPerInchChanged( qreal dpi );
  void virtualGeometryChanged( const QRect & rect );
  void primaryOrientationChanged( Qt::ScreenOrientation orientation );
  void orientationChanged( Qt::ScreenOrientation orientation );
  void refreshRateChanged( qreal refreshRate );
};

#endif /* QSCREENSLOTS_H */
