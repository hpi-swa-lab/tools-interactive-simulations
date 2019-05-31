events
mouseUp: anEvent

	self query: {Mouse} do: [:mouse | mouse leftJustUp: true; leftDown: false]