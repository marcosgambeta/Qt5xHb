/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAENUM
REQUEST QMETAMETHOD
REQUEST QMETAOBJECT
REQUEST QVARIANT
#endif

CLASS QMetaProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD typeName
   METHOD type
   METHOD userType
   METHOD propertyIndex
   METHOD isReadable
   METHOD isWritable
   METHOD isResettable
   METHOD isDesignable
   METHOD isScriptable
   METHOD isStored
   METHOD isEditable
   METHOD isUser
   METHOD isConstant
   METHOD isFinal
   METHOD isFlagType
   METHOD isEnumType
   METHOD enumerator
   METHOD hasNotifySignal
   METHOD notifySignal
   METHOD notifySignalIndex
   METHOD revision
   METHOD read
   METHOD write
   METHOD reset
   METHOD hasStdCppSet
   METHOD isValid
   METHOD enclosingMetaObject

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaProperty>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMetaProperty>
#endif

/*
QMetaProperty()
*/
HB_FUNC_STATIC( QMETAPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMetaProperty * o = new QMetaProperty ();
    _qt5xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMETAPROPERTY_DELETE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

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
const char *name() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NAME )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      hb_retc( (const char *) obj->name () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const char *typeName() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPENAME )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      hb_retc( (const char *) obj->typeName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant::Type type() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int userType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_USERTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->userType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int propertyIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_PROPERTYINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->propertyIndex () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isReadable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISREADABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReadable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isWritable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISWRITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isWritable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isResettable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISRESETTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isResettable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDesignable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISDESIGNABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
      RBOOL( obj->isDesignable ( OPQOBJECT(1,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isScriptable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSCRIPTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
      RBOOL( obj->isScriptable ( OPQOBJECT(1,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isStored(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSTORED )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
      RBOOL( obj->isStored ( OPQOBJECT(1,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEditable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISEDITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
      RBOOL( obj->isEditable ( OPQOBJECT(1,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isUser(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISUSER )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
    {
      RBOOL( obj->isUser ( OPQOBJECT(1,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isConstant() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISCONSTANT )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isConstant () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFinal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFINAL )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isFinal () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFlagType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFLAGTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isFlagType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEnumType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISENUMTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isEnumType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMetaEnum enumerator() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENUMERATOR )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMetaEnum * ptr = new QMetaEnum( obj->enumerator () );
      _qt5xhb_createReturnClass ( ptr, "QMETAENUM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASNOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasNotifySignal () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMetaMethod notifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMetaMethod * ptr = new QMetaMethod( obj->notifySignal () );
      _qt5xhb_createReturnClass ( ptr, "QMETAMETHOD", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int notifySignalIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNALINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->notifySignalIndex () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int revision() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_REVISION )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->revision () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant read(const QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_READ )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      QVariant * ptr = new QVariant( obj->read ( PQOBJECT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool write(QObject *obj, const QVariant &value) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_WRITE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISQVARIANT(2) )
    {
      RBOOL( obj->write ( PQOBJECT(1), *PQVARIANT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool reset(QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_RESET )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      RBOOL( obj->reset ( PQOBJECT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasStdCppSet() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASSTDCPPSET )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasStdCppSet () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISVALID )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

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
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENCLOSINGMETAOBJECT )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QMetaObject * ptr = obj->enclosingMetaObject ();
      _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROM )
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

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETAPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETAPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QMETAPROPERTY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETAPROPERTY_SETSELFDESTRUCTION )
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
