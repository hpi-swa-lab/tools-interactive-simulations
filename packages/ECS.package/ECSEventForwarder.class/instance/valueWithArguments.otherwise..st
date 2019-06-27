evaluating
valueWithArguments: anArray otherwise: aBlock

	self isReceiverOrAnyArgumentGarbage 
		ifFalse: [self receiver triggerEvent: self event withArguments: {self prependedValue}, anArray]
		ifTrue: aBlock