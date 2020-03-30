/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QLogValue3DAxisFormatter INHERIT QValue3DAxisFormatter

   METHOD new
   METHOD delete
   METHOD base
   METHOD setBase
   METHOD autoSubGrid
   METHOD setAutoSubGrid
   METHOD showEdgeLabels
   METHOD setShowEdgeLabels

   METHOD onAutoSubGridChanged
   METHOD onBaseChanged
   METHOD onShowEdgeLabelsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLogValue3DAxisFormatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QLogValue3DAxisFormatter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QLogValue3DAxisFormatter>
#endif

using namespace QtDataVisualization;

/*
explicit QLogValue3DAxisFormatter(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QLogValue3DAxisFormatter * o = new QLogValue3DAxisFormatter( OPQOBJECT(1,Q_NULLPTR) );
    Qt5xHb::returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
explicit QLogValue3DAxisFormatter(QLogValue3DAxisFormatterPrivate *d, QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QLogValue3DAxisFormatter()
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_DELETE )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal base() const
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_BASE )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->base() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setBase(qreal base)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SETBASE )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBase( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoSubGrid() const
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_AUTOSUBGRID )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoSubGrid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAutoSubGrid(bool enabled)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SETAUTOSUBGRID )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoSubGrid( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool showEdgeLabels() const
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SHOWEDGELABELS )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->showEdgeLabels() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setShowEdgeLabels(bool enabled)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SETSHOWEDGELABELS )
{
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setShowEdgeLabels( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QValue3DAxisFormatter *createNewInstance() const [protected]
*/

/*
virtual void recalculate() [protected]
*/

/*
virtual float positionAt(float value) const [protected]
*/

/*
virtual float valueAt(float position) const [protected]
*/

/*
virtual void populateCopy(QValue3DAxisFormatter &copy) const [protected]
*/

void QLogValue3DAxisFormatterSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_ONAUTOSUBGRIDCHANGED )
{
  QLogValue3DAxisFormatterSlots_connect_signal( "autoSubGridChanged(bool)", "autoSubGridChanged(bool)" );
}

HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_ONBASECHANGED )
{
  QLogValue3DAxisFormatterSlots_connect_signal( "baseChanged(qreal)", "baseChanged(qreal)" );
}

HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_ONSHOWEDGELABELSCHANGED )
{
  QLogValue3DAxisFormatterSlots_connect_signal( "showEdgeLabelsChanged(bool)", "showEdgeLabelsChanged(bool)" );
}

#pragma ENDDUMP
