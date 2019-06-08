as yet unclassified
tick: aUniverse

	aUniverse query: {DeltaTime} do: [:deltaTime |
		aUniverse query: {Transform. OnebitParticle} do: [:transform :particle |
			transform bounds += (particle velocity * deltaTime dt)]]