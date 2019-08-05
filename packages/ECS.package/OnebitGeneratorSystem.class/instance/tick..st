as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitConfig' )
		do: [ :config |
			| base source |
			
			self placeTreesIn: aUniverse config: config.
			source := aUniverse instanceTemplate: #'Hole'.
			(aUniverse getSingle: #'OnebitPosition' of: source)
				x: ((config mapSize) x) atRandom - 1
				y: ((config mapSize) y) atRandom - 1.
			aUniverse
				attach: #'OnebitWater' to: source;
				remove: #'OnebitHole' from: source.
			base := aUniverse instanceTemplate: #'Base'.
			(aUniverse getSingle: #'OnebitPosition' of: base) vector: config mapSize // 2.
			aUniverse instanceTemplate: #'Player'.
			self placeButtonsIn: aUniverse config: config.
			self placeTowerButtonsIn: aUniverse config: config]