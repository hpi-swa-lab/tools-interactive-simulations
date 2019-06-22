event handling
mouseMove: anEvent

	| point |
	point := anEvent position - lastPosition.
	lastPosition := anEvent position.
	target setConstrainedPosition: target position + point hangOut: false