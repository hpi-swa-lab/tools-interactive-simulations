accessing
disconnectFromUniverseAndReportNumberFor: aSystem

	system = aSystem ifTrue: [self universe removeActionsWithReceiver: self]