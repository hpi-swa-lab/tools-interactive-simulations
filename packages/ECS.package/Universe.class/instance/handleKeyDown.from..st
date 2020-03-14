events
handleKeyDown: anEvent from: aViewId

	| key |
	key := self class normalizedKeyCharacter: anEvent.
	((self queryList: #(KeyEvent)) noneSatisfy: [:list | list first key = key]) ifTrue: [
		self spawnNewWith: #(KeyEvent) do: [:event | event key: key;  view: aViewId]].
	self updateModifiersWith: anEvent for: aViewId.
	self triggerEvent: #externalEvent with: {anEvent. aViewId}