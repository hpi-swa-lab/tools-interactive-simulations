accessing
collapseSelected

	selectedMorph ifNotNil: [:m |
		m expanded ifTrue: [m collapse] ifFalse: [self moveSelection: -1. selectedMorph collapse]]