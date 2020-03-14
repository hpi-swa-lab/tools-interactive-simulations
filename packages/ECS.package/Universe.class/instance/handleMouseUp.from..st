events
handleMouseUp: anEvent from: aViewId

	| view |
	view := self getSingle: #UniverseView of: aViewId.
	anEvent redButtonChanged ifTrue: [view leftJustUp: true; leftDown: false].
	anEvent yellowButtonChanged ifTrue: [view rightJustUp: true; rightDown: false].
	anEvent blueButtonChanged ifTrue: [view middleJustUp: true; middleDown: false].
	self updateModifiersWith: anEvent for: aViewId.
	self triggerEvent: #externalEvent with: {anEvent. aViewId}