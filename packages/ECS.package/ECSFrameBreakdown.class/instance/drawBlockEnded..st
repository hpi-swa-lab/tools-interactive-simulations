as yet unclassified
drawBlockEnded: aSystem

	| time |
	time := (Time utcMicrosecondClock - drawBlockStart + 500 // 1000).
	drawStatistics add: {aSystem class name. aSystem class color. time}