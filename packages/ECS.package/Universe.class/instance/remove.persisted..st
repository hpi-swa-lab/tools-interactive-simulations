entity lifecycle
remove: anEntity persisted: aBoolean

	state remove: anEntity.
	aBoolean ifTrue: [persistedState remove: anEntity]