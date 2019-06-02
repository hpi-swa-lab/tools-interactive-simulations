as yet unclassified
initialize

	super initialize.
	
	self header: (ECSRow new
		addMorphBack: (nameLabel := ECSLabel new hResizing: #spaceFill);
		addMorphBack: (ECSButton new small; icon: ECSIcon iconSearch; when: #clicked send: #exploreEntity to: self);
		addMorphBack: (ECSButton new small; icon: ECSIcon iconPlus; when: #clicked send: #addComponent to: self)).
	self body: ECSColumn new