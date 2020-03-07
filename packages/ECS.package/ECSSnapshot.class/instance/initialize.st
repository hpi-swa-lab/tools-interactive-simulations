as yet unclassified
initialize

	super initialize.
	
	
	self resetEntityList.
	
	components at: #id put: IndexStorage new.
	accesses := 0.
	queryLocalAccesses := 0.