as yet unclassified
showLogicStatistics

	lastLogicGcDuration := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - logicGcTime.
	(logicStatistics at: #GC) report: lastLogicGcDuration.
	logicStatistics keysAndValuesRemove: [:key :value | value touched not].
	self displayStatistics: logicStatistics in: logicBar