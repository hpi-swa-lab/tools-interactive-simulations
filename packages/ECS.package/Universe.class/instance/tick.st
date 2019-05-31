mainloop
tick

	drawingBlocks removeAll.
	[pipelines select: #runContinuously thenDo: [:each | each tick: self]] 
		on: Exception do: [:err | self pause. err signal].
	self triggerEvent: #tick