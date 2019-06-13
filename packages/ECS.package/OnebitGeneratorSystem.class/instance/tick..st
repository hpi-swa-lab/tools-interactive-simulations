as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitConfig) do: [:config | | base |
		30 timesRepeat: [ | tree |
			tree := aUniverse instanceTemplate: #Tree.
			(aUniverse getSingle: #OnebitPosition of: tree) x: config mapSize x atRandom - 1 y: config mapSize y atRandom - 1].
		
		base := aUniverse instanceTemplate: #Base.
		(aUniverse getSingle: #OnebitPosition of: base) vector: config mapSize // 2.
		aUniverse instanceTemplate: #Player.
		
		aUniverse spawnNewWith: #(OnebitTerrainButton) do: [:button |
			button form: (ECSTileMapAsset of: #onebit at: (12 , 24 extent: config tileSize) scale: 2)].
		aUniverse spawnNewWith: #(OnebitTerrainButton) do: [:button |
			button form: (ECSTileMapAsset of: #onebit at: (13 , 24 extent: config tileSize) scale: 2)].
		aUniverse spawnNewWith: #(OnebitTerrainButton) do: [:button |
			button form: (ECSTileMapAsset of: #onebit at: (14 , 24 extent: config tileSize) scale: 2)].
		
		10 timesRepeat: [self buildStreet: config in: aUniverse].
		self placeSpawnPointsIn: aUniverse config: config]