as yet unclassified
tick: aUniverse

	systems select: #isEnabled thenDo: [:each |
		aUniverse accesses: 0.
		self triggerEvent: #systemPreTick with: each.
		each tick: aUniverse.
		self triggerEvent: #systemPostTick with: each.
		each lastAccessCount: aUniverse accesses]