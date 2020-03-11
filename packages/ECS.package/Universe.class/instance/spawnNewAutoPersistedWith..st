entity lifecycle
spawnNewAutoPersistedWith: aListOfComponents

	^ self autoPersist ifTrue: [self spawnNewPersistedWith: aListOfComponents] ifFalse: [self spawnNewWith: aListOfComponents withListDo: [:l |]]