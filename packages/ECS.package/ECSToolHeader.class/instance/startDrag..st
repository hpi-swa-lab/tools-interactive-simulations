event handling
startDrag: anEvent

	super startDrag: anEvent.
	
	tool detachNow: anEvent