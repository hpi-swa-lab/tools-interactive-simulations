as yet unclassified
placeTreesIn: aUniverse config: config
	
	30
		timesRepeat: [
			| tree |
			
			tree := aUniverse spawnTemplate: #'Tree'.
			(aUniverse getSingle: #'OnebitPosition' of: tree)
				x: ((config mapSize) x) atRandom - 1
				y: ((config mapSize) y) atRandom - 1]