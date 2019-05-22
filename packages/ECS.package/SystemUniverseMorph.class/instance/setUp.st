as yet unclassified
setUp

	systemUniverse
		morph: self;
		setUp;
		query: {ScreenSize} do: [:size | size size: self extent]