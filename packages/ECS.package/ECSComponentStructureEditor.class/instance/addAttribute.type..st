as yet unclassified
addAttribute: aString type: aClass

	| row |
	row := (ECSRow new 
		cellInset: (TextStyle defaultFont height / 2) rounded;
		
		addMorphBack: (ECSLabel contents: 'Name:');
		addMorphBack: (ECSCodeEditor new 
			externalValueUpdate: aString;
			acceptAction: [:text | self updateComponentClass]);
		
		addMorphBack: (ECSLabel contents: 'Type:');
		addMorphBack: (ECSSelectButton new
			labelBlock: #name;
			value: aClass;
			choices: self validTypes;
			when: #selected send: #updateComponentClass to: self);
		yourself).
	
	row addMorphBack: (ECSButton new
		icon: ECSIcon iconClose;
		when: #clicked send: #removeAttribute: to: self with: row).
	
	instVarMorphs addMorphBack: row