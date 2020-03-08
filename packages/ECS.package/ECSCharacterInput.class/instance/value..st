as yet unclassified
value: aCharacter

	aCharacter = value ifFalse: [
		value := aCharacter.
		self label: aCharacter storeString]