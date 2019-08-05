as yet unclassified
tick: aUniverse
	
	| cost |
	
	aUniverse
		query: #( #'UniverseView' )
		do: [ :view |
			aUniverse
				query: #( #'OnebitGameState' #'OnebitConfig' #'OnebitPosition' )
				do: [ :state :config :mousePos |
					state selectedPlace ifNil: [^ self].
					aUniverse
						query: #( #'OnebitCameraFocus' #'OnebitPosition' )
						do: [ :cameraFocus :cameraPosition |
							| size tileSize translateX translateY placed buttonBelow |
							
							tileSize := config tileSize * config scale.
							size := view size // tileSize.
							translateX := cameraPosition x - (size x // 2).
							translateY := cameraPosition y - (size y // 2).
							mousePos
								vector: ((view mousePosition / tileSize + (translateX @ translateY)) floor
									min: config mapSize - (1 , 1)
									max: 0 , 0).
							buttonBelow := false.
							OnebitHelper
								buttonAt: view mousePosition
								in: aUniverse
								do: [ :entity |
									buttonBelow := (aUniverse
											getSingle: #'OnebitButton'
											of: entity) visible].
							((view leftDown) not or: [buttonBelow]) ifTrue: [^ self].
							OnebitHelper selectTower: 0 in: aUniverse state: state.
							(aUniverse storageOf: #'OnebitPosition')
								in: aUniverse
								at: mousePos vector
								query: { #'OnebitBlocksPlacement' . #'id' . #'OnebitTower' optional }
								do: [ :hole :entity :tower |
									tower
										ifNotNil: [
											OnebitHelper
												selectTower: entity
												in: aUniverse
												state: state].
									^ self].
							cost := state selectedPlace = #'Sentry'
									ifTrue: [config towerPlacementCost]
									ifFalse: [config placementCost].
							state coins >= cost
								ifTrue: [
									placed := aUniverse instanceTemplate: state selectedPlace.
									(aUniverse getSingle: #'OnebitPosition' of: placed)
										x: mousePos x
										y: mousePos y.
									state coins: state coins - cost]]]]