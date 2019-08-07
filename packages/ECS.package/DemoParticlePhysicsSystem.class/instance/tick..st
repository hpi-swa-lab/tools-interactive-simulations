as yet unclassified
tick: aUniverse

	aUniverse query: #(DeltaTime) do: [:deltaTime |
		aUniverse query: #(id Transform Rendered ParticlePhysics) do: [:id :transform :rendered :physics |
			| offset |
			offset := ((Random new nextInt: physics randomness * 2)@(Random new nextInt: physics randomness * 2)) - physics randomness.
			offset := offset * deltaTime milliseconds * 0.001.
			physics lifetime: physics lifetime - deltaTime milliseconds.
			transform bounds: transform bounds + (physics direction * deltaTime milliseconds * 0.1) + offset.
			rendered color alpha: (physics lifetime clampLow: 0 high: 300) / 300.
			physics lifetime < 0 ifTrue: [aUniverse remove: id]]]