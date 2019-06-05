as yet unclassified
drawOn: aCanvas at: aVector2 blend: aColor

	aCanvas fillRectangle: (aVector2 extent: self identifier) 
		color: (Color r: 1 g: 0 b: 1 alpha: aColor alpha)