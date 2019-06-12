as yet unclassified
initialize

	| drawAccessCounter drawTimeCounter pipelinesTimeCounter gcStatsGraph |
	super initialize.
	
	self addMorphBack: (drawAccessCounter := ECSGraphPlot new label: 'Draw Accesses').
	self universe when: #postDraw send: #updateDrawAccessCounter: to: self with: drawAccessCounter.
	
	self addMorphBack: (drawTimeCounter := ECSGraphPlot new label: 'Draw Time').
	self universe when: #preDraw send: #saveDrawTimeStart to: self.
	self universe when: #postDraw send: #updateDrawTimeCounter: to: self with: drawTimeCounter.
	
	self addMorphBack: (pipelinesTimeCounter := ECSGraphPlot new label: 'Logic Time').
	self universe when: #preTick send: #savePipelinesTimeStart to: self.
	self universe when: #postTick send: #updatePipelinesTimeCounter: to: self with: pipelinesTimeCounter.
	
	self addMorphBack: (gcStatsGraph := ECSGraphPlot new label: 'GC Time').
	self universe when: #postTick send: #updateGCStats: to: self with: gcStatsGraph