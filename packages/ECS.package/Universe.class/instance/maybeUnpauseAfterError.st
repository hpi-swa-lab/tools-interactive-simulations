events
maybeUnpauseAfterError

	pausedAfterError ifTrue: [
		self start.
		self triggerEvent: #unpauseAfterError]