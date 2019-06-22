as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitConfig UniverseView OnebitPosition) do: [:config :view :mousePos |
		view leftJustUp ifTrue: [
			aUniverse query: #(OnebitCameraFocus OnebitPosition) do: [:cameraFocus :cameraPosition | | size tileSize translateX translateY |
				tileSize := config tileSize * config scale.
				size := view size // tileSize.
				translateX := cameraPosition x - (size x // 2).
				translateY := cameraPosition y - (size y // 2).
				
				(aUniverse storageOf: OnebitPosition) in: aUniverse at: mousePos vector query: {#id} do: [:id |.
						id ~= 1 ifTrue: [ECSEntityComponentFilter openForId: id universe: aUniverse]]]]]