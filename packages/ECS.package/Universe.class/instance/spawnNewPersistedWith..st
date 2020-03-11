entity lifecycle
spawnNewPersistedWith: aListOfComponents

	| id |
	id := (state maxEntityIndex max: persistedState maxEntityIndex) + 1.
	state allocateEntity: id.
	persistedState allocateEntity: id.
	aListOfComponents withIndexDo: [:componentClass :index |
		state attach: componentClass to: id.
		persistedState attach: componentClass to: id].
	^ id