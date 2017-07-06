$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QCURSOR
REQUEST QOBJECT
REQUEST QRECT
REQUEST QMARGINS
REQUEST QPOINT
REQUEST QSURFACEFORMAT
REQUEST QSCREEN
#endif

CLASS QWindow INHERIT QObject,QSurface

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD baseSize
   METHOD contentOrientation
   METHOD create
   METHOD cursor
   METHOD destroy
   METHOD focusObject
   METHOD frameGeometry
   METHOD frameMargins
   METHOD geometry
   METHOD height
   METHOD isActive
   METHOD isAncestorOf
   METHOD isExposed
   METHOD isModal
   METHOD isTopLevel
   METHOD isVisible
   METHOD mapFromGlobal
   METHOD mapToGlobal
   METHOD maximumSize
   METHOD minimumSize
   METHOD parent
   METHOD reportContentOrientationChange
   METHOD requestedFormat
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD screen
   METHOD setBaseSize
   METHOD setCursor
   METHOD setFormat
   METHOD setGeometry1
   METHOD setGeometry2
   METHOD setGeometry
   METHOD setKeyboardGrabEnabled
   METHOD setMaximumSize
   METHOD setMinimumSize
   METHOD setMouseGrabEnabled
   METHOD setOpacity
   METHOD setParent
   METHOD setScreen
   METHOD setSizeIncrement
   METHOD setSurfaceType
   METHOD setTransientParent
   METHOD sizeIncrement
   METHOD transientParent
   METHOD unsetCursor
   METHOD width
   METHOD windowState
   METHOD x
   METHOD y
   METHOD format
   METHOD size
   METHOD surfaceType
   METHOD close
   METHOD hide
   METHOD lower
   METHOD raise
   METHOD setHeight
   METHOD setVisible
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD show
   METHOD showFullScreen
   METHOD showMaximized
   METHOD showMinimized
   METHOD showNormal

   METHOD onContentOrientationChanged
   METHOD onFocusObjectChanged
   METHOD onHeightChanged
   METHOD onScreenChanged
   METHOD onVisibleChanged
   METHOD onWidthChanged
   METHOD onWindowModalityChanged
   METHOD onXChanged
   METHOD onYChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWindow(QScreen * targetScreen = 0)
*/
HB_FUNC_STATIC( QWINDOW_NEW1 )
{
  QScreen * par1 = ISNIL(1)? 0 : (QScreen *) _qt5xhb_itemGetPtr(1);
  QWindow * o = new QWindow ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QWindow(QWindow * parent)
*/
HB_FUNC_STATIC( QWINDOW_NEW2 )
{
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QWindow * o = new QWindow ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QWindow(QScreen * targetScreen = 0)
//[2]QWindow(QWindow * parent)

HB_FUNC_STATIC( QWINDOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSCREEN(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QWINDOW_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    HB_FUNC_EXEC( QWINDOW_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSize baseSize() const
*/
HB_FUNC_STATIC( QWINDOW_BASESIZE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->baseSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
Qt::ScreenOrientation contentOrientation() const
*/
HB_FUNC_STATIC( QWINDOW_CONTENTORIENTATION )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->contentOrientation () );
  }
}


/*
void create()
*/
HB_FUNC_STATIC( QWINDOW_CREATE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->create ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QCursor cursor() const
*/
HB_FUNC_STATIC( QWINDOW_CURSOR )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor () );
    _qt5xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
}


/*
void destroy()
*/
HB_FUNC_STATIC( QWINDOW_DESTROY )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QObject * focusObject() const
*/
HB_FUNC_STATIC( QWINDOW_FOCUSOBJECT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->focusObject ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QRect frameGeometry() const
*/
HB_FUNC_STATIC( QWINDOW_FRAMEGEOMETRY )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->frameGeometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QMargins frameMargins() const
*/
HB_FUNC_STATIC( QWINDOW_FRAMEMARGINS )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->frameMargins () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}



/*
QRect geometry() const
*/
HB_FUNC_STATIC( QWINDOW_GEOMETRY )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int height() const
*/
HB_FUNC_STATIC( QWINDOW_HEIGHT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->height () );
  }
}


