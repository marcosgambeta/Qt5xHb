$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESUPPLIER
REQUEST QPLACEUSER
#endif

CLASS QPlaceContent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD supplier
   METHOD setSupplier
   METHOD user
   METHOD setUser
   METHOD attribution
   METHOD setAttribution

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceSupplier>
#include <QPlaceUser>

/*
QPlaceContent()
*/
$internalConstuctor=5,4,0|new1|

/*
QPlaceContent(const QPlaceContent &other)
*/
$internalConstuctor=5,4,0|new2|const QPlaceContent &

//[1]QPlaceContent()
//[2]QPlaceContent(const QPlaceContent &other)

HB_FUNC_STATIC( QPLACECONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContent_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceContent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QPlaceContent::Type type() const
*/
$method=5,4,0|QPlaceContent::Type|type|

/*
QPlaceSupplier supplier() const
*/
$method=5,4,0|QPlaceSupplier|supplier|

/*
void setSupplier(const QPlaceSupplier &supplier)
*/
$method=5,4,0|void|setSupplier|const QPlaceSupplier &

/*
QPlaceUser user() const
*/
$method=5,4,0|QPlaceUser|user|

/*
void setUser(const QPlaceUser &user)
*/
$method=5,4,0|void|setUser|const QPlaceUser &

/*
QString attribution() const
*/
$method=5,4,0|QString|attribution|

/*
void setAttribution(const QString &attribution)
*/
$method=5,4,0|void|setAttribution|const QString &

$extraMethods

#pragma ENDDUMP
