system-world-events
mouseDown: anEvent

	systemUniverse query: {Mouse} do: [:mouse | mouse leftJustDown: true; leftDown: true].
	
	self grabKeyboard