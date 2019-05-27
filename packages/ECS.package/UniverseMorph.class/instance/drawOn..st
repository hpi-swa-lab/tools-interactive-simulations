as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas
		transformBy: (MorphicTransform offset: self position negated)
		clippingTo: self innerBounds
		during: [:canvas | systemUniverse drawOn: canvas]
		smoothing: 1