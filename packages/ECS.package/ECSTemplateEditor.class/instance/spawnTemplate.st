button-functionality
spawnTemplate

	| entity |
	entity := template instancePersistedIn: self universe.
	self universe attach: #PendingPlacement to: entity persisted: true