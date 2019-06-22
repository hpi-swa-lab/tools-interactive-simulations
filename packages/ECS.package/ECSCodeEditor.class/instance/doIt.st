menu commands
doIt

	self doItIsAccept
		ifTrue: [self accept]
		ifFalse: [super doIt]