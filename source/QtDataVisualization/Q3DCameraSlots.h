/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DCAMERASLOTS_H
#define Q3DCAMERASLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/Q3DCamera>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class Q3DCameraSlots: public QObject
{
  Q_OBJECT
  public:
  Q3DCameraSlots(QObject *parent = 0);
  ~Q3DCameraSlots();
  public slots:
  void cameraPresetChanged( Q3DCamera::CameraPreset preset );
  void maxZoomLevelChanged( float zoomLevel );
  void minZoomLevelChanged( float zoomLevel );
  void targetChanged( const QVector3D & target );
  void wrapXRotationChanged( bool isEnabled );
  void wrapYRotationChanged( bool isEnabled );
  void xRotationChanged( float rotation );
  void yRotationChanged( float rotation );
  void zoomLevelChanged( float zoomLevel );
};

#endif /* Q3DCAMERASLOTS_H */
