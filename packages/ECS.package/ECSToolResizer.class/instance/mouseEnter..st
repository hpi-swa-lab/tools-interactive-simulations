event handling
mouseEnter: anEvent

	super mouseEnter: anEvent.
	oldCursor := Cursor currentCursor.
	Cursor resizeTop show