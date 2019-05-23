as yet unclassified
spawnParticlesIn: aUniverse at: aPoint

	5 timesRepeat: [ | entity |
		entity := aUniverse spawnNewWith: {Transform. Rendered. Physics} do: [:transform :rendered :physics |
			transform bounds: (aPoint extent: 10 , 10).
			rendered color: ECSColor red; form: nil.
			physics velocity: ((200 atRandom - 100) , (200 atRandom - 100))].
		aUniverse in: 200 milliSeconds send: #remove: to: aUniverse with: entity]