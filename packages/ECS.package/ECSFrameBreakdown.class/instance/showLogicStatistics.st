as yet unclassified
showLogicStatistics

	logicStatistics addFirst: {#GC. Color cantaloupe. 
		(Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - gcTime}.
	self displayStatistics: logicStatistics in: logicBar