initialization
initialize

	super initialize.
	
	self universe
		when: #componentClassAdded
		send: #updateList
		to: self