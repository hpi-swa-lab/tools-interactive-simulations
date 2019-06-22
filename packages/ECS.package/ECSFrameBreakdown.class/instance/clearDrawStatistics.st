profiling
clearDrawStatistics

	drawGcTime := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	drawStatistics valuesDo: [:each | each resetTouched]