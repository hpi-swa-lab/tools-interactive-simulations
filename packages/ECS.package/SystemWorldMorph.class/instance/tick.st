as yet unclassified
tick

	systemWorld tick.
	self wantsOGL
		ifTrue: [canvas frameDo: [systemWorld drawOn: canvas] worldOrigin: 0 @ 0]
		ifFalse: [self changed].
	
	mouseClickEntity ifNotNil: [
		" we're past the world's tick, so we can directly remove the entity "
		systemWorld remove: mouseClickEntity.
		mouseClickEntity := nil]