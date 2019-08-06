as yet unclassified
yellowButtonActivity: shiftKeyState

	super yellowButtonActivity: shiftKeyState.
	(shiftKeyState not and: [self method notNil] and: [selectionInterval size > 0])
		ifTrue: [self watchSelectedExpression]