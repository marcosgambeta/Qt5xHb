/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVirtualKeyboardAbstractInputMethod INHERIT QObject

   METHOD delete

   METHOD onSelectionListChanged
   METHOD onSelectionListActiveItemChanged
   METHOD onSelectionListsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVirtualKeyboardAbstractInputMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVirtualKeyboardAbstractInputMethod>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVirtualKeyboardAbstractInputMethod>
#endif

/*
explicit QVirtualKeyboardAbstractInputMethod(QObject *parent = nullptr)
*/

/*
~QVirtualKeyboardAbstractInputMethod()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_DELETE )
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
QVirtualKeyboardInputContext *inputContext() const
*/
/*
QVirtualKeyboardInputEngine *inputEngine() const
*/
/*
virtual QList<QVirtualKeyboardInputEngine::InputMode> inputModes(const QString &locale) = 0
*/
/*
virtual bool setInputMode(const QString &locale, QVirtualKeyboardInputEngine::InputMode inputMode) = 0
*/
/*
virtual bool setTextCase(QVirtualKeyboardInputEngine::TextCase textCase) = 0
*/
/*
virtual bool keyEvent(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers) = 0
*/
/*
virtual QList<QVirtualKeyboardSelectionListModel::Type> selectionLists()
*/
/*
virtual int selectionListItemCount(QVirtualKeyboardSelectionListModel::Type type)
*/
/*
virtual QVariant selectionListData(QVirtualKeyboardSelectionListModel::Type type, int index, QVirtualKeyboardSelectionListModel::Role role)
*/
/*
virtual void selectionListItemSelected(QVirtualKeyboardSelectionListModel::Type type, int index)
*/
/*
virtual bool selectionListRemoveItem(QVirtualKeyboardSelectionListModel::Type type, int index)
*/
/*
virtual QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> patternRecognitionModes() const
*/
/*
virtual QVirtualKeyboardTrace *traceBegin(int traceId, QVirtualKeyboardInputEngine::PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
*/
/*
virtual bool traceEnd(QVirtualKeyboardTrace *trace)
*/
/*
virtual bool reselect(int cursorPosition, const QVirtualKeyboardInputEngine::ReselectFlags &reselectFlags)
*/
/*
virtual bool clickPreeditText(int cursorPosition)
*/
/*
virtual void reset() [slot]
*/
/*
virtual void update() [slot]
*/
/*
void setInputEngine(QVirtualKeyboardInputEngine *inputEngine) [private]
*/

void QVirtualKeyboardAbstractInputMethodSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTCHANGED )
{
  QVirtualKeyboardAbstractInputMethodSlots_connect_signal( "selectionListChanged(QVirtualKeyboardSelectionListModel::Type)", "selectionListChanged(QVirtualKeyboardSelectionListModel::Type)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTACTIVEITEMCHANGED )
{
  QVirtualKeyboardAbstractInputMethodSlots_connect_signal( "selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)", "selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTSCHANGED )
{
  QVirtualKeyboardAbstractInputMethodSlots_connect_signal( "selectionListsChanged()", "selectionListsChanged()" );
}

#pragma ENDDUMP
