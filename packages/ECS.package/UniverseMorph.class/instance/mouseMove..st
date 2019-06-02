system-world-events
mouseMove: anEvent

	| translatedEvent |
	translatedEvent := anEvent copy position: anEvent position - self position.
	self universe handleMouseMove: translatedEvent