as yet unclassified
detachNow: anEvent

	"| window |
	detached ifFalse: [
		detached := true.
		window := (SystemWindow labelled: self title).
		window extent: (self fullBounds extent + (window borderWidth @ window labelHeight) + window borderWidth).
		self position: window borderWidth @ window labelHeight.
		window addMorph: self frame: (0@0 extent: 1@1).
		window beKeyWindow.
		
		header toolIsAttached: false.
		window openInHand]"