replay
playSnapshot

	self assignStateToUniverse: snapshot.
	self universe query: #(DeltaTime) do: [:deltaTime |
		previousElapsed := deltaTime elapsed.
		deltaTime last: Time millisecondClockValue]