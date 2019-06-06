as yet unclassified
placeSpawnPointsIn: aWorld config: aConfig

	| r |
	r := 20.
	0 to: Float pi * 2 by: 0.3 do: [:index |
		aWorld spawnNewWith: {Transform. Rendered. OnebitSpawnPoint} do: [:transform :rendered :spawnPoint |
			transform bounds: ((index sin * r) rounded , (index cos * r) rounded square: aConfig tileSize * aConfig scale).
			rendered color: Color red; form: nil.
			spawnPoint frequency: 5000; timeout: 0]]