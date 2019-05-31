events
handleMouseDown: anEvent

	self query: {Mouse} do: [:mouse | mouse leftJustDown: true; leftDown: true].
	self triggerEvent: #externalEvent with: anEvent