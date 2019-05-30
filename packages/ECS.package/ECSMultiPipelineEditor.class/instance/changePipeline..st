as yet unclassified
changePipeline: aPipeline

	pipelineEditor ifNotNil: [pipelineEditor delete].
	pipelineEditor := ECSPipelineEditor newFor: self universe pipeline: aPipeline. 
	pipelineEditor header toolIsAttached: false.
	self addMorphBack: pipelineEditor