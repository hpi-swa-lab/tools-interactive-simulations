system-world-events
keyUp: anEvent

	systemUniverse ifNil: [^ self].
	systemUniverse query: {KeyEvent. #id} do: [:components |
		components first key = anEvent keyCharacter ifTrue: [systemUniverse remove: components second]]