system-world-events
keyStroke: anEvent

	systemUniverse ifNotNil: [
		((systemUniverse queryList: {KeyEvent}) noneSatisfy: [:list | list first key = anEvent keyCharacter]) ifTrue: [
			systemUniverse spawnNewWith: {KeyEvent new key: anEvent keyCharacter}]]