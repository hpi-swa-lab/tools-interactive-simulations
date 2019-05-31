events
handleMouseUp: anEvent

	self query: {Mouse} do: [:mouse | mouse leftJustUp: true; leftDown: false].
	self triggerEvent: #externalEvent with: anEvent