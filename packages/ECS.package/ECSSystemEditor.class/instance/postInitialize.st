initialization
postInitialize

	| stateButton removeButton addMethodButton systemTitle | 	
	super initialize.
	
	stateButton := ECSButton new icon: (ECSIcon new changeIconName: (self stateIconForRunningState: self system isEnabled)).
	stateButton
		when: #clicked send: #togglePaused:button: to: self withArguments: { self system . stateButton};
		balloonText: 'Toggle system paused'.
	
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeSystemFromPipeline: to: self with:  self system;
		balloonText: 'Remove system from pipeline'.
	
	addMethodButton := ECSButton new
		icon: ECSIcon iconPlus;
		when: #clicked send: #addMethodTo: to: self with:  self system;
		balloonText: 'Add method'.
	
	self
		header: (systemTitle := ECSLabel new contents:  self system className; hResizing: #spaceFill);
		header: (ECSButton new
			icon: ECSIcon iconMap;
			when: #clicked send: #openSystemMap: to: self with:  self system;
			balloonText: 'Open System Methods in Map Editor');
		header: addMethodButton;
		header: stateButton;
		header: removeButton;
		body: (ECSRow new
			addMorphFront: (Morph new extent: 20@0);
			addMorphBack: (ECSColumn new
				addMorphBack: (self buildSystemFunctionsAreaAndFillItFor:  self system);
				addMorphBack: (self buildConstantsAreaFor:  self system)));
		collapse.
		
	self universe when: #postTick send: #updateLabel:system: to: self withArguments: {systemTitle.  self system}.
	
	self assureExtension.
	self extension assureOtherProperties.
	self extension otherProperties at: #ecsSystem put:  self system.
	
	self universe when: #postTick send: #updateLabel:system: to: self withArguments: {systemTitle.  self system}