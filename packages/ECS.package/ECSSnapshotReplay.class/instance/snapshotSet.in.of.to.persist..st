initialization
snapshotSet: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject persist: aBoolean

	snapshot ifNotNil: [
		snapshot set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject]