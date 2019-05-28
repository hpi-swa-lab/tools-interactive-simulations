as yet unclassified
initialize

	super initialize.
	
	systemsInUI := Dictionary new.
	nonRequiredFunctionsInUI := Dictionary new.
	systemFunctionsAreasInUI := Dictionary new.
	list := ECSSortable new.
	list when: #itemMoved:toIndex: send: #systemReordered:newIndex: to: self.
	
	pipeline := self universe pipelines first.
	
	pipeline systems do: [:each | self addSystemToUI: each].
	
	self when: #newSystemRegistered forCurrentPipelineThenSend: #addSystemToUI:;
		when: #systemUnregistered forCurrentPipelineThenSend: #removeSystemFromUI:;
		when: #systemOrderChanged forCurrentPipelineThenSend: #systemOrderChanged.
	
	header addMorphBack: (ECSButton new
		icon: (ECSIcon iconPlus);
		when: #clicked send: #addSystem to: self).
		
	self addMorphBack: list