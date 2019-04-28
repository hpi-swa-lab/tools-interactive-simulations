as yet unclassified
maybeUpdate

	| now |
	now := Time millisecondClockValue.
	now - lastUpdate > self updateInterval ifTrue: [
		self changed: #getList.
		self changed: #expandRootsRequested.
		lastUpdate := now]