as yet unclassified
initialize

	super initialize.
	
	checked := ECSIcon iconCheck.
	self when: #clicked send: #toggle to: self