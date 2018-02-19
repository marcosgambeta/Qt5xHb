/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS Q3DScene INHERIT QObject

   METHOD new
   METHOD delete

   METHOD activeCamera
   METHOD activeLight
   METHOD devicePixelRatio
   METHOD graphPositionQuery
   METHOD invalidSelectionPoint
   METHOD isPointInPrimarySubView
   METHOD isPointInSecondarySubView
   METHOD isSecondarySubviewOnTop
   METHOD isSlicingActive
   METHOD primarySubViewport
   METHOD secondarySubViewport
   METHOD selectionQueryPosition
   METHOD setActiveCamera
   METHOD setActiveLight
   METHOD setDevicePixelRatio
   METHOD setGraphPositionQuery
   METHOD setPrimarySubViewport
   METHOD setSecondarySubviewOnTop
   METHOD setSecondarySubViewport
   METHOD setSelectionQueryPosition
   METHOD setSlicingActive
   METHOD viewport

   METHOD onActiveCameraChanged
   METHOD onActiveLightChanged
   METHOD onDevicePixelRatioChanged
   METHOD onGraphPositionQueryChanged
   METHOD onPrimarySubViewportChanged
   METHOD onSecondarySubviewOnTopChanged
   METHOD onSecondarySubViewportChanged
   METHOD onSelectionQueryPositionChanged
   METHOD onSlicingActiveChanged
   METHOD onViewportChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DScene
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <Q3DScene>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <Q3DScene>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DScene(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DSCENE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    Q3DScene * o = new Q3DScene ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DScene()
*/
HB_FUNC_STATIC( Q3DSCENE_DELETE )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

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
QRect viewport() const
*/
HB_FUNC_STATIC( Q3DSCENE_VIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->viewport () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect primarySubViewport() const
*/
HB_FUNC_STATIC( Q3DSCENE_PRIMARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->primarySubViewport () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPrimarySubViewport(const QRect &primarySubViewport)
*/
HB_FUNC_STATIC( Q3DSCENE_SETPRIMARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->setPrimarySubViewport ( *PQRECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect secondarySubViewport() const
*/
HB_FUNC_STATIC( Q3DSCENE_SECONDARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->secondarySubViewport () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSecondarySubViewport(const QRect &secondarySubViewport)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSECONDARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->setSecondarySubViewport ( *PQRECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint selectionQueryPosition() const
*/
HB_FUNC_STATIC( Q3DSCENE_SELECTIONQUERYPOSITION )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->selectionQueryPosition () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSelectionQueryPosition(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSELECTIONQUERYPOSITION )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      obj->setSelectionQueryPosition ( *PQPOINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isSecondarySubviewOnTop() const
*/
HB_FUNC_STATIC( Q3DSCENE_ISSECONDARYSUBVIEWONTOP )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSecondarySubviewOnTop () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSecondarySubviewOnTop(bool isSecondaryOnTop)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSECONDARYSUBVIEWONTOP )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setSecondarySubviewOnTop ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isSlicingActive() const
*/
HB_FUNC_STATIC( Q3DSCENE_ISSLICINGACTIVE )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSlicingActive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSlicingActive(bool isSlicing)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSLICINGACTIVE )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setSlicingActive ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q3DCamera *activeCamera() const
*/
HB_FUNC_STATIC( Q3DSCENE_ACTIVECAMERA )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      Q3DCamera * ptr = obj->activeCamera ();
      _qt5xhb_createReturnQObjectClass ( ptr, "Q3DCAMERA" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setActiveCamera(Q3DCamera *camera)
*/
HB_FUNC_STATIC( Q3DSCENE_SETACTIVECAMERA )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQ3DCAMERA(1) )
    {
      obj->setActiveCamera ( PQ3DCAMERA(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q3DLight *activeLight() const
*/
HB_FUNC_STATIC( Q3DSCENE_ACTIVELIGHT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      Q3DLight * ptr = obj->activeLight ();
      _qt5xhb_createReturnQObjectClass ( ptr, "Q3DLIGHT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setActiveLight(Q3DLight *light)
*/
HB_FUNC_STATIC( Q3DSCENE_SETACTIVELIGHT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQ3DLIGHT(1) )
    {
      obj->setActiveLight ( PQ3DLIGHT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float devicePixelRatio() const
*/
HB_FUNC_STATIC( Q3DSCENE_DEVICEPIXELRATIO )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RFLOAT( obj->devicePixelRatio () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDevicePixelRatio(float pixelRatio)
*/
HB_FUNC_STATIC( Q3DSCENE_SETDEVICEPIXELRATIO )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDevicePixelRatio ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint graphPositionQuery() const
*/
HB_FUNC_STATIC( Q3DSCENE_GRAPHPOSITIONQUERY )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->graphPositionQuery () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setGraphPositionQuery(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_SETGRAPHPOSITIONQUERY )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      obj->setGraphPositionQuery ( *PQPOINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isPointInPrimarySubView(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_ISPOINTINPRIMARYSUBVIEW )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      RBOOL( obj->isPointInPrimarySubView ( *PQPOINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isPointInSecondarySubView(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_ISPOINTINSECONDARYSUBVIEW )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      RBOOL( obj->isPointInSecondarySubView ( *PQPOINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QPoint invalidSelectionPoint()
*/
HB_FUNC_STATIC( Q3DSCENE_INVALIDSELECTIONPOINT )
{
    if( ISNUMPAR(0) )
  {
      QPoint * ptr = new QPoint( Q3DScene::invalidSelectionPoint () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
