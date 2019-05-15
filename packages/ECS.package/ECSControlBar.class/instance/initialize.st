as yet unclassified
initialize

	super initialize.
	
	self universe addDependent: self.
	
	self changeTableLayout.
	self addMorphBack: (ECSButton new when: #clicked send: #togglePause to: self; icon: (pauseIcon := ECSIcon iconPause_circle_o)).
	self updateIcon