as yet unclassified
playSnapshot

	self assignStateToUniverse: componentSnapshot.
	self universe query: {DeltaTime} do: [:deltaTime |
		deltaTime last: Time millisecondClockValue]