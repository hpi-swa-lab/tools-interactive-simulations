as yet unclassified
tick: aUniverse

	aUniverse query: #(Rendered id) do: [:rendered :entity |
		entity ~= 1 ifTrue: [aUniverse remove: entity]].
	aUniverse query: #(OnebitTerrainButton id) do: [:rendered :entity |
		aUniverse remove: entity]