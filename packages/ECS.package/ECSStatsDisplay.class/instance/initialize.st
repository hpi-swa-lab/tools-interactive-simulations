as yet unclassified
initialize

	| drawAccessCounter drawTimeCounter pipelinesTimeCounter |
	super initialize.

	self addMorphBack: (drawAccessCounter := ECSLabel new hResizing: #spaceFill).
	self universe when: #postDraw send: #updateDrawAccessCounter: to: self with: drawAccessCounter.
	
	self addMorphBack: (drawTimeCounter := ECSLabel new hResizing: #spaceFill).
	self universe when: #preDraw send: #saveDrawTimeStart to: self.
	self universe when: #postDraw send: #updateDrawTimeCounter: to: self with: drawTimeCounter.
	
	self addMorphBack: (pipelinesTimeCounter := ECSLabel new hResizing: #spaceFill).
	self universe when: #preTick send: #savePipelinesTimeStart to: self.
	self universe when: #postTick send: #updatePipelinesTimeCounter: to: self with: pipelinesTimeCounter