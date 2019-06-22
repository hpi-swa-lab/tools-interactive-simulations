mainloop
tick

	self triggerEvent: #preTick.
	[pipelines select: #runContinuously thenDo: [:each | each tick: self]] 
		on: Exception do: [:err | self pause. err signal].
	self cleanUpSingleTickState.
	self triggerEvent: #postTick