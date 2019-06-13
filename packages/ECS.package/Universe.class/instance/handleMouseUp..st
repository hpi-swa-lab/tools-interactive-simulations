events
handleMouseUp: anEvent

	self query: #(Mouse) do: [:mouse |
		anEvent redButtonChanged ifTrue: [mouse leftJustUp: true; leftDown: false].
		anEvent yellowButtonChanged ifTrue: [mouse rightJustUp: true; rightDown: false].
		anEvent blueButtonChanged ifTrue: [mouse middleJustUp: true; middleDown: false]].
	self triggerEvent: #externalEvent with: anEvent