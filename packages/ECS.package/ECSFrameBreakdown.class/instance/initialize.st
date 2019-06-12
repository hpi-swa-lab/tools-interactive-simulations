as yet unclassified
initialize

	super initialize.
	self 
		addMorphBack: (logicBar := self makeBar);
		addMorphBack: (drawBar := self makeBar).
	
	self universe
		when: #preTick send: #clearLogicStatistics to: self;
		when: #postTick send: #showLogicStatistics to: self;
		when: #systemPreTick send: #systemTickStarted:system: to: self;
		when: #systemPostTick send: #systemTickEnded:system: to: self.