as yet unclassified
collide: anEntity with: anotherEntity

	| firstRect secondRect |
	firstRect := anEntity first position extent: anEntity second size.
	secondRect := anotherEntity first position extent: anotherEntity second size.
	(firstRect intersects: secondRect) ifTrue: [self resolveCollision: anEntity with: anotherEntity]