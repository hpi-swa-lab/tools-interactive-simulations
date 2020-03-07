api
restart

	state := persistedState veryDeepCopy.
	self start.
	
	self views do: #register