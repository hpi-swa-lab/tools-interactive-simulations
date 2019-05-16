as yet unclassified
tick: aUniverse

	aUniverse query: {DeltaTime. Gravity. ScreenSize} do: [:deltaTime :gravity :screenSize | | entities colliders |
		entities := aUniverse queryList: {Transform. Physics. Colliding optional. #id}.
		colliders := entities select: [:e | e third notNil].
		entities do: [:components | | position velocity friction |
			position := components first position.
			velocity := components second velocity.
			friction := components second friction.
			components second velocity: velocity * (1.0 - (friction * deltaTime dt)) + (gravity force * deltaTime dt).
			
			(velocity closeTo: 0 @ 0)
				ifFalse: [self attemptMoving: components by: velocity * deltaTime dt around: colliders universe: aUniverse].
			
			components first bottom >= screenSize size y ifTrue: [
				components first bottom: screenSize size y.
				components second velocityY: 0]]]