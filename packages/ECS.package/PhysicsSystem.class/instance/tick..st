as yet unclassified
tick: aWorld

	(aWorld resource: SimulationPaused do: #paused) ifTrue: [^ self].
	
	aWorld resources: {DeltaTime. Gravity. ScreenSize} do: [:resources | | deltaTime gravity entities screenSize |
		deltaTime := resources first dt.
		gravity := resources second force.
		screenSize := resources third size.
		
		entities := aWorld queryList: {Transform. Physics. Colliding optional. #id}.
		entities do: [:components | | position velocity friction |
			position := components first position.
			velocity := components second velocity.
			friction := components second friction.
			components second velocity: velocity * (1.0 - (friction * deltaTime)) + (gravity * deltaTime).
			
			(velocity closeTo: 0 @ 0)
				ifFalse: [self attemptMoving: components by: velocity * deltaTime around: entities world: aWorld].
			
			components first bottom >= screenSize y ifTrue: [
				components first bottom: screenSize y.
				components second velocityY: 0]]]