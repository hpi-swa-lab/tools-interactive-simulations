as yet unclassified
mouseDown: anEvent

	super mouseDown: anEvent.
	
	anEvent hand
			waitForClicksOrDrag: self
			event: anEvent
			selectors: {nil. nil. nil. #startDrag:}
			threshold: HandMorph dragThreshold