as yet unclassified
systemTickEnded: aPipeline system: aSystem

	| time |
	time := (Time utcMicrosecondClock - systemTickStart + 500 // 1000).
	logicStatistics add: {aSystem. time}