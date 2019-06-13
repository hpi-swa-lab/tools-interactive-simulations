as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitConfig Mouse ScreenSize OnebitPosition) do: [:config :mouse :screenSize :mousePos |
		aUniverse query: #(OnebitCameraFocus OnebitPosition) do: [:cameraFocus :cameraPosition | | size tileSize translateX translateY |
			tileSize := config tileSize * config scale.
			size := screenSize size // tileSize.
			translateX := cameraPosition x - (size x // 2).
			translateY := cameraPosition y - (size y // 2).
			
			mousePos vector: ((mouse position / tileSize + (translateX @ translateY)) floor min: config mapSize - (1 , 1) max: 0 , 0).
			
			mouse leftDown ifFalse: [^ self].
			(aUniverse storageOf: #OnebitPosition) in: aUniverse at: mousePos vector query: #(OnebitBlocksPlacement) do: [:hole | ^ self].
			aUniverse spawnNewWith: #(OnebitHole OnebitPosition) do: [:hole :position | position x: mousePos x y: mousePos y]]]