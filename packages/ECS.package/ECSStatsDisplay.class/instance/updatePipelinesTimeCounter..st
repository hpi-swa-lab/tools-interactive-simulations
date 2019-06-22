stats-and-drawing
updatePipelinesTimeCounter: aGraph

	aGraph reportValue: Time utcMicrosecondClock - pipelinesTimeStart + 500 // 1000