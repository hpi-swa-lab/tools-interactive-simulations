initialize-release
initialize

	super initialize.
	
	self color: Color black.
	
	self register.
	self universe when: #unpauseAfterError send: #resumeAfterDrawError to: self.
	self guessDrawPipeline.
	
	header addMorphBack: (ECSSelectButton new 
		labelBlock: #yourself;
		value: drawPipelineName; 
		choices: [self universe pipelines collect: #title];
		small;
		when: #selected send: #drawPipelineName: to: self).
	
	self universe views addIfNotPresent: self