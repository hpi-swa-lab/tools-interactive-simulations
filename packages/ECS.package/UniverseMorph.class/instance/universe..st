accessing
universe: aUniverse

	universe := aUniverse.
	universe when: #screenSizeSpawned send: #updateScreenSize to: self.