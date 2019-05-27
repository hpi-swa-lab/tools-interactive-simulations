pipelines
register: aPipeline

	self assert: [aPipeline class = Pipeline].

	pipelines add: aPipeline.
	self 
		"forward: #newSystemRegistered from: aPipeline;
		forward: #systemOrderChanged from: aPipeline;
		forward: #newSystemRegistered from: aPipeline;
		forward: #systemUnregistered from: aPipeline;"
		
		triggerEvent: #newPipelineRegistered with: aPipeline