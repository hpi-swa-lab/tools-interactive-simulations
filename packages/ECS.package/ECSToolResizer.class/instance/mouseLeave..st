event handling
mouseLeave: anEvent

	super mouseLeave: anEvent.
	oldCursor ifNotNil: #show