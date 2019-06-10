events
handleMouseDown: anEvent

	self query: {Mouse} do: [:mouse |
		anEvent redButtonChanged ifTrue: [mouse leftJustDown: true; leftDown: true].
		anEvent yellowButtonChanged ifTrue: [mouse rightJustDown: true; rightDown: true].
		anEvent blueButtonChanged ifTrue: [mouse middleJustDown: true; middleDown: true]].
	self triggerEvent: #externalEvent with: anEvent