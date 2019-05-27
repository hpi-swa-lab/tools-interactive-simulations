system-world-events
keyStroke: anEvent

	((systemUniverse queryList: {KeyEvent}) noneSatisfy: [:list | list first key = anEvent keyCharacter]) ifTrue: [
		systemUniverse spawnNewWith: {KeyEvent} do: [:event | event key: anEvent keyCharacter]]