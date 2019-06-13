as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitGameState DeltaTime OnebitConfig) do: [:state :deltaTime :config |
		aUniverse query: #(OnebitMoving OnebitPosition) do: [:moving :position |
			position
				x: (position x + moving velocity x clampLow: 0 high: config mapSize x - 1)
				y: (position y + moving velocity y clampLow: 0 high: config mapSize y - 1)]]