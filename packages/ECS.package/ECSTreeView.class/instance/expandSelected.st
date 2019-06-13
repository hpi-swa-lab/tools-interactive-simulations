accessing
expandSelected

	selectedMorph ifNotNil: [:m |
		m expanded ifTrue: [self moveSelection: 1] ifFalse: [m expand]]