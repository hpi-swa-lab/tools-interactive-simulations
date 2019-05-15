as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	(systemUniverse notNil and: [self wantsOGL not]) ifTrue: [
		aCanvas
			transformBy: (MorphicTransform offset: self position negated)
			clippingTo: self innerBounds
			during: [:canvas | systemUniverse drawOn: canvas]
			smoothing: 1]