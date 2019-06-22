initialization
buildConstantRowNamed: aSymbol

	| row removeButton |
	row := ECSRow new
		cellInset: ((TextStyle defaultFont height / 3) rounded);
		addMorphBack: (ECSLabel new contents: aSymbol asString);
		addMorphBack: (ECSCodeEditor new 
			value: (self system class classPool at: aSymbol) storeString;
			acceptAction: [:text | | result |
				result := Compiler evaluate: text.
				self system class classPool at: aSymbol put: result]);
		addMorphBack: (removeButton := ECSButton new
			icon: ECSIcon iconRemove;
			balloonText: 'Remove constant').
	removeButton 
		when: #clicked 
		send: #removeConstantFrom:named:row: 
		to: self withArguments: {self system. aSymbol. row}.
	^ row