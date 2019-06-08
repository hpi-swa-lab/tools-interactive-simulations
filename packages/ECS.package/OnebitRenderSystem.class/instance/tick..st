as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		canvas fillColor: (Color fromString: '#472d3c').
		
		aUniverse query: {OnebitPosition. OnebitCameraFocus} do: [:cameraPosition :camera |
			aUniverse query: {ScreenSize. OnebitConfig} do: [:screenSize :config | | size translateX translateY tileSize translate |
				tileSize := config tileSize * config scale.
				size := screenSize size // tileSize.
				translateX := cameraPosition x - (size x // 2).
				translateY := cameraPosition y - (size y // 2).
				
				(aUniverse storageOf: OnebitPosition) in: aUniverse area: (translateX , translateY extent: size) query: {Rendered. OnebitPosition} do: [:rendered :position | | tileX tileY |
					tileX := position x - translateX.
					tileY := position y - translateY.
					self drawRendered: rendered at: tileX , tileY * tileSize extent: config tileSize * config scale on: canvas].
				
				translate := translateX ,  translateY.
				aUniverse query: {Rendered. Transform} do: [:rendered :transform | | tile |
					tile := transform bounds origin - translate.
					
					(tile x >= 0 and: [tile y >= 0 and: [tile x <= size x and: [tile y <= size y]]]) ifTrue: [
						self drawRendered: rendered at: tile * tileSize extent: transform bounds extent on: canvas]]]]]