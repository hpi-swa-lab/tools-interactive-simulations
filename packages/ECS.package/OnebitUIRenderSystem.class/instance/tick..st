as yet unclassified
tick: aUniverse

	aUniverse query: #(Mouse OnebitGameState OnebitConfig ScreenSize) do: [:mouse :gameState :config :screenSize | | down x y | 
		down := mouse leftJustDown.
		x := mouse position x.
		y := mouse position y.
		
		aUniverse draw: [:canvas :universe |
			canvas
				fillRectangle: (0 , 0 extent: (gameState score / config maxScore asFloat * screenSize size x) rounded , 10)
				color: Color red.
			
			gameState selectedTower alive ifTrue: [
				].
			
			(self button: DigButtonAsset at: 0 , (screenSize size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Hole
				on: canvas) ifTrue: [gameState selectedPlace: #Hole].
			(self
				button: TreeButtonAsset at: 64 , (screenSize size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Tree
				on: canvas) ifTrue: [gameState selectedPlace: #Tree].
			(self
				button: BoulderButtonAsset at: 128 , (screenSize size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Boulder
				on: canvas) ifTrue: [gameState selectedPlace: #Boulder].
			(self
				button: TowerButtonAsset at: 192 , (screenSize size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Sentry
				on: canvas) ifTrue: [gameState selectedPlace: #Sentry]]]