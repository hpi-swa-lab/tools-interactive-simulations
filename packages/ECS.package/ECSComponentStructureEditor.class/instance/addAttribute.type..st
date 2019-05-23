as yet unclassified
addAttribute: aString type: aClass

	| row |
	row := (ECSRow new 
			addMorphBack: (ECSLabel contents: 'Name: ');
			addMorphBack: (ECSCodeEditor new 
				externalValueUpdate: aString;
				acceptAction: [:text | self updateComponentClass]);
			addMorphBack: (ECSLabel contents: ' Type: ');
			addMorphBack: (ECSCodeEditor new 
				externalValueUpdate: aClass name;
				acceptAction: [:text | self updateComponentClass]);
			yourself).
	row addMorphBack: (ECSButton new
		icon: ECSIcon iconClose;
		when: #clicked send: #removeAttribute: to: self with: row).
	instVarMorphs addMorphBack: row