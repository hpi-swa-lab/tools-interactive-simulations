as yet unclassified
tick: aUniverse

	aUniverse resource: DeltaTime do: [:deltaTime | | dt |
		dt := deltaTime milliseconds / 1000.0.	
		aUniverse query: {Transform. Target} do: [:components |
			components first position: (components first position
				interpolateTo: components second position
				at: dt)]]