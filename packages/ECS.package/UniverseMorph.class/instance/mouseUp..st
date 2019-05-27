system-world-events
mouseUp: anEvent

	systemUniverse query: {Mouse} do: [:mouse | mouse leftJustUp: true; leftDown: false]