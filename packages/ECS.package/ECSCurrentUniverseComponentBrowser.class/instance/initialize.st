initialization
initialize

	super initialize.
	
	self universe
		when: #componentAdded
		send: #updateList
		to: self