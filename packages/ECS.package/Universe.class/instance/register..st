pipelines
register: aPipeline

	self assert: [aPipeline class = Pipeline].

	pipelines add: aPipeline.
	self 
		forward: #newSystemRegistered from: aPipeline;
		forward: #systemOrderChanged from: aPipeline;
		forward: #systemUnregistered from: aPipeline;
		forward: #pipelineExecutionModeChanged from: aPipeline;
		forward: #pipelineTitleChanged from: aPipeline;
		
		triggerEvent: #newPipelineRegistered with: aPipeline