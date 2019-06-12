as yet unclassified
updateDrawTimeCounter: aGraph

	aGraph reportValue: Time utcMicrosecondClock - drawTimeStart + 500 // 1000