as yet unclassified
addSystemToUI: aSystem

	| stateButton | 
	stateButton := ECSButton new icon: (ECSIcon new changeIconName: (self stateIconForSystem: aSystem)).
	stateButton when: #clicked send: #togglePaused:button: to: self withArguments: {aSystem . stateButton}.
		
	self addMorphBack: (ECSCollapsible new 
		header: (ECSLabel new contents: aSystem name; hResizing: #spaceFill); 
		header: stateButton;
		body: (ECSCodeEditor new 
			styleFullMethod: true;
			changeText: (aSystem class lookupSelector: #tick:) getSourceFromFile;
			acceptAction: [:text | aSystem class compile: text asString];
			yourself);
			collapse)