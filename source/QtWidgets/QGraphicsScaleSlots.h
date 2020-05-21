/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSSCALESLOTS_H
#define QGRAPHICSSCALESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QGraphicsScale>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QGraphicsScaleSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsScaleSlots( QObject *parent = 0 );
  ~QGraphicsScaleSlots();
  public slots:
  void originChanged();
  void scaleChanged();
  void xScaleChanged();
  void yScaleChanged();
  void zScaleChanged();
};

#endif /* QGRAPHICSSCALESLOTS_H */
