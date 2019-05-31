system-world-events
mouseUp: anEvent

	self systemUniverse mouseUp: anEvent.
	self triggerEvent: #externalEvent with: anEvent