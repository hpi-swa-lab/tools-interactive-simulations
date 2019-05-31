system-world-events
mouseDown: anEvent

	self systemUniverse mouseDown: anEvent.
	self triggerEvent: #externalEvent with: anEvent.
	self grabKeyboard