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
							(OnebitHelper
								buttonAt: (view mousePosition)
								in: aUniverse
								do: [ :entity |
									((aUniverse getSingle: #'OnebitTerrainButton' of: entity)
										ifNotNil: [ :terrain | (gameState selectedPlace: (terrain type)) ]) ]) ]) ]) ])