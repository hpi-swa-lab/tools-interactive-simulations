as yet unclassified
buildMethodUIElementfor: aMethodSymbol of: aSystem

	| removeButton |
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeMethod:from: to: self withArguments: {aMethodSymbol. aSystem};
		balloonText: 'Remover method from system'.
	
	^ ((nonRequiredFunctionsInUI at: aSystem) add: (Association
		key: aMethodSymbol
		value: (ECSCollapsible new
			header: (ECSLabel new contents: aMethodSymbol asString; hResizing: #spaceFill);
			header: removeButton;
			body: (ECSCodeMethodEditor new 
				method: (aSystem class lookupSelector: aMethodSymbol);
				"when: #changedSelector send: #updateMethodSelectorTo:from:in: to: self withArguments: {nil. aMethodSymbol. aSystem};"
				yourself);
			collapse))) value