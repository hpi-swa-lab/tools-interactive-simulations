as yet unclassified
buildRequiredMethodUIElementfor: aMethodSymbol of: aSystem

	^ ECSCollapsible new
		header: (ECSLabel new contents: aMethodSymbol asString; hResizing: #spaceFill);
		body: (ECSCodeEditor new 
			editingMethod: (aSystem class lookupSelector: aMethodSymbol);
			yourself);
		expand