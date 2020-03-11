entity lifecycle
spawnNewAutoPersistedWith: aListOfComponents

	^ self autoPersist
		ifTrue: [ | id |
			id := self spawnNewPersistedWith: aListOfComponents.
			self attach: #ECSPersisted to: id.
			id]
		ifFalse: [self spawnNewWith: aListOfComponents withListDo: [:l |]]