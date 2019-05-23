as yet unclassified
initialize

	super initialize.
	
	self universe addDependent: self.
	
	self changeTableLayout.
	self addMorphBack: (ECSRow new
		color: Color lightGray;
		addMorph: (ECSButton new when: #clicked send: #spawnNewEntity to: self; label: 'Entity'; icon: (pauseIcon := ECSIcon iconPlus));
		addMorph: (ECSButton new when: #clicked send: #togglePause to: self; icon: (pauseIcon := ECSIcon iconPause_circle_o))).
	self updateIcon