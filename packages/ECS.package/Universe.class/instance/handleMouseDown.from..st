events
handleMouseDown: anEvent from: aViewId

	| view |
	view := self getSingle: #UniverseView of: aViewId.
	anEvent redButtonChanged ifTrue: [view leftJustDown: true; leftDown: true].
	anEvent yellowButtonChanged ifTrue: [view rightJustDown: true; rightDown: true].
	anEvent blueButtonChanged ifTrue: [view middleJustDown: true; middleDown: true].
	self triggerEvent: #externalEvent with: {anEvent. aViewId}