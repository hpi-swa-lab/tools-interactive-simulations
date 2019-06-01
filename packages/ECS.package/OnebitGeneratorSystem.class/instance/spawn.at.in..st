as yet unclassified
spawn: aTile at: aVector in: aUniverse

	aUniverse spawnNewWith: {Rendered. Transform} do: [:rendered :transform |
		rendered color: nil; form: (ECSTileMapAsset of: #onebit at: (0 , 1 square: 16) scale: 4).
		transform bounds: (aVector square: 64)]