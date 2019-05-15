as yet unclassified
mouseDown: anEvent

	super mouseDown: anEvent.
	active := true.
	self changed