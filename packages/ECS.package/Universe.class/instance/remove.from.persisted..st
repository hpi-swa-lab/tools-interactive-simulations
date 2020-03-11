component lifecyle
remove: aComponentClass from: anEntityIndex persisted: aBoolean

	state remove: aComponentClass from: anEntityIndex.
	(aBoolean and: [self canPersistChangeTo: anEntityIndex component: aComponentClass]) ifTrue: [
		persistedState remove: aComponentClass from: anEntityIndex.
		^ true].
	^ false