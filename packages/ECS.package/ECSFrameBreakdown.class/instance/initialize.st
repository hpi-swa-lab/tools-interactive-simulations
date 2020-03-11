initialization
initialize

	super initialize.
	
	lastLogicGcDuration := 0.
	lastDrawGcDuration := 0.
	inDrawingPipeline := false.
	
	drawStatistics := OrderedDictionary newFrom: {#GC -> ECSSmoothNumber new}.
	logicStatistics := OrderedDictionary newFrom: {#GC -> ECSSmoothNumber new}.
	overallStatistics := OrderedDictionary newFrom: {
		#GC -> ECSSmoothNumber new.
		#Logic -> ECSSmoothNumber new.
		#Drawing -> ECSSmoothNumber new}.
	
	self
		addMorphBack: (logicBar := self makeBar: 'Logic');
		addMorphBack: (drawBar := self makeBar: 'Drawing');
		addMorphBack: (overallBar := self makeBar: 'Overall').
	
	self header
		addMorphBack: (ECSUniverseButton profileButtonFor: self).
	
	self universe
		when: #preTick send: #clearLogicStatistics to: self;
		when: #postTick send: #showLogicStatistics to: self;
		when: #systemPreTick send: #systemTickStarted:system: to: self;
		when: #systemPostTick send: #systemTickEnded:system: to: self;
		when: #preDraw send: #clearDrawStatistics to: self;
		when: #postDraw send: #showDrawStatistics to: self