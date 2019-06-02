as yet unclassified
tick: aUniverse

	aUniverse query: {Transform. OnebitCameraFocus} do: [:cameraTransform :cameraf |
		aUniverse query: {ScreenSize} do: [:screenSize | | size bounds |
			size := screenSize size // 64.
			bounds := cameraTransform bounds origin - (size // 2) extent: size.
			
			aUniverse draw: [:canvas :universe |
				canvas fillColor: (Color fromString: '#472d3c').
				aUniverse query: {Rendered. Transform} do: [:rendered :transform |
					rendered form
						ifNotNil: [:f | f drawOn: canvas at: transform bounds origin - bounds origin * 64]
						ifNil: [
							canvas
								fillRectangle: (transform bounds origin - bounds origin * 64 extent: transform bounds extent)
								color: rendered color]]]]]