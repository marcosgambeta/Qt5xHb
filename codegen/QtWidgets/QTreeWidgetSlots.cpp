%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|currentItemChanged( QTreeWidgetItem * current, QTreeWidgetItem * previous )
$slot=|itemActivated( QTreeWidgetItem * item, int column )
$slot=|itemChanged( QTreeWidgetItem * item, int column )
$slot=|itemClicked( QTreeWidgetItem * item, int column )
$slot=|itemCollapsed( QTreeWidgetItem * item )
$slot=|itemDoubleClicked( QTreeWidgetItem * item, int column )
$slot=|itemEntered( QTreeWidgetItem * item, int column )
$slot=|itemExpanded( QTreeWidgetItem * item )
$slot=|itemPressed( QTreeWidgetItem * item, int column )
$slot=|itemSelectionChanged()
$endSlotsClass

$signalMethod=|currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)
$signalMethod=|itemActivated(QTreeWidgetItem*,int)
$signalMethod=|itemChanged(QTreeWidgetItem*,int)
$signalMethod=|itemClicked(QTreeWidgetItem*,int)
$signalMethod=|itemCollapsed(QTreeWidgetItem*)
$signalMethod=|itemDoubleClicked(QTreeWidgetItem*,int)
$signalMethod=|itemEntered(QTreeWidgetItem*,int)
$signalMethod=|itemExpanded(QTreeWidgetItem*)
$signalMethod=|itemPressed(QTreeWidgetItem*,int)
$signalMethod=|itemSelectionChanged()