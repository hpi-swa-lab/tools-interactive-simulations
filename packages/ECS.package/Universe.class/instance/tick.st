mainloop
tick

	self triggerEvent: #preTick.
	[pipelines select: #runContinuously thenDo: [:each | each tick: self]] 
		on: Error, Halt, Warning do: [:err |
			self pause.
			pausedAfterError := true.
			ToolSet debugException: err].
	self cleanUpSingleTickState.
	self triggerEvent: #postTick