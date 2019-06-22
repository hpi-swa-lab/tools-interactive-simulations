profiling
clearLogicStatistics

	logicGcTime := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	logicStatistics valuesDo: [:each | each resetTouched]