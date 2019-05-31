events
keyStroke: anEvent

	((self queryList: {KeyEvent}) noneSatisfy: [:list | list first key = anEvent keyCharacter]) ifTrue: [
		self spawnNewWith: {KeyEvent} do: [:event | event key: anEvent keyCharacter]]