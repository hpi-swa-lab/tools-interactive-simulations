as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitGameState. DeltaTime} do: [:state :deltaTime |
		state movingTimeout: state movingTimeout - deltaTime milliseconds.
		state movingTimeout <= 0 ifTrue: [
			state movingTimeout: 500.
			aUniverse query: {OnebitMoving. OnebitPosition} do: [:moving :position |
				position x: position x + moving velocity x y: position y + moving velocity y].
			aUniverse query: {OnebitMoving. Transform} do: [:moving :transform |
				transform bounds += moving velocity]]]