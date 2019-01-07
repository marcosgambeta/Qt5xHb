/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QGamepad INHERIT QObject

   METHOD new
   METHOD delete
   METHOD deviceId
   METHOD setDeviceId
   METHOD isConnected
   METHOD name
   METHOD axisLeftX
   METHOD axisLeftY
   METHOD axisRightX
   METHOD axisRightY
   METHOD buttonA
   METHOD buttonB
   METHOD buttonX
   METHOD buttonY
   METHOD buttonL1
   METHOD buttonR1
   METHOD buttonL2
   METHOD buttonR2
   METHOD buttonSelect
   METHOD buttonStart
   METHOD buttonL3
   METHOD buttonR3
   METHOD buttonUp
   METHOD buttonDown
   METHOD buttonLeft
   METHOD buttonRight
   METHOD buttonCenter
   METHOD buttonGuide

   METHOD onAxisLeftXChanged
   METHOD onAxisLeftYChanged
   METHOD onAxisRightXChanged
   METHOD onAxisRightYChanged
   METHOD onButtonAChanged
   METHOD onButtonBChanged
   METHOD onButtonCenterChanged
   METHOD onButtonDownChanged
   METHOD onButtonGuideChanged
   METHOD onButtonL1Changed
   METHOD onButtonL2Changed
   METHOD onButtonL3Changed
   METHOD onButtonLeftChanged
   METHOD onButtonR1Changed
   METHOD onButtonR2Changed
   METHOD onButtonR3Changed
   METHOD onButtonRightChanged
   METHOD onButtonSelectChanged
   METHOD onButtonStartChanged
   METHOD onButtonUpChanged
   METHOD onButtonXChanged
   METHOD onButtonYChanged
   METHOD onConnectedChanged
   METHOD onDeviceIdChanged
   METHOD onNameChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGamepad
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QGamepad>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QGamepad>
#endif
#endif

/*
explicit QGamepad(int deviceId = 0, QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QGAMEPAD_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  if( ISBETWEEN(0,2) && ISOPTNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QGamepad * o = new QGamepad ( OPINT(1,0), OPQOBJECT(2,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QGamepad()
*/
HB_FUNC_STATIC( QGAMEPAD_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
int deviceId() const
*/
HB_FUNC_STATIC( QGAMEPAD_DEVICEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->deviceId () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setDeviceId(int number) (slot)
*/
HB_FUNC_STATIC( QGAMEPAD_SETDEVICEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDeviceId ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isConnected() const
*/
HB_FUNC_STATIC( QGAMEPAD_ISCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isConnected () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QGAMEPAD_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
double axisLeftX() const
*/
HB_FUNC_STATIC( QGAMEPAD_AXISLEFTX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->axisLeftX () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
double axisLeftY() const
*/
HB_FUNC_STATIC( QGAMEPAD_AXISLEFTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->axisLeftY () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
double axisRightX() const
*/
HB_FUNC_STATIC( QGAMEPAD_AXISRIGHTX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->axisRightX () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
double axisRightY() const
*/
HB_FUNC_STATIC( QGAMEPAD_AXISRIGHTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->axisRightY () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonA() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonA () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonB() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONB )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonB () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonX() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonX () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonY() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonY () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonL1() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONL1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonL1 () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonR1() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONR1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonR1 () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
double buttonL2() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONL2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->buttonL2 () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
double buttonR2() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONR2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->buttonR2 () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonSelect() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONSELECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonSelect () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonStart() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONSTART )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonStart () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonL3() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONL3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonL3 () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonR3() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONR3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonR3 () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonUp() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONUP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonUp () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonDown() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONDOWN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonDown () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonLeft() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonLeft () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonRight() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonRight () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonCenter() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONCENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonCenter () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool buttonGuide() const
*/
HB_FUNC_STATIC( QGAMEPAD_BUTTONGUIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepad * obj = (QGamepad *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->buttonGuide () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

void QGamepadSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGAMEPAD_ONAXISLEFTXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "axisLeftXChanged(double)", "axisLeftXChanged(double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONAXISLEFTYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "axisLeftYChanged(double)", "axisLeftYChanged(double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONAXISRIGHTXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "axisRightXChanged(double)", "axisRightXChanged(double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONAXISRIGHTYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "axisRightYChanged(double)", "axisRightYChanged(double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONACHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonAChanged(bool)", "buttonAChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONBCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonBChanged(bool)", "buttonBChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONCENTERCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonCenterChanged(bool)", "buttonCenterChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONDOWNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonDownChanged(bool)", "buttonDownChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONGUIDECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonGuideChanged(bool)", "buttonGuideChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONL1CHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonL1Changed(bool)", "buttonL1Changed(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONL2CHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonL2Changed(double)", "buttonL2Changed(double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONL3CHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonL3Changed(bool)", "buttonL3Changed(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONLEFTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonLeftChanged(bool)", "buttonLeftChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONR1CHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonR1Changed(bool)", "buttonR1Changed(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONR2CHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonR2Changed(double)", "buttonR2Changed(double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONR3CHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonR3Changed(bool)", "buttonR3Changed(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONRIGHTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonRightChanged(bool)", "buttonRightChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONSELECTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonSelectChanged(bool)", "buttonSelectChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONSTARTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonStartChanged(bool)", "buttonStartChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONUPCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonUpChanged(bool)", "buttonUpChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonXChanged(bool)", "buttonXChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONBUTTONYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "buttonYChanged(bool)", "buttonYChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONCONNECTEDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "connectedChanged(bool)", "connectedChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONDEVICEIDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "deviceIdChanged(int)", "deviceIdChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPAD_ONNAMECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadSlots_connect_signal( "nameChanged(QString)", "nameChanged(QString)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
