as yet unclassified
clampToRectangle: aRectangle

	self position: (origin min: aRectangle corner - self extent max: aRectangle origin)