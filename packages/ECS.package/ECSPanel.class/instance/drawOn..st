as yet unclassified
drawOn: aCanvas

	aCanvas fillRectangle: self bounds color: (self highlightedForDrop ifTrue: [Color red] ifFalse: [Color green])