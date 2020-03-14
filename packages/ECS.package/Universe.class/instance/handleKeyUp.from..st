events
handleKeyUp: anEvent from: aViewId

	self query: #(KeyEvent id) do: [:keyEvent :id |
		keyEvent key = (self class normalizedKeyCharacter: anEvent) ifTrue: [self remove: id]].
	self updateModifiersWith: anEvent for: aViewId.
	self triggerEvent: #externalEvent with: {anEvent. aViewId}