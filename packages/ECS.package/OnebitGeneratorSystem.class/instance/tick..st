as yet unclassified
tick: aUniverse
	
	(aUniverse
		query: #( #'OnebitConfig' )
		do: [ :config |
			| buttonSize base source |
			
			(30
				timesRepeat: [
					| tree |
					
					(tree := (aUniverse instanceTemplate: #'Tree')).
					((aUniverse getSingle: #'OnebitPosition' of: tree) x: ((((config mapSize) x) atRandom) - 1) y: ((((config mapSize) y) atRandom) - 1)) ]).
			(source := (aUniverse instanceTemplate: #'Hole')).
			((aUniverse getSingle: #'OnebitPosition' of: source) x: ((((config mapSize) x) atRandom) - 1) y: ((((config mapSize) y) atRandom) - 1)).
			(aUniverse
				attach: #'OnebitWater' to: source;
				remove: #'OnebitHole' from: source).
			(base := (aUniverse instanceTemplate: #'Base')).
			((aUniverse getSingle: #'OnebitPosition' of: base) vector: ((config mapSize) // 2)).
			(aUniverse instanceTemplate: #'Player').
			(buttonSize := ((config tileSize) * 4)).
			(aUniverse
				spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
				do: [ :terrain :button |
					(button bounds: ((0 , 0) square: buttonSize)).
					(terrain form: DigButtonAsset).
					(terrain type: #'Hole') ]).
			(aUniverse
				spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
				do: [ :terrain :button |
					(button bounds: ((buttonSize , 0) square: buttonSize)).
					(terrain form: TreeButtonAsset).
					(terrain type: #'Tree') ]).
			(aUniverse
				spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
				do: [ :terrain :button |
					(button bounds: (((buttonSize * 2) , 0) square: buttonSize)).
					(terrain form: BoulderButtonAsset).
					(terrain type: #'Boulder') ]).
			(aUniverse
				spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
				do: [ :terrain :button |
					(button bounds: (((buttonSize * 3) , 0) square: buttonSize)).
					(terrain form: TowerButtonAsset).
					(terrain type: #'Sentry') ]).
			(10 timesRepeat: [ (self buildStreet: config in: aUniverse) ]).
			(self placeSpawnPointsIn: aUniverse config: config) ])