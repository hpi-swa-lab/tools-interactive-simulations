as yet unclassified
mouseLeaveDragging: anEvent

	super mouseLeaveDragging: anEvent.
	oldCursor ifNotNil: #show