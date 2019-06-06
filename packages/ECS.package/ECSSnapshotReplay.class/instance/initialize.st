as yet unclassified
initialize

	super initialize.
	
	recording := false.
	looping := false.
	
	self cellInset: (TextStyle defaultFont height / 4) rounded.
	self changeListDirection: #leftToRight.
	self addMorphBack: (ECSButton new
		icon: (recordIcon := ECSIcon iconCircle);
		when: #clicked send: #toggleRecording to: self;
		balloonText: 'Toggle recording').
	self addMorphBack: (ECSButton new
		icon: ECSIcon iconRepeat;
		when: #clicked send: #toggleLooping to: self;
		balloonText: 'Toggle looping').
	self addMorphBack: ECSRow new.
	self addMorphBack: self header small