as yet unclassified
tick

	drawingBlocks removeAll.
	[systems do: [:system | system tick: self]] on: Exception do: [:err | self pause. err signal]