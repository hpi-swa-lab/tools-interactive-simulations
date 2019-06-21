closing
checkCloseWindow: anEvent

	anEvent keyCharacter = Character escape ifTrue: [self containingWindow delete]