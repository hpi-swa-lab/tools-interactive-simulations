as yet unclassified
tick: aUniverse
	
	(aUniverse
		query: #( #'OnebitConfig' #'OnebitGameState' )
		do: [ :config :gameState |
			(aUniverse
				query: #( #'UniverseView' )
				do: [ :view |
					((view leftJustDown)
						ifTrue: [
							(aUniverse
								query: #( #'OnebitButton' #'OnebitTerrainButton' )
								do: [ :button :terrainButton |
									(((button bounds) containsPoint: (view mousePosition)) ifTrue: [ (gameState selectedPlace: (terrainButton type)) ]) ]) ]) ]) ])