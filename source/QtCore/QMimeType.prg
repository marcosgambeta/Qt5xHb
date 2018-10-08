/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QMimeType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD isDefault
   METHOD name
   METHOD comment
   METHOD genericIconName
   METHOD iconName
   METHOD globPatterns
   METHOD parentMimeTypes
   METHOD allAncestors
   METHOD aliases
   METHOD suffixes
   METHOD preferredSuffix
   METHOD inherits
   METHOD filterString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMimeType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMimeType>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMimeType>
#endif

#include <QStringList>

/*
QMimeType()
*/
void QMimeType_new1 ()
{
  QMimeType * o = new QMimeType ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QMimeType(const QMimeType &other)
*/
void QMimeType_new2 ()
{
  QMimeType * o = new QMimeType ( *PQMIMETYPE(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QMimeType()
//[2]QMimeType(const QMimeType &other)

HB_FUNC_STATIC( QMIMETYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMimeType_new1();
  }
  else if( ISNUMPAR(1) && ISQMIMETYPE(1) )
  {
    QMimeType_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMIMETYPE_DELETE )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QMimeType &other)
*/
HB_FUNC_STATIC( QMIMETYPE_SWAP )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMIMETYPE(1) )
    {
      obj->swap ( *PQMIMETYPE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QMIMETYPE_ISVALID )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDefault() const
*/
HB_FUNC_STATIC( QMIMETYPE_ISDEFAULT )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDefault () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QMIMETYPE_NAME )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->name () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString comment() const
*/
HB_FUNC_STATIC( QMIMETYPE_COMMENT )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->comment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString genericIconName() const
*/
HB_FUNC_STATIC( QMIMETYPE_GENERICICONNAME )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->genericIconName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString iconName() const
*/
HB_FUNC_STATIC( QMIMETYPE_ICONNAME )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->iconName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList globPatterns() const
*/
HB_FUNC_STATIC( QMIMETYPE_GLOBPATTERNS )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->globPatterns () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList parentMimeTypes() const
*/
HB_FUNC_STATIC( QMIMETYPE_PARENTMIMETYPES )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->parentMimeTypes () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList allAncestors() const
*/
HB_FUNC_STATIC( QMIMETYPE_ALLANCESTORS )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->allAncestors () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList aliases() const
*/
HB_FUNC_STATIC( QMIMETYPE_ALIASES )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->aliases () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList suffixes() const
*/
HB_FUNC_STATIC( QMIMETYPE_SUFFIXES )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->suffixes () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString preferredSuffix() const
*/
HB_FUNC_STATIC( QMIMETYPE_PREFERREDSUFFIX )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->preferredSuffix () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool inherits(const QString &mimeTypeName) const
*/
HB_FUNC_STATIC( QMIMETYPE_INHERITS )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->inherits ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString filterString() const
*/
HB_FUNC_STATIC( QMIMETYPE_FILTERSTRING )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->filterString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QMIMETYPE_NEWFROM )
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

HB_FUNC_STATIC( QMIMETYPE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMIMETYPE_NEWFROM );
}

HB_FUNC_STATIC( QMIMETYPE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMIMETYPE_NEWFROM );
}

HB_FUNC_STATIC( QMIMETYPE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMIMETYPE_SETSELFDESTRUCTION )
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
