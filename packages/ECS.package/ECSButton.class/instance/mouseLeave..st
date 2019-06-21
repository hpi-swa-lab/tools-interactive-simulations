event handling
mouseLeave: anEvent

	super mouseLeave: anEvent.
	hovered := false.
	self changed