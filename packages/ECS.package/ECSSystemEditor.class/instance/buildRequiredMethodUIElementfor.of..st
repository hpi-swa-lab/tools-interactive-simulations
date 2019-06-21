initialization
buildRequiredMethodUIElementfor: aMethodSymbol of: aSystem

	^ ECSCollapsible new
		header: (ECSLabel new contents: aMethodSymbol asString; hResizing: #spaceFill);
		body: (ECSCodeMethodEditor new 
			method: (aSystem class lookupSelector: aMethodSymbol);
			yourself);
		expand