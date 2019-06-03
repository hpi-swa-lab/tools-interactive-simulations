as yet unclassified
spawn: aTile at: aVector config: config in: aUniverse

	aUniverse
		spawnNewWith: {Rendered. Transform. OnebitFlammable. Health}
		do: [:rendered :transform :flammable :health |
			rendered color: ECSColor black; form: (ECSTileMapAsset of: #onebit at: (aTile square: config tileSize) scale: config scale).
			health current: 100; max: 100.
			transform bounds: (aVector square: config scale * config tileSize)]