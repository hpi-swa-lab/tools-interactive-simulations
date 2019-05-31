as yet unclassified
initialize

	super initialize.
	
	recording := false.
	
	self changeListDirection: #leftToRight.
	self addMorphBack: (ECSButton new
		icon: (recordIcon := ECSIcon iconCircle);
		when: #clicked send: #toggleRecording to: self).
	self addMorphBack: ECSRow new.
	self addMorphBack: self header small