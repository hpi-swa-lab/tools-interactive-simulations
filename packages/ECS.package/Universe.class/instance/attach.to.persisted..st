component lifecyle
attach: aComponentClass to: anEntityId persisted: aBoolean

	state attach: aComponentClass to: anEntityId.
	(aBoolean and: [self canPersistChangeTo: anEntityId]) ifTrue: [
		persistedState attach: aComponentClass to: anEntityId.
		^ true].
	^ false