system-world-events
mouseMove: anEvent

	| translatedEvent |
	translatedEvent := anEvent copy position: anEvent position - self position.
	self systemUniverse mouseMove: translatedEvent.
	self triggerEvent: #externalEvent with: translatedEvent