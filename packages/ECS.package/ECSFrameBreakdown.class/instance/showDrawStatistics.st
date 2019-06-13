as yet unclassified
showDrawStatistics

	drawStatistics addFirst: {#GC. Color cantaloupe. 
		(Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - gcTime}.
	self displayStatistics: drawStatistics in: drawBar