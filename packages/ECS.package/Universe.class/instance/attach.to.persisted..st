component lifecyle
attach: aComponentClass to: anEntityId persisted: aBoolean

	state attach: aComponentClass to: anEntityId.
	aBoolean ifTrue: [persistedState attach: aComponentClass to: anEntityId]