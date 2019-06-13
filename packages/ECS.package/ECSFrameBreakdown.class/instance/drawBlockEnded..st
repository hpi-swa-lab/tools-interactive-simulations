as yet unclassified
drawBlockEnded: aSystem

	| time |
	time := (Time utcMicrosecondClock - drawBlockStart + 500 // 1000).
	(drawStatistics at: aSystem ifAbsentPut: [ECSSmoothNumber new]) report: time