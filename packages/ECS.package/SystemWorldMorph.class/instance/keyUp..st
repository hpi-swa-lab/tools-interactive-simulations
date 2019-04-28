as yet unclassified
keyUp: anEvent

	systemWorld query: {KeyEvent. Entity} do: [:components |
		components first key = anEvent keyCharacter ifTrue: [components second delete]]