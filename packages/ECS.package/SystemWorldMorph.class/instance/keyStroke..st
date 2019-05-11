system-world-events
keyStroke: anEvent

	((systemWorld queryList: {KeyEvent}) noneSatisfy: [:list | list first key = anEvent keyCharacter]) ifTrue: [
		systemWorld spawnNewWith: {KeyEvent new key: anEvent keyCharacter}]