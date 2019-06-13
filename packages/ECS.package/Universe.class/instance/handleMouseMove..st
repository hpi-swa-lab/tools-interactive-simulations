events
handleMouseMove: anEvent

	self query: #(Mouse) do: [:mouse | mouse position: anEvent position asECSVector2].
	self triggerEvent: #externalEvent with: anEvent