event handling
keyStroke: anEvent

	anEvent keyCharacter = Character escape ifTrue: [
		^ self triggerEvent: #escapePressed].
	
	^ super keyStroke: anEvent