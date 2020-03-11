api
restart

	state := persistedState veryDeepCopy.
	
	self
		markAllPersisted;
		start.
	
	self views do: #register