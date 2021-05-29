as yet unclassified
initialize

	super initialize.

	universe := JetpackUniverse new.
	universe when: #postTick send: #updateList to: self.
	
	entities := ECSBlockContainer newOf: ECSEntityBlock.
	components := ECSBlockContainer newOf: ECSComponentBlock.

	self	changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			addMorphBack: (SBIcon iconSave on: #click send: #saveSnapshot to: self));
		addMorphBack: ((ECSUniverseViewMorph newFor: universe) vResizing: #rigid; height: 500);
		addMorphBack: (SBRow new
			addMorphBack: entities;
			addMorphBack: components)