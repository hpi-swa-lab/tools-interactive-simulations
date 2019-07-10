as yet unclassified
tick: aUniverse
	
	(aUniverse
		query: #( #'UniverseView' )
		do: [ :view |
			(aUniverse
				query: #( #'OnebitGameState' #'OnebitConfig' )
				do: [ :gameState :config |
					| down x y |
					
					(down := (view leftJustDown)).
					(x := ((view mousePosition) x)).
					(y := ((view mousePosition) y)).
					((aUniverse canvas)
						fillRectangle: ((0 , 0) extent: (((((gameState score) / ((config maxScore) asFloat)) * ((view size) x)) rounded) , 10))
						color: (Color red)).
					(((gameState selectedTower) alive) ifTrue: [ nil ]).
					(aUniverse
						query: #( #'OnebitButton' #'OnebitTerrainButton' )
						do: [ :button :terrainButton |
							(((gameState selectedPlace) = (terrainButton type))
								ifTrue: [ ((aUniverse canvas) fillRectangle: (button bounds) color: (Color white)) ]).
							((terrainButton form) drawOn: (aUniverse canvas) at: ((button bounds) origin) blend: (Color white)) ]) ]) ])