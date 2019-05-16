as yet unclassified
initialize

	super initialize.
	
	self universe systems do: [:each | | stateButton | 
		stateButton := ECSButton new icon: (ECSIcon new changeIconName: (self stateIconForSystem: each)).
		stateButton when: #clicked send: #togglePaused:button: to: self withArguments: {each . stateButton}.
		
		self addMorphBack: (ECSCollapsible new 
			header: (ECSLabel new contents: each name; hResizing: #spaceFill); 
			header: stateButton;
			body: (ECSCodeEditor new 
				styleFullMethod: true;
				changeText: (each class lookupSelector: #tick:) getSourceFromFile;
				acceptAction: [:text | each class compile: text asString];
				yourself);
				collapse)]