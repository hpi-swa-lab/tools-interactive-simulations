as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		aUniverse query: #(OnebitPosition OnebitCameraFocus) do: [:cameraPosition :camera |
			aUniverse query: #(ScreenSize OnebitConfig) do: [:screenSize :config | | size translateX translateY tileSize translate |
				tileSize := config tileSize * config scale.
				size := screenSize size // tileSize.
				translateX := cameraPosition x - (size x // 2).
				translateY := cameraPosition y - (size y // 2).
				translate := translateX ,  translateY.
				
				aUniverse query: #(OnebitEnemyMinion OnebitPosition) do: [:enemy :position | | |
					enemy nextSteps ifNotNil: [
						enemy nextSteps do: [:p |
						canvas fillRectangle: (p - translate * tileSize extent: config tileSize * config scale) color: Color green]
					]]]]]