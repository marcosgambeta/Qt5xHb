/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINECOOKIESTORE
REQUEST QWEBENGINEURLSCHEMEHANDLER
#endif

CLASS QQuickWebEngineProfile INHERIT QObject

   METHOD new
   METHOD delete
   METHOD storageName
   METHOD setStorageName
   METHOD isOffTheRecord
   METHOD setOffTheRecord
   METHOD persistentStoragePath
   METHOD setPersistentStoragePath
   METHOD cachePath
   METHOD setCachePath
   METHOD httpUserAgent
   METHOD setHttpUserAgent
   METHOD httpCacheType
   METHOD setHttpCacheType
   METHOD httpAcceptLanguage
   METHOD setHttpAcceptLanguage
   METHOD persistentCookiesPolicy
   METHOD setPersistentCookiesPolicy
   METHOD httpCacheMaximumSize
   METHOD setHttpCacheMaximumSize
   METHOD spellCheckLanguages
   METHOD setSpellCheckLanguages
   METHOD isSpellCheckEnabled
   METHOD setSpellCheckEnabled
   METHOD cookieStore
   METHOD setRequestInterceptor
   METHOD urlSchemeHandler
   METHOD installUrlSchemeHandler
   METHOD removeUrlScheme
   METHOD removeUrlSchemeHandler
   METHOD removeAllUrlSchemeHandlers
   METHOD clearHttpCache
   METHOD defaultProfile

   METHOD onCachePathChanged
   METHOD onHttpAcceptLanguageChanged
   METHOD onHttpCacheMaximumSizeChanged
   METHOD onHttpCacheTypeChanged
   METHOD onHttpUserAgentChanged
   METHOD onOffTheRecordChanged
   METHOD onPersistentCookiesPolicyChanged
   METHOD onPersistentStoragePathChanged
   METHOD onSpellCheckEnabledChanged
   METHOD onSpellCheckLanguagesChanged
   METHOD onStorageNameChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickWebEngineProfile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QQuickWebEngineProfile>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QQuickWebEngineProfile>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QWebEngineCookieStore>
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QWebEngineUrlSchemeHandler>
#endif

/*
QQuickWebEngineProfile(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QQuickWebEngineProfile * o = new QQuickWebEngineProfile ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QQuickWebEngineProfile(QQuickWebEngineProfilePrivate *, QObject *parent = Q_NULLPTR) [private]
*/

/*
~QQuickWebEngineProfile()
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString storageName() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_STORAGENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->storageName () );
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
void setStorageName(const QString &name)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETSTORAGENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setStorageName ( PQSTRING(1) );
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
bool isOffTheRecord() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ISOFFTHERECORD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOffTheRecord () );
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
void setOffTheRecord(bool offTheRecord)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETOFFTHERECORD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setOffTheRecord ( PBOOL(1) );
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
QString persistentStoragePath() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_PERSISTENTSTORAGEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->persistentStoragePath () );
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
void setPersistentStoragePath(const QString &path)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETPERSISTENTSTORAGEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPersistentStoragePath ( PQSTRING(1) );
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
QString cachePath() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_CACHEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->cachePath () );
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
void setCachePath(const QString &path)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETCACHEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setCachePath ( PQSTRING(1) );
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
QString httpUserAgent() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_HTTPUSERAGENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->httpUserAgent () );
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
void setHttpUserAgent(const QString &userAgent)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETHTTPUSERAGENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setHttpUserAgent ( PQSTRING(1) );
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
HttpCacheType httpCacheType() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_HTTPCACHETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->httpCacheType () );
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
void setHttpCacheType(QQuickWebEngineProfile::HttpCacheType)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETHTTPCACHETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHttpCacheType ( (QQuickWebEngineProfile::HttpCacheType) hb_parni(1) );
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
QString httpAcceptLanguage() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_HTTPACCEPTLANGUAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->httpAcceptLanguage () );
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
void setHttpAcceptLanguage(const QString &httpAcceptLanguage)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETHTTPACCEPTLANGUAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setHttpAcceptLanguage ( PQSTRING(1) );
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
PersistentCookiesPolicy persistentCookiesPolicy() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_PERSISTENTCOOKIESPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->persistentCookiesPolicy () );
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
void setPersistentCookiesPolicy(QQuickWebEngineProfile::PersistentCookiesPolicy)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETPERSISTENTCOOKIESPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPersistentCookiesPolicy ( (QQuickWebEngineProfile::PersistentCookiesPolicy) hb_parni(1) );
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
int httpCacheMaximumSize() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_HTTPCACHEMAXIMUMSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->httpCacheMaximumSize () );
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
void setHttpCacheMaximumSize(int maxSize)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETHTTPCACHEMAXIMUMSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHttpCacheMaximumSize ( PINT(1) );
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
QStringList spellCheckLanguages() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SPELLCHECKLANGUAGES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->spellCheckLanguages () );
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
void setSpellCheckLanguages(const QStringList &languages)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETSPELLCHECKLANGUAGES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setSpellCheckLanguages ( PQSTRINGLIST(1) );
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
bool isSpellCheckEnabled() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ISSPELLCHECKENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSpellCheckEnabled () );
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
void setSpellCheckEnabled(bool enabled)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETSPELLCHECKENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSpellCheckEnabled ( PBOOL(1) );
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
QQmlListProperty<QQuickWebEngineScript> userScripts()
*/

