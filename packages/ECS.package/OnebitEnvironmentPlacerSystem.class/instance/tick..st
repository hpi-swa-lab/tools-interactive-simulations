as yet unclassified
tick: aUniverse
	
	(aUniverse
		query: #( #'UniverseView' )
		do: [ :view |
			(aUniverse
				query: #( #'OnebitGameState' #'OnebitConfig' #'OnebitPosition' )
				do: [ :state :config :mousePos |
					((state selectedPlace) ifNil: [ ^self ]).
					(aUniverse
						query: #( #'OnebitCameraFocus' #'OnebitPosition' )
						do: [ :cameraFocus :cameraPosition |
							| size tileSize translateX translateY placed buttonBelow |
							
							(tileSize := ((config tileSize) * (config scale))).
							(size := ((view size) // tileSize)).
							(translateX := ((cameraPosition x) - ((size x) // 2))).
							(translateY := ((cameraPosition y) - ((size y) // 2))).
							(mousePos
								vector: (((((view mousePosition) / tileSize) + (translateX @ translateY)) floor)
									min: ((config mapSize) - (1 , 1))
									max: (0 , 0))).
							(buttonBelow := false).
							(OnebitHelper buttonAt: (view mousePosition) in: aUniverse do: [ :entity | (buttonBelow := true) ]).
							((((view leftDown) not) or: [ buttonBelow ]) ifTrue: [ ^self ]).
							(state selectedTower: 0).
							((aUniverse storageOf: #'OnebitPosition')
								in: aUniverse
								at: (mousePos vector)
								query: { #'OnebitBlocksPlacement' . #'id' . (#'OnebitTower' optional) }
								do: [ :hole :entity :tower |
									(tower ifNotNil: [ (state selectedTower: entity) ]).
									^self ]).
							(placed := (aUniverse instanceTemplate: (state selectedPlace))).
							((aUniverse getSingle: #'OnebitPosition' of: placed) x: (mousePos x) y: (mousePos y)) ]) ]) ])