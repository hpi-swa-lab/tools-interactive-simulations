system-world-events
mouseMove: anEvent

	| translatedEvent |
	translatedEvent := anEvent copy position: anEvent position - self position - (0 @ self header height).
	self universe handleMouseMove: translatedEvent from: viewEntity