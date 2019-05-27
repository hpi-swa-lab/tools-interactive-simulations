pipelines
forward: aSymbol from: anObject

	anObject when: aSymbol evaluate: (ECSEventForwarder new 
		receiver: self;
		prependedValue: anObject;
		event: aSymbol;
		yourself)