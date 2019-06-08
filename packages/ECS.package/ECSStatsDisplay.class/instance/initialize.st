as yet unclassified
initialize

	| drawAccessCounter |
	super initialize.

	self addMorphBack: (drawAccessCounter := ECSLabel new).
	self universe when: #postDraw send: #updateDrawAccessCounter: to: self with: drawAccessCounter.
	