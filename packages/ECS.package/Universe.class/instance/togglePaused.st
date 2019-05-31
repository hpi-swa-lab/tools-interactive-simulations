mainloop
togglePaused

	running
		ifTrue: [self pause]
		ifFalse: [self start]