as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitConfig} do: [:config | | straight corner tjunction cross |
		straight :=ECSTileMapAsset of: #onebit at: (8 , 4 square: config tileSize) scale: config scale.
		corner :=ECSTileMapAsset of: #onebit at: (9 , 4 square: config tileSize) scale: config scale.
		tjunction := ECSTileMapAsset of: #onebit at: (10 , 4 square: config tileSize) scale: config scale.
		cross := ECSTileMapAsset of: #onebit at: (11 , 4 square: config tileSize) scale: config scale.
		]