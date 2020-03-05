initialization
initialize

	super initialize.
	lastComponentName := ''.
	nameMorph := ECSCodeEditor new externalValueUpdate: ''.
	nameMorph acceptAction: [:text | self updateComponentClass].
	storageTypeMorph := (ECSSelectButton new labelBlock: #name; value: VectorStorage; choices: [Storage allSubclasses]).
	storageTypeMorph when: #selected send: #updateComponentClass to: self.
	instVarMorphs := ECSColumn new.
	
	self
		cellGap: (TextStyle defaultFont height / 2) rounded;
		addMorphBack: (ECSLabel new contents: 'Name' asText allBold; hResizing: #spaceFill);
		addMorphBack: nameMorph;
		addMorphBack: (ECSLabel new contents: 'Storage Type' asText allBold; hResizing: #spaceFill);
		addMorphBack: storageTypeMorph;
		addMorphBack: (ECSLabel new contents: 'Fields'  asText allBold; hResizing: #spaceFill);
		addMorphBack: instVarMorphs;
		addMorphBack: (ECSButton new
			label: 'Add new attribute';
			when: #clicked send: #addAttribute:type: to: self withArguments: {''. Object});
		yourself