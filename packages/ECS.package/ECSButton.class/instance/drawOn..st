as yet unclassified
drawOn: aCanvas

	aCanvas fillRectangle: self bounds color: (Color lightGray adjustBrightness: (active ifTrue: [-0.1] ifFalse: [hovered ifTrue: [0.1] ifFalse: [0]])).
	self label ifNotNil: [
		aCanvas drawString: self label in: self layoutBounds font: nil color: Color black]