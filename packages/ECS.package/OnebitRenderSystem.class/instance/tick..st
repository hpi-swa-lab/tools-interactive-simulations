as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		canvas fillColor: (Color fromString: '#472d3c').
		
		aUniverse query: {Transform. OnebitCameraFocus} do: [:cameraTransform :cameraf |
			aUniverse query: {ScreenSize. OnebitConfig} do: [:screenSize :config | | size translate tileSize |
				tileSize := config tileSize * config scale.
				size := screenSize size // tileSize.
				translate := cameraTransform bounds origin - (size // 2).
				
				aUniverse query: {Rendered. Transform} do: [:rendered :transform | | tile |
					tile := transform bounds origin - translate.
					
					(tile x >= 0 and: [tile y >= 0 and: [tile x <= size x and: [tile y <= size y]]]) ifTrue: [
						rendered form
							ifNotNil: [:f | f drawOn: canvas at: tile * tileSize blend: rendered color]
							ifNil: [
								canvas
									fillRectangle: (tile * tileSize extent: transform bounds extent)
									color: rendered color]]]]]]