as yet unclassified
tick

	systemWorld tick.
	mouseClickEntity ifNotNil: [
		" we're past the world's tick, so we can directly remove the entity "
		systemWorld remove: mouseClickEntity.
		mouseClickEntity := nil]