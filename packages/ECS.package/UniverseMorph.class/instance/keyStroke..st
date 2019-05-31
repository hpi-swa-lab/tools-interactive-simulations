system-world-events
keyStroke: anEvent

	self systemUniverse keyStroke: anEvent.
	self triggerEvent: #externalEvent with: anEvent