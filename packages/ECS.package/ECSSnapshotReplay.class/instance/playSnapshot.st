as yet unclassified
playSnapshot

	self assignStateToUniverse: componentSnapshot.
	self universe query: #(DeltaTime) do: [:deltaTime |
		previousElapsed := deltaTime elapsed.
		deltaTime last: Time millisecondClockValue]