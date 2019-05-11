system-world-events
keyUp: anEvent

	systemWorld ifNil: [^ self].
	systemWorld query: {KeyEvent. #id} do: [:components |
		components first key = anEvent keyCharacter ifTrue: [systemWorld remove: components second]]