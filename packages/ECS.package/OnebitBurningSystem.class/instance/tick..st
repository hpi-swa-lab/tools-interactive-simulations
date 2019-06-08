as yet unclassified
tick: aUniverse

	aUniverse query: {Health optional. Rendered optional. OnebitBurning. OnebitPosition. #id} do: [:health :burningRendered :burning :position :entity |
		health ifNotNil: [
			aUniverse spawnNewWith: {OnebitDamage} do: [:damage | damage damage: 3; target: entity].
			burningRendered ifNotNil: [burningRendered color alpha: (health current / health max) asFloat]].
		
		4 timesRepeat: [
			aUniverse
				spawnNewWith: {Transform. Rendered. OnebitExpiring. OnebitParticle}
				do: [:particleTransform :rendered :expiring :particle |
					expiring timeLeft: 500 atRandom.
					particle velocity: 20 atRandom - 10 / 8.0, (30 atRandom negated / 10.0).
					particleTransform bounds: (position x , position y + (0 , 0 randomTo: 1 , 1) extent: 5 , 5).
					rendered color: Color red; form: nil]]]