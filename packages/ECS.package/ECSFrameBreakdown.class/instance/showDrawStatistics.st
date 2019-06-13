as yet unclassified
showDrawStatistics

	lastDrawGcDuration := 	(Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - drawGcTime.
	(drawStatistics at: #GC) report: lastDrawGcDuration.
	drawStatistics keysAndValuesRemove: [:key :value | value touched not].
	self displayStatistics: drawStatistics in: drawBar.
	
	(overallStatistics at: #GC) report: lastLogicGcDuration + lastDrawGcDuration.
	(overallStatistics at: #Logic) report: (logicStatistics inject: 0 into: [:sum :each | sum + each value]).
	(overallStatistics at: #Drawing) report: (drawStatistics inject: 0 into: [:sum :each | sum + each value]).
	
	self displayStatistics: overallStatistics in: overallBar