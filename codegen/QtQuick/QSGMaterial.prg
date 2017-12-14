$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIALSHADER
REQUEST QSGMATERIALTYPE
#endif

CLASS QSGMaterial

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD compare
   METHOD createShader
   METHOD flags
   METHOD setFlag
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual int compare(const QSGMaterial * other) const
$virtualMethod=|int|compare|const QSGMaterial *

$prototype=virtual QSGMaterialShader * createShader() const = 0
$virtualMethod=|QSGMaterialShader *|createShader|

$prototype=QSGMaterial::Flags flags() const
$method=|QSGMaterial::Flags|flags|

$prototype=void setFlag(Flags flags, bool on = true)
$method=|void|setFlag|QSGMaterial::Flags,bool=true

$prototype=virtual QSGMaterialType * type() const = 0
$virtualMethod=|QSGMaterialType *|type|

$extraMethods

#pragma ENDDUMP
