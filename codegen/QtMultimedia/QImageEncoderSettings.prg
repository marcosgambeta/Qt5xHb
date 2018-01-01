%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QImageEncoderSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD codec
   METHOD setCodec
   METHOD resolution
   METHOD setResolution1
   METHOD setResolution2
   METHOD setResolution
   METHOD quality
   METHOD setQuality
   METHOD encodingOption
   METHOD setEncodingOption

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

$prototype=QImageEncoderSettings()
$constructor=|new1|

$prototype=QImageEncoderSettings(const QImageEncoderSettings& other)
$constructor=|new2|const QImageEncoderSettings &

//[1]QImageEncoderSettings()
//[2]QImageEncoderSettings(const QImageEncoderSettings& other)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIMAGEENCODERSETTINGS(1) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QString codec() const
$method=|QString|codec|

$prototype=void setCodec(const QString &)
$method=|void|setCodec|const QString &

$prototype=QSize resolution() const
$method=|QSize|resolution|

$prototype=void setResolution(const QSize &)
$method=|void|setResolution,setResolution1|const QSize &

$prototype=void setResolution(int width, int height)
$method=|void|setResolution,setResolution2|int,int

//[1]void setResolution(const QSize &)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_SETRESOLUTION1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_SETRESOLUTION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QMultimedia::EncodingQuality quality() const
$method=|QMultimedia::EncodingQuality|quality|

$prototype=void setQuality(QMultimedia::EncodingQuality quality)
$method=|void|setQuality|QMultimedia::EncodingQuality

$prototype=QVariant encodingOption(const QString &option) const
$method=|QVariant|encodingOption|const QString &

$prototype=void setEncodingOption(const QString &option, const QVariant &value)
$method=|void|setEncodingOption|const QString &,const QVariant &

$extraMethods

#pragma ENDDUMP
