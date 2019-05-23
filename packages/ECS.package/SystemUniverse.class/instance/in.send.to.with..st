api
in: aDuration send: aSelector to: anObject with: aCollectionOfArguments

	self spawnNewWith: {Timer} do: [:timer |
		timer
			timeLeft: aDuration asMilliSeconds;
			receiver: anObject;
			selector: aSelector;
			arguments: aCollectionOfArguments]