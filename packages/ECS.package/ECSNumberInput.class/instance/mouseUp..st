event handling
mouseUp: anEvent

	super mouseUp: anEvent.
	isDown := false.
	oldCursor ifNotNil: #show.
	self valueWithConstraints: self value.
	self sendChange.
	self triggerEvent: #editStopped