button-functionality
spawnTemplate

	| entity |
	entity := template instanceIn: self universe.
	self universe attach: #PendingPlacement to: entity