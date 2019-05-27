as yet unclassified
buildRequiredMethodUIElementfor: aMethodSymbol of: aSystem

	^ ECSCollapsible new
		header: (ECSLabel new contents: aMethodSymbol asString; hResizing: #spaceFill);
		body: (ECSCodeEditor new 
			styleFullMethod: true;
			changeText: (aSystem class lookupSelector: aMethodSymbol) getSourceFromFile;
			acceptAction: [:text | aSystem class compile: text asString];
			yourself);
		expand