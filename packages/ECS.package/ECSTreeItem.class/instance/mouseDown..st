event handling
mouseDown: anEvent

	anEvent hand waitForClicksOrDrag: self event: anEvent.
	anEvent hand newKeyboardFocus: self owner