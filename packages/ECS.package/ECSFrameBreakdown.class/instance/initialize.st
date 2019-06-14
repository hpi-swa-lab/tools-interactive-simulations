as yet unclassified
initialize

	super initialize.
	
	drawStatistics := OrderedDictionary newFrom: {#GC -> ECSSmoothNumber new}.
	logicStatistics := OrderedDictionary newFrom: {#GC -> ECSSmoothNumber new}.
	overallStatistics := OrderedDictionary newFrom: {#GC -> 0. #Logic -> 0. #Drawing -> 0}.
	
	self 
		addMorphBack: (logicBar := self makeBar: 'Logic');
		addMorphBack: (drawBar := self makeBar: 'Drawing');
		addMorphBack: (overallBar := self makeBar: 'Overall').
	
	self universe
		when: #preTick send: #clearLogicStatistics to: self;
		when: #postTick send: #showLogicStatistics to: self;
		when: #systemPreTick send: #systemTickStarted:system: to: self;
		when: #systemPostTick send: #systemTickEnded:system: to: self;
		when: #preDraw send: #clearDrawStatistics to: self;
		when: #postDraw send: #showDrawStatistics to: self;
		when: #preDrawBlock send: #drawBlockStarted: to: self;
		when: #postDrawBlock send: #drawBlockEnded: to: self