as yet unclassified
addSystemToUI: aSystem

	| stateButton removeButton systemMorph addMethodButton | 	
	stateButton := ECSButton new icon: (ECSIcon new changeIconName: (self stateIconForRunningState: aSystem isEnabled)).
	stateButton
		when: #clicked send: #togglePaused:button: to: self withArguments: {aSystem . stateButton};
		balloonText: 'Toggle system paused'.
	
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeSystemFromPipeline: to: self with: aSystem;
		balloonText: 'Remove system from pipeline'.

	addMethodButton := ECSButton new
		icon: ECSIcon iconPlus;
		when: #clicked send: #addMethodTo: to: self with: aSystem;
		balloonText: 'Add method'.
	
	systemMorph := (ECSCollapsible new 
		header: (ECSLabel new contents: aSystem className; hResizing: #spaceFill);
		header: (ECSButton new
			icon: ECSIcon iconMap;
			when: #clicked send: #openSystemMap: to: self with: aSystem;
			balloonText: 'Open System Methods in Map Editor');
		header: addMethodButton;
		header: stateButton;
		header: removeButton;
		body: (ECSRow new
			addMorphFront: (Morph new extent: 20@0);
			addMorphBack: (ECSColumn new
				addMorphBack: (self buildSystemFunctionsAreaAndFillItFor: aSystem);
				addMorphBack: (self buildConstantsAreaFor: aSystem)));
		collapse).
	
	list addItem: systemMorph.
	systemsInUI at: aSystem put: systemMorph