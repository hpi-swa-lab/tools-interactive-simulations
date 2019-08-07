accessing
initialize

	super initialize.
	
	self
		title: 'My Pipeline';
		systems: OrderedCollection new;
		runContinuously: true