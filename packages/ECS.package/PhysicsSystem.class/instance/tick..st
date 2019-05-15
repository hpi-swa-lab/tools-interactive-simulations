as yet unclassified
tick: aUniverse

	(aUniverse resource: SimulationPaused do: #paused) ifTrue: [^ self].
	
	aUniverse resources: {DeltaTime. Gravity. ScreenSize} do: [:resources | | deltaTime gravity entities screenSize colliders |
		deltaTime := resources first dt.
		gravity := resources second force.
		screenSize := resources third size.
		
		entities := aUniverse queryList: {Transform. Physics. Colliding optional. #id}.
		colliders := entities select: [:e | e third notNil].
		entities do: [:components | | position velocity friction |
			position := components first position.
			velocity := components second velocity.
			friction := components second friction.
			components second velocity: velocity * (1.0 - (friction * deltaTime)) + (gravity * deltaTime).
			
			(velocity closeTo: 0 @ 0)
				ifFalse: [self attemptMoving: components by: velocity * deltaTime around: colliders universe: aUniverse].
			
			components first bottom >= screenSize y ifTrue: [
				components first bottom: screenSize y.
				components second velocityY: 0]]]