as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe | 
		universe query: {DeltaTime} do: [:deltaTime |
			canvas 
				drawString: deltaTime fpsAverage asInteger asString 
				at: 0 @ 0 
				font: nil 
				color: Color white]]