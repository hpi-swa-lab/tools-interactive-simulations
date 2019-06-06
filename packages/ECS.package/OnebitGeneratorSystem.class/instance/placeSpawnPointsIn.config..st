as yet unclassified
placeSpawnPointsIn: aWorld config: aConfig

	| r |
	r := 20.
	0 to: Float pi * 2 by: 0.3 do: [:index |
		aWorld spawnNewWith: {OnebitPosition. Rendered. OnebitSpawnPoint} do: [:position :rendered :spawnPoint |
			position x: (index sin * r) rounded y: (index cos * r) rounded.
			rendered color: Color red; form: nil.
			spawnPoint frequency: 5000; timeout: 0]]