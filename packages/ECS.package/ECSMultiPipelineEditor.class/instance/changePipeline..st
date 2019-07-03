pipelines
changePipeline: aPipeline

	| previouslyHighlightedClass |
	previouslyHighlightedClass := nil.
	pipelineEditor ifNotNil: [previouslyHighlightedClass := pipelineEditor highlightedClass. pipelineEditor delete. pipelineEditor := nil].
	aPipeline ifNotNil: [
		pipelineEditor := ECSPipelineEditor newFor: self universe pipeline: aPipeline. 
		pipelineEditor header toolIsAttached: false.
		pipelineEditor highlightByComponent: previouslyHighlightedClass.
		self addMorphBack: pipelineEditor]