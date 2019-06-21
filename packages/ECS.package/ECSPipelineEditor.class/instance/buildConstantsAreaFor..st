ui-building-updating-logic
buildConstantsAreaFor: aSystem

	| container |
	container := constantsAreas at: aSystem ifAbsentPut: [ECSColumn new].
	
	aSystem class classVarNames do: [:each | 
		container addMorphBack: (self buildConstantRowFor: aSystem named: each)].
			
	^ (ECSCollapsible new 
		header: (ECSLabel new contents: 'Constants'; hResizing: #spaceFill);
		header: (ECSButton new
			icon: (ECSIcon iconPlus);
			when: #clicked send: #addConstantTo: to: self with: aSystem;
			balloonText: 'Add constant');
		body: (ECSRow new
			addMorphFront: (Morph new extent: 20@0);
			addMorphBack: container))