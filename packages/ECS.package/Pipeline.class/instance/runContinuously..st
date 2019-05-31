accessing
runContinuously: aBoolean

	runContinuously := aBoolean.
	self triggerEvent: #pipelineExecutionModeChanged with: aBoolean