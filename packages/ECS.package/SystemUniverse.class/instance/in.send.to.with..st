api
in: aDuration send: aSelector to: anObject with: aCollectionOfArguments

	self spawnNewWith: {Timer new
		timeLeft: aDuration asMilliSeconds;
		receiver: anObject;
		selector: aSelector;
		arguments: aCollectionOfArguments;
		yourself}