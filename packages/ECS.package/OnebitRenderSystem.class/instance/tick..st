as yet unclassified
tick: aUniverse
	
	OnebitHelper
		in: aUniverse
		withCameraTransformOn: aUniverse canvas
		draw: [ :canvas :config :tileSize :area |
			canvas fillColor: config worldBackgroundColor.
			aUniverse
				query: #( #'OnebitGameState' )
				do: [ :state |
					(state selectedTower) alive
						ifTrue: [
							| selectedPosition |
							
							selectedPosition := (aUniverse
									getSingle: #'OnebitPosition'
									of: state selectedTower) vector.
							canvas
								fillRectangle: (selectedPosition * tileSize extent: tileSize)
								color: Color white]].
			(aUniverse storageOf: #'OnebitPosition')
				in: aUniverse
				area: area
				query: #( #'Rendered' #'OnebitPosition' )
				do: [ :rendered :position |
					self drawRendered: rendered at: position * tileSize extent: tileSize on: canvas].
			(aUniverse storageOf: #'OnebitPosition')
				in: aUniverse
				area: area
				query: #( #'OnebitHole' #'OnebitPosition' )
				do: [ :water :position |
					(self riverTileFor: position vector in: aUniverse config: config type: #'OnebitHole')
						drawOn: canvas
						at: position * tileSize
						blend: (Color white alpha: 0.3)].
			(aUniverse storageOf: #'OnebitPosition')
				in: aUniverse
				area: area
				query: #( #'OnebitWater' #'OnebitPosition' )
				do: [ :water :position |
					(self riverTileFor: position vector in: aUniverse config: config type: #'OnebitWater')
						drawOn: canvas
						at: position * tileSize].
			aUniverse
				query: #( #'Rendered' #'Transform' )
				do: [ :rendered :transform |
					| tile |
					
					tile := (transform bounds) origin.
					(tile x >= 0
						and: [tile y >= 0 and: [tile x <= area width and: [tile y <= area height]]])
						ifTrue: [
							self
								drawRendered: rendered
								at: tile * tileSize
								extent: (transform bounds) extent
								on: canvas]]]