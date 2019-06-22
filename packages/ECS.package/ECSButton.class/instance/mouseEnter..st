event handling
mouseEnter: anEvent

	super mouseEnter: anEvent.
	hovered := true.
	self changed