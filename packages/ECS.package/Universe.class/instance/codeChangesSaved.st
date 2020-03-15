events
codeChangesSaved
	" notify the universe that potentially relevant code changes have been saved "

	pausedAfterError ifTrue: [
		self start.
		self triggerEvent: #unpauseAfterError].
	
	restartOnSave ifTrue: [self restart]