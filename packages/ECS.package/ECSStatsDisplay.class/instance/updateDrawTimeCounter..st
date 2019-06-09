as yet unclassified
updateDrawTimeCounter: aLabel

	aLabel contents: 'Draw Time: ', (Time utcMicrosecondClock - drawTimeStart + 500 // 1000) asString, 'ms'