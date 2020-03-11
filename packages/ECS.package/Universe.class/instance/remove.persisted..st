entity lifecycle
remove: anEntity persisted: aBoolean

	state remove: anEntity.
	(aBoolean and: [self canPersistChangeTo: anEntity]) ifTrue: [
		persistedState remove: anEntity.
		^ true].
	^ false