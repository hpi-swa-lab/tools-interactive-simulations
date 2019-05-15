as yet unclassified
drawOn: aCanvas

	aCanvas fillRectangle: self bounds color: (Color gray adjustBrightness: (active ifTrue: [-0.3] ifFalse: [hovered ifTrue: [0.3] ifFalse: [0]])).
	self label ifNotNil: [
		aCanvas drawString: self label in: self layoutBounds font: nil color: Color black]