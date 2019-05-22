as yet unclassified
evaluateExpression: anExpression

	self doItIsAccept
		ifTrue: [self accept]
		ifFalse: [super evaluateExpression: anExpression]