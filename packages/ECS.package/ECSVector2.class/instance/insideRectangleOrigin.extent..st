as yet unclassified
insideRectangleOrigin: aVector extent: anotherVector

	^ x >= aVector x and: [y >= aVector y and: [x <= (aVector x + anotherVector x) and: [y <= (aVector y + anotherVector y)]]]