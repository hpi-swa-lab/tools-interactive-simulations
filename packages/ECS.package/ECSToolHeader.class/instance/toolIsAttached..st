as yet unclassified
toolIsAttached: aBoolean

	aBoolean
		ifTrue: [self addMorph: deleteButton]
		ifFalse: [self removeMorph: deleteButton].
	
	grabIcon visible: aBoolean