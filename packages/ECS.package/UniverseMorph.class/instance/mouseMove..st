system-world-events
mouseMove: anEvent

	self systemUniverse query: {Mouse} do: [:mouse | mouse position: (anEvent position - self position) asECSVector2]