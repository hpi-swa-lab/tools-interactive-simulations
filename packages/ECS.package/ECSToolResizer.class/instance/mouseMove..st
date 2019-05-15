as yet unclassified
mouseMove: anEvent

	self target extent: self target extent x @ (self target extent y + (anEvent position y - lastPosition y)).
	lastPosition := anEvent position