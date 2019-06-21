replay
recordEvent: anEvent

	self universe query: #(DeltaTime) do: [:deltaTime |
		eventHistory add: {deltaTime elapsed. anEvent}]