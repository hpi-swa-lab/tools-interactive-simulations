as yet unclassified
initialize

	| pipeline |
	super initialize.
	
	pipeline := self universe pipelines 
		ifEmpty: [nil] 
		ifNotEmpty: [:pipelines | pipelines detect: #runContinuously ifNone: [pipelines first]].
	
	pipelineSelectionButton := (ECSSelectButton new 
		labelBlock: #title;
		value: pipeline; 
		choices: [self universe pipelines];
		small;
		when: #selected send: #changePipeline: to: self).
	header addMorphBack: pipelineSelectionButton.
	
	header addMorphBack: (ECSButton new
		icon: (ECSIcon iconPlus);
		when: #clicked send: #addPipeline to: self;
		balloonText: 'Add new pipeline').
	
	pipeline ifNotNil: [self changePipeline: pipeline].
	
	self universe 
		when: #newPipelineRegistered send: #pipelinesChanged to: self;
		when: #pipelineUnregistered send: #pipelinesChanged to: self;
		when: #pipelineTitleChanged send: #pipelinesChanged to: self