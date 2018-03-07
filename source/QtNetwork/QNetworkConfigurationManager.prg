/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QNetworkConfigurationManager INHERIT QObject

   METHOD new
   METHOD delete

   METHOD allConfigurations
   METHOD capabilities
   METHOD configurationFromIdentifier
   METHOD defaultConfiguration
   METHOD isOnline
   METHOD updateConfigurations

   METHOD onConfigurationAdded
   METHOD onConfigurationChanged
   METHOD onConfigurationRemoved
   METHOD onOnlineStateChanged
   METHOD onUpdateCompleted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkConfigurationManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkConfigurationManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkConfigurationManager>
#endif

/*
explicit QNetworkConfigurationManager(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QNetworkConfigurationManager * o = new QNetworkConfigurationManager ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QNetworkConfigurationManager()
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_DELETE )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) _qt5xhb_itemGetPtrStackSelfItem();

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
QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = QNetworkConfiguration::StateFlags() ) const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ALLCONFIGURATIONS )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      QList<QNetworkConfiguration> list = obj->allConfigurations ( ISNIL(1)? (QNetworkConfiguration::StateFlags) QNetworkConfiguration::StateFlags() : (QNetworkConfiguration::StateFlags) hb_parni(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKCONFIGURATION" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QNetworkConfiguration *) new QNetworkConfiguration ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QNETWORKCONFIGURATION", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkConfigurationManager::Capabilities capabilities () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_CAPABILITIES )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->capabilities () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_CONFIGURATIONFROMIDENTIFIER )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configurationFromIdentifier ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkConfiguration defaultConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_DEFAULTCONFIGURATION )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->defaultConfiguration () );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isOnline () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ISONLINE )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isOnline () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void updateConfigurations () (slot)
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_UPDATECONFIGURATIONS )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->updateConfigurations ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QNetworkConfigurationManagerSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONADDED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "configurationAdded(QNetworkConfiguration)", "configurationAdded(QNetworkConfiguration)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONCHANGED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "configurationChanged(QNetworkConfiguration)", "configurationChanged(QNetworkConfiguration)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONREMOVED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "configurationRemoved(QNetworkConfiguration)", "configurationRemoved(QNetworkConfiguration)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONONLINESTATECHANGED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "onlineStateChanged(bool)", "onlineStateChanged(bool)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONUPDATECOMPLETED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "updateCompleted()", "updateCompleted()" );
}


#pragma ENDDUMP
