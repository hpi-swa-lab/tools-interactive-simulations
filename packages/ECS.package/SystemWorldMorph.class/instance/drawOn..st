as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	(systemWorld notNil and: [self wantsOGL not]) ifTrue: [
		aCanvas
			transformBy: (MorphicTransform offset: self position negated)
			clippingTo: self innerBounds
			during: [:canvas | systemWorld drawOn: canvas]
			smoothing: 1]