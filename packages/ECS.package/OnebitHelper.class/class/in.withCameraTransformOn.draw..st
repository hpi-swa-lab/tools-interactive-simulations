as yet unclassified
in: aUniverse withCameraTransformOn: aCanvas draw: aBlock

	| translate |
	aUniverse query: #(OnebitPosition OnebitCameraFocus) do: [:cameraPosition :camera |
		aUniverse query: #(ScreenSize OnebitConfig) do: [:screenSize :config | | size tileSize |
			tileSize := config tileSize * config scale.
			size := screenSize size.
			translate := (cameraPosition x - (size x // tileSize // 2)) , (cameraPosition y - (size y // tileSize // 2)).
		
			aCanvas translateBy: translate *  tileSize negated during: [:transformedCanvas | aBlock value: transformedCanvas value: config value: tileSize value: (translate extent: size)]]]