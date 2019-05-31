events
mouseMove: anEvent

	self query: {Mouse} do: [:mouse | mouse position: anEvent position asECSVector2]