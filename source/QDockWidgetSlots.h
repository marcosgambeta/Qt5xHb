/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDOCKWIDGET_H
#define SLOTSQDOCKWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDockWidget>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);

class SlotsQDockWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQDockWidget(QObject *parent = 0);
  ~SlotsQDockWidget();
  public slots:
  void allowedAreasChanged ( Qt::DockWidgetAreas allowedAreas );
  void dockLocationChanged ( Qt::DockWidgetArea area );
  void featuresChanged ( QDockWidget::DockWidgetFeatures features );
  void topLevelChanged ( bool topLevel );
  void visibilityChanged ( bool visible );
};

#endif // SLOTSQDOCKWIDGET_H
