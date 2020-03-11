button-functionality
spawnTemplate

	| entity |
	entity := template instancePersistedIn: self universe.
	self universe autoPersistAttach: #PendingPlacement to: entity