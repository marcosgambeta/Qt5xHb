/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGAMEPADMANAGERSLOTS_H
#define QGAMEPADMANAGERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QGamepadManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QGamepadManagerSlots: public QObject
{
  Q_OBJECT
  public:
  QGamepadManagerSlots(QObject *parent = 0);
  ~QGamepadManagerSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void connectedGamepadsChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void gamepadConnected( int deviceId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void gamepadDisconnected( int deviceId );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void gamepadAxisEvent( int deviceId, QGamepadManager::GamepadAxis axis, double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void gamepadButtonPressEvent( int deviceId, QGamepadManager::GamepadButton button, double value );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void gamepadButtonReleaseEvent( int deviceId, QGamepadManager::GamepadButton button );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonConfigured( int deviceId, QGamepadManager::GamepadButton button );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void axisConfigured( int deviceId, QGamepadManager::GamepadAxis axis );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void configurationCanceled( int deviceId );
#endif
};

#endif /* QGAMEPADMANAGERSLOTS_H */
