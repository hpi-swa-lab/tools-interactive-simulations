tool api
set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject persist: aBoolean

	state set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject.
	
	self
		triggerEvent: #toolStateMutation
		withArguments: {aFieldSymbol. aComponentClass. anEntityNumber. anObject. aBoolean}.
	
	(aBoolean and: [self canPersistChangeTo: anEntityNumber component: aComponentClass]) ifTrue: [
		persistedState set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject.
		^ true].
	
	^ false