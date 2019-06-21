pipelines
changePipeline: aPipeline

	pipelineEditor ifNotNil: [pipelineEditor delete. pipelineEditor := nil].
	aPipeline ifNotNil: [
		pipelineEditor := ECSPipelineEditor newFor: self universe pipeline: aPipeline. 
		pipelineEditor header toolIsAttached: false.
		self addMorphBack: pipelineEditor]