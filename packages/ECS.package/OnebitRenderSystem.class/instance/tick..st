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
				
				aUniverse query: {Rendered. OnebitPosition} do: [:rendered :position | | tileX tileY |
					tileX := position x - translateX.
					tileY := position y - translateY.
					
					(tileX >= 0 and: [tileY >= 0 and: [tileX <= size x and: [tileY <= size y]]]) ifTrue: [
						rendered form
							ifNotNil: [:f | f drawOn: canvas at: tileX , tileY * tileSize blend: rendered color]
							ifNil: [
								canvas
									fillRectangle: (tileX , tileY * tileSize extent: config tileSize * config scale)
									color: rendered color]]].
				
				translate := translateX ,  translateY.
				aUniverse query: {Rendered. Transform} do: [:rendered :transform | | tile |
					tile := transform bounds origin - translate.
					
					(tile x >= 0 and: [tile y >= 0 and: [tile x <= size x and: [tile y <= size y]]]) ifTrue: [
						rendered form
							ifNotNil: [:f | f drawOn: canvas at: tile * tileSize blend: rendered color]
							ifNil: [
								canvas
									fillRectangle: (tile * tileSize extent: transform bounds extent)
									color: rendered color]]]]]]