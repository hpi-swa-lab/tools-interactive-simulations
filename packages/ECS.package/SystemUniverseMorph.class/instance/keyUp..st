system-world-events
keyUp: anEvent

	systemUniverse ifNotNil: [
		systemUniverse query: {KeyEvent. #id} do: [:keyEvent :id |
			keyEvent key = anEvent keyCharacter ifTrue: [systemUniverse remove: id]]]