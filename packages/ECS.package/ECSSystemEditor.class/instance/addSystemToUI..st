as yet unclassified
addSystemToUI: aSystem

	| stateButton removeButton systemMorph | 
	stateButton := ECSButton new icon: (ECSIcon new changeIconName: (self stateIconForSystem: aSystem)).
	stateButton when: #clicked send: #togglePaused:button: to: self withArguments: {aSystem . stateButton}.
	
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeSystemFromUniverse: to: self with: aSystem.
	
	systemMorph := (ECSCollapsible new 
		header: (ECSLabel new contents: aSystem name; hResizing: #spaceFill); 
		header: stateButton;
		header: removeButton;
		body: (ECSCodeEditor new 
			styleFullMethod: true;
			changeText: (aSystem class lookupSelector: #tick:) getSourceFromFile;
			acceptAction: [:text | aSystem class compile: text asString];
			yourself);
			collapse).
		
	self addMorphBack: systemMorph.
	systemsInUI at: aSystem put: systemMorph