/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QGLFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accum
   METHOD accumBufferSize
   METHOD alpha
   METHOD alphaBufferSize
   METHOD blueBufferSize
   METHOD depth
   METHOD depthBufferSize
   METHOD directRendering
   METHOD doubleBuffer
   METHOD greenBufferSize
   METHOD hasOverlay
   METHOD majorVersion
   METHOD minorVersion
   METHOD plane
   METHOD profile
   METHOD redBufferSize
   METHOD rgba
   METHOD sampleBuffers
   METHOD samples
   METHOD setAccum
   METHOD setAccumBufferSize
   METHOD setAlpha
   METHOD setAlphaBufferSize
   METHOD setBlueBufferSize
   METHOD setDepth
   METHOD setDepthBufferSize
   METHOD setDirectRendering
   METHOD setDoubleBuffer
   METHOD setGreenBufferSize
   METHOD setOption
   METHOD setOverlay
   METHOD setPlane
   METHOD setProfile
   METHOD setRedBufferSize
   METHOD setRgba
   METHOD setSampleBuffers
   METHOD setSamples
   METHOD setStencil
   METHOD setStencilBufferSize
   METHOD setStereo
   METHOD setSwapInterval
   METHOD setVersion
   METHOD stencil
   METHOD stencilBufferSize
   METHOD stereo
   METHOD swapInterval
   METHOD testOption
   METHOD defaultFormat
   METHOD defaultOverlayFormat
   METHOD hasOpenGL
   METHOD hasOpenGLOverlays
   METHOD openGLVersionFlags
   METHOD setDefaultFormat
   METHOD setDefaultOverlayFormat

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLFormat>
#endif

/*
QGLFormat ()
*/
void QGLFormat_new1 ()
{
  QGLFormat * o = new QGLFormat ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QGLFormat ( QGL::FormatOptions options, int plane = 0 )
*/
void QGLFormat_new2 ()
{
  QGLFormat * o = new QGLFormat ( (QGL::FormatOptions) hb_parni(1), OPINT(2,0) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QGLFormat ( const QGLFormat & other )
*/
void QGLFormat_new3 ()
{
  QGLFormat * o = new QGLFormat ( *PQGLFORMAT(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QGLFormat ()
//[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
//[3]QGLFormat ( const QGLFormat & other )

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFormat_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QGLFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    QGLFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFORMAT_DELETE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool accum () const
*/
HB_FUNC_STATIC( QGLFORMAT_ACCUM )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->accum () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int accumBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_ACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->accumBufferSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool alpha () const
*/
HB_FUNC_STATIC( QGLFORMAT_ALPHA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->alpha () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int alphaBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_ALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->alphaBufferSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int blueBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_BLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->blueBufferSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool depth () const
*/
HB_FUNC_STATIC( QGLFORMAT_DEPTH )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->depth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int depthBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_DEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->depthBufferSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool directRendering () const
*/
HB_FUNC_STATIC( QGLFORMAT_DIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->directRendering () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QGLFORMAT_DOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->doubleBuffer () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int greenBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_GREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->greenBufferSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasOverlay () const
*/
HB_FUNC_STATIC( QGLFORMAT_HASOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasOverlay () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int majorVersion () const
*/
HB_FUNC_STATIC( QGLFORMAT_MAJORVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->majorVersion () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int minorVersion () const
*/
HB_FUNC_STATIC( QGLFORMAT_MINORVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->minorVersion () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int plane () const
*/
HB_FUNC_STATIC( QGLFORMAT_PLANE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->plane () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
OpenGLContextProfile profile () const
*/
HB_FUNC_STATIC( QGLFORMAT_PROFILE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->profile () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int redBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_REDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->redBufferSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool rgba () const
*/
HB_FUNC_STATIC( QGLFORMAT_RGBA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->rgba () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool sampleBuffers () const
*/
HB_FUNC_STATIC( QGLFORMAT_SAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->sampleBuffers () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int samples () const
*/
HB_FUNC_STATIC( QGLFORMAT_SAMPLES )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->samples () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAccum ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUM )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAccum ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccumBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAccumBufferSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlpha ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAlpha ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlphaBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAlphaBufferSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBlueBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETBLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBlueBufferSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDepth ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTH )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDepth ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDepthBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDepthBufferSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirectRendering ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDirectRendering ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleBuffer ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDoubleBuffer ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGreenBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETGREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setGreenBufferSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOption ( QGL::FormatOptions opt )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOPTION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOption ( (QGL::FormatOptions) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOverlay ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setOverlay ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlane ( int plane )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPLANE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPlane ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProfile ( OpenGLContextProfile profile )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPROFILE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setProfile ( (QGLFormat::OpenGLContextProfile) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRedBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETREDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRedBufferSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRgba ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETRGBA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setRgba ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSampleBuffers ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setSampleBuffers ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSamples ( int numSamples )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLES )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSamples ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStencil ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCIL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setStencil ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStencilBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setStencilBufferSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStereo ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTEREO )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setStereo ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSwapInterval ( int interval )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSwapInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVersion ( int major, int minor )
*/
HB_FUNC_STATIC( QGLFORMAT_SETVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setVersion ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool stencil () const
*/
HB_FUNC_STATIC( QGLFORMAT_STENCIL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->stencil () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int stencilBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_STENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->stencilBufferSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool stereo () const
*/
HB_FUNC_STATIC( QGLFORMAT_STEREO )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->stereo () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int swapInterval () const
*/
HB_FUNC_STATIC( QGLFORMAT_SWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->swapInterval () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool testOption ( QGL::FormatOptions opt ) const
*/
HB_FUNC_STATIC( QGLFORMAT_TESTOPTION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->testOption ( (QGL::FormatOptions) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QGLFormat defaultFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTFORMAT )
{
    if( ISNUMPAR(0) )
  {
      QGLFormat * ptr = new QGLFormat( QGLFormat::defaultFormat () );
      _qt5xhb_createReturnClass ( ptr, "QGLFORMAT", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QGLFormat defaultOverlayFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTOVERLAYFORMAT )
{
    if( ISNUMPAR(0) )
  {
      QGLFormat * ptr = new QGLFormat( QGLFormat::defaultOverlayFormat () );
      _qt5xhb_createReturnClass ( ptr, "QGLFORMAT", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool hasOpenGL ()
*/
HB_FUNC_STATIC( QGLFORMAT_HASOPENGL )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QGLFormat::hasOpenGL () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool hasOpenGLOverlays ()
*/
HB_FUNC_STATIC( QGLFORMAT_HASOPENGLOVERLAYS )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QGLFormat::hasOpenGLOverlays () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static OpenGLVersionFlags openGLVersionFlags ()
*/
HB_FUNC_STATIC( QGLFORMAT_OPENGLVERSIONFLAGS )
{
    if( ISNUMPAR(0) )
  {
      RENUM( QGLFormat::openGLVersionFlags () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setDefaultFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTFORMAT )
{
    if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
      QGLFormat::setDefaultFormat ( *PQGLFORMAT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setDefaultOverlayFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTOVERLAYFORMAT )
{
    if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
      QGLFormat::setDefaultOverlayFormat ( *PQGLFORMAT(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGLFORMAT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGLFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QGLFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QGLFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLFORMAT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
