component lifecyle
remove: aComponentClass from: anEntityIndex persisted: aBoolean

	state remove: aComponentClass from: anEntityIndex.
	aBoolean ifTrue: [persistedState remove: aComponentClass from: anEntityIndex]