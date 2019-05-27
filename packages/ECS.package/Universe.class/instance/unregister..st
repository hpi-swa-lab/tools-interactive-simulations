pipelines
unregister: aPipeline

	pipelines remove: aPipeline.
	self triggerEvent: #pipelineUnregistered with: aPipeline