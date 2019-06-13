events
handleKeyDown: anEvent

	| key |
	key := self class normalizedKeyCharacter: anEvent.
	((self queryList: #(KeyEvent)) noneSatisfy: [:list | list first key = key]) ifTrue: [
		self spawnNewWith: #(KeyEvent) do: [:event | event key: key]].
	self triggerEvent: #externalEvent with: anEvent