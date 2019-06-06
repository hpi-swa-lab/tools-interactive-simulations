as yet unclassified
spawn: aTile at: aVector config: config in: aUniverse

	aUniverse
		spawnNewWith: {Rendered. OnebitPosition. OnebitFlammable. Health}
		do: [:rendered :position :flammable :health |
			rendered color: ECSColor black; form: (ECSTileMapAsset of: #onebit at: (aTile square: config tileSize) scale: config scale).
			health current: 100; max: 100.
			position x: aVector x y: aVector y]