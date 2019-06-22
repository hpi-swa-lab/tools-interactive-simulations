event handling
mouseDown: anEvent

	grabbed := true.
	lastPosition := anEvent position.
	anEvent hand newMouseFocus: self