as yet unclassified
initialize

	super initialize.
	
	self addMorphBack: (ECSScrollPane new setMorph: (list := ECSColumn new)).
	self addMorphBack: (ECSToolResizer new target: self).
	
	self header addMorphBack: (ECSButton new small; icon: ECSIcon iconPlus; when: #clicked send: #addComponent to: self).
	self updateList.
	self height: 100 * (TextStyle defaultFont height / 16) rounded.
	self vResizing: #rigid