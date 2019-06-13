as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitBurning OnebitPosition) do: [:burning :position |
		2 timesRepeat: [
			aUniverse
				spawnNewWith: #(Transform Rendered OnebitExpiring OnebitParticle)
				do: [:particleTransform :rendered :expiring :particle |
					expiring timeLeft: 500 atRandom.
					particle velocity: 20 atRandom - 10 / 8.0, (30 atRandom negated / 10.0).
					particleTransform bounds: (position x , position y + (0 , 0 randomTo: 1 , 1) extent: 5 , 5).
					rendered color: Color red; form: nil]]].

	aUniverse query: #(DeltaTime) do: [:deltaTime |
		aUniverse query: #(Transform OnebitParticle) do: [:transform :particle |
			transform bounds += (particle velocity * deltaTime dt)]]