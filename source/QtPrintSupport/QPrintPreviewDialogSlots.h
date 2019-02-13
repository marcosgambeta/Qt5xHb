/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPRINTPREVIEWDIALOGSLOTS_H
#define QPRINTPREVIEWDIALOGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtPrintSupport/QPrintPreviewDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QPrintPreviewDialogSlots: public QObject
{
  Q_OBJECT
  public:
  QPrintPreviewDialogSlots(QObject *parent = 0);
  ~QPrintPreviewDialogSlots();
  public slots:
  void paintRequested( QPrinter * printer );
};

#endif /* QPRINTPREVIEWDIALOGSLOTS_H */
