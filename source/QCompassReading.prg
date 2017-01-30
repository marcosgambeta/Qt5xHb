/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QCompassReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QCompassReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD azimuth
   METHOD setAzimuth
   METHOD calibrationLevel
   METHOD setCalibrationLevel
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCompassReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QCompassReading>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QCompassReading>
#endif
#endif


HB_FUNC_STATIC( QCOMPASSREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal azimuth() const
*/
HB_FUNC_STATIC( QCOMPASSREADING_AZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->azimuth (  ) );
  }
#endif
}


/*
void setAzimuth(qreal azimuth)
*/
HB_FUNC_STATIC( QCOMPASSREADING_SETAZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setAzimuth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal calibrationLevel() const
*/
HB_FUNC_STATIC( QCOMPASSREADING_CALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->calibrationLevel (  ) );
  }
#endif
}


/*
void setCalibrationLevel(qreal calibrationLevel)
*/
HB_FUNC_STATIC( QCOMPASSREADING_SETCALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setCalibrationLevel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
