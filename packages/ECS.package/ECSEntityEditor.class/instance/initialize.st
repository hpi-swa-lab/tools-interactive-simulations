as yet unclassified
initialize

	super initialize.
	
	self header: (ECSRow new
		addMorphBack: (nameLabel := ECSLabel new hResizing: #spaceFill);
		addMorphBack: (ECSButton new
			small; icon: ECSIcon iconSearch;
			when: #clicked send: #exploreEntity to: self;
			balloonText: 'Explore entity');
		addMorphBack: (ECSButton new
			small; icon: ECSIcon iconOpenid;
			when: #clicked send: #openIdFilterForEntity to: self;
			balloonText: 'Open id filter for entity');
		addMorphBack: (ECSButton new
			small; icon: ECSIcon iconPlus;
			when: #clicked send: #addComponent to: self;
			balloonText: 'Add component(s) to entity')).
	self body: ECSColumn new