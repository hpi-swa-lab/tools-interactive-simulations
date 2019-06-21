drawing
drawOn: aCanvas

	aCanvas fillRectangle: self bounds color: (self highlightedForDrop ifTrue: [Color white] ifFalse: [Color veryLightGray])