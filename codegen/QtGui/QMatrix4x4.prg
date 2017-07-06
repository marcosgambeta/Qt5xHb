$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR4D
//REQUEST QMATRIX3X3 TODO: classe nao implementada
REQUEST QMATRIX
REQUEST QTRANSFORM
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR3D
REQUEST QRECT
REQUEST QRECTF
#endif

CLASS QMatrix4x4

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD column
   METHOD setColumn
   METHOD row
   METHOD setRow
   METHOD isAffine
   METHOD isIdentity
   METHOD setToIdentity
   METHOD fill
   METHOD determinant
   METHOD inverted
   METHOD transposed
   METHOD normalMatrix
   METHOD scale
   METHOD translate
   METHOD rotate
   METHOD ortho
   METHOD frustum
   METHOD perspective
   METHOD lookAt
   METHOD viewport
   METHOD flipCoordinates
   METHOD toAffine
   METHOD toTransform
   METHOD map
   METHOD mapVector
   METHOD mapRect
   METHOD optimize

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

#include <QMatrix>
#include <QTransform>

/*
QMatrix4x4()
*/
void QMatrix4x4_new1 ()
{
  QMatrix4x4 * o = new QMatrix4x4 ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QMatrix4x4(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44)
*/
void QMatrix4x4_new3 ()
{
  QMatrix4x4 * o = new QMatrix4x4 ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), PFLOAT(5), PFLOAT(6), PFLOAT(7), PFLOAT(8), PFLOAT(9), PFLOAT(10), PFLOAT(11), PFLOAT(12), PFLOAT(13), PFLOAT(14), PFLOAT(15), PFLOAT(16) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QMatrix4x4(const QTransform& transform)
*/
void QMatrix4x4_new5 ()
{
  QMatrix4x4 * o = new QMatrix4x4 ( *PQTRANSFORM(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QMatrix4x4(const QMatrix& matrix)
*/
void QMatrix4x4_new6 ()
{
  QMatrix4x4 * o = new QMatrix4x4 ( *PQMATRIX(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QMatrix4x4()
//[2]explicit QMatrix4x4(const float *values)
//[3]QMatrix4x4(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44)
//[4]explicit QMatrix4x4(const QGenericMatrix<N, M, float>& matrix);
//[5]QMatrix4x4(const QTransform& transform);
//[6]QMatrix4x4(const QMatrix& matrix);

HB_FUNC_STATIC( QMATRIX4X4_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMatrix4x4_new1();
  }
  //else if( ISNUMPAR(1) && ISARRAY(1) )
  //{
  //  QMatrix4x4_new2();
  //}
  else if( ISNUMPAR(16) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) && ISNUM(10) && ISNUM(11) && ISNUM(12) && ISNUM(13) && ISNUM(14) && ISNUM(15) && ISNUM(16) )
  {
    QMatrix4x4_new3();
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  QMatrix4x4_new4();
  //}
  else if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    QMatrix4x4_new5();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QMatrix4x4_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QVector4D column(int index) const
*/
HB_FUNC_STATIC( QMATRIX4X4_COLUMN )
{
#ifndef QT_NO_VECTOR4D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVector4D * ptr = new QVector4D( obj->column ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR4D" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setColumn(int index, const QVector4D& value)
*/
HB_FUNC_STATIC( QMATRIX4X4_SETCOLUMN )
{
#ifndef QT_NO_VECTOR4D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVECTOR4D(2) )
    {
      obj->setColumn ( PINT(1), *PQVECTOR4D(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QVector4D row(int index) const
*/
HB_FUNC_STATIC( QMATRIX4X4_ROW )
{
#ifndef QT_NO_VECTOR4D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVector4D * ptr = new QVector4D( obj->row ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR4D" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }

  }
#endif
}

/*
void setRow(int index, const QVector4D& value)
*/
HB_FUNC_STATIC( QMATRIX4X4_SETROW )
{
#ifndef QT_NO_VECTOR4D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVECTOR4D(2) )
    {
      obj->setRow ( PINT(1), *PQVECTOR4D(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isAffine() const
*/
HB_FUNC_STATIC( QMATRIX4X4_ISAFFINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( (bool) obj->isAffine () );
  }
#endif
}

/*
bool isIdentity() const
*/
HB_FUNC_STATIC( QMATRIX4X4_ISIDENTITY )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( (bool) obj->isIdentity () );
  }
}

/*
void setToIdentity()
*/
HB_FUNC_STATIC( QMATRIX4X4_SETTOIDENTITY )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setToIdentity ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill(float value)
*/
HB_FUNC_STATIC( QMATRIX4X4_FILL )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->fill ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
double determinant() const
*/
HB_FUNC_STATIC( QMATRIX4X4_DETERMINANT )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RDOUBLE( obj->determinant () );
  }
}

/*
QMatrix4x4 inverted(bool *invertible = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QMATRIX4X4_INVERTED ) // TODO: revisar implementacao
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      bool par1;
      QMatrix4x4 * ptr = new QMatrix4x4( obj->inverted ( &par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX4X4", true );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMatrix4x4 transposed() const
*/
HB_FUNC_STATIC( QMATRIX4X4_TRANSPOSED )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMatrix4x4 * ptr = new QMatrix4x4( obj->transposed () );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX4X4", true );
  }
}

/*
QMatrix3x3 normalMatrix() const
*/
HB_FUNC_STATIC( QMATRIX4X4_NORMALMATRIX )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMatrix3x3 * ptr = new QMatrix3x3( obj->normalMatrix () );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX3X3" );
  }
}

/*
void scale(const QVector3D& vector)
*/
void QMatrix4x4_scale1 ()
{
#ifndef QT_NO_VECTOR3D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale ( *PQVECTOR3D(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void scale(float x, float y)
*/
void QMatrix4x4_scale2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale ( PFLOAT(1), PFLOAT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale(float x, float y, float z)
*/
void QMatrix4x4_scale3 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale ( PFLOAT(1), PFLOAT(2), PFLOAT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale(float factor)
*/
void QMatrix4x4_scale4 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale ( PFLOAT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void scale(const QVector3D& vector)
//[2]void scale(float x, float y)
//[3]void scale(float x, float y, float z)
//[4]void scale(float factor)

HB_FUNC_STATIC( QMATRIX4X4_SCALE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_scale1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMatrix4x4_scale2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QMatrix4x4_scale3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix4x4_scale4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void translate(const QVector3D& vector)
*/
void QMatrix4x4_translate1 ()
{
#ifndef QT_NO_VECTOR3D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( *PQVECTOR3D(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void translate(float x, float y)
*/
void QMatrix4x4_translate2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( PFLOAT(1), PFLOAT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate(float x, float y, float z)
*/
void QMatrix4x4_translate3 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( PFLOAT(1), PFLOAT(2), PFLOAT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate(const QVector3D& vector)
//[2]void translate(float x, float y)
//[3]void translate(float x, float y, float z)

HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_translate1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMatrix4x4_translate2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QMatrix4x4_translate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void rotate(float angle, const QVector3D& vector)
*/
void QMatrix4x4_rotate1 ()
{
#ifndef QT_NO_VECTOR3D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->rotate ( PFLOAT(1), *PQVECTOR3D(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void rotate(float angle, float x, float y, float z = 0.0f)
*/
void QMatrix4x4_rotate2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->rotate ( PFLOAT(1), PFLOAT(2), PFLOAT(3), OPFLOAT(4,0.0f) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rotate(const QQuaternion& quaternion)
*/
void QMatrix4x4_rotate3 ()
{
#ifndef QT_NO_QUATERNION
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->rotate ( *PQQUATERNION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void rotate(float angle, const QVector3D& vector)
//[2]void rotate(float angle, float x, float y, float z = 0.0f)
//[3]void rotate(const QQuaternion& quaternion)

HB_FUNC_STATIC( QMATRIX4X4_ROTATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVECTOR3D(2) )
  {
    QMatrix4x4_rotate1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QMatrix4x4_rotate2();
  }
  else if( ISNUMPAR(1) && ISQQUATERNION(1) )
  {
    QMatrix4x4_rotate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void ortho(const QRect& rect)
*/
void QMatrix4x4_ortho1 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ortho ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ortho(const QRectF& rect)
*/
void QMatrix4x4_ortho2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ortho ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ortho(float left, float right, float bottom, float top, float nearPlane, float farPlane)
*/
void QMatrix4x4_ortho3 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ortho ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), PFLOAT(5), PFLOAT(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ortho(const QRect& rect)
//[2]void ortho(const QRectF& rect)
//[3]void ortho(float left, float right, float bottom, float top, float nearPlane, float farPlane)

HB_FUNC_STATIC( QMATRIX4X4_ORTHO )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix4x4_ortho1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_ortho2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMatrix4x4_ortho3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void frustum(float left, float right, float bottom, float top, float nearPlane, float farPlane)
*/
HB_FUNC_STATIC( QMATRIX4X4_FRUSTUM )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
    {
      obj->frustum ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), PFLOAT(5), PFLOAT(6) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void perspective(float verticalAngle, float aspectRatio, float nearPlane, float farPlane)
*/
HB_FUNC_STATIC( QMATRIX4X4_PERSPECTIVE )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->perspective ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void lookAt(const QVector3D& eye, const QVector3D& center, const QVector3D& up)
*/
HB_FUNC_STATIC( QMATRIX4X4_LOOKAT )
{
#ifndef QT_NO_VECTOR3D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
    {
      obj->lookAt ( *PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void viewport(const QRectF &rect)
*/
void QMatrix4x4_viewport1 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->viewport ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void viewport(float left, float bottom, float width, float height, float nearPlane = 0.0f, float farPlane = 1.0f)
*/
void QMatrix4x4_viewport2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->viewport ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), OPFLOAT(5,0.0f), OPFLOAT(6,1.0f) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void viewport(const QRectF &rect)
//[2]void viewport(float left, float bottom, float width, float height, float nearPlane = 0.0f, float farPlane = 1.0f)

HB_FUNC_STATIC( QMATRIX4X4_VIEWPORT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_viewport1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) )
  {
    QMatrix4x4_viewport2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void flipCoordinates()
*/
HB_FUNC_STATIC( QMATRIX4X4_FLIPCOORDINATES )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->flipCoordinates ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMatrix toAffine() const
*/
HB_FUNC_STATIC( QMATRIX4X4_TOAFFINE )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->toAffine () );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX", true );
  }
}

/*
QTransform toTransform() const
*/
void QMatrix4x4_toTransform1 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->toTransform () );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
QTransform toTransform(float distanceToPlane) const
*/
void QMatrix4x4_toTransform2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->toTransform ( PFLOAT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

//[1]QTransform toTransform() const
//[2]QTransform toTransform(float distanceToPlane) const

HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM )
{
  if( ISNUMPAR(0) )
  {
    QMatrix4x4_toTransform1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix4x4_toTransform2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPoint map(const QPoint& point) const
*/
void QMatrix4x4_map1 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->map ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPointF map(const QPointF& point) const
*/
void QMatrix4x4_map2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->map ( *PQPOINTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QVector3D map(const QVector3D& point) const
*/
void QMatrix4x4_map3 ()
{
#ifndef QT_NO_VECTOR3D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->map ( *PQVECTOR3D(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
#endif
}

/*
QVector4D map(const QVector4D& point) const
*/
void QMatrix4x4_map4 ()
{
#ifndef QT_NO_VECTOR4D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->map ( *PQVECTOR4D(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
#endif
}

//[1]QPoint map(const QPoint& point) const
//[2]QPointF map(const QPointF& point) const
//[3]QVector3D map(const QVector3D& point) const
//[4]QVector4D map(const QVector4D& point) const

HB_FUNC_STATIC( QMATRIX4X4_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QMatrix4x4_map1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QMatrix4x4_map2();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_map3();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QMatrix4x4_map4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVector3D mapVector(const QVector3D& vector) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAPVECTOR )
{
#ifndef QT_NO_VECTOR3D
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVECTOR3D(1) )
    {
      QVector3D * ptr = new QVector3D( obj->mapVector ( *PQVECTOR3D(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QRect mapRect(const QRect& rect) const
*/
void QMatrix4x4_mapRect1 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->mapRect ( *PQRECT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF mapRect(const QRectF& rect) const
*/
void QMatrix4x4_mapRect2 ()
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRect ( *PQRECTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRect mapRect(const QRect& rect) const
//[2]QRectF mapRect(const QRectF& rect) const

HB_FUNC_STATIC( QMATRIX4X4_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix4x4_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void optimize()
*/
HB_FUNC_STATIC( QMATRIX4X4_OPTIMIZE )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->optimize ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
