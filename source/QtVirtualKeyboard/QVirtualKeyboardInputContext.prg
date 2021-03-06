/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVirtualKeyboardInputContext INHERIT QObject

   METHOD delete

   METHOD onPreeditTextChanged
   METHOD onInputMethodHintsChanged
   METHOD onSurroundingTextChanged
   METHOD onSelectedTextChanged
   METHOD onAnchorPositionChanged
   METHOD onCursorPositionChanged
   METHOD onAnchorRectangleChanged
   METHOD onCursorRectangleChanged
   METHOD onShiftActiveChanged
   METHOD onCapsLockActiveChanged
   METHOD onUppercaseChanged
   METHOD onAnimatingChanged
   METHOD onLocaleChanged
   METHOD onSelectionControlVisibleChanged
   METHOD onAnchorRectIntersectsClipRectChanged
   METHOD onCursorRectIntersectsClipRectChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVirtualKeyboardInputContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>
#endif

/*
explicit QVirtualKeyboardInputContext(QObject *parent = nullptr)
*/

/*
~QVirtualKeyboardInputContext()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_DELETE )
{
  QVirtualKeyboardInputContext * obj = (QVirtualKeyboardInputContext *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
bool isShiftActive() const
*/

/*
bool isCapsLockActive() const
*/

/*
bool isUppercase() const
*/

/*
int anchorPosition() const
*/

/*
int cursorPosition() const
*/

/*
Qt::InputMethodHints inputMethodHints() const
*/

/*
QString preeditText() const
*/
/*
void setPreeditText(const QString &text, QList<QInputMethodEvent::Attribute> attributes = QList<QInputMethodEvent::Attribute>(), int replaceFrom = 0, int replaceLength = 0)
*/

/*
QString surroundingText() const
*/

/*
QString selectedText() const
*/

/*
QRectF anchorRectangle() const
*/

/*
QRectF cursorRectangle() const
*/

/*
bool isAnimating() const
*/
/*
void setAnimating(bool isAnimating)
*/

/*
QString locale() const
*/

/*
QVirtualKeyboardInputEngine *inputEngine() const
*/

/*
bool isSelectionControlVisible() const
*/

/*
bool anchorRectIntersectsClipRect() const
*/

/*
bool cursorRectIntersectsClipRect() const
*/

/*
QVirtualKeyboardInputContextPrivate *priv() const
*/

/*
QList<QInputMethodEvent::Attribute> preeditTextAttributes() const
*/
/*
Q_INVOKABLE void sendKeyClick(int key, const QString &text, int modifiers = 0)
*/
/*
Q_INVOKABLE void commit()
*/
/*
Q_INVOKABLE void commit(const QString &text, int replaceFrom = 0, int replaceLength = 0)
*/
/*
Q_INVOKABLE void clear()
*/
/*
Q_INVOKABLE void setSelectionOnFocusObject(const QPointF &anchorPos, const QPointF &cursorPos)
*/

void QVirtualKeyboardInputContextSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONPREEDITTEXTCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "preeditTextChanged()", "preeditTextChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONINPUTMETHODHINTSCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "inputMethodHintsChanged()", "inputMethodHintsChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONSURROUNDINGTEXTCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "surroundingTextChanged()", "surroundingTextChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONSELECTEDTEXTCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "selectedTextChanged()", "selectedTextChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONANCHORPOSITIONCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "anchorPositionChanged()", "anchorPositionChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONCURSORPOSITIONCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "cursorPositionChanged()", "cursorPositionChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONANCHORRECTANGLECHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "anchorRectangleChanged()", "anchorRectangleChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONCURSORRECTANGLECHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "cursorRectangleChanged()", "cursorRectangleChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONSHIFTACTIVECHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "shiftActiveChanged()", "shiftActiveChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONCAPSLOCKACTIVECHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "capsLockActiveChanged()", "capsLockActiveChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONUPPERCASECHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "uppercaseChanged()", "uppercaseChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONANIMATINGCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "animatingChanged()", "animatingChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONLOCALECHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "localeChanged()", "localeChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONSELECTIONCONTROLVISIBLECHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "selectionControlVisibleChanged()", "selectionControlVisibleChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONANCHORRECTINTERSECTSCLIPRECTCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "anchorRectIntersectsClipRectChanged()", "anchorRectIntersectsClipRectChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_ONCURSORRECTINTERSECTSCLIPRECTCHANGED )
{
  QVirtualKeyboardInputContextSlots_connect_signal( "cursorRectIntersectsClipRectChanged()", "cursorRectIntersectsClipRectChanged()" );
}

#pragma ENDDUMP
