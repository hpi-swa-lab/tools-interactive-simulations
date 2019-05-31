events
keyUp: anEvent

	self query: {KeyEvent. #id} do: [:keyEvent :id |
		keyEvent key = anEvent keyCharacter ifTrue: [self remove: id]]