/*
QWebEngineCookieStore *cookieStore() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_COOKIESTORE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebEngineCookieStore * ptr = obj->cookieStore ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QWEBENGINECOOKIESTORE" );
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
void setRequestInterceptor(QWebEngineUrlRequestInterceptor *interceptor)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_SETREQUESTINTERCEPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWEBENGINEURLREQUESTINTERCEPTOR(1) )
    {
#endif
      obj->setRequestInterceptor ( PQWEBENGINEURLREQUESTINTERCEPTOR(1) );
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
const QWebEngineUrlSchemeHandler *urlSchemeHandler(const QByteArray &) const
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_URLSCHEMEHANDLER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      const QWebEngineUrlSchemeHandler * ptr = obj->urlSchemeHandler ( *PQBYTEARRAY(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QWEBENGINEURLSCHEMEHANDLER" );
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
void installUrlSchemeHandler(const QByteArray &scheme, QWebEngineUrlSchemeHandler *)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_INSTALLURLSCHEMEHANDLER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQWEBENGINEURLSCHEMEHANDLER(2) )
    {
#endif
      obj->installUrlSchemeHandler ( *PQBYTEARRAY(1), PQWEBENGINEURLSCHEMEHANDLER(2) );
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
void removeUrlScheme(const QByteArray &scheme)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_REMOVEURLSCHEME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->removeUrlScheme ( *PQBYTEARRAY(1) );
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
void removeUrlSchemeHandler(QWebEngineUrlSchemeHandler *)
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_REMOVEURLSCHEMEHANDLER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWEBENGINEURLSCHEMEHANDLER(1) )
    {
#endif
      obj->removeUrlSchemeHandler ( PQWEBENGINEURLSCHEMEHANDLER(1) );
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
void removeAllUrlSchemeHandlers()
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_REMOVEALLURLSCHEMEHANDLERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->removeAllUrlSchemeHandlers ();
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
Q_REVISION(2) Q_INVOKABLE void clearHttpCache()
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_CLEARHTTPCACHE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QQuickWebEngineProfile * obj = (QQuickWebEngineProfile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearHttpCache ();
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
static QQuickWebEngineProfile *defaultProfile()
*/
HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_DEFAULTPROFILE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QQuickWebEngineProfile * ptr = QQuickWebEngineProfile::defaultProfile ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQUICKWEBENGINEPROFILE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
void destroyedUrlSchemeHandler(QWebEngineUrlSchemeHandler *obj) (slot) [private]
*/

/*
QQuickWebEngineSettings *settings() const [private]
*/

void QQuickWebEngineProfileSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONCACHEPATHCHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "cachePathChanged()", "cachePathChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONHTTPACCEPTLANGUAGECHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "httpAcceptLanguageChanged()", "httpAcceptLanguageChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONHTTPCACHEMAXIMUMSIZECHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "httpCacheMaximumSizeChanged()", "httpCacheMaximumSizeChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONHTTPCACHETYPECHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "httpCacheTypeChanged()", "httpCacheTypeChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONHTTPUSERAGENTCHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "httpUserAgentChanged()", "httpUserAgentChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONOFFTHERECORDCHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "offTheRecordChanged()", "offTheRecordChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONPERSISTENTCOOKIESPOLICYCHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "persistentCookiesPolicyChanged()", "persistentCookiesPolicyChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONPERSISTENTSTORAGEPATHCHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "persistentStoragePathChanged()", "persistentStoragePathChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONSPELLCHECKENABLEDCHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "spellCheckEnabledChanged()", "spellCheckEnabledChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONSPELLCHECKLANGUAGESCHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "spellCheckLanguagesChanged()", "spellCheckLanguagesChanged()" );
}

HB_FUNC_STATIC( QQUICKWEBENGINEPROFILE_ONSTORAGENAMECHANGED )
{
  QQuickWebEngineProfileSlots_connect_signal( "storageNameChanged()", "storageNameChanged()" );
}

#pragma ENDDUMP
