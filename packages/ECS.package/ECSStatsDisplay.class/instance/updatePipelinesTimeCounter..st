as yet unclassified
updatePipelinesTimeCounter: aGraph

	aGraph reportValue: Time utcMicrosecondClock - pipelinesTimeStart + 500 // 1000