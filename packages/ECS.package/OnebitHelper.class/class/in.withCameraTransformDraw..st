as yet unclassified
in: aUniverse withCameraTransformDraw: aBlock

	| translate |
	aUniverse draw: [:canvas :universe |
		universe query: #(OnebitPosition OnebitCameraFocus) do: [:cameraPosition :camera |
			universe query: #(UniverseView OnebitConfig) do: [:screenSize :config | | size tileSize |
				tileSize := config tileSize * config scale.
				size := screenSize size.
				translate := (cameraPosition x - (size x // tileSize // 2)) , (cameraPosition y - (size y // tileSize // 2)).
				
				canvas translateBy: translate during: [:transformedCanvas | aBlock value: transformedCanvas value: config value: tileSize value: (translate extent: size)]]]]