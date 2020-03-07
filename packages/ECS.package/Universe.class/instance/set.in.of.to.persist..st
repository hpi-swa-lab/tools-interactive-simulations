tool api
set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject persist: aBoolean

	state set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject.
	aBoolean ifTrue: [persistedState set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject]