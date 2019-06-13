as yet unclassified
initialize

	super initialize.
	
	average := 0.
	cursor := 1.
	smoothingDuration := 50.
	values := Array new: smoothingDuration withAll: 0