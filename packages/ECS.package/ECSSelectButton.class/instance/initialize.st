initialization
initialize

	super initialize.
	
	self icon: ECSIcon iconChevron_down.
	self when: #clicked send: #open to: self