$header

#include "hbclass.ch"

CLASS QSGTransformNode INHERIT QSGNode

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGTransformNode()
HB_FUNC_STATIC( QSGTRANSFORMNODE_NEW )
{
  QSGTransformNode * o = new QSGTransformNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
