mainloop
tick

	drawingBlocks removeAll.
	self triggerEvent: #preTick.
	[pipelines select: #runContinuously thenDo: [:each | each tick: self]] 
		on: Exception do: [:err | self pause. err signal].
	self triggerEvent: #tick