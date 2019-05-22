as yet unclassified
initialize

	super initialize.
	lastComponentName := ''.
	nameMorph := ECSCodeEditor new externalValueUpdate: ''.
	nameMorph acceptAction: [:text | self updateComponentClass].
	storageTypeMorph := (ECSCodeEditor new externalValueUpdate: 'VectorStorage').
	storageTypeMorph acceptAction: [:text | self updateComponentClass].
	instVarMorphs := ECSColumn new.
		
	self addMorphBack: (ECSLabel contents: 'Name');
		addMorphBack: nameMorph;
		addMorphBack: (ECSLabel contents: 'Storage Type');
		addMorphBack: storageTypeMorph;
		addMorphBack: (ECSLabel contents: 'Fields');
		addMorphBack: instVarMorphs;
		addMorphBack: (ECSButton new
			label: 'Add new attribute';
			when: #clicked send: #addAttribute:type: to: self withArguments: {''. Object});
		yourself