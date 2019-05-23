as yet unclassified
tick: aUniverse

	aUniverse query: {DeltaTime. Gravity. ScreenSize} do: [:deltaTime :gravity :screenSize | | entities colliders |
		entities := aUniverse queryList: {Transform. Physics. Colliding optional. #id}.
		colliders := entities select: [:e | e third notNil].
		entities do: [:components | | position velocity friction |
			position := components first bounds origin.
			velocity := components second velocity.
			friction := components second friction.
			components second velocity: velocity * (1.0 - (friction * deltaTime dt)) + (gravity force * deltaTime dt).
			
			(velocity closeTo: 0 , 0)
				ifFalse: [self attemptMoving: components by: velocity * deltaTime dt around: colliders universe: aUniverse].
			
			components first bounds bottom >= screenSize size y ifTrue: [
				components first bounds bottom: screenSize size y.
				components second velocity y: 0]]]