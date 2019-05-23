as yet unclassified
initialize

	super initialize.
	
	self universe addDependent: self.
	
	self changeTableLayout.
	self changeListDirection: #leftToRight.
	self addMorphBack: (ECSButton new when: #clicked send: #togglePause to: self; icon: (pauseIcon := ECSIcon new large); large).
	self updateIcon.
	self addMorphBack: ECSRow new.
	self addMorphBack: self header small