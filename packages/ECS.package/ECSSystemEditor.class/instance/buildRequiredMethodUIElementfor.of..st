initialization
buildRequiredMethodUIElementfor: aMethodSymbol of: aSystem

	^ ECSCollapsible new
		header: (ECSLabel new contents: aMethodSymbol asString; hResizing: #spaceFill);
		body: (ECSCodeMethodEditor new 
			when: #saved send: #codeChangesSaved to: self;
			method: (aSystem class lookupSelector: aMethodSymbol);
			yourself);
		expand