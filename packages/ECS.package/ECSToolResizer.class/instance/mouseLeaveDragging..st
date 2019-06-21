event handling
mouseLeaveDragging: anEvent

	super mouseLeaveDragging: anEvent.
	oldCursor ifNotNil: #show