initialize-release
initialize

	super initialize.
	
	self color: Color black.
	
	viewEntity := self universe spawnNewWith: #(UniverseView) do: [:view | view size: self extent].
	
	self guessDrawPipeline.
	
	header addMorphBack: (ECSSelectButton new 
		labelBlock: #yourself;
		value: drawPipelineName; 
		choices: [self universe pipelines collect: #title];
		small;
		when: #selected send: #drawPipelineName: to: self).
	
	self universe views addIfNotPresent: self