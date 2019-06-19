as yet unclassified
cameFromListToPath: aDictionary from: aPosition to: goalPosition

	^ Array streamContents: [:s | | currentPosition |
		currentPosition := goalPosition.
		[aPosition ~= currentPosition] whileTrue: [
			s nextPut: currentPosition.
			currentPosition := aDictionary at: currentPosition]]