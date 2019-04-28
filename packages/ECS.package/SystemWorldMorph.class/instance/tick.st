as yet unclassified
tick

	systemWorld tick.
	mouseClickEntity ifNotNil: [
		" we're past the world's tick, so we can directly remove the entity "
		systemWorld entities remove: mouseClickEntity.
		mouseClickEntity := nil]