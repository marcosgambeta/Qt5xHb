/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBARDATAPROXYSLOTS_H
#define QBARDATAPROXYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QBarDataProxy>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QBarDataProxySlots: public QObject
{
  Q_OBJECT
  public:
  QBarDataProxySlots(QObject *parent = 0);
  ~QBarDataProxySlots();
  public slots:
  void arrayReset();
  void columnLabelsChanged();
  void itemChanged( int rowIndex, int columnIndex );
  void rowCountChanged( int count );
  void rowLabelsChanged();
  void rowsAdded( int startIndex, int count );
  void rowsChanged( int startIndex, int count );
  void rowsInserted( int startIndex, int count );
  void rowsRemoved( int startIndex, int count );
  void seriesChanged( QBar3DSeries * series );
};

#endif /* QBARDATAPROXYSLOTS_H */
