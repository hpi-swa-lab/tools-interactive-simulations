entity lifecycle
remove: anEntity persisted: aBoolean

	(aBoolean and: [self canPersistChangeTo: anEntity]) ifTrue: [
		state remove: anEntity.
		persistedState remove: anEntity.
		^ true].
	
	state remove: anEntity.
	^ false