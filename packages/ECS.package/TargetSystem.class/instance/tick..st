as yet unclassified
tick: aWorld

	aWorld resource: DeltaTime do: [:deltaTime | | dt |
		dt := deltaTime milliseconds / 1000.0.	
		aWorld query: {Transform. Target} do: [:components |
			components first position: (components first position
				interpolateTo: components second position
				at: dt)]]