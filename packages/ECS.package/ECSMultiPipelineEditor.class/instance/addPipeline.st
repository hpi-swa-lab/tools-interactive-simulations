pipelines
addPipeline

	| title pipeline |
	title := UIManager default request: 'Title of the new pipeline'.
	title ifEmpty: [^ self].
	pipeline := Pipeline new title: title; yourself.
	self universe register: pipeline.
	pipelineSelectionButton value: pipeline.
	self changePipeline: pipeline