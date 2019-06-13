accessing
keyDown: anEvent

	anEvent keyCharacter = Character arrowDown ifTrue: [self moveSelection: 1].
	anEvent keyCharacter = Character arrowUp ifTrue: [self moveSelection: -1].
	anEvent keyCharacter = Character arrowLeft ifTrue: [self collapseSelected].
	anEvent keyCharacter = Character arrowRight ifTrue: [self expandSelected].