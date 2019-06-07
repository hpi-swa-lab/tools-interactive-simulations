initialization
initialize

	super initialize.
	
	self universe when: #pause send: #updateIcon to: self.
	self universe when: #start send: #updateIcon to: self.
	
	self changeListDirection: #leftToRight.
	self cellInset: (TextStyle defaultFont height / 4) rounded.
	pauseIcon := ECSIcon new large.
	
	self addMorphBack: (ECSButton new
		when: #clicked send: #spawnNewEntity to: self;
		label: 'Entity';
		icon: (ECSIcon iconPlus);
		balloonText: 'Add new entity').
	self addMorphBack: (ECSButton new
		when: #clicked send: #togglePause
		to: self; icon: (pauseIcon := ECSIcon new large);
		balloonText: 'Toggle game universe paused';
		large).
	self addMorphBack: (ECSButton new
		when: #clicked send: #stepForward to: self;
		icon: ECSIcon iconStep_forward;
		balloonText: 'step forward by given steps').
	self addMorphBack: (stepMilliseconds := ECSNumberInput new value: 16; min: 0).
	
	self addMorphBack: (ECSLabel contents: 'Step Time: ').
	self addMorphBack: (ECSNumberInput new value: self universe stepTime; min: 0; onChange: [:num | self universe stepTime: num]).
	
	self updateIcon.
	
	self addMorphBack: ECSRow new.
	self addMorphBack: (ECSButton new
		when: #clicked send: #openNewTool to: self;
		icon: ECSIcon iconWindow_maximize;
		balloonText: 'Open new tool').
	self addMorphBack: (ECSButton new
		when: #clicked send: #saveSnapshot to: self;
		icon: ECSIcon iconSave;
		balloonText: 'Save the universe').
	self addMorphBack: self header small