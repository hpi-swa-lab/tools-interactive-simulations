events
handleKeyUp: anEvent

	self query: {KeyEvent. #id} do: [:keyEvent :id |
		keyEvent key = (self normalizedKeyCharacter: anEvent) ifTrue: [self remove: id]].
	self triggerEvent: #externalEvent with: anEvent