/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DBARSSLOTS_H
#define Q3DBARSSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/Q3DBars>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class Q3DBarsSlots: public QObject
{
  Q_OBJECT
  public:
  Q3DBarsSlots( QObject *parent = 0 );
  ~Q3DBarsSlots();
  public slots:
  void multiSeriesUniformChanged( bool uniform );
  void barThicknessChanged( float thicknessRatio );
  void barSpacingChanged( const QSizeF & spacing );
  void barSpacingRelativeChanged( bool relative );
  void rowAxisChanged( QCategory3DAxis * axis );
  void columnAxisChanged( QCategory3DAxis * axis );
  void valueAxisChanged( QValue3DAxis * axis );
  void primarySeriesChanged( QBar3DSeries * series );
  void selectedSeriesChanged( QBar3DSeries * series );
  void floorLevelChanged( float level );
};

#endif /* Q3DBARSSLOTS_H */
