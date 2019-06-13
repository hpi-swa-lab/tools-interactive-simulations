as yet unclassified
showDrawStatistics

	lastDrawGcDuration := 	(Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - drawGcTime.
	drawStatistics addFirst: {#GC. Color red. lastDrawGcDuration}.
	self displayStatistics: drawStatistics in: drawBar.
	
	self displayStatistics: (Array
			with: {#GC. Color red. lastLogicGcDuration + lastDrawGcDuration}
			with: {#Logic. Color green. logicStatistics inject: 0 into: [:sum :each | sum + each third]}
			with: {#Drawing. Color blue. drawStatistics inject: 0 into: [:sum :each | sum + each third]}) 
		in: overallBar