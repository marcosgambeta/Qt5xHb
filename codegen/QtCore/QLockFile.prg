$header

#include "hbclass.ch"

CLASS QLockFile

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lock
   METHOD tryLock
   METHOD unlock
   METHOD setStaleLockTime
   METHOD staleLockTime
   METHOD isLocked
   METHOD getLockInfo
   METHOD removeStaleLockFile

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QLockFile(const QString &fileName)
*/
$constructor=5,1,0|new|const QString &

$deleteMethod=5,1,0

/*
bool lock()
*/
$method=5,1,0|bool|lock|

/*
bool tryLock(int timeout = 0)
*/
$method=5,1,0|bool|tryLock|int=0

/*
void unlock()
*/
$method=5,1,0|void|unlock|

/*
void setStaleLockTime(int)
*/
$method=5,1,0|void|setStaleLockTime|int

/*
int staleLockTime() const
*/
$method=5,1,0|int|staleLockTime|

/*
bool isLocked() const
*/
$method=5,1,0|bool|isLocked|

/*
bool getLockInfo(qint64 *pid, QString *hostname, QString *appname) const
*/
%% TODO: revisar implementacao do metodo e corrigir(?)
$method=5,1,0|bool|getLockInfo|qint64 *,QString *,QString *

/*
bool removeStaleLockFile()
*/
$method=5,1,0|bool|removeStaleLockFile|

$extraMethods

#pragma ENDDUMP
