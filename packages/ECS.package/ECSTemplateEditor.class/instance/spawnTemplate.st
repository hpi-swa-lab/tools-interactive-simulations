button-functionality
spawnTemplate

	self universe handleEditorEvent: (ECSEditorEvent for: [ | entity |
		entity := template instancePersistedIn: self universe.
		self universe autoPersistAttach: #PendingPlacement to: entity])