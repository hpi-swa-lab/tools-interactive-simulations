as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitGameState OnebitConfig Mouse ScreenSize OnebitPosition) do: [:state :config :mouse :screenSize :mousePos |
		state selectedPlace ifNil: [^ self].
		
		aUniverse query: #(OnebitCameraFocus OnebitPosition) do: [:cameraFocus :cameraPosition | | size tileSize translateX translateY placed |
			tileSize := config tileSize * config scale.
			size := screenSize size // tileSize.
			translateX := cameraPosition x - (size x // 2).
			translateY := cameraPosition y - (size y // 2).
			
			mousePos vector: ((mouse position / tileSize + (translateX @ translateY)) floor min: config mapSize - (1 , 1) max: 0 , 0).
			
			mouse leftDown ifFalse: [^ self].
			state selectedTower: 0.
			(aUniverse storageOf: #OnebitPosition)
				in: aUniverse
				at: mousePos vector
				query: {#OnebitBlocksPlacement. #id. #OnebitTower optional}
				do: [:hole :entity :tower |
					tower ifNotNil: [state selectedTower: entity].
					^ self].
			
			placed := aUniverse instanceTemplate: state selectedPlace.
			(aUniverse getSingle: #OnebitPosition of: placed) x: mousePos x y: mousePos y]]