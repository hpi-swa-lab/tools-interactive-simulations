ui-building-updating-logic
buildConstantRowFor: aSystem named: aSymbol

	| row removeButton |
	row := ECSRow new
		cellInset: ((TextStyle defaultFont height / 3) rounded);
		addMorphBack: (ECSLabel new contents: aSymbol asString);
		addMorphBack: (ECSCodeEditor new 
			value: (aSystem class classPool at: aSymbol) storeString;
			acceptAction: [:text | | result |
				result := Compiler evaluate: text.
				aSystem class classPool at: aSymbol put: result]);
		addMorphBack: (removeButton := ECSButton new
			icon: ECSIcon iconRemove;
			balloonText: 'Remove constant').
	removeButton 
		when: #clicked 
		send: #removeConstantFrom:named:row: 
		to: self withArguments: {aSystem. aSymbol. row}.
	^ row