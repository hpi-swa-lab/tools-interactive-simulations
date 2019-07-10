initialization
buildConstantsArea

	constantsArea := ECSColumn new.
	
	self system class classVarNames do: [:each | 
		constantsArea addMorphBack: (self buildConstantRowNamed: each)].
	
	^ (ECSCollapsible new 
		header: (ECSLabel new contents: 'Constants'; hResizing: #spaceFill);
		header: (ECSButton new
			icon: (ECSIcon iconPlus);
			when: #clicked send: #addConstant to: self;
			balloonText: 'Add constant');
		body: (ECSRow new
			addMorphFront: (Morph new extent: 20@0);
			addMorphBack: constantsArea))