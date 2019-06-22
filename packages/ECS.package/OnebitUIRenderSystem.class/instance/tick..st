as yet unclassified
tick: aUniverse

	aUniverse query: #(UniverseView) do: [:view |
		aUniverse query: #(Mouse OnebitGameState OnebitConfig) do: [:mouse :gameState :config | | down x y | 
			down := mouse leftJustDown.
			x := mouse position x.
			y := mouse position y.
			
			aUniverse canvas
				fillRectangle: (0 , 0 extent: (gameState score / config maxScore asFloat * view size x) rounded , 10)
				color: Color red.
			
			gameState selectedTower alive ifTrue: [
				].
			
			(self button: DigButtonAsset at: 0 , (view size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Hole
				on: aUniverse canvas) ifTrue: [gameState selectedPlace: #Hole].
			(self
				button: TreeButtonAsset at: 64 , (view size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Tree
				on: aUniverse canvas) ifTrue: [gameState selectedPlace: #Tree].
			(self
				button: BoulderButtonAsset at: 128 , (view size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Boulder
				on: aUniverse canvas) ifTrue: [gameState selectedPlace: #Boulder].
			(self
				button: TowerButtonAsset at: 192 , (view size y - 64)
				down: down x: x y: y active: gameState selectedPlace == #Sentry
				on: aUniverse canvas) ifTrue: [gameState selectedPlace: #Sentry]]]