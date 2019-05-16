as yet unclassified
tick

	drawingBlocks removeAll.
	[systems select: #isRunning thenDo: [:system | system tick: self]] 
		on: Exception do: [:err | self pause. err signal].
	self triggerEvent: #tick