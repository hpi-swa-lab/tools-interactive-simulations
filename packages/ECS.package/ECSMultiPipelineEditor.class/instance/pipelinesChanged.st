as yet unclassified
pipelinesChanged

	"called whenever a new pipeline is registered or an existing pipeline is unregistered"
	| pipelines |
	pipelines := self universe pipelines.
	pipelineSelectionButton choices: pipelines.
	(pipelineEditor notNil and: [pipelines includes: pipelineEditor pipeline]) 
		ifTrue: [pipelineSelectionButton value: pipelineEditor pipeline]
		ifFalse: [self changePipeline: nil.
		pipelineSelectionButton value: nil]