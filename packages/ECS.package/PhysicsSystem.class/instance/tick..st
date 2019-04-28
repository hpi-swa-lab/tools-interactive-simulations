as yet unclassified
tick: aWorld

	(aWorld resource: SimulationPaused do: #paused) ifTrue: [^ self].
	
	aWorld resources: {DeltaTime. Gravity} do: [:resources | | deltaTime gravity |
		deltaTime := resources first dt.
		gravity := resources second force.
		aWorld query: {Transform. Physics} do: [:components | | position velocity friction |
			position := components first position.
			velocity := components second velocity.
			friction := components second friction.
			
			components first position: position + (velocity * deltaTime).
			components second velocity: velocity * (1.0 - (friction * deltaTime)) + (gravity * deltaTime).
			(components second velocity closeTo: 0 @ 0) ifTrue: [components second velocity: 0 @ 0]]]