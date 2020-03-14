component lifecyle
remove: aComponentClass from: anEntityIndex persisted: aBoolean

	(aBoolean and: [self canPersistChangeTo: anEntityIndex component: aComponentClass]) ifTrue: [
		state remove: aComponentClass from: anEntityIndex.
		persistedState remove: aComponentClass from: anEntityIndex.
		^ true].
	state remove: aComponentClass from: anEntityIndex.
	^ false