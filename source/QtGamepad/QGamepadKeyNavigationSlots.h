/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGAMEPADKEYNAVIGATIONSLOTS_H
#define QGAMEPADKEYNAVIGATIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtGamepad/QGamepadKeyNavigation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QGamepadKeyNavigationSlots: public QObject
{
  Q_OBJECT
  public:
  QGamepadKeyNavigationSlots(QObject *parent = 0);
  ~QGamepadKeyNavigationSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void activeChanged( bool isActive );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void gamepadChanged( QGamepad * gamepad );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void upKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void downKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void leftKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void rightKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonAKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonBKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonXKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonYKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonSelectKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonStartKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonGuideKeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonL1KeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonR1KeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonL2KeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonR2KeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonL3KeyChanged( Qt::Key key );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void buttonR3KeyChanged( Qt::Key key );
#endif
};

#endif /* QGAMEPADKEYNAVIGATIONSLOTS_H */
