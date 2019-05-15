as yet unclassified
mouseEnter: anEvent

	super mouseEnter: anEvent.
	oldCursor := Cursor currentCursor.
	Cursor resizeTop show