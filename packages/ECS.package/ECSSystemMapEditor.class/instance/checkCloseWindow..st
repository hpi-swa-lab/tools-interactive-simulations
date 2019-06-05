as yet unclassified
checkCloseWindow: anEvent

	anEvent keyCharacter = Character escape ifTrue: [self containingWindow delete]