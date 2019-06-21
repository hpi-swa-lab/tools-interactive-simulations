event handling
mouseDown: anEvent

	super mouseDown: anEvent.
	active := true.
	self changed