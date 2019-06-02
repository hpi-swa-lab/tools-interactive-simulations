as yet unclassified
completionController
	
	| controller |
	controller := self dependents 
		detect: [ :each | each isKindOf:  ECController ]
		ifNone: [].
	^controller ifNil: [self addDependent: self createCompletionController]