/*
bool isActive() const
*/
HB_FUNC_STATIC( QWINDOW_ISACTIVE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}


/*
bool isAncestorOf(const QWindow * child, AncestorMode mode = IncludeTransients) const
*/
HB_FUNC_STATIC( QWINDOW_ISANCESTOROF )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QWindow * par1 = (const QWindow *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QWindow::IncludeTransients : hb_parni(2);
    RBOOL( obj->isAncestorOf ( par1, (QWindow::AncestorMode) par2 ) );
  }
}


/*
bool isExposed() const
*/
HB_FUNC_STATIC( QWINDOW_ISEXPOSED )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isExposed () );
  }
}


/*
bool isModal() const
*/
HB_FUNC_STATIC( QWINDOW_ISMODAL )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isModal () );
  }
}


/*
bool isTopLevel() const
*/
HB_FUNC_STATIC( QWINDOW_ISTOPLEVEL )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isTopLevel () );
  }
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINDOW_ISVISIBLE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
}


/*
QPoint mapFromGlobal(const QPoint & pos) const
*/
HB_FUNC_STATIC( QWINDOW_MAPFROMGLOBAL )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFromGlobal ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint mapToGlobal(const QPoint & pos) const
*/
HB_FUNC_STATIC( QWINDOW_MAPTOGLOBAL )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapToGlobal ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QSize maximumSize() const
*/
HB_FUNC_STATIC( QWINDOW_MAXIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize minimumSize() const
*/
HB_FUNC_STATIC( QWINDOW_MINIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWindow * parent() const
*/
HB_FUNC_STATIC( QWINDOW_PARENT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->parent ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}



/*
void reportContentOrientationChange(Qt::ScreenOrientation orientation)
*/
HB_FUNC_STATIC( QWINDOW_REPORTCONTENTORIENTATIONCHANGE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reportContentOrientationChange ( (Qt::ScreenOrientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
QSurfaceFormat requestedFormat() const
*/
HB_FUNC_STATIC( QWINDOW_REQUESTEDFORMAT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->requestedFormat () );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
void resize(const QSize & newSize)
*/
HB_FUNC_STATIC( QWINDOW_RESIZE1 )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resize(int w, int h)
*/
HB_FUNC_STATIC( QWINDOW_RESIZE2 )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void resize(const QSize & newSize)
//[2]void resize(int w, int h)

HB_FUNC_STATIC( QWINDOW_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWINDOW_RESIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWINDOW_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScreen * screen() const
*/
HB_FUNC_STATIC( QWINDOW_SCREEN )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen ();
    _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}


/*
void setBaseSize(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETBASESIZE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBaseSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursor(const QCursor &)
*/
HB_FUNC_STATIC( QWINDOW_SETCURSOR )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCursor ( *PQCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat(const QSurfaceFormat & format)
*/
HB_FUNC_STATIC( QWINDOW_SETFORMAT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQSURFACEFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setGeometry(int posx, int posy, int w, int h)
*/
HB_FUNC_STATIC( QWINDOW_SETGEOMETRY1 )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGeometry(const QRect & rect)
*/
HB_FUNC_STATIC( QWINDOW_SETGEOMETRY2 )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGeometry(int posx, int posy, int w, int h)
//[2]void setGeometry(const QRect & rect)

HB_FUNC_STATIC( QWINDOW_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QWINDOW_SETGEOMETRY1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QWINDOW_SETGEOMETRY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setKeyboardGrabEnabled(bool grab)
*/
HB_FUNC_STATIC( QWINDOW_SETKEYBOARDGRABENABLED )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setKeyboardGrabEnabled ( PBOOL(1) ) );
  }
}


/*
void setMaximumSize(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETMAXIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumSize(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETMINIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setMouseGrabEnabled(bool grab)
*/
HB_FUNC_STATIC( QWINDOW_SETMOUSEGRABENABLED )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setMouseGrabEnabled ( PBOOL(1) ) );
  }
}


/*
void setOpacity(qreal level)
*/
HB_FUNC_STATIC( QWINDOW_SETOPACITY )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpacity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParent(QWindow * parent)
*/
HB_FUNC_STATIC( QWINDOW_SETPARENT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
    obj->setParent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




//[1]void setPos(const QPoint & pt)
//[2]void setPos(int posx, int posy)

//HB_FUNC_STATIC( QWINDOW_SETPOS )
//{
//  if( ISNUMPAR(1) && ISOBJECT(1) )
//  {
//    HB_FUNC_EXEC( QWINDOW_SETPOS1 );
//  }
//  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
//  {
//    HB_FUNC_EXEC( QWINDOW_SETPOS2 );
//  }
//}

/*
void setScreen(QScreen * newScreen)
*/
HB_FUNC_STATIC( QWINDOW_SETSCREEN )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * par1 = (QScreen *) _qt5xhb_itemGetPtr(1);
    obj->setScreen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeIncrement(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETSIZEINCREMENT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSizeIncrement ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSurfaceType(SurfaceType surfaceType)
*/
HB_FUNC_STATIC( QWINDOW_SETSURFACETYPE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSurfaceType ( (QSurface::SurfaceType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransientParent(QWindow * parent)
*/
HB_FUNC_STATIC( QWINDOW_SETTRANSIENTPARENT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
    obj->setTransientParent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






/*
QSize sizeIncrement() const
*/
HB_FUNC_STATIC( QWINDOW_SIZEINCREMENT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeIncrement () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWindow * transientParent() const
*/
HB_FUNC_STATIC( QWINDOW_TRANSIENTPARENT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->transientParent ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
void unsetCursor()
*/
HB_FUNC_STATIC( QWINDOW_UNSETCURSOR )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetCursor ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int width() const
*/
HB_FUNC_STATIC( QWINDOW_WIDTH )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->width () );
  }
}







/*
Qt::WindowState windowState() const
*/
HB_FUNC_STATIC( QWINDOW_WINDOWSTATE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->windowState () );
  }
}




/*
int x() const
*/
HB_FUNC_STATIC( QWINDOW_X )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QWINDOW_Y )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->y () );
  }
}


/*
virtual QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QWINDOW_FORMAT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
virtual QSize size() const
*/
HB_FUNC_STATIC( QWINDOW_SIZE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual SurfaceType surfaceType() const
*/
HB_FUNC_STATIC( QWINDOW_SURFACETYPE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->surfaceType () );
  }
}


/*
bool close()
*/
HB_FUNC_STATIC( QWINDOW_CLOSE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->close () );
  }
}


/*
void hide()
*/
HB_FUNC_STATIC( QWINDOW_HIDE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hide ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void lower()
*/
HB_FUNC_STATIC( QWINDOW_LOWER )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->lower ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void raise()
*/
HB_FUNC_STATIC( QWINDOW_RAISE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->raise ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETHEIGHT )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINDOW_SETVISIBLE )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETWIDTH )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setX(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETX )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setX ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETY )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setY ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void show()
*/
HB_FUNC_STATIC( QWINDOW_SHOW )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->show ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showFullScreen()
*/
HB_FUNC_STATIC( QWINDOW_SHOWFULLSCREEN )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showFullScreen ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMaximized()
*/
HB_FUNC_STATIC( QWINDOW_SHOWMAXIMIZED )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showMaximized ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMinimized()
*/
HB_FUNC_STATIC( QWINDOW_SHOWMINIMIZED )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showMinimized ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showNormal()
*/
HB_FUNC_STATIC( QWINDOW_SHOWNORMAL )
{
  QWindow * obj = (QWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showNormal ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
