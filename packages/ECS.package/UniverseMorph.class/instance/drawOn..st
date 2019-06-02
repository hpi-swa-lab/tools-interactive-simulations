drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas
		transformBy: (MorphicTransform offset: self position negated)
		clippingTo: self innerBounds
		during: [:canvas | universe drawOn: canvas]
		smoothing: 1