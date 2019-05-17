as yet unclassified
buildMethodUIElementfor: aMethodSymbol of: aSystem

	| removeButton |
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeMethod:from: to: self withArguments: {aMethodSymbol. aSystem}.

	^ ((nonRequiredFunctionsInUI at: aSystem) add: (Association
		key: aMethodSymbol
		value: (ECSCollapsible new
			header: (ECSLabel new contents: aMethodSymbol asString; hResizing: #spaceFill);
			header: removeButton;
			body: (ECSCodeEditor new 
				styleFullMethod: true;
				changeText: (aSystem class lookupSelector: aMethodSymbol) getSourceFromFile;
				acceptAction: [:text | aSystem class compile: text asString];
				yourself);
			collapse))) value