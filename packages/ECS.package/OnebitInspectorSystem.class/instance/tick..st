as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitConfig. Mouse. ScreenSize. OnebitPosition} do: [:config :mouse :screenSize :mousePos |
		
		aUniverse query: {OnebitCameraFocus. OnebitPosition} do: [:cameraFocus :cameraPosition | | size tileSize translateX translateY |
			tileSize := config tileSize * config scale.
			size := screenSize size // tileSize.
			translateX := cameraPosition x - (size x // 2).
			translateY := cameraPosition y - (size y // 2).
			
			mousePos vector: (mouse position / tileSize + (translateX @ translateY)) floor.
			
			mouse leftJustUp ifTrue: [
				aUniverse spawnNewWith: {OnebitWater. OnebitPosition} do: [:water :position | position x: mousePos x y: mousePos y].
				
				"(aUniverse storageOf: OnebitPosition) in: aUniverse at: mousePos vector query: {#id} do: [:id |.
					id ~= 1 ifTrue: [ECSEntityComponentFilter openForId: id universe: aUniverse]]"]]]