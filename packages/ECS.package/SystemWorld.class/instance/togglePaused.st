as yet unclassified
togglePaused

	running
		ifTrue: [self pause]
		ifFalse: [self start].
	self changed: #isPaused