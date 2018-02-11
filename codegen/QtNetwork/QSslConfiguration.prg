%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_SSL
%% #endif  // QT_NO_SSL

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
#endif

CLASS QSslConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD allowedNextProtocols
   METHOD caCertificates
   METHOD ciphers
   METHOD defaultConfiguration
   METHOD diffieHellmanParameters
   METHOD ellipticCurves
   METHOD ephemeralServerKey
   METHOD isNull
   METHOD localCertificate
   METHOD localCertificateChain
   METHOD nextNegotiatedProtocol
   METHOD nextProtocolNegotiationStatus
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD preSharedKeyIdentityHint
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD sessionProtocol
   METHOD sessionTicket
   METHOD sessionTicketLifeTimeHint
   METHOD setAllowedNextProtocols
   METHOD setCaCertificates
   METHOD setCiphers
   METHOD setDefaultConfiguration
   METHOD setDiffieHellmanParameters
   METHOD setEllipticCurves
   METHOD setLocalCertificate
   METHOD setLocalCertificateChain
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPreSharedKeyIdentityHint
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD setSessionTicket
   METHOD setSslOption
   METHOD supportedCiphers
   METHOD supportedEllipticCurves
   METHOD swap
   METHOD systemCaCertificates
   METHOD testSslOption

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

#include <QSslKey>
#include <QSslCipher>

$prototype=QSslConfiguration()
$internalConstructor=|new1|

$prototype=QSslConfiguration( const QSslConfiguration & other )
$internalConstructor=|new2|const QSslConfiguration &

//[1]QSslConfiguration()
//[2]QSslConfiguration( const QSslConfiguration & other )

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslConfiguration_new1();
  }
  if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    QSslConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslConfiguration()
$deleteMethod

$prototype=void swap(QSslConfiguration &other) Q_DECL_NOTHROW
$method=|void|swap|QSslConfiguration &

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QSsl::SslProtocol protocol() const
$method=|QSsl::SslProtocol|protocol|

$prototype=void setProtocol(QSsl::SslProtocol protocol)
$method=|void|setProtocol|QSsl::SslProtocol

$prototype=QSslSocket::PeerVerifyMode peerVerifyMode() const
$method=|QSslSocket::PeerVerifyMode|peerVerifyMode|

$prototype=void setPeerVerifyMode(QSslSocket::PeerVerifyMode mode)
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

$prototype=int peerVerifyDepth() const
$method=|int|peerVerifyDepth|

$prototype=void setPeerVerifyDepth(int depth)
$method=|void|setPeerVerifyDepth|int

$prototype=QList<QSslCertificate> localCertificateChain() const
$method=|QList<QSslCertificate>|localCertificateChain|

$prototype=void setLocalCertificateChain(const QList<QSslCertificate> &localChain)
$method=|void|setLocalCertificateChain|const QList<QSslCertificate> &

$prototype=QSslCertificate localCertificate() const
$method=|QSslCertificate|localCertificate|

$prototype=void setLocalCertificate(const QSslCertificate &certificate)
$method=|void|setLocalCertificate|const QSslCertificate &

$prototype=QSslCertificate peerCertificate() const
$method=|QSslCertificate|peerCertificate|

$prototype=QList<QSslCertificate> peerCertificateChain() const
$method=|QList<QSslCertificate>|peerCertificateChain|

$prototype=QSslCipher sessionCipher() const
$method=|QSslCipher|sessionCipher|

$prototype=QSsl::SslProtocol sessionProtocol() const
$method=|QSsl::SslProtocol|sessionProtocol|

$prototype=QSslKey privateKey() const
$method=|QSslKey|privateKey|

$prototype=void setPrivateKey(const QSslKey &key)
$method=|void|setPrivateKey|const QSslKey &

$prototype=QList<QSslCipher> ciphers() const
$method=|QList<QSslCipher>|ciphers|

$prototype=void setCiphers(const QList<QSslCipher> &ciphers)
$method=|void|setCiphers|const QList<QSslCipher> &

$prototype=static QList<QSslCipher> supportedCiphers()
$staticMethod=|QList<QSslCipher>|supportedCiphers|

$prototype=QList<QSslCertificate> caCertificates() const
$method=|QList<QSslCertificate>|caCertificates|

$prototype=void setCaCertificates(const QList<QSslCertificate> &certificates)
$method=|void|setCaCertificates|const QList<QSslCertificate> &

$prototype=static QList<QSslCertificate> systemCaCertificates()
$staticMethod=|QList<QSslCertificate>|systemCaCertificates|

$prototype=void setSslOption(QSsl::SslOption option, bool on)
$method=|void|setSslOption|QSsl::SslOption,bool

$prototype=bool testSslOption(QSsl::SslOption option) const
$method=|bool|testSslOption|QSsl::SslOption

$prototype=QByteArray sessionTicket() const
$method=|QByteArray|sessionTicket|

$prototype=void setSessionTicket(const QByteArray &sessionTicket)
$method=|void|setSessionTicket|const QByteArray &

$prototype=int sessionTicketLifeTimeHint() const
$method=|int|sessionTicketLifeTimeHint|

$prototype=QSslKey ephemeralServerKey() const
$method=|QSslKey|ephemeralServerKey|

$prototype=QVector<QSslEllipticCurve> ellipticCurves() const
$method=|QVector<QSslEllipticCurve>|ellipticCurves|

$prototype=void setEllipticCurves(const QVector<QSslEllipticCurve> &curves)
$method=|void|setEllipticCurves|const QVector<QSslEllipticCurve> &

$prototype=static QVector<QSslEllipticCurve> supportedEllipticCurves()
$staticMethod=|QVector<QSslEllipticCurve>|supportedEllipticCurves|

$prototype=QByteArray preSharedKeyIdentityHint() const
$method=|QByteArray|preSharedKeyIdentityHint|

$prototype=void setPreSharedKeyIdentityHint(const QByteArray &hint)
$method=|void|setPreSharedKeyIdentityHint|const QByteArray &

$prototype=QSslDiffieHellmanParameters diffieHellmanParameters() const
$method=|QSslDiffieHellmanParameters|diffieHellmanParameters|

$prototype=void setDiffieHellmanParameters(const QSslDiffieHellmanParameters &dhparams)
$method=|void|setDiffieHellmanParameters|const QSslDiffieHellmanParameters &

$prototype=static QSslConfiguration defaultConfiguration()
$staticMethod=|QSslConfiguration|defaultConfiguration|

$prototype=static void setDefaultConfiguration(const QSslConfiguration &configuration)
$staticMethod=|void|setDefaultConfiguration|const QSslConfiguration &

$prototype=void setAllowedNextProtocols(QList<QByteArray> protocols)
$method=|void|setAllowedNextProtocols|QList<QByteArray>

$prototype=QList<QByteArray> allowedNextProtocols() const
$method=|QList<QByteArray>|allowedNextProtocols|

$prototype=QByteArray nextNegotiatedProtocol() const
$method=|QByteArray|nextNegotiatedProtocol|

$prototype=NextProtocolNegotiationStatus nextProtocolNegotiationStatus() const
$method=|NextProtocolNegotiationStatus|nextProtocolNegotiationStatus|

$extraMethods

#pragma ENDDUMP
