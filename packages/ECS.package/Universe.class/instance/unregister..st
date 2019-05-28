pipelines
unregister: aPipeline

	self assert: [aPipeline class = Pipeline].
	pipelines remove: aPipeline.
	self triggerEvent: #pipelineUnregistered with: aPipeline