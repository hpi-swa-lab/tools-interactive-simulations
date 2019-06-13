as yet unclassified
initialize

	super initialize.
	
	drawStatistics := OrderedDictionary newFrom: {#GC -> ECSSmoothNumber new}.
	logicStatistics := OrderedDictionary newFrom: {#GC -> ECSSmoothNumber new}.
	overallStatistics := OrderedDictionary newFrom: {
		#GC -> ECSSmoothNumber new.
		#Logic -> ECSSmoothNumber new.
		#Drawing -> ECSSmoothNumber new}.
	
	self 
		addMorphBack: (logicBar := self makeBar);
		addMorphBack: (drawBar := self makeBar);
		addMorphBack: (overallBar := self makeBar).
	
	self universe
		when: #preTick send: #clearLogicStatistics to: self;
		when: #postTick send: #showLogicStatistics to: self;
		when: #systemPreTick send: #systemTickStarted:system: to: self;
		when: #systemPostTick send: #systemTickEnded:system: to: self;
		when: #preDraw send: #clearDrawStatistics to: self;
		when: #postDraw send: #showDrawStatistics to: self;
		when: #preDrawBlock send: #drawBlockStarted: to: self;
		when: #postDrawBlock send: #drawBlockEnded: to: self