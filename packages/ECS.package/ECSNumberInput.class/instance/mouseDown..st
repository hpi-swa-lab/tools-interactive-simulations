event handling
mouseDown: anEvent

	self triggerEvent: #editStarted.
	super mouseDown: anEvent.
	anEvent hand newMouseFocus: self.
	isDown := true.
	lastMousePosition := anEvent position.
	oldCursor := Cursor currentCursor.
	Cursor resizeLeft show