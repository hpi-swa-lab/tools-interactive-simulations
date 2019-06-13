as yet unclassified
showLogicStatistics

	lastLogicGcDuration := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - logicGcTime.
	logicStatistics addFirst: {#GC. Color red. lastLogicGcDuration}.
	self displayStatistics: logicStatistics in: logicBar