universe interaction
spawnNewEntity

	| entity |
	entity := self universe spawnNewAutoPersistedWith: {}.
	ECSEntityComponentFilter openForId: entity universe: self universe