as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitGameState. DeltaTime} do: [:state :deltaTime |
		aUniverse query: {OnebitMoving. OnebitPosition} do: [:moving :position |
			position x: position x + moving velocity x y: position y + moving velocity y]]