accessing
connectToUniverseQueriedFor: aSystem

	system = aSystem ifTrue: [self universe when: #queryReport send: #report:components: to: self]