as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		canvas fillColor: (Color fromString: '#472d3c').
		
		aUniverse query: {Transform. OnebitCameraFocus} do: [:cameraTransform :cameraf |
			aUniverse query: {ScreenSize} do: [:screenSize | | size translate |
				size := screenSize size // 64.
				translate := cameraTransform bounds origin - (size // 2).
				
				aUniverse query: {Rendered. Transform} do: [:rendered :transform | | tile |
					tile := transform bounds origin - translate.
					
					(tile x >= 0 and: [tile y >= 0 and: [tile x < size x and: [tile y < size y]]]) ifTrue: [
						rendered form
							ifNotNil: [:f | f drawOn: canvas at: tile * 64]
							ifNil: [
								canvas
									fillRectangle: (tile * 64 extent: transform bounds extent)
									color: rendered color]]]]]]