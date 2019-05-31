as yet unclassified
initialize

	super initialize.
	
	self universe when: #pause send: #updateIcon to: self.
	self universe when: #start send: #updateIcon to: self.
	
	self changeListDirection: #leftToRight.
	self cellInset: (TextStyle defaultFont height / 4) rounded.
	pauseIcon := ECSIcon new large.
	
	self addMorphBack: (ECSButton new when: #clicked send: #spawnNewEntity to: self; label: 'Entity'; icon: (ECSIcon iconPlus)).
	self addMorphBack: (ECSButton new when: #clicked send: #togglePause to: self; icon: (pauseIcon := ECSIcon new large); large).
	self addMorphBack: (ECSButton new when: #clicked send: #stepForward to: self; icon: ECSIcon iconStep_forward).
	self addMorphBack: (stepMilliseconds := ECSNumberInput new value: 16; min: 0).
	self updateIcon.
	
	self addMorphBack: ECSRow new.
	self addMorphBack: (ECSButton new when: #clicked send: #saveSnapshot to: self; icon: ECSIcon iconSave).
	self addMorphBack: self header small