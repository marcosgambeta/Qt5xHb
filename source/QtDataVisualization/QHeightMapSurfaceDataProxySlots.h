/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHEIGHTMAPSURFACEDATAPROXYSLOTS_H
#define QHEIGHTMAPSURFACEDATAPROXYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QHeightMapSurfaceDataProxy>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QHeightMapSurfaceDataProxySlots: public QObject
{
  Q_OBJECT
  public:
  QHeightMapSurfaceDataProxySlots(QObject *parent = 0);
  ~QHeightMapSurfaceDataProxySlots();
  public slots:
  void heightMapChanged( const QImage & image );
  void heightMapFileChanged( const QString & filename );
  void minXValueChanged( float value );
  void maxXValueChanged( float value );
  void minZValueChanged( float value );
  void maxZValueChanged( float value );
};

#endif /* QHEIGHTMAPSURFACEDATAPROXYSLOTS_H */
