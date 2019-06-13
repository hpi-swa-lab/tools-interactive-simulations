events
handleMouseWheel: anEvent

	self query: #(Mouse) do: [:mouse | mouse wheelDelta: anEvent wheelDelta].
	self triggerEvent: #externalEvent with: anEvent