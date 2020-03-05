initialization
initialize

	super initialize.
	
	recording := false.
	looping := false.
	
	self cellGap: (TextStyle defaultFont height / 4) rounded.
	self changeListDirection: #leftToRight.
	self addMorphBack: (recordButton := ECSButton new
		icon: (ECSIcon iconCircle);
		label: 'Start Recording';
		when: #clicked send: #toggleRecording to: self).
	self addMorphBack: (loopingButton := ECSButton new
		icon: ECSIcon iconRepeat;
		when: #clicked send: #toggleLooping to: self;
		visible: false;
		balloonText: 'Toggle looping').
	self addMorphBack: (progress := ECSProgressBar new visible: false).
	self addMorphBack: self header small