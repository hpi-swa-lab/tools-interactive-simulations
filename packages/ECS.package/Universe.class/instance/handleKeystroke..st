events
handleKeystroke: anEvent

	((self queryList: {KeyEvent}) noneSatisfy: [:list | list first key = anEvent keyCharacter]) ifTrue: [
		self spawnNewWith: {KeyEvent} do: [:event | event key: anEvent keyCharacter]].
	self triggerEvent: #externalEvent with: anEvent