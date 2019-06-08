as yet unclassified
tick: aUniverse

	systems select: #isEnabled thenDo: [:each |
		aUniverse accesses: 0.
		each tick: aUniverse.
		each lastAccessCount: aUniverse accesses]