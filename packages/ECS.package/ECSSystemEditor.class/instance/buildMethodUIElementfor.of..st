initialization
buildMethodUIElementfor: aMethodSymbol of: aSystem

	| removeButton |
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeMethod:from: to: self withArguments: {aMethodSymbol. aSystem};
		balloonText: 'Remove method from system'.
	
	^ (nonRequiredFunctionsInUI add: (Association
		key: aMethodSymbol
		value: (ECSCollapsible new
			header: (ECSLabel new contents: aMethodSymbol asString; hResizing: #spaceFill);
			header: removeButton;
			body: (ECSCodeMethodEditor new
				replaceOnSelectorChange: true;
				method: (aSystem class lookupSelector: aMethodSymbol);
				when: #saved send: #maybeUnpauseAfterError to: self;
				when: #saved send: #viewsChanged to: self;
				"when: #changedSelector send: #updateMethodSelectorTo:from:in: to: self withArguments: {nil. aMethodSymbol. aSystem};"
				yourself);
			collapse))) value