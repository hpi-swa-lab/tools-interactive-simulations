universe interaction
spawnNewEntity

	| entity |
	entity := self universe spawnNewPersistedWith: {}.
	ECSEntityComponentFilter openForId: entity universe: self universe