/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QAxScriptEngine INHERIT QAxObject

   DATA class_id INIT Class_Id_QAxScriptEngine
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD hasIntrospection
   METHOD isValid
   METHOD scriptLanguage
   METHOD setState
   METHOD state
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAxScriptEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAxScriptEngine>
#endif

/*
QAxScriptEngine ( const QString & language, QAxScript * script )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_NEW )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QAxScript * par2 = (QAxScript *) _qt5xhb_itemGetPtr(2);
  QAxScriptEngine * o = new QAxScriptEngine ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAxScriptEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QAXSCRIPTENGINE_DELETE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addItem ( const QString & name )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_ADDITEM )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasIntrospection () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_HASINTROSPECTION )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasIntrospection (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_ISVALID )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}



/*
QString scriptLanguage () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_SCRIPTLANGUAGE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->scriptLanguage (  ).toLatin1().data() );
  }
}


/*
void setState ( State st )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_SETSTATE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setState (  (QAxScriptEngine::State) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_STATE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}



#pragma ENDDUMP
