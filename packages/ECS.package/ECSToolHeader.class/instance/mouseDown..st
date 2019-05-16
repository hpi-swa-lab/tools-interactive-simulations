as yet unclassified
mouseDown: anEvent

	super mouseDown: anEvent.
	
	anEvent hand
			waitForClicksOrDrag: self
			event: anEvent
			selectors: {#click:. nil. nil. #startDrag:}
			threshold: HandMorph dragThreshold