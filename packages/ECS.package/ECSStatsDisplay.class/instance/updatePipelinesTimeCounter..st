as yet unclassified
updatePipelinesTimeCounter: aLabel

	aLabel contents: 'Pipelines Time: ', (Time utcMicrosecondClock - pipelinesTimeStart + 500 // 1000) asString, 'ms'