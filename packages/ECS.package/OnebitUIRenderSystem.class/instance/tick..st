as yet unclassified
tick: aUniverse

	aUniverse query: #(Mouse OnebitGameState OnebitConfig ScreenSize) do: [:mouse :gameState :config :screenSize | | down x y | 
		down := mouse leftJustDown.
		x := mouse position x.
		y := mouse position y.
		
		aUniverse draw: [:canvas :universe |
			(self
				button: (ECSTileMapAsset of: #onebit at: (10, 27 extent: config tileSize) scale: 4)
				at: 0 , (screenSize size y - 64)
				down: down x: x y: y
				active: gameState selectedPlace == #Hole
				on: canvas) ifTrue: [gameState selectedPlace: #Hole].
			(self
				button: (ECSTileMapAsset of: #onebit at: (2 , 1 extent: config tileSize) scale: 4)
				at: 64 , (screenSize size y - 64)
				down: down x: x y: y
				active: gameState selectedPlace == #Tree
				on: canvas) ifTrue: [gameState selectedPlace: #Tree].
			(self
				button: (ECSTileMapAsset of: #onebit at: (4 , 0 extent: config tileSize) scale: 4)
				at: 128 , (screenSize size y - 64)
				down: down x: x y: y
				active: gameState selectedPlace == #Boulder
				on: canvas) ifTrue: [gameState selectedPlace: #Boulder].
			(self
				button: (ECSTileMapAsset of: #onebit at: (3 , 19 extent: config tileSize) scale: 4)
				at: 192 , (screenSize size y - 64)
				down: down x: x y: y
				active: gameState selectedPlace == #Sentry
				on: canvas) ifTrue: [gameState selectedPlace: #Sentry]]]