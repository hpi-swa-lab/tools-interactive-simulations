events
mouseDown: anEvent

	self query: {Mouse} do: [:mouse | mouse leftJustDown: true; leftDown: true]