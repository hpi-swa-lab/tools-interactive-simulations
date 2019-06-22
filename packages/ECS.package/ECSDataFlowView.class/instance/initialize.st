as yet unclassified
initialize

	| pipelineSelectionButton |
	super initialize.
	
	pipeline := self universe pipelines first.
	pipelineSelectionButton := (ECSSelectButton new 
		labelBlock: #title;
		value: pipeline; 
		choices: [self universe pipelines];
		small;
		when: #selected send: #changePipeline: to: self).
	header addMorphBack: pipelineSelectionButton.
	
	self updateView