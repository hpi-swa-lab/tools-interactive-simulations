profiling
systemTickEnded: aPipeline system: aSystem

	| time |
	time := (Time utcMicrosecondClock - systemTickStart + 500 // 1000).
	(logicStatistics at: aSystem ifAbsentPut: [ECSSmoothNumber new]) report: time