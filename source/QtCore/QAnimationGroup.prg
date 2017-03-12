/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QAnimationGroup INHERIT QAbstractAnimation

   DATA class_id INIT Class_Id_QAnimationGroup
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addAnimation
   METHOD animationAt
   METHOD animationCount
   METHOD clear
   METHOD indexOfAnimation
   METHOD insertAnimation
   METHOD removeAnimation
   METHOD takeAnimation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAnimationGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAnimationGroup>
#endif


HB_FUNC_STATIC( QANIMATIONGROUP_DELETE )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ADDANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
    obj->addAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractAnimation * animationAt ( int index ) const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ANIMATIONAT )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * ptr = obj->animationAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}


/*
int animationCount () const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ANIMATIONCOUNT )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->animationCount (  ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QANIMATIONGROUP_CLEAR )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indexOfAnimation ( QAbstractAnimation * animation ) const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_INDEXOFANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->indexOfAnimation ( par1 ) );
  }
}


/*
void insertAnimation ( int index, QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_INSERTANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par2 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(2);
    obj->insertAnimation ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_REMOVEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
    obj->removeAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractAnimation *	takeAnimation ( int index )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_TAKEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * ptr = obj->takeAnimation ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}



#pragma ENDDUMP
