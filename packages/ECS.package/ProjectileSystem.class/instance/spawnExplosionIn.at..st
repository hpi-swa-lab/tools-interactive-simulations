as yet unclassified
spawnExplosionIn: aUniverse at: aPoint

	50 timesRepeat: [ | entity |
		entity := aUniverse spawnNewWith: {Transform. Rendered. Physics} do: [:transform :rendered :physics |
			transform bounds: (aPoint extent: 20 , 20).
			rendered color: (ECSColor red mix: ThreadSafeRandom default next with: ECSColor yellow); form: nil.
			physics velocity: ((600 atRandom - 300),(600 atRandom - 300))].
		aUniverse in: 300 milliSeconds send: #remove: to: aUniverse with: entity]