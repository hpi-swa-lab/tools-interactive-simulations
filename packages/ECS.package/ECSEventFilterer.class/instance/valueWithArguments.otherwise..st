evaluating
valueWithArguments: anArray otherwise: aBlock

	(self isReceiverOrAnyArgumentGarbage not and: [anArray first = self firstArgumentFilter])
		ifTrue: [self receiver perform: self message withArguments: anArray allButFirst]
		ifFalse: aBlock