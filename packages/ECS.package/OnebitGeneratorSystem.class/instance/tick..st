as yet unclassified
tick: aUniverse

	| base |
	aUniverse query: {Rendered. #id} do: [:rendered :entity |
		entity ~= 1 ifTrue: [aUniverse remove: entity]].
	
	aUniverse query: {OnebitConfig} do: [:config |
		30 timesRepeat: [
			self spawn: (5 atRandom , 1) at: config mapSize atRandom - (1 , 1) config: config in: aUniverse].
		
		base := aUniverse instanceTemplate: #Base.
		(aUniverse getSingle: OnebitPosition of: base) vector: config mapSize // 2.
		aUniverse instanceTemplate: #Player.
		
		10 timesRepeat: [self buildStreet: config in: aUniverse].
		self placeSpawnPointsIn: aUniverse config: config]