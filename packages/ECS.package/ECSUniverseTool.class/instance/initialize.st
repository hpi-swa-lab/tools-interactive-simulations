as yet unclassified
initialize

	super initialize.
	
	self changeListDirection: #topToBottom.
	self cellInset: (TextStyle defaultFont height / 4) rounded.
	
	"self addMorphBack: (ECSButton new
		when: #clicked send: #switchUniverse  to: self;
		label: 'Switch universe';
		balloonText: 'Switch universe')."
	self addMorphBack: (ECSButton new
		when: #clicked send: #openNewEditor to: self;
		label: 'Open new game view tool';
		balloonText: 'Open new editor').
	"self addMorphBack: (ECSButton new
		when: #clicked send: #profileUniverse to: self;
		icon: ECSIcon iconClock_o;
		balloonText: 'Profile the Universe')."
	"self addMorphBack: (ECSButton new
		when: #clicked send: #exploreUniverse to: self;
		icon: ECSIcon iconSearch;
		balloonText: 'Explore the universe')."
	self addMorphBack: (ECSButton new
		when: #clicked send: #openNewTool to: self;
		icon: ECSIcon iconWindow_maximize;
		label: 'Open new tool';
		balloonText: 'Open new tool').
	"self addMorphBack: (ECSButton new
		when: #clicked send: #saveSnapshot to: self;
		icon: ECSIcon iconSave;
		label: 'Save the universe';
		balloonText: 'Save the universe')."
	self addMorphBack: (ECSButton new
		when: #clicked send: #closeUniverse to: self;
		icon: ECSIcon iconClose;
		label: 'Close the universe';
		balloonText: 'Close universe and all related tools')