/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHBOXPLOTMODELMAPPERSLOTS_H
#define QHBOXPLOTMODELMAPPERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QHBoxPlotModelMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

class QHBoxPlotModelMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QHBoxPlotModelMapperSlots(QObject *parent = 0);
  ~QHBoxPlotModelMapperSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void columnCountChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void firstBoxSetRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void firstColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void lastBoxSetRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void modelReplaced();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void seriesReplaced();
#endif
};

#endif /* QHBOXPLOTMODELMAPPERSLOTS_H */
