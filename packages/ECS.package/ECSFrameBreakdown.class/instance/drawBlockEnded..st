as yet unclassified
drawBlockEnded: aSystem

	| time |
	time := (Time utcMicrosecondClock - systemTickStart + 500 // 1000).
	drawStatistics add: {aSystem class name. aSystem class color. time}