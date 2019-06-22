initialization
initialize

	| removeButton addMethodButton | 	
	super initialize.
	
	stateButton := ECSButton new icon: (ECSIcon new changeIconName: (self stateIconForRunningState: self system isEnabled)).
	stateButton
		when: #clicked send: #togglePaused to: self;
		balloonText: 'Toggle system paused'.
	
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeMe to: self;
		balloonText: 'Remove system from pipeline'.
	
	addMethodButton := ECSButton new
		icon: ECSIcon iconPlus;
		when: #clicked send: #addMethod to: self;
		balloonText: 'Add method'.
	
	self
		header: (systemTitleLabel := ECSLabel new contents:  self system className; hResizing: #spaceFill);
		header: (ECSButton new
			icon: ECSIcon iconMap;
			when: #clicked send: #openSystemMap to: self;
			balloonText: 'Open System Methods in Map Editor');
		header: addMethodButton;
		header: stateButton;
		header: removeButton;
		body: (ECSRow new
			addMorphFront: (Morph new extent: 20@0);
			addMorphBack: (ECSColumn new
				addMorphBack: (self buildSystemFunctionsAreaAndFillIt);
				addMorphBack: (self buildConstantsArea)));
		collapse.
		
	self universe when: #postTick send: #updateLabel to: self.
	
	self assureExtension.
	self extension assureOtherProperties.
	self extension otherProperties at: #ecsSystem put:  self system.
	
	self universe when: #postTick send: #updateLabel to: self