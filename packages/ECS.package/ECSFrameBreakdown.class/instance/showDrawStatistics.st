profiling
showDrawStatistics

	inDrawingPipeline := false.
	
	lastDrawGcDuration := 	(Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - drawGcTime.
	(drawStatistics at: #GC) report: lastDrawGcDuration.
	drawStatistics keysAndValuesRemove: [:key :value | value touched not].
	self displayStatistics: drawStatistics in: drawBar.
	
	overallStatistics at: #GC put: (logicStatistics at: #GC) value + (drawStatistics at: #GC) value.
	overallStatistics at: #Logic put: (logicStatistics associations inject: 0 into: [:sum :each | 
		each key = #GC ifTrue: [sum] ifFalse: [sum + each value value]]).
	overallStatistics at: #Drawing put: (drawStatistics associations inject: 0 into: [:sum :each | 
		each key = #GC ifTrue: [sum] ifFalse: [sum + each value value]]).
	
	self displayStatistics: overallStatistics in: overallBar