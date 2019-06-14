as yet unclassified
smoothingDuration: aNumber

	smoothingDuration := aNumber.
	values := Array new: smoothingDuration withAll: 0.
	average := 0.
	cursor := 1.