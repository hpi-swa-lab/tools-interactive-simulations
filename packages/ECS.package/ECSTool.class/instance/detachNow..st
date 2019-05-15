as yet unclassified
detachNow: anEvent

	| window |
	detached ifFalse: [
		detached := true.
		window := self openInWindowLabeled: self title.
		header toolIsAttached: false.
		anEvent hand grabMorph: window]