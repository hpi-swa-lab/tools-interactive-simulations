system-world-events
mouseDown: anEvent

	self universe handleMouseDown: anEvent.
	anEvent hand newKeyboardFocus: self