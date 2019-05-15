as yet unclassified
mouseDown: anEvent

	super mouseDown: anEvent.
	anEvent hand newMouseFocus: self.
	isDown := true.
	lastMousePosition := anEvent position