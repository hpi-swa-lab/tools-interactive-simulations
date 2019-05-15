as yet unclassified
tick

	systemUniverse tick.
	self wantsOGL
		ifTrue: [canvas frameDo: [systemUniverse drawOn: canvas] worldOrigin: 0 @ 0]
		ifFalse: [self changed].
	
	mouseClickEntity ifNotNil: [
		" we're past the universe's tick, so we can directly remove the entity "
		systemUniverse remove: mouseClickEntity.
		mouseClickEntity := nil]