as yet unclassified
spawn: aTile at: aVector configY: config in: aUniverse

	aUniverse spawnNewWith: {Rendered. Transform. OnebitFlammable. Health} do: [:rendered :transform :flammable :health |
		rendered color: nil; form: (ECSTileMapAsset of: #onebit at: (aTile square: 16) scale: 4).
		health current: 100; max: 100.
		transform bounds: (aVector square: 64)]