$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAGESIZE
REQUEST QMARGINSF
REQUEST QMARGINS
REQUEST QRECTF
REQUEST QRECT
#endif

CLASS QPageLayout

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEquivalentTo
   METHOD isValid
   METHOD mode
   METHOD setMode
   METHOD pageSize
   METHOD orientation
   METHOD setOrientation
   METHOD units
   METHOD setUnits
   METHOD setMargins
   METHOD setLeftMargin
   METHOD setRightMargin
   METHOD setTopMargin
   METHOD setBottomMargin
   METHOD margins
   METHOD marginsPoints
   METHOD marginsPixels
   METHOD setMinimumMargins
   METHOD minimumMargins
   METHOD maximumMargins
   METHOD fullRect
   METHOD fullRectPoints
   METHOD fullRectPixels
   METHOD paintRect
   METHOD paintRectPoints
   METHOD paintRectPixels

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

#include <QRect>

/*
QPageLayout()
*/
$internalConstructor=|new1|

/*
QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
*/
%% TODO: implementar
%%$internalConstructor=|new2|const QPageSize &,QPageLayout::Orientation,const QMarginsF &,QPageLayout::Unit=QPageLayout::Point,const QMarginsF &=QMarginsF(0, 0, 0, 0)

/*
QPageLayout(const QPageLayout &other)
*/
$internalConstructor=|new3|const QPageLayout &

//[1]QPageLayout()
//[2]QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
//[3]QPageLayout(const QPageLayout &other)

HB_FUNC_STATIC( QPAGELAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_new1();
  }
  //else if( ISBETWEEN(3,5) && ISQPAGESIZE(1) && ISNUM(2) && ISQMARGINSF(3) && ISOPTNUM(4) && (ISQMARGINSF(5)||ISNIL(5)) )
  //{
  //  QPageLayout_new2();
  //}
  else if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
  {
    QPageLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QPageLayout &other)
*/
$method=|void|swap|QPageLayout &

/*
bool isEquivalentTo(const QPageLayout &other) const
*/
$method=|bool|isEquivalentTo|const QPageLayout &

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
Mode mode() const
*/
$method=|QPageLayout::Mode|mode|

/*
void setMode(Mode mode)
*/
$method=|void|setMode|QPageLayout::Mode

/*
QPageSize pageSize() const
*/
$method=|QPageSize|pageSize|

/*
Orientation orientation() const
*/
$method=|QPageLayout::Orientation|orientation|

/*
void setOrientation(Orientation orientation)
*/
$method=|void|setOrientation|QPageLayout::Orientation

/*
Unit units() const
*/
$method=|QPageLayout::Unit|units|

/*
void setUnits(Unit units)
*/
$method=|void|setUnits|QPageLayout::Unit

/*
bool setMargins(const QMarginsF &margins)
*/
$method=|bool|setMargins|const QMarginsF &

/*
bool setLeftMargin(qreal leftMargin)
*/
$method=|bool|setLeftMargin|qreal

/*
bool setRightMargin(qreal rightMargin)
*/
$method=|bool|setRightMargin|qreal

/*
bool setTopMargin(qreal topMargin)
*/
$method=|bool|setTopMargin|qreal

/*
bool setBottomMargin(qreal bottomMargin)
*/
$method=|bool|setBottomMargin|qreal

/*
QMarginsF margins() const
*/
$internalMethod=|QMarginsF|margins,margins1|

/*
QMarginsF margins(Unit units) const
*/
$internalMethod=|QMarginsF|margins,margins2|QPageLayout::Unit

//[1]QMarginsF margins() const
//[2]QMarginsF margins(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_MARGINS )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_margins1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_margins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMargins marginsPoints() const
*/
$method=|QMargins|marginsPoints|

/*
QMargins marginsPixels(int resolution) const
*/
$method=|QMargins|marginsPixels|int

/*
void setMinimumMargins(const QMarginsF &minMargins)
*/
$method=|void|setMinimumMargins|const QMarginsF &

/*
QMarginsF minimumMargins() const
*/
$method=|QMarginsF|minimumMargins|

/*
QMarginsF maximumMargins() const
*/
$method=|QMarginsF|maximumMargins|

/*
QRectF fullRect() const
*/
$internalMethod=|QRectF|fullRect,fullRect1|

/*
QRectF fullRect(Unit units) const
*/
$internalMethod=|QRectF|fullRect,fullRect2|QPageLayout::Unit

//[1]QRectF fullRect() const
//[2]QRectF fullRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_fullRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_fullRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect fullRectPoints() const
*/
$method=|QRect|fullRectPoints|

/*
QRect fullRectPixels(int resolution) const
*/
$method=|QRect|fullRectPixels|int

/*
QRectF paintRect() const
*/
$internalMethod=|QRectF|paintRect,paintRect1|

/*
QRectF paintRect(Unit units) const
*/
$internalMethod=|QRectF|paintRect,paintRect2|QPageLayout::Unit

//[1]QRectF paintRect() const
//[2]QRectF paintRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_paintRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_paintRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect paintRectPoints() const
*/
$method=|QRect|paintRectPoints|

/*
QRect paintRectPixels(int resolution) const
*/
$method=|QRect|paintRectPixels|int

$extraMethods

#pragma ENDDUMP
