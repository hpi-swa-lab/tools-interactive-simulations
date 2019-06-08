as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitConfig. OnebitGameState} do: [:config :state | | turnProgress |
		turnProgress := 1 - (state movingTimeout asFloat / config turnTime).
		aUniverse query: {OnebitProjectile. OnebitPosition} do: [:projectile :position |
			position vector: (projectile sourcePosition interpolateTo: projectile targetPosition at: turnProgress)]]