initialization
initialize

	super initialize.
	
	self changeListDirection: #topToBottom.
	self cellInset: (TextStyle defaultFont height / 4) rounded.

	self addMorphBack: self currentUniverseWidget.
	self addMorphBack: (ECSButton new
		when: #clicked send: #changeUniverse to: self;
		label: 'Change to a new universe';
		balloonText: 'Change to a new universe').
	self addMorphBack: (ECSButton new
		when: #clicked send: #openNewEditor to: self;
		label: 'Open new editor';
		balloonText: 'Open new editor').
	self addMorphBack: ((ECSUniverseButton openNewToolButtonFor: self)
		label: 'Open new tool';
		yourself).
	self addMorphBack: ((ECSUniverseButton saveSnapshotButtonFor: self)
		label: 'Save the universe';
		yourself).
	self addMorphBack: (ECSButton new
		when: #clicked send: #closeUniverse to: self;
		icon: ECSIcon iconClose;
		label: 'Close the universe';
		balloonText: 'Close universe and all related tools')