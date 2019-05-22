as yet unclassified
tick

	systemUniverse tick.
	self changed.
	
	mouseClickEntity ifNotNil: [
		" we're past the universe's tick, so we can directly remove the entity "
		systemUniverse remove: mouseClickEntity.
		mouseClickEntity := nil]