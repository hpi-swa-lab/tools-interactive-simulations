as yet unclassified
initialize

	super initialize.
	
	self universe when: #pause send: #updateIcon to: self.
	self universe when: #start send: #updateIcon to: self.
	
	self changeListDirection: #leftToRight.
	self addMorphBack: (ECSButton new when: #clicked send: #togglePause to: self; icon: (pauseIcon := ECSIcon new large); large).
	self updateIcon.
	self addMorph: (ECSButton new when: #clicked send: #spawnNewEntity to: self; label: 'Entity'; icon: (ECSIcon iconPlus)).
	self addMorphBack: ECSRow new.
	self addMorphBack: self header small