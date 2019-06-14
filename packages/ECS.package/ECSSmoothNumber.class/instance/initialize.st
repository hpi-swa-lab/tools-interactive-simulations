as yet unclassified
initialize

	super initialize.
	
	average := 0.
	cursor := 1.
	touched := false.
	self smoothingDuration: 50