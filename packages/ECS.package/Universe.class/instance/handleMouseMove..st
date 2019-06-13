events
handleMouseMove: anEvent

	self query: #(Mouse) do: [:mouse | | position |
		position := anEvent position asECSVector2. 
		mouse 
			positionDelta: position - mouse position;
			position: position].
	self triggerEvent: #externalEvent with: anEvent