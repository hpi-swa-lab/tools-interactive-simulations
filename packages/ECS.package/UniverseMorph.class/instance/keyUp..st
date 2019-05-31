system-world-events
keyUp: anEvent

	self systemUniverse keyUp: anEvent.
	self triggerEvent: #externalEvent with: anEvent