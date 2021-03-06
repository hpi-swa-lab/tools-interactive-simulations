as yet unclassified
tick: aUniverse

	aUniverse query: #( #'UniverseView' ) do: [ :screenSize |
		aUniverse query: #(DeltaTime Gravity) do: [ :deltaTime :gravity | | entities colliders |
			entities := aUniverse queryList: {#Transform . #Physics optional. #Colliding optional . #id}.
			colliders := entities select: [ :e | e third notNil].
			
			entities select: [:components | components second notNil] thenDo: [:components |
				| position velocity friction |
				position := components first bounds origin.
				velocity := components second velocity.
				friction := components second friction.
				components fourth.
				
				components second velocity: velocity * (1.0 - ("friction"0.3 * deltaTime dt)) + (gravity force * deltaTime dt).
					(velocity closeTo: 0 @ 0) ifFalse: [
						self attemptMoving: components by: velocity * deltaTime dt around: colliders universe: aUniverse]]]]