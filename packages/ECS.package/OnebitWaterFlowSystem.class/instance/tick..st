as yet unclassified
tick: aUniverse

	" query with copy, so that we don't iterate on newly spawned items "
	(aUniverse queryList: #(OnebitPosition OnebitWater)) do: [:components | | positions |
		positions := aUniverse storageOf: #OnebitPosition.
		{1 , 0. 0 , 1. -1 , 0. 0 , -1} do: [:displace |
			positions in: aUniverse at: components first vector + displace query: {#OnebitHole. #id} do: [:hole :entity |
				aUniverse remove: #OnebitHole from: entity; attach: #OnebitWater to: entity]]]