as yet unclassified
tick: aUniverse

	aUniverse query: {Health optional. OnebitBurning. Transform. #id} do: [:health :burning :transform :entity |
		health ifNotNil: [
			health current: health current - 3.
			health current <= 0 ifTrue: [aUniverse remove: entity]].
		
		4 timesRepeat: [
			aUniverse
				spawnNewWith: {Transform. Rendered. OnebitExpiring. OnebitMoving}
				do: [:particleTransform :rendered :expiring :moving |
					expiring timeLeft: 500 atRandom.
					moving velocity: 2 atRandom - 2 / 8.0, (10 atRandom negated / 10.0).
					particleTransform bounds: (transform bounds origin + (0 , 0 randomTo: 1 , 1) extent: 5 , 5).
					rendered color: Color red; form: nil]]]