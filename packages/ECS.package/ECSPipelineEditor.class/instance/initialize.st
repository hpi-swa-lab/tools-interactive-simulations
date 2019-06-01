as yet unclassified
initialize

	super initialize.
	
	systemsInUI := Dictionary new.
	nonRequiredFunctionsInUI := Dictionary new.
	systemFunctionsAreasInUI := Dictionary new.
	list := ECSSortable new.
	list when: #itemMoved:toIndex: send: #systemReordered:newIndex: to: self.
	
	pipeline ifNil: [pipeline := self universe pipelines first].
	
	pipeline systems do: [:each | self addSystemToUI: each].
	
	self when: #newSystemRegistered forCurrentPipelineThenSend: #addSystemToUI:;
		when: #systemUnregistered forCurrentPipelineThenSend: #removeSystemFromUI:;
		when: #pipelineExecutionModeChanged forCurrentPipelineThenSend: #executionModeChanged:;
		when: #systemOrderChanged forCurrentPipelineThenSend: #systemOrderChanged.
	
	runContinuouslyButton := ECSButton new
		icon: (ECSIcon new changeIconName: self iconForRunContinuously);
		when: #clicked send: #toggleRunContinuously to: self.
	
	header addMorphBack: (ECSButton new
		icon: (ECSIcon iconPlus);
		when: #clicked send: #addSystem to: self).
	header addMorphBack: runContinuouslyButton.
	header addMorphBack: (runOnceButton := (ECSButton new icon: ECSIcon iconPlay; when: #clicked send: #runOnce to: self)).
	header addMorphBack: (ECSButton new
		icon: (ECSIcon iconTrash);
		when: #clicked send: #unregisterPipelineAndDeleteMyself to: self).
		
	self addMorphBack: list