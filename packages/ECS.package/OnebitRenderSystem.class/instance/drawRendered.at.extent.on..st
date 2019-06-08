as yet unclassified
drawRendered: aRendered at: aVector extent: anotherVector on: aCanvas

	aRendered form
		ifNotNil: [:f | f drawOn: aCanvas at: aVector blend: aRendered color]
		ifNil: [
			aCanvas
				fillRectangle: (aVector extent: anotherVector)
				color: aRendered